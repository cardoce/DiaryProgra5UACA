$( '#navbarNav .navbar-nav' ).on( 'click', function () {
	$( '#navbarNav .navbar-nav' ).find( '.nav-item.active' ).removeClass( 'active' );
	$( this ).parent( '.nav-item' ).addClass( 'active' );
});