<?php

namespace App\Admin\Controllers;

use App\DeliveryBoy;
use App\DeliveryBoyType;
use App\Status;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Kreait\Firebase;
use Kreait\Firebase\Factory;
use Kreait\Firebase\ServiceAccount;
use Kreait\Firebase\Database;

class DeliveryBoyController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Delivery Boys';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new DeliveryBoy);

        $grid->column('id', __('Id'));
        $grid->column('wallet', __('Delivery boy wallet'));
        $grid->column('delivery_boy_name', __('Delivery boy name'));
        $grid->column('phone_number', __('Phone number'));
        $grid->column('email', __('Email'));
        $grid->column('delivery_boy_type',__('Delivery Boy type'))->display(function ($delivery_boy_type){
            return DeliveryBoyType::where('id',$delivery_boy_type)->value('title');
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

            $filter->like('delivery_boy_name', 'Delivery Boy Name');
            $filter->like('phone_number', 'Phone Number');
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
        $show = new Show(DeliveryBoy::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('delivery_boy_name', __('Delivery boy name'));
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
        $form = new Form(new DeliveryBoy);
        $statuses = Status::pluck('status_name', 'id');
        $driver_type = DeliveryBoyType::pluck('title','id');
        $form->text('delivery_boy_name', __('Delivery boy name'))->rules(function ($form) {
            return 'required|max:100';
        });
        $form->text('phone_number', __('Phone number'))->rules(function ($form) {
            if (!$id = $form->model()->id) {
                return 'numeric|digits_between:9,20|required|unique:delivery_boys,phone_number';
            } else {
                return 'numeric|digits_between:9,20|required|unique:delivery_boys,phone_number,'.$form->model()->id;
            }
        });
        $form->email('email', __('Email'))->rules(function ($form) {
            if (!$id = $form->model()->id) {
                return 'required|max:100';
            } else {
                return 'required|max:100,'.$form->model()->id;
            }
        });
//        $form->password('password', __('Password'))->rules(function ($form) {
//            return 'required';
//        });
        $form->select('delivery_boy_type', __('Delivery Boy type'))->options($driver_type)->rules(function ($form) {
            return 'required';
        })->when(1, function (Form $form) {
            $form->decimal('commission','Commission(%)')->rules(function ($form) {
                return 'required';
            });
        })->when(2, function (Form $form) {
           $form->decimal('salary','Salary(M)')->rules(function ($form) {
               return 'required';
           });
        });
        $form->image('profile_picture', __('Profile picture'))->uniqueName()->rules('required');
        $form->select('status', __('Status'))->options($statuses)->default(1)->rules(function ($form) {
            return 'required';
        });
//        $form->saving(function ($form) {
//            if($form->password && $form->model()->password != $form->password)
//            {
//                $form->password = $this->getEncryptedPassword($form->password);
//            }
//        });
//        $form->saved(function (Form $form) {
//            $this->update_status($form->model()->id,$form->model()->status);
//        });
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
//    public function getEncryptedPassword($input, $rounds = 12) {
//        $salt = "";
//        $saltchars = array_merge(range('A', 'Z'), range('a', 'z'), range(0, 9));
//        for ($i = 0; $i < 22; $i++) {
//            $salt .= $saltchars[array_rand($saltchars)];
//        }
//        return crypt($input, sprintf('$2y$%2d$', $rounds) . $salt);
//    }
//
//    public function update_status($id,$status){
//        $serviceAccount = ServiceAccount::fromJsonFile(config_path().'/'.env('FIREBASE_FILE'));
//        $firebase = (new Factory)
//        ->withServiceAccount($serviceAccount)
//        ->withDatabaseUri(env('FIREBASE_DB'))
//        ->create();
//        $database = $firebase->getDatabase();
//        $newPost = $database
//        ->getReference('delivery_partners/'.$id)
//        ->update([
//            'status' => $status
//        ]);
//    }

}
