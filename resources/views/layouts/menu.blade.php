<li class="nav-item">
    <a href="{{ route('estados.index') }}"
       class="nav-link {{ Request::is('estados*') ? 'active' : '' }}">
        <p>Estados</p>
    </a>
</li>


<li class="nav-item">
    <a href="{{ route('categorias.index') }}"
       class="nav-link {{ Request::is('categorias*') ? 'active' : '' }}">
        <p>Categorias</p>
    </a>
</li>


<li class="nav-item">
    <a href="{{ route('denuncias.index') }}"
       class="nav-link {{ Request::is('denuncias*') ? 'active' : '' }}">
        <p>Denuncias</p>
    </a>
</li>


