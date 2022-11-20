<div class="table-responsive">
    <table class="table" id="denuncias-table">
        <thead>
        <tr>
            <th>Imagen</th>
        <th>Descripcion</th>
        <th>Latitud</th>
        <th>Longitud</th>
        <th>Fecha</th>
        <th>Id Categoria</th>
        <th>Id Estado</th>
            <th colspan="3">Action</th>
        </tr>
        </thead>
        <tbody>
        @foreach($denuncias as $denuncia)
            <tr>
                <td>{{ $denuncia->imagen }}</td>
            <td>{{ $denuncia->descripcion }}</td>
            <td>{{ $denuncia->latitud }}</td>
            <td>{{ $denuncia->longitud }}</td>
            <td>{{ $denuncia->fecha }}</td>
            <td>{{ $denuncia->id_categoria }}</td>
            <td>{{ $denuncia->id_estado }}</td>
                <td width="120">
                    {!! Form::open(['route' => ['denuncias.destroy', $denuncia->id], 'method' => 'delete']) !!}
                    <div class='btn-group'>
                        <a href="{{ route('denuncias.show', [$denuncia->id]) }}"
                           class='btn btn-default btn-xs'>
                            <i class="far fa-eye"></i>
                        </a>
                        <a href="{{ route('denuncias.edit', [$denuncia->id]) }}"
                           class='btn btn-default btn-xs'>
                            <i class="far fa-edit"></i>
                        </a>
                        {!! Form::button('<i class="far fa-trash-alt"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                    </div>
                    {!! Form::close() !!}
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>
