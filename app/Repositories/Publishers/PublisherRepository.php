<?php
namespace App\Repositories\Publishers;

use App\Models\Publisher;
class PublisherRepository implements PublisherRepositoryInterface
{
    public function all()
    {
        return Publisher::all();
    }

    public function findByKeyword($keyword)
    {
        return Publisher::where('name', 'like', "%$keyword%")->get();
    }

    public function findByStatus($status)
    {
        return Publisher::where('status', $status)->get();
    }

    public function search($keyword, $status, $orderBy)
    {
        $query = Publisher::query();

        if ($keyword) {
            $query->where('name', 'like', "%$keyword%");
        }

        if ($status !== null) {
            $query->where('status', $status);
        }

        if (!empty($orderBy)) {
            $query->orderBy($orderBy[0], $orderBy[1]);
        }

        return $query->paginate(10);
    }
}