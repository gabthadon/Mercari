<?php

namespace App\Models;




use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\Customer as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;
use Illuminate\Auth\Authenticatable as AuthenticableTrait;


class Customer extends Model implements 
\Illuminate\Contracts\Auth\Authenticatable
{

    use Notifiable;
    use HasFactory;
    use AuthenticableTrait;
    use HasApiTokens;

 

    protected $fillable = [
         'email', 'username', 'password', 'fb_id', '_token'
    ];

         protected $hidden = [
            'password', 'remember_token', 
        ];


        public function setPasswordAttribute($password)
    {
        $this->attributes['password'] = bcrypt($password);
    }
}
