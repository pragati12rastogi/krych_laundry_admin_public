<?php

namespace App\Admin\Controllers;

use App\Customer;
use App\Status;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class CustomerController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Customers';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Customer);

        $grid->column('id', __('Id'));
        $grid->column('customer_name', __('Customer name'));
        $grid->column('phone_number', __('Phone number'));
        $grid->column('email', __('Email'));
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

            $filter->like('customer_name', 'Customer Name');
            $filter->like('phone_number', 'Phone Name');
            $filter->like('email', 'Email');
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
        $show = new Show(Customer::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('customer_name', __('Customer name'));
        $show->field('phone_number', __('Phone number'));
        $show->field('email', __('Email'));
//        $show->field('password', __('Password'));
        $show->field('profile_picture', __('Profile picture'));
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
        $form = new Form(new Customer);
        $statuses = Status::pluck('status_name', 'id');

        $form->text('customer_name', __('Customer name'))->rules(function ($form) {
            return 'required|max:100';
        });
        $form->text('phone_number', __('Phone number'))->rules(function ($form) {
            if (!$id = $form->model()->id) {
                return 'numeric|digits_between:9,20|required|unique:delivery_boys,phone_number|unique:customers,phone_number';
            } else {
                return 'numeric|digits_between:9,20|required|unique:delivery_boys,phone_number|unique:customers,phone_number,'.$form->model()->id;
            }
        });
        $form->email('email', __('Email'))->rules(function ($form) {
            if (!$id = $form->model()->id) {
                return 'required|max:100|unique:delivery_boys,email|unique:customers,email';
            } else {
                return 'required|max:100|unique:delivery_boys,email|unique:customers,email,'.$form->model()->id;
            }
        });
//        $form->password('password', __('Password'))->rules(function ($form) {
//            return 'required';
//        });
        $form->image('profile_picture', __('Profile picture'))->uniqueName();
        $form->select('status', __('Status'))->options($statuses)->default(1)->rules(function ($form) {
            return 'required';
        });
        $form->saving(function ($form) {
            if($form->password && $form->model()->password != $form->password)
            {
                $form->password = $this->getEncryptedPassword($form->password);
            }
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
    public function getEncryptedPassword($input, $rounds = 12) {
        $salt = "";
        $saltchars = array_merge(range('A', 'Z'), range('a', 'z'), range(0, 9));
        for ($i = 0; $i < 22; $i++) {
            $salt .= $saltchars[array_rand($saltchars)];
        }
        return crypt($input, sprintf('$2y$%2d$', $rounds) . $salt);
    }
}
