<div class="table-responsive" style="padding:15px;">
    <table class="table" id="tabla">
        <thead>
        <tr>
            <th>Nombre</th>
            <th>Acción</th>
        </tr>
        </thead>
        <tbody>
        @foreach($estados as $estado)
            <tr>
                <td>{{ $estado->nombre }}</td>
                <td width="120">
                    {!! Form::open(['route' => ['estados.destroy', $estado->id], 'method' => 'delete']) !!}
                    <div class='btn-group'>
                        <a href="{{ route('estados.show', [$estado->id]) }}"
                           class='btn btn-default btn-xs'>
                            <i class="far fa-eye"></i>
                        </a>
                        <a href="{{ route('estados.edit', [$estado->id]) }}"
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
