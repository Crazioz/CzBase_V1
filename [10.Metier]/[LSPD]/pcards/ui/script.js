$(function(){
	window.onload = function(e){
		window.addEventListener('message', function(event){

			var item = event.data;
			if (item !== undefined && item.type === "mcard") {

				if (item.display === true) {
					$('#mcard').delay(100).fadeIn( 0 );
				} else if (item.display === false) {
					$('#mcard').fadeOut( "slow" );
				}
			}
		});
	};
});