<?php echo $this->extend('Pages/plantilla'); ?>

<?php echo $this->section('contenido'); ?>
<div class="twoHeader">
    <h4>Ventas</h4>
    <a href="<?php echo base_url('/venta/agregar'); ?>"><button class="btn btn-primary">Agregar Venta</button></a>
</div>
<table class="table table-hover" id="tablaVentas" name="tablaVentas">
    <thead>
        <tr>
            <th scope="col">Id Venta</th>
            <th scope="col">Id Cliente</th>
            <th scope="col">Nombre</th>
            <th scope="col">Fecha</th>
            <th scope="col">Tipo De Venta</th>
            <th scope="col">Total</th>
            <th scope="col">Acciones</th>
        </tr>
    </thead>
    <tbody id="resultVentas" name="resultVentas">
        <?php
        foreach ($venta->getResult() as $row) {
        ?>
            <tr>
                <td> <?php echo $row->id_venta ?></td>
                <td> <?php echo $row->fk_id_cliente ?></td>
                <td> <?php echo $row->cl_nombre ?></td>
                <td> <?php echo $row->fecha ?></td>
                <td> <?php echo $row->tipo_venta ?></td>
                <td> $<?php echo $row->total ?>pesos</td>
                <td>
                    <a href="<?php echo base_url('/venta/eliminar/' . $row->id_venta); ?>"><button class="btn btn-danger">Eliminar</button></a>
                    <a href="<?php echo base_url('/venta/editar/' . $row->id_venta); ?>"><button class="btn btn-warning">Editar</button></a>
                </td>
            </tr>
        <?php
        }
        ?>
    </tbody>
</table>
<?php echo $this->endSection(); ?>