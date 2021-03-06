<?php echo $this->extend('Pages/plantilla'); ?>

<?php echo $this->section('contenido'); ?>

<div class="twoHeader">
    <h4>Empleados</h4>
    <a href="<?php echo base_url('/empleados/add-empleado'); ?>"><button class="btn btn-primary">Agregar Empleado</button></a>
</div>
<table class="table table-hover" id="tablaClientes" name="tablaClientes">
    <thead>
        <tr>
            <th scope="col">Id Empleado</th>
            <th scope="col">Nombre</th>
            <th scope="col">Apellidos</th>
            <th scope="col">Telefono</th>
            <th scope="col">Fecha Ingreso</th>
            <th scope="col">Usuario</th>
            <th scope="col">Acciones</th>
        </tr>
    </thead>
    <tbody id="resultClientes" name="resultClientes">
        <?php
        foreach ($empleados->getResult() as $row) {
        ?>
            <tr>
                <td> <?php echo $row->id_empleado ?></td>
                <td> <?php echo $row->nombre_empleado ?></td>
                <td> <?php echo $row->apellido_empleado ?></td>
                <td> <?php echo $row->telefono ?></td>
                <td> <?php echo $row->fecha_ingreso ?></td>
                <td> <?php echo $row->nombre_usuario ?></td>
                <td>
                    <a href="<?php echo base_url('/empleados/delete/' . $row->id_empleado); ?>"><button class="btn btn-danger">Eliminar</button></a>
                    <a href="<?php echo base_url('/empleados/plantillaEditEmpleado/' . $row->id_empleado); ?>"><button class="btn btn-warning">Editar</button></a>
                </td>
            </tr>
        <?php
        }
        ?>
    </tbody>
</table>


<?php echo $this->endSection(); ?>