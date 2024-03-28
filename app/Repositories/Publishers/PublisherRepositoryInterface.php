<?php
namespace App\Repositories\Publishers;

interface PublisherRepositoryInterface
{
    public function all();
    public function findByKeyword($keyword);
    public function findByStatus($status);
    public function search($keyword, $status, $orderBy);
}