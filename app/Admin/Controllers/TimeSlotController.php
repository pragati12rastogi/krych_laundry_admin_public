<?php

namespace App\Admin\Controllers;

use App\TimeSlot;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class TimeSlotController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'TimeSlot';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new TimeSlot());

        $grid->column('id', __('Id'));
        $grid->column('time_from', __('Time from'));
        $grid->column('time_to', __('Time to'));
        $grid->column('created_at', __('Created at'));
//        $grid->column('updated_at', __('Updated at'));

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
        $show = new Show(TimeSlot::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('time_from', __('Time from'));
        $show->field('time_to', __('Time to'));
        $show->field('created_at', __('Created at'));
//        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new TimeSlot());

        $form->text('time_from', __('Time from'));
        $form->text('time_to', __('Time to'));

        return $form;
    }
}
