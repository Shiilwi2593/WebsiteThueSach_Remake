<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreCategoryRequest;
use App\Http\Requests\UpdateCategoryRequest;
use App\Models\Category;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Pipeline;
use Illuminate\Support\Str;

//Factory_Method
use App\Design_patterns\Factory_method\CategoryCreator;
use App\Design_patterns\Factory_method\CreatorInterface;
use App\Design_patterns\Factory_method\CreateFactory;

//Strategy
use App\Design_patterns\Strategy\IUpdateStrategy;
use App\Design_patterns\Strategy\IDestroyStrategy;
use App\Design_patterns\Strategy\Category\DestroyCategory;
use App\Design_patterns\Strategy\Category\UpdateCategory;

//Builder
use App\Design_patterns\Builder\ByKeyword;
use App\Design_patterns\Builder\ByStatus;
use App\Design_patterns\Builder\FilterBuilder;

class CategoriesController extends Controller
{
    //
    public function index(Request $request)
    {
        $orderBy = [];

        if (!is_null($request->sort_by)) {
            switch ($request->sort_by) {
                case 0:
                    $orderBy = ['created_at', 'desc'];
                    break;
                case 1:
                    $orderBy = ['created_at', 'asc'];
                    break;
            }
        }

        $byKeyword = function ($query) use ($request) {
            $filter = new ByKeyword($request->keyword);
            return $filter->applyAll($query);
        };

        $byStatus = function ($query) use ($request) {
            $filter = new ByStatus($request->status);
            return $filter->applyAll($query);
        };

        // $pipeline = Pipeline::send(Category::query())
        //     ->through([
        //         new ByKeyword($request->keyword),
        //         new ByStatus($request->status)
        //     ])->thenReturn();
        $pipeline = Pipeline::send(Category::query())
            ->through([$byKeyword, $byStatus])
            ->thenReturn();
        $categories = $orderBy ? $pipeline->orderBy($orderBy[0], $orderBy[1])->paginate(10) : $pipeline->paginate(10);

        return view('admin.pages.categories.index', [
            'categories' => $categories,
        ]);
    }
    //
    public function vnIndex(Request $request)
    {
        $orderBy = [];

        if (!is_null($request->sort_by)) {
            switch ($request->sort_by) {
                case 0:
                    $orderBy = ['created_at', 'desc'];
                    break;
                case 1:
                    $orderBy = ['created_at', 'asc'];
                    break;
            }
        }

        $filterBuilder = new FilterBuilder();

        if (!is_null($request->keyword)) {
            $filterBuilder->addFilter(new ByKeyword($request->keyword));
        }

        if (!is_null($request->status)) {
            $filterBuilder->addFilter(new ByStatus($request->status));
        }

        $pipeline = Pipeline::send(Category::query())
            ->through(function ($query) use ($filterBuilder) {
                return $filterBuilder->applyFilters($query);
            })
            ->thenReturn();

        $categories = $orderBy ? $pipeline->orderBy($orderBy[0], $orderBy[1])->paginate(10) : $pipeline->paginate(10);

        return view('admin.vn_pages.categories.index', [
            'categories' => $categories,
        ]);
    }


    public function store(Request $request)
    {
        $creator = CreateFactory::make('category', $request);
        
        $check = $creator->create();

        $msg = $check
            ? '<div class="alert alert-success alert-dismissible">Item created successfully</div>'
            : '<div class="alert alert-danger alert-dismissible">Item created failed</div>';

        return redirect()->route('admin.categories.index')->with('message', $msg);
    }
    
    public function vnCreate() {
        return view('admin.pages.categories.create');
    }
    public function create() {
        return view('admin.vn_pages.categories.create');
    }

    public function show(Category $category) {
        return view('admin.pages.categories.show', [
            'category' => $category
        ]);
    }

    public function vnShow(Category $category) {
        return view('admin.vn_pages.categories.show', [
            'category' => $category
        ]);
    }


    public function update(UpdateCategoryRequest $request, Category $category, UpdateCategory $updateStrategy)
    {
        $check = $updateStrategy->update($request, $category);

        $msg = $check 
            ? '<div class="alert alert-success alert-dismissible">Category updated successfully</div>' 
            : '<div class="alert alert-danger alert-dismissible">Category updated failed</div>';

        return redirect()->route('admin.categories.index')->with('message', $msg);
    }


    public function destroy(Category $category, DestroyCategory $destroyStrategy)
    {
        $check = $destroyStrategy->destroy($category);

        $msg = $check
        ? '<div class="alert alert-success alert-dismissible">Category deleted successfully</div>' 
        : '<div class="alert alert-danger alert-dismissible">Category delete failed</div>';

        return redirect()->route('admin.categories.index')->with('message', $msg);
     
    }

    

    public function edit(Category $category) {
        return view('admin.pages.categories.edit', ['category' => $category]);
    }

    public function vnEdit(Category $category) {
        return view('admin.vn_pages.categories.edit', ['category' => $category]);
    }

    public function changeStatus(Request $request, Category $category) {
        $check = $category->update([
            'status' => $request->status,
        ]);

        $status_word = $request->status == 0 ? 'hidden' : 'showed';
        if ($check) {
            $msg = '<div class="alert alert-success alert-dismissible">Category ' . $status_word . ' successfully</div>';
        } else {
            $msg = '<div class="alert alert-danger alert-dismissible">Category ' . $status_word . ' failed</div>';
        }
    
        return redirect()->back()->with('message', $msg);
    }

    public function getSlug(Request $request) {
        $slug = Str::slug($request->name);
        return $slug;
    }
}
