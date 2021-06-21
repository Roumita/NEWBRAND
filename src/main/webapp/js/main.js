

$(document).ready(function(){
    
var carrousel = $('#carrousel'), 
    img = $('#carrousel a '),

    indexImg = img.length -1, 
    i = 0, 
    currentImg = img.eq(i);

    

img.css('display', 'none'); 
currentImg.css('display', 'block'); 

carrousel.append('<div class="controls"> <span class="prev">Precedent</span> <span class="next">Suivant</span> </div>');

$('.next').click(function(){ 

    i++; 

    if( i <= indexImg ){
        img.css('display', 'none'); 
        currentImg = $img.eq(i); 
        currentImg.css('display', 'block'); 
    }
    else{
        i = indexImg;
    }

});

$('.prev').click(function(){ 

    i--; 

    if( i >= 0 ){
        img.css('display', 'none');
        currentImg = img.eq(i);
        currentImg.css('display', 'block');
    }
    else{
        i = 0;
    }

});

function slideImg(){
    setTimeout(function(){ 
						
        if(i < indexImg){ 
	    i++; 
	}
	else{ 
	    i = 0;
	}

	img.css('display', 'none');

	currentImg = img.eq(i);
	currentImg.css('display', 'block');


	slideImg(); 

    }, 1500); 
}

slideImg(); 





$('.animate').mouseover(function(){
$(this).animate({
    width : 'show' 
});

$(this).animate({
    width : 'hide' 
});

$(this).animate({
    width : 'toggle' 

});

});

    
    


    var nom = $('#nom'),
        textarea = $('#textarea'),
        mail = $('#mail'),
        envoi = $('#envoi'),
        reset = $('#rafraichir'),
        erreur = $('#erreur'),
        champ = $('.contact-input');

    champ.keyup(function(){
        if($(this).val().length < 5){ 
            $(this).css({ 
                borderColor : 'red',
	        color : 'red'
            });
         }
         else{
             $(this).css({ 
	         borderColor : 'green',
	         color : 'green'
	     });
         }
    });

    

    $envoi.click(function(e){
        e.preventDefault(); 

        
        verifier(nom);
        verifier(prenom);
        verifier(textarea);
        verifier(mail);
    });

     reset.click(function(){
        champ.css({ 
            borderColor : '#ccc',
    	    color : '#555'
        });
        erreur.css('display', 'none'); 
    });

    function verifier(champ){
        if(champ.val() == ""){ 
    	    erreur.css('display', 'block'); 
            champ.css({ 
    	        borderColor : 'red',
    	        color : 'red'
    	    });
        }
    }





});




  