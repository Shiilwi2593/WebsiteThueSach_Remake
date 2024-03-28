<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\StorePublisherRequest;
use App\Http\Requests\UpdatePublisherRequest;
use App\Models\Publisher;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Pipeline;
use App\Filters\Publishers\ByKeyword;
use App\Filters\Publishers\ByStatus;
use Illuminate\Support\Str;

use App\Design_patterns\Factory_method\PublisherCreator;
use App\Design_patterns\Factory_method\CreatorInterface;
use App\Design_patterns\Factory_method\CreateFactory;

//Strategy
use App\Design_patterns\Strategy\IUpdateStrategy;
use App\Design_patterns\Strategy\IDestroyStrategy;
use App\Design_patterns\Strategy\Publisher\DestroyPublisher;
use App\Design_patterns\Strategy\Publisher\UpdatePublisher;


use App\Repositories\Publishers\PublisherRepositoryInterface;



class PublishersController extends Controller
{

    protected $publisherRepo;

    public function __construct(PublisherRepositoryInterface $publisherRepo) {
        $this->publisherRepo = $publisherRepo;
    }
    //
    public function index() { 

        $orderBy = [];

        if (!is_null(request()->sort_by)) {
            switch (request()->sort_by) {
                case 0:
                    $orderBy = ['created_at', 'desc'];
                    break;
                case 1:
                    $orderBy = ['created_at', 'asc'];
                    break;
            }
        }

        // Lấy từ khóa từ request
        $keyword = request()->keyword;

        // Lấy trạng thái từ request
        $status = request()->status;

        // Gọi phương thức tìm kiếm từ repository
        $publishers = $this->publisherRepo->search($keyword, $status, $orderBy);

        return view('admin.vn_pages.publishers.index', compact('publishers'));
    }
    //
    public function vnIndex(Request $request)
    {
        $orderBy = [];

        if (!is_null(request()->sort_by)) {
            switch (request()->sort_by) {
                case 0:
                    $orderBy = ['created_at', 'desc'];
                    break;
                case 1:
                    $orderBy = ['created_at', 'asc'];
                    break;
            }
        }

        // Lấy từ khóa từ request
        $keyword = request()->keyword;

        // Lấy trạng thái từ request
        $status = request()->status;

        // Gọi phương thức tìm kiếm từ repository
        $publishers = $this->publisherRepo->search($keyword, $status, $orderBy);


        return view('admin.vn_pages.publishers.index', [
            'publishers' => $publishers,
        ]);
    }

    public function store(Request $request) {


        $request->validate([
            'name' => 'required|unique:publishers,name',
            'slug' => 'required|unique:publishers,slug'
        ]);

        $creator = CreateFactory::make('publisher', $request);
        $check = $creator->create();

        $msg = $check ? 'Publisher created successfully' : 'Publisher created failed';

        return redirect()->route('admin.publishers.index')->with('message', $msg);
    }
    public function create() {
        return view('admin.vn_pages.publishers.create');
    }
    public function vnCreate() {
        return view('admin.pages.publishers.create');
    }

    public function show(Publisher $publisher) {
        return view('admin.pages.publishers.show', [
            'publisher' => $publisher
        ]);
    }
    public function vnShow(Publisher $publisher) {
        return view('admin.vn_pages.publishers.show', [
            'publisher' => $publisher
        ]);
    }

    public function update(Request $request, Publisher $publisher, UpdatePublisher $updatePublisher)
    {
        $check = $updatePublisher->update($request, $publisher);

        $msg = $check 
            ? '<div class="alert alert-success alert-dismissible">Publisher updated successfully</div>' 
            : '<div class="alert alert-danger alert-dismissible">Publisher update failed</div>';

        return redirect()->route('admin.publishers.index')->with('message', $msg);
    }

    public function destroy(Publisher $publisher, DestroyPublisher $destroyStrategy)
    {
        $check = $destroyStrategy->destroy($publisher);

        $msg = $check
            ? '<div class="alert alert-success alert-dismissible">Publisher deleted successfully</div>'
            : '<div class="alert alert-danger alert-dismissible">Publisher deleted failed</div>';
        

        return redirect()->route('admin.publishers.index')->with('message', $msg);
    }

    
    
    public function edit(Publisher $publisher) {
        return view('admin.pages.publishers.edit', ['publisher' => $publisher]);
    }

    public function vnEdit(Publisher $publisher) {
        return view('admin.vn_pages.publishers.edit', ['publisher' => $publisher]);
    }

    public function changeStatus(Request $request, Publisher $publisher) {
        $check = $publisher->update([
            'status' => $request->status,
        ]);

        if ($request->status == 0) {
            $msg = $check ? 'Publisher hidden successfully' : 'Publisher hidden fail';
        } elseif ($request->status == 1) {
            $msg = $check ? 'Publisher showed successfully' : 'Publisher showed fail';
        } else {
            $msg = 'Action failed';
        }
    
        return redirect()->route('admin.publishers.index')->with('message', $msg);
    }

    public function getSlug(Request $request) {
        $slug = Str::slug($request->name);
        return $slug;
    }
}
