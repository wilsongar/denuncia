
<div class="table-responsive" style="padding:15px;">
    <table class="table" id="tabla">


        <thead>
        <tr>
            <th>Imagen</th>
        <th>Descripcion</th>
        <th>Latitud</th>
        <th>Longitud</th>
        <th>Fecha</th>
        <th>Usuario</th>
        <th>Categoria</th>
        <th>Estado</th>

            <th>Accion</th>

        </tr>
        </thead>
        <tbody>
        @foreach($denuncias as $denuncia)
            <tr>
            <td><img src="{{ asset('storage').'/'.$denuncia->imagen}}" width="50" height="50"></td>
            <td>{{ $denuncia->descripcion }}</td>
            <td>{{ $denuncia->latitud }}</td>
            <td>{{ $denuncia->longitud }}</td>
            <td>{{ $denuncia->fecha }}</td>
            <td>{{ $denuncia->user->name }}</td>
            <td>{{ $denuncia->categoria->nombre }}</td>
            <td>{{ $denuncia->estado->nombre }}</td>
                <td width="120">
                    @can('borrar-denuncia')
                    {!! Form::open(['route' => ['denuncias.destroy', $denuncia->id], 'method' => 'delete']) !!}
                    @endcan
                    <div class='btn-group'>
                        <a href="{{ route('denuncias.show', [$denuncia->id]) }}"
                           class='btn btn-default btn-xs'>
                            <i class="far fa-eye"></i>
                        </a>
                        @can('borrar-denuncia')
                        <a href="{{ route('denuncias.edit', [$denuncia->id]) }}"
                           class='btn btn-default btn-xs'>
                            <i class="far fa-edit"></i>
                        </a>
                        @endcan
                        @can('borrar-denuncia')
                        {!! Form::button('<i class="far fa-trash-alt"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Are you sure?')"]) !!}
                        @endcan
                    </div>
                    {!! Form::close() !!}
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>
