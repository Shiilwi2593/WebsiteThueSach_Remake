<?php

namespace App\Providers;

use App\Design_patterns\Factory_method\CreatorInterface;
use App\Design_patterns\Factory_method\CategoryCreator;
use App\Design_patterns\Factory_method\OriginCreator;

use App\Design_patterns\Strategy\IUpdateStrategy;
use App\Design_patterns\Strategy\IDestroyStrategy;
use App\Design_patterns\Strategy\Category\DestroyCategory;

use App\Repositories\Publishers\PublisherCacheRepository;
use App\Repositories\Publishers\PublisherRepositoryInterface;


use Illuminate\Pagination\Paginator;
use Illuminate\Support\ServiceProvider;
use Maatwebsite\Excel\ExcelServiceProvider;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {

        //kha
        $this->app->bind(PublisherRepositoryInterface::class, PublisherCacheRepository::class);
        //
        $this->app->register(ExcelServiceProvider::class);
        
        //Factory
        $this->app->bind(
            \App\Design_patterns\Factory_method\CreatorInterface::class,
            \App\Design_patterns\Factory_method\CreateFactory::class,
        );

        //OriginDestroy
        $this->app->bind(
            \App\Design_patterns\Strategy\IDestroyStrategy::class,
            \App\Design_patterns\Strategy\Origin\DestroyOrigin::class
        );
        
        //OriginUpdate
        $this->app->bind(
            \App\Design_patterns\Strategy\IUpdateStrategy::class,
            \App\Design_patterns\Strategy\Origin\UpdateOrigin::class
        );

        //Product
        $this->app->bind(
            \App\Design_patterns\Strategy\IDestroyStrategy::class,
            \App\Design_patterns\Strategy\Product\DestroyProduct::class
        );
        
        $this->app->bind(
            \App\Design_patterns\Strategy\IUpdateStrategy::class,
            \App\Design_patterns\Strategy\Product\UpdateProduct::class
        );

        //Publisher
        $this->app->bind(
            \App\Design_patterns\Strategy\IUpdateStrategy::class,
            \App\Design_patterns\Strategy\Publisher\UpdatePublisher::class
        );
        $this->app->bind(
            \App\Design_patterns\Strategy\IDestroyStrategy::class,
            \App\Design_patterns\Strategy\Publisher\DestroyPublisher::class
        );

        
        


        
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        //
        Paginator::useBootstrapFive();
    }
}
