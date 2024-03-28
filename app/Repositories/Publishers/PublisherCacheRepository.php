<?php
namespace App\Repositories\Publishers;

use App\Models\Publisher;
use Illuminate\Cache\CacheManager;
use App\Filters\Publishers\ByKeyword;
use App\Filters\Publishers\ByStatus;
class PublisherCacheRepository implements PublisherRepositoryInterface
{
    protected $repo;
    protected $cache;

    public function __construct(CacheManager $cache, PublisherRepository $repo) {
        $this->repo = $repo;
        $this->cache = $cache;
    }

    public function all() {
        return $this->cache->remember('all_publishers', now()->addDay(), function () {
            return $this->repo->all();
        });
    }

    public function findByKeyword($keyword) {
        return $this->repo->findByKeyword($keyword); 
    }

    public function findByStatus($status) {
        return $this->cache->remember("publishers_status_$status", now()->addDay(), function () use ($status) {
            return $this->repo->findByStatus($status);
        });
    }

    public function search($keyword, $status, $orderBy) {
        // Since this is a cache repository, you may choose not to cache the search results.
        // Instead, directly delegate the search operation to the underlying repository.
        // This implementation assumes you don't want to cache search results.
        return $this->repo->search($keyword, $status, $orderBy);
    }
}