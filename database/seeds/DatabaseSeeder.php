<?php

use App\Admin;
use App\Permissions;
use App\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        //  $this->call(GlobalSetting::class);
        //  $this->call(CollegeSeeder::class);

        // $Admin = new Admin;
        // $Admin->name = "devconnectia";
        // $Admin->email = "devconnectia2@gmail.com";
        // $Admin->nickname = "dev";
        // $Admin->password = Hash::make("dev123");
        // $Admin->image = 'user.jpg';
        // $Admin->save();

        // /*Setting permission for Subadmin*/
        // $modals = Permissions::select('modal_name')->distinct()->get();
        // foreach ($modals  as $modal) {
        //     $permission = new Permissions;
        //     $permission->subadmin_id = 14;
        //     $permission->modal_name = $modal->modal_name;
        //     $permission->add = 1;
        //     $permission->edit = 1;
        //     $permission->delete = 1;
        //     $permission->save();
        // }


        $user = new User;
        $user->name = "testchat";
        // $user->email = "sonish2@gmail.com";
        // $user->email = "sonish@gmail.com";
        $user->email = "sonish3@gmail.com";
        $user->password = Hash::make("dev123");
        $user->status = 1;
        $user->is_delete = 0;
        $user->nickname = "dev";
        $user->gender = 0;
        $user->trusted = 1;
        $user->age = 26;
        $user->device_type = 0;
        $user->login_type = 1;
        $user->role = 2;
        $user->mic_access = 1;
        $user->message_access = 1;
        $user->save();
    }
}
