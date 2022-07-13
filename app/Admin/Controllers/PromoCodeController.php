<?php

namespace App\Admin\Controllers;

use App\PromoCode;
use App\Status;
use App\AppSetting;
use App\PromoType;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class PromoCodeController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Promo Codes';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new PromoCode);

        $grid->column('id', __('Id'));
        $grid->column('promo_name', __('Promo Name'));
//        $grid->column('promo_name_ar', __('Promo Name Ar'));
        $grid->column('description', __('Description'));
//        $grid->column('description_ar', __('Description_Ar'));
        $grid->column('promo_type', __('Promo type'))->display(function($promo_types){
            $type_name = PromoType::where('id',$promo_types)->value('type_name');
            if ($promo_types == 1) {
                return $type_name;
            } else {
                return $type_name;
            }
        });
        $grid->column('discount', __('Discount'));
        // $grid->column('status', __('Status'));
        // $grid->column('created_at', __('Created at'));
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
            $promo_types = PromoType::pluck('type_name', 'id');

            $filter->like('promo_name', 'Promo Name');
//            $filter->like('promo_name_ar', 'Promo Name Ar');
            $filter->equal('status', 'Status')->select($statuses);
            $filter->equal('promo_type', 'Promo Type')->select($promo_types);
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
        $show = new Show(PromoCode::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('promo_name', __('Promo name'));
        $show->field('promo_code', __('Promo code'));
        $show->field('description', __('Description'));
        $show->field('redemption', __('Redemption'));
        $show->field('promo_type', __('Promo type'));
        $show->field('discount', __('Discount'));
        $show->field('status', __('Status'));
        // $show->field('created_at', __('Created at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new PromoCode);
        $statuses = Status::pluck('status_name', 'id');
        $promo_types = PromoType::pluck('type_name', 'id');
        $form->text('promo_name', __('Promo name'))->rules(function ($form) {
            return 'required|max:100';
        });
//        $form->text('promo_name_ar', __('Promo name Ar'))->rules(function ($form) {
//            return 'required|max:100';
//        });
        $form->text('promo_code', __('Promo code'))->rules(function ($form) {
            if (!$id = $form->model()->id) {
                return 'required|max:100|unique:promo_codes,promo_code';
            } else {
                return 'required|max:100|unique:promo_codes,promo_code,'.$form->model()->id;
            }
        });
        $form->textarea('description', __('Description'))->rules(function ($form) {
            return 'required';
        });
//        $form->textarea('description_ar', __('Description Ar'))->rules(function ($form) {
//            return 'required';
//        });
        $form->select('promo_type', __('Promo type'))->options($promo_types)->default(1)->rules(function ($form) {
            return 'required';
        });
        $form->decimal('discount', __('Discount'))->rules(function ($form) {
            return 'required|numeric|min:0|not_in:0';
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
