<?php

namespace App\Admin\Controllers;

use App\PaymentMethod;
use App\Status;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class PaymentMethodController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Payment Method';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new PaymentMethod);

        $grid->column('id', __('Id'));
        $grid->column('payment_mode', __('Payment mode'));
//        $grid->column('payment_mode_ar', __('Payment Mode Ar'));
        $grid->column('icon', __('Icon'))->image();
        $grid->column('status', __('Status'))->display(function($status){
            $status_name = Status::where('id',$status)->value('status_name');
            if ($status == 1) {
                return "<span class='label label-success'>$status_name</span>";
            } else {
                return "<span class='label label-danger'>$status_name</span>";
            }
        });
        $grid->disableExport();
        $grid->disableCreation();
        $grid->disableFilter();
        $grid->disableBatchActions();
        $grid->disableActions();
//        $grid->actions(function ($actions) {
//            $actions->disableView();
//            $actions->disableDelete();
//        });
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
        $show = new Show(PaymentMethod::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('payment_mode', __('Payment mode'));
        $show->field('icon', __('Icon'));
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
        $form = new Form(new PaymentMethod);
        $statuses = Status::pluck('status_name', 'id');

        $form->text('payment_mode', __('Payment Mode'))->rules(function ($form) {
            return 'required';
        });
//        $form->text('payment_mode_ar', __('Payment Mode Ar'))->rules(function ($form) {
//            return 'required';
//        });
        $form->image('icon', __('Icon'))->uniqueName()->rules(function ($form) {
            return 'required';
        });
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
