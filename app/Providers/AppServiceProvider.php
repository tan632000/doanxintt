<?php

namespace App\Providers;

use App\Category;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use Darryldecode\Cart\Facades\CartFacade;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191);
        view()->composer('*', function ($view) {
            $view->with('categories',Category::where('publication_status',1)->get());
            $view->with('CartGetContents',CartFacade::getContent());
            $view->with('Cart_subtotal',CartFacade::getSubTotal());
            $view->with('Cart_TotalQuantity',CartFacade::getTotalQuantity());
        });
    }
}
