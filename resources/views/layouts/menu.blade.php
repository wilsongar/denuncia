<li class="nav-item">
    <a href="{{ route('estados.index') }}"
       class="nav-link {{ Request::is('estados*') ? 'active' : '' }}">
       <i class="fa fas-solid fa-bars"></i>
        <p>Estados</p>
    </a>
</li>


<li class="nav-item">
    <a href="{{ route('categorias.index') }}"
       class="nav-link {{ Request::is('categorias*') ? 'active' : '' }}">
       <i class="fa fas-solid fa-list"></i>
        <p>Categorias</p>
    </a>
</li>


<li class="nav-item">
    <a href="{{ route('denuncias.index') }}"
       class="nav-link {{ Request::is('denuncias*') ? 'active' : '' }}">
          <i class="fa fas-solid fa-file"></i>
        <p>Denuncias</p>
    </a>
</li>


<li class="nav-item">
    <a href="{{ route('users.index') }}"
       class="nav-link {{ Request::is('users*') ? 'active' : '' }}">
       <i class="fa fas-solid fa-user"></i>
        <p>Usuarios</p>
    </a>
</li>


