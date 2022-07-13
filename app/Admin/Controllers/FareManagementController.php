<?php

namespace App\Admin\Controllers;
use App\Service;
use App\Category;
use App\Product;
use App\Status;
use App\FareManagement;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class FareManagementController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Fare Management';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new FareManagement);

        $grid->column('id', __('Id'));
        $grid->column('service_id', __('Service id'))->display(function($service){
            return Service::where('id',$service)->value('service_name');
        });
        $grid->column('category_id', __('Category'))->display(function($category){
            return Category::where('id',$category)->value('category_name');
        });
        $grid->column('product_id', __('Product id'))->display(function($product){
            return Product::where('id',$product)->value('product_name');
        });
        $grid->column('amount', __('Amount'));
        $grid->disableExport();
        $grid->actions(function ($actions) {
            $actions->disableView();
        });

        $grid->filter(function ($filter) {
            $services = Service::pluck('service_name', 'id');
            $categories = Category::pluck('category_name', 'id');
            $products = Product::pluck('product_name', 'id');
            $filter->equal('service_id', 'Service')->select($services);
            $filter->equal('category_id', 'Category')->select($categories);
            $filter->equal('product_id', 'Product')->select($products);
        });
        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(FareManagement::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('service_id', __('Service id'));
        $show->field('category_id', __('Category id'));
        $show->field('product_id', __('Product id'));
        $show->field('amount', __('Amount'));
        $show->field('status', __('Status'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new FareManagement);
        
        $services = Service::pluck('service_name', 'id');
        $categories = Category::pluck('category_name', 'id');
        $form->select('service_id', __('Service'))->options($services)->rules(function ($form) {
            return 'required';
        });
        $form->select('category_id', __('Category'))->options($categories)->load('product_id', '/admin/get_products', 'id', 'product_name')->rules(function ($form) {
            return 'required';
        });
        $form->select('product_id', "Product")->options(function ($id) {
            $product = Product::find($id);

            if ($product) {
                return [$product->id => $product->product_name];
            }
        })->rules(function ($form) {
            return 'required';
        });
        $form->decimal('amount', __('Amount'))->rules(function ($form) {
            return 'required';
        });
        
        $form->tools(function (Form\Tools $tools) {
            $tools->disableDelete(); 
            $tools->disableView();
        });
        $form->footer(function ($footer) {
            $footer->disableViewCheck();
            $footer->disableEditingCheck();
            $footer->disableCreatingCheck();
        });
        return $form;
    }
}
