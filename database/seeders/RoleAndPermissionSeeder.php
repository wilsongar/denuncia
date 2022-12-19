<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;
class RoleAndPermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Permission::create(['name' => 'crear-usuario']);
        Permission::create(['name' => 'editar-usuario']);
        Permission::create(['name' => 'borrar-usuario']);

        Permission::create(['name' => 'crear-denuncia']);
        Permission::create(['name' => 'editar-denuncia']);
        Permission::create(['name' => 'borrar-denuncia']);

        Permission::create(['name' => 'crear-categoria']);
        Permission::create(['name' => 'editar-categoria']);
        Permission::create(['name' => 'borrar-categoria']);

        Permission::create(['name' => 'crear-estado']);
        Permission::create(['name' => 'editar-estado']);
        Permission::create(['name' => 'borrar-estado']);


        $adminRole = Role::create(['name' => 'Admin']);
        $usuarioRole = Role::create(['name' => 'Usuario']);

        $adminRole->givePermissionTo([
            'crear-usuario',
            'editar-usuario',
            'borrar-usuario',
            'crear-denuncia',
            'editar-denuncia',
            'borrar-denuncia',
            'crear-categoria',
            'editar-categoria',
            'borrar-categoria',
            'crear-estado',
            'editar-estado',
            'borrar-estado'
            ,
        ]);

        $usuarioRole->givePermissionTo([
            'crear-denuncia'
        ]);
    }
}
