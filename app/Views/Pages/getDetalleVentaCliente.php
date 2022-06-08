<?php echo $this->extend('Pages/plantilla'); ?>

<?php echo $this->section('contenido'); ?>
<div class="container_detalle_venta">
    <div class="detalle_venta">
        <h2>Detalle de la venta</h2>
        <hr>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Producto</th>
                    <th>Dimensiones</th>
                    <th>Cantidad</th>
                    <th>Costo</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $total = 0;
                $id_cliente = 0;
                foreach ($detalles->getResult() as $detalle) { ?>
                    <tr>
                        <td><?php echo $detalle->blq_nombre ?></td>
                        <td><?php echo $detalle->blq_tamano ?></td>
                        <td><?php echo $detalle->cantidad ?> Unidades</td>
                        <td>$<?php echo $detalle->precio_venta ?></td>
                    </tr>
                <?php
                    $total = $detalle->total;
                    $id_cliente = $detalle->fk_id_cliente;
                    $fecha = $detalle->fecha;
                    $id_venta = $detalle->id_venta;
                } ?>
            </tbody>
            <tfoot>
                <tr>
                    <th>Total: $<?php echo $total; ?></th>
                    <th>Fecha: <?php echo $fecha; ?></th>
                    <th>Id Venta: <?php echo $id_venta; ?></th>
                </tr>
            </tfoot>
        </table>
        <a href="<?php echo base_url('/clientes/getVentaCliente/' . $id_cliente); ?>">
            <button class="btn btn-outline-secondary">Volver</button>
        </a>
    </div>
</div>
<?php echo $this->endSection(); ?>