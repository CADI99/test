<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        $this->call(AppUsuario::class);
        $this->call(Appempresa::class);
        $this->call(Appproducto::class);
    }
}
class AppUsuario extends Seeder
{
    public function run()
    {
        DB::table('User')->delete();

        User::create( [ 
            'nombre' => 'carlos',
            'correo' => 'carlos@correo.com',
            'contraseña' => '1234',
         ] );

        User::create( [ 
            'nombre' => 'Francisco',
            'correo' => 'francisco@correo.com',
            'contraseña' => '1234',
            ] );

    }
}

