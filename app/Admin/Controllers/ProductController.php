<?php

namespace App\Admin\Controllers;

use App\Product;
use App\Category;
use App\Service;
use App\Unit;
use App\Status;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use DB;
class ProductController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Product';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Product);

        $grid->column('id', __('Id'));

        $grid->column('product_name', __('Product'));
        $grid->column('price', __('price'));
        $grid->column('unit', __('Unit'))->display(function($unit){
            $unit_name = Unit::where('id',$unit)->value('unit_code');
            return $unit_name;
        });
        $grid->column('category_id', __('Category'))->display(function($category){
            $category_name = Category::where('id',$category)->value('category_name');
            return $category_name;
        });
        $grid->column('service_id', __('Service'))->display(function($service){
            $service_name = Service::where('id',$service)->value('service_name');
            return $service_name;
        });

        $grid->column('status', __('Status'))->display(function($status){
            $status_name = Status::where('id',$status)->value('status_name');
            if ($status == 1) {
                return "<span class='label label-success'>$status_name</span>";
            } else {
                return "<span class='label label-danger'>$status_name</span>";
            }
        });
        $grid->disableExport();
        $grid->actions(function ($actions) {
            $actions->disableView();
        });
        $grid->filter(function ($filter) {
            //Get All status
            $statuses = Status::pluck('status_name', 'id');
            $category = Category::pluck('category_name', 'id');
            $filter->like('product_name', 'Product Name');
            $filter->equal('category_id', 'Category')->select($category);
            $filter->equal('status', 'Status')->select($statuses);
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
        $show = new Show(Product::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('category_id', __('Category id'));
        $show->field('product_name', __('Product name'));
        $show->field('description', __('Description'));
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
        $form = new Form(new Product);
        $statuses = Status::pluck('status_name', 'id');
        $category = Category::pluck('category_name', 'id');
        $service = Service::pluck('service_name', 'id');
        $units = Unit::pluck('unit_code','id');
        $form->select('service_id', __('Service'))->options($service)->rules(function ($form) {
            return 'required';
        });
        $form->select('category_id', __('Category'))->options($category)->rules(function ($form) {
            return 'required';
        });
        $form->text('product_name', __('Product name'))->rules(function ($form) {
            return 'required|max:100';
        });

        $form->text('price', __('price'))->rules(function ($form) {
            return 'required|numeric';
        });
        $form->select('unit', __('unit'))->options($units)->rules(function ($form) {
            return 'required';
        });
        $form->image('image', __('Image'))->rules('required')->uniqueName();
        $form->select('status', __('Status'))->options($statuses)->default(1)->rules(function ($form) {
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
