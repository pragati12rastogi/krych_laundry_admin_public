<?php

namespace App\Admin\Controllers;

use App\ServiceArea;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ServiceAreaController extends AdminController
{

    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'ServiceArea';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new ServiceArea());

        $grid->column('id', __('Id'));
        $grid->column('title', __('Title'));
        $grid->column('pincode', __('Pincode'));
        $grid->column('delivery_changes', __('Delivery changes'));
        $grid->column('created_at', __('Created at'));
//        $grid->column('updated_at', __('Updated at'));
        $grid->disableExport();
        $grid->actions(function ($actions) {
            $actions->disableView();
        });
        $grid->filter(function ($filter) {
            //Get All status
            $filter->like('title', 'Title');
            $filter->like('pincode', 'Pincode');
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
        $show = new Show(ServiceArea::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('pincode', __('Pincode'));
        $show->field('delivery_changes', __('Delivery changes'));
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
        $form = new Form(new ServiceArea());

        $form->text('title', __('Title'))->rules(function ($form) {
            return 'required';
        });
        $form->number('pincode', __('Pincode'))->rules(function ($form) {
            return 'required|numeric';
        });
        $form->decimal('delivery_changes', __('Delivery changes'))->rules(function ($form) {
            return 'required|numeric';
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
