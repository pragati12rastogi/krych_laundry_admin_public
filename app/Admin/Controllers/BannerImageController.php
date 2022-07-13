<?php

namespace App\Admin\Controllers;

use App\BannerImage;
use App\Service;
use App\Status;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class BannerImageController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Banner Image';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new BannerImage);

        $grid->column('id', __('Id'));
        $grid->column('banner_image', __('Banner Image'))->image();
        $grid->column('status', __('Status'))->display(function($status){
            $status_name = Status::where('id',$status)->value('status_name');
            if ($status == 1) {
                return "<span class='label label-success'>$status_name</span>";
            } else {
                return "<span class='label label-danger'>$status_name</span>";
            }
        });
        $grid->column('title', __('Banner Header'));
        $grid->column('text', __('Aero link label'));

        $grid->disableExport();
        $grid->actions(function ($actions) {
            $actions->disableView();
        });
        $grid->filter(function ($filter) {
             $statuses = Status::pluck('status_name', 'id');

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
        $show = new Show(BannerImage::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('banner_image', __('Banner image'));
        $show->field('service_id', __('Service id'));
        $show->field('title', __('Banner Header'));
        $show->field('text', __('Aero link label'));
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
        $form = new Form(new BannerImage);
        $services = Service::pluck('service_name', 'id');
        $statuses = Status::pluck('status_name', 'id');

        $form->image('banner_image', __('Banner Image'))->rules('required')->uniqueName();
        $form->select('service_id', __('Service'))->options($services)->rules(function ($form) {
            return 'required';
        });
        $form->text('title', __('Banner Header'));
        $form->text('text', __('Aero link label'));
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

        return $form;
    }
}
