<div class="table-responsive">
    <table class="table" id="categorias-table">
        <thead>
        <tr>
            <th>Nombre</th>
        <th>Descripcion</th>
            <th colspan="3">Action</th>
        </tr>
        </thead>
        <tbody>
        @foreach($categorias as $categoria)
            <tr>
                <td>{{ $categoria->nombre }}</td>
            <td>{{ $categoria->descripcion }}</td>
                <td width="120">
                    {!! Form::open(['route' => ['categorias.destroy', $categoria->id], 'method' => 'delete']) !!}
                    <div class='btn-group'>
                        <a href="{{ route('categorias.show', [$categoria->id]) }}"
                           class='btn btn-default btn-xs'>
                            <i class="far fa-eye"></i>
                        </a>
                        <a href="{{ route('categorias.edit', [$categoria->id]) }}"
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
