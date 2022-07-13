<?php

namespace App\Admin\Controllers;

use App\AppSetting;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class AppSettingController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App Settings';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new AppSetting);

        $grid->column('id', __('Id'));
        $grid->column('application_name', __('Application name'));
        $grid->column('logo', __('Logo'));
        $grid->column('contact_number', __('Contact number'));
        $grid->column('whatsapp_number', __('Whatsapp number'));
        $grid->column('email', __('Email'));
        $grid->column('country', __('Country'));
        $grid->column('default_currency', __('Default currency'));
        $grid->disableExport();
        $grid->disableCreation();
        $grid->disableFilter();
        $grid->actions(function ($actions) {
            $actions->disableView();
            $actions->disableDelete();
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
        $show = new Show(AppSetting::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('application_name', __('Application name'));
        $show->field('logo', __('Logo'));
        $show->field('contact_number', __('Contact number'));
        $show->field('whatsapp_number', __('Whatsapp number'));
        $show->field('email', __('Email'));
        $show->field('default_currency', __('Default currency'));
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
        $form = new Form(new AppSetting);

        $form->text('application_name', __('Application name'))->rules(function ($form) {
            return 'required|max:100';
        });
        $form->image('logo', __('Logo'))->rules('required')->rules('required')->uniqueName();
        $form->text('contact_number', __('Contact number'))->rules(function ($form) {
            if (!$id = $form->model()->id) {
                return 'numeric|digits_between:1,15|required||unique:app_settings,contact_number';
            } else {
                return 'numeric|digits_between:1,15|required||unique:app_settings,contact_number,'.$form->model()->id;
            }
        });
        $form->text('whatsapp_number', __('Whatsapp number'))->rules(function ($form) {
            if (!$id = $form->model()->id) {
                return 'numeric|digits_between:1,15|required||unique:app_settings,whatsapp_number';
            } else {
                return 'numeric|digits_between:1,15|required||unique:app_settings,whatsapp_number,'.$form->model()->id;
            }
        });
        $form->email('email', __('Email'))->rules(function ($form) {
            if (!$id = $form->model()->id) {
                return 'required|max:100|unique:app_settings,email';
            } else {
                return 'required|max:100|unique:app_settings,email,'.$form->model()->id;
            }
        });
        $form->text('address', __('Address'))->rules(function ($form) {
            if (!$id = $form->model()->id) {
                return 'required|max:100|unique:app_settings,address';
            } else {
                return 'required|max:100|unique:app_settings,address,'.$form->model()->id;
            }
        });
        $form->text('address_lat', __('Latitude'))->rules(function ($form) {
            if (!$id = $form->model()->id) {
                return 'numeric|required||unique:app_settings,address_lat';
            } else {
                return 'numeric|required||unique:app_settings,address_lat,'.$form->model()->id;
            }
        });
        $form->text('address_lng', __('Longitude'))->rules(function ($form) {
            if (!$id = $form->model()->id) {
                return 'numeric|required||unique:app_settings,address_lng';
            } else {
                return 'numeric|required||unique:app_settings,address_lng,'.$form->model()->id;
            }
        });
        $form->text('country', __('Country'))->rules(function ($form) {
            return 'required';
        });
        $form->text('default_currency', __('Default currency'))->rules(function ($form) {
            return 'required';
        });
        $form->text('currency_short_code', __('Currency Short Code'))->rules(function ($form) {
            return 'required';
        });
        $form->textarea('about_us', __('About us'))->rules(function ($form) {
            return 'required';
        });
        $form->text('fcm_server_key', __('Fcm Key'))->rules(function ($form) {
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
