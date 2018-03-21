


// console.log($('p:nth-child(2)'))

// $('p').eq(1).addClass('subhead')

// // $('p:nth-child(2)').addClass('')

// $('.subhead').text('Animals are cute')

let x = $('p')[1]

$(x).text('Animals are cute').addClass('subhead')

$('#logo').click(function(){
	console.log(this);
  $(this).css('background-image','url("img/logos/puppy.png")')
});




let div = $("<div></div>").addClass("cute-container");

for (let i = 6; i > 0; i--) {
  let cute = $("<div></div>").addClass("cute");
  div.append(cute);
}

$('body').append(div)


$('.cute-container').insertAfter("p:eq(1)")


let unicornColors = ['#facdd5', '#fffcbc', '#d9ffe3', '#ccedfd', '#e3c3ff'];

let randomColor = unicornColors[Math.floor(Math.random() * unicornColors.length)];

$('#pic-strip').mouseover( function(e) {
  $(this).css("background-color", randomColor);
})




$('.main-pics').click(function(){
	console.log('Hello');
})




