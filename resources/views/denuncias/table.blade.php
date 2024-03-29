
<div class="table-responsive" style="padding:15px;">
    <table class="table" id="tabla">


        <thead>
        <tr>
            <th>Imagen</th>
        <th>Descripción</th>
        <!-- <th>Latitud</th>
        <th>Longitud</th> -->
        <th>Fecha</th>
        <th>Usuario</th>
        <th>Categoría</th>
        <th>Estado</th>

            <th>Acción</th>

        </tr>
        </thead>
        <tbody>
        @foreach($denuncias as $denuncia)
            <tr>
            <td><img src="{{ asset('storage').'/'.$denuncia->imagen}}" width="50" height="50"></td>
            <td>{{ $denuncia->descripcion }}</td>
            <!-- <td>{{ $denuncia->latitud }}</td>
            <td>{{ $denuncia->longitud }}</td> -->
            <td>{{ $denuncia->fecha }}</td>
            <td>{{ $denuncia->user->name }}</td>
            <td>{{ $denuncia->categoria->nombre ?? 'Sin asignar' }}</td>
            <td>{{ $denuncia->estado->nombre ?? 'Sin asignar'}}</td>
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
                        
                        
                        {!! Form::button('<i class="far fa-trash-alt"></i>', ['type' => 'submit', 'class' => 'btn btn-danger btn-xs', 'onclick' => "return confirm('Está seguro/a que desea continuar?')"]) !!}
                        
                    </div>
                    {!! Form::close() !!}
                </td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>
