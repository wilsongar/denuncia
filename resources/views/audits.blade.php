 @extends('layouts.app')
 @section('content')
  <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Auditoria</h1>
                </div>
            </div>
        </div>
    </section>
 <div class="card">
            <div class="card-body p-0">
      <div class="table-responsive" style="padding:15px;">
    <table class="table" id="tabla">
      <thead>
            <tr>
              <th>Model</th>
              <th>Acción</th>
              <th>Usuario</th>
              <th>Tiempo</th>
              <th>Valor Anterior</th>
              <th>Valor Nuevo</th>
            </tr>
          </thead>
          <tbody id="audits">
            @foreach($audits as $audit)
              <tr>
                <td>{{ $audit->auditable_type }} (id: {{ $audit->auditable_id }})</td>
                <td>{{ $audit->event }}</td>
                <td>{{ $audit->user->name }}</td>
                <td>{{ $audit->created_at }}</td>
                <td>
                  <table class="table">
                    @foreach($audit->old_values as $attribute => $value)
                      <tr>
                        <td><b>{{ $attribute }}</b></td>
                        <td>{{ $value }}</td>
                      </tr>
                    @endforeach
                  </table>
                </td>
                <td>
                  <table class="table">
                    @foreach($audit->new_values as $attribute => $value)
                      <tr>
                        <td><b>{{ $attribute }}</b></td>
                        <td>{{ $value }}</td>
                      </tr>
                    @endforeach
                  </table>
                </td>
              </tr>
            @endforeach
          </tbody>
        </table>
    
      </div>
    @endsection
                <div class="card-footer clearfix">
                    <div class="float-right">
                        
                    </div>
                </div>
            </div>   

   