<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreOriginRequest;
use App\Http\Requests\UpdateOriginRequest;
use App\Models\Origin;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Pipeline;
use App\Filters\Origins\ByKeyword;
use App\Filters\Origins\ByStatus;
use Illuminate\Support\Str;
//FactoryMethod
use App\Design_patterns\Factory_method\OriginCreator;
use App\Design_patterns\Factory_method\CreatorInterface;
use App\Design_patterns\Factory_method\CreateFactory;
//Strategy
use App\Design_patterns\Strategy\Origin\DestroyOrigin;
use App\Design_patterns\Strategy\Origin\UpdateOrigin;
use App\Design_patterns\Strategy\IUpdateStrategy;
use App\Design_patterns\Strategy\IDestroyStrategy;


class OriginsController extends Controller
{
    //
    public function index() { 

        $orderBy = [];

        if(!is_null(request()->sort_by)) {
            switch (request()->sort_by) {
                case 0:
                    $orderBy = ['created_at', 'desc'];
                    break;
                case 1:
                    $orderBy = ['created_at', 'asc'];
                    break;
            }
        }

        $pipelines = [
            ByKeyword::class,
            ByStatus::class,
        ];

        $pipeline = Pipeline::send(Origin::query())
        ->through($pipelines)
        ->thenReturn();


        if($orderBy) {
            $origins = $pipeline->orderBy($orderBy[0], $orderBy[1])->paginate(10);
        } else {
            $origins = $pipeline->paginate(10);
        }

        return view('admin.pages.origins.index', [
            'origins' => $origins,
        ]);
    }

    public function vnIndex() { 

        $orderBy = [];

        if(!is_null(request()->sort_by)) {
            switch (request()->sort_by) {
                case 0:
                    $orderBy = ['created_at', 'desc'];
                    break;
                case 1:
                    $orderBy = ['created_at', 'asc'];
                    break;
            }
        }

        $pipelines = [
            ByKeyword::class,
            ByStatus::class,
        ];

        $pipeline = Pipeline::send(Origin::query())
        ->through($pipelines)
        ->thenReturn();


        if($orderBy) {
            $origins = $pipeline->orderBy($orderBy[0], $orderBy[1])->paginate(10);
        } else {
            $origins = $pipeline->paginate(10);
        }

        return view('admin.vn_pages.origins.index', [
            'origins' => $origins,
        ]);
    }

    public function store(Request $request) {

        $creator = CreateFactory::make('origin', $request);
        $check = $creator->create();

        $msg = $check
            ? '<div class="alert alert-success alert-dismissible">Item created successfully</div>'
            : '<div class="alert alert-danger alert-dismissible">Item created failed</div>';

        return redirect()->route('admin.categories.index')->with('message', $msg);

    }
    
    public function create() {
        return view('admin.vn_pages.origins.create');
    }
    public function vnCreate() {
        return view('admin.pages.origins.create');
    }

    public function show(Origin $origin) {
        return view('admin.pages.origins.show', [
            'origin' => $origin
        ]);
    }
    public function vnShow(Origin $origin) {
        return view('admin.vn_pages.origins.show', [
            'origin' => $origin
        ]);
    }

    public function update(Request $request, Origin $origin, UpdateOrigin $updateStrategy)
    {
        $check = $updateStrategy->update($request, $origin);

        $msg = $check 
            ? 'Origin updated successfully' 
            : 'Origin update failed';

        return redirect()->route('admin.origins.index')->with('message', $msg);
    }

    public function destroy(Origin $origin, DestroyOrigin $destroyStrategy)
    {
        $check = $destroyStrategy->destroy($origin);

        $msg = $check 
            ? 'Origin deleted successfully' 
            : 'Origin deletion failed';

        return redirect()->route('admin.origins.index')->with('message', $msg);
    }

    public function edit(Origin $origin) {
        return view('admin.pages.origins.edit', ['origin' => $origin]);
    }
    public function vnEdit(Origin $origin) {
        return view('admin.vn_pages.origins.edit', ['origin' => $origin]);
    }

    public function changeStatus(Request $request, Origin $origin) {
        $check = $origin->update([
            'status' => $request->status,
        ]);

        if ($request->status == 0) {
            $msg = $check ? 'Origin hidden successfully' : 'Origin hidden fail';
        } elseif ($request->status == 1) {
            $msg = $check ? 'Origin showed successfully' : 'Origin showed fail';
        } else {
            $msg = 'Action failed';
        }
    
        return redirect()->route('admin.origins.index')->with('message', $msg);
    }

    public function getSlug(Request $request) {
        $slug = Str::slug($request->name);
        return $slug;
    }
}
