<?php

namespace App\Admin\Controllers;
use App\Product;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Encore\Admin\Controllers\ModelForm;

class GeneralController extends Controller
{
    use ModelForm;

    public function GetProducts()
    {
        return Product::where('category_id', $_GET['q'])->get(['id', DB::raw('product_name')]);
    }
}
