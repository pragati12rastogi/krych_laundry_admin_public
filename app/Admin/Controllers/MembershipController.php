<?php

namespace App\Admin\Controllers;

use App\Membership;
use App\Service;
use App\Status;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\DB;

class MembershipController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */

    protected $title = 'Membership';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Membership());

        $grid->column('id', __('Id'));
        $grid->column('title', __('Title'));
        $grid->column('price', __('Price'));
        $grid->column('discount', __('Discount(%)'));
        $grid->column('desc_1', __('Desc 1'));
//        $grid->column('desc_2', __('Desc 2'));
//        $grid->column('desc_3', __('Desc 3'));
        $grid->column('duration', __('Duration'))->display(function($duration){
            return DB::table('membership_duration')->where('id',$duration)->value('duration_name');
        });
        $grid->column('status', __('Status'))->display(function($status){
            $status_name = Status::where('id',$status)->value('status_name');
            if ($status == 1) {
                return "<span class='label label-success'>$status_name</span>";
            } else {
                return "<span class='label label-danger'>$status_name</span>";
            }
        });
//        $grid->column('created_at', __('Created at'));
        $grid->disableExport();
        $grid->actions(function ($actions) {
            $actions->disableView();
        });
        $grid->filter(function ($filter) {
            //Get All status
            $statuses = Status::pluck('status_name', 'id');
            $filter->like('title', 'Title');
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
        $show = new Show(Membership::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('service_id', __('Service id'));
        $show->field('title', __('Title'));
        $show->field('desc_1', __('Desc 1'));
        $show->field('desc_2', __('Desc 2'));
        $show->field('desc_3', __('Desc 3'));
        $show->field('created_at', __('Created at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Membership());
        $statuses = Status::pluck('status_name', 'id');
        $duration = DB::table('membership_duration')->pluck('duration_name','id');
        $form->multipleSelect('service_id', __('Services'))->options(Service::all()->pluck('service_name', 'id'))->rules(function ($form) {
            return 'required';
        });
        $form->text('title', __('Title'))->rules(function ($form) {
            return 'required';
        });
        $form->decimal('price', __('Price').' ₹')->rules(function ($form) {
            return 'required|numeric';
        });
        $form->decimal('discount', __('Discount').' %')->rules(function ($form) {
            return 'required|numeric';
        });
//        print_r($duration);exit;
        $form->select('duration', __('Duration'))->options($duration)->rules(function ($form) {
            return 'required';
        });
        $form->textarea('desc_1', __('Description 1'))->rules(function ($form) {
            return 'required';
        });
        $form->textarea('desc_2', __('Description 2'));
        $form->textarea('desc_3', __('Description 3'));
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
