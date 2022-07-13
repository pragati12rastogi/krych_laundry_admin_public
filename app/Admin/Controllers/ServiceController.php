<?php

namespace App\Admin\Controllers;

use App\Service;
use App\Status;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ServiceController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Service';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Service);

        $grid->column('id', __('Id'));
        $grid->column('image', __('Image'))->image();
        $grid->column('service_name', __('Service Name'));
        $grid->column('service_time', __('Service Time(hr)'));
//        $grid->column('service_name_ar', __('Service Name Ar'));
        $grid->column('description', __('Description'));
//        $grid->column('description_ar', __('Description Ar'));
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

            $filter->like('service_name', 'Service Name');
            $filter->like('service_name_ar', 'Service Name Ar');
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
        $show = new Show(Service::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('service_name', __('Service name'));
        $show->field('service_time', __('Service time'));
        $show->field('description', __('Description'));
        // $show->field('estimation_hours', __('Estimation hours'));
        $show->field('image', __('Image'));
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
        $form = new Form(new Service);
        $statuses = Status::pluck('status_name', 'id');

        $form->text('service_name', __('Service Name'))->rules(function ($form) {
            return 'required|max:100';
        });
        $form->text('service_time', __('Service Time(in hr)'))->rules(function ($form) {
            return 'required|max:100|numeric';
        });
//        $form->text('service_name_ar', __('Service Name Ar'))->rules(function ($form) {
//            return 'required|max:100';
//        });
        $form->textarea('description', __('Description'))->rules(function ($form) {
            return 'required|max:100';
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
