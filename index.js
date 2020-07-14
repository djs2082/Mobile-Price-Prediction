
// default configuraton of page
$(document).ready(function(){
$.getJSON('config.json',function(data){
  Token=data.Token;
  images_path=data.images_path;
  title_logo=data.title_logo;
  time=0;
  $('#wc').html(title_logo);
  sliding_images=data.sliding_images;
new_slides(sliding_images);
slideIndex = 1;
setInterval(function(){showDivs(slideIndex);}, 2000);
fill_form_options(data.options);
fill_bottom_ads(data.ads)
})
})
// default configuration of page close


// add new slides
function new_slides(sliding_images)
{
  slides="";
  for(var i=0;i<sliding_images.length;i++)
  {
    slides=slides+"<img value='"+sliding_images[i].id+"'class='mySlides' title='"+ sliding_images[i].type+"' onclick='display(this)' src='"+images_path+"/"+sliding_images[i].image+"' style='width:100%'></img>";
  }
  btn="";
  for(var i=0;i<sliding_images.length;i++)
  {
    var j=i+1;
    btn=btn+"<button class='w3-button demo' title='"+ sliding_images[i].type+"'onclick='currentDiv("+j+")'>"+j+"</button>";
  }
  $('#slides').html(slides);
  $('#btns').html(btn);
}
// add new slides close

// fill form options
function fill_form_options(options)
{

  for(var i=0;i<options.length;i++)
  {
    console.log(options[i].values.length)
    tmp="";
    for(var j=0;j<options[i].values.length;j++)
    {
      tmp=tmp+"<option>"+options[i].values[j]+"</option>";

    }
    var id='#'+options[i].name;
    $(id).html(tmp);
  }
}
// fill form options close


// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) 
{
if (event.target == document.getElementById('id01')) 
{
  document.getElementById('id01').style.display = "none";
}
}
// When the user clicks anywhere outside of the modal, close it




// fill the mobile details
function fill_display(data)
{
  td="";
  keys=Object.keys(data);
for(var i=0;i<keys.length;i++)
{
td=td+"<tr><th scope='row'>"+keys[i]+"</th><td>"+data[keys[i]]+"</td></tr>"
}
console.log(td);
document.getElementById('details_table').innerHTML=td;
document.getElementById('image').setAttribute("src",images_path+"/"+data.image);
document.getElementById('id01').style.display='block'
}
// fill the mobile display close


// get mobile display
function display(e)
{
  var id=$(e).attr('value');
  document.getElementById("body").classList.add("blur");
  document.getElementById('load').style.display="block";
  $.ajax({
    url: "https://0.0.0.0:9000/api/mobiles/"+id,
    type: "Get",
    dataType: "JSON",
    headers: {
      Authorization: "Token "+Token,
    },
    contentType: false,
    cache: false,
    processData: false,
    async: true,
    success: function(data){
      console.log(data);
      fill_display(data);
      document.getElementById("body").classList.remove("blur");
      document.getElementById('load').style.display="None";

    }
    
  });
}
// get mobile display close


// display ads at bottom
function fill_bottom_ads(data)
{
if(data.length < 4){
  var u_adds="";
  var l_adds="";
  for(var i=0;i<data.length;i++)
  {
    u_adds=u_adds+"<div title='"+data[i].type+"' class='col-sm-3'><p value='"+data[i].id+"' onclick='display(this)' id='t1'>"+data[i].type+"</p><a><img  value='"+data[i].id+"' onclick='display(this)' class='trdimg' src='"+images_path+"/"+data[i].image+"' class='img-responsive' style='width:100%' alt='Image'></a></div>";
  }
  }
  else
  {
    for(var i=0;i<4;i++)
    {
      u_adds=u_adds+"<div title='"+data[i].type+"' class='col-sm-3'><p value='"+data[i].id+"'  onclick='display(this)' id='t1'>"+data[i].type+"</p><a><img  value='"+data[i].id+"' onclick='display(this)' class='trdimg' src='"+images_path+"/"+data[i].image+"' class='img-responsive' style='width:100%' alt='Image'></a></div>";
    }
    if(data.length < 8)
    {
      for(var i=4;i<data.length;i++)
      {
        l_adds=l_adds+"<div title='"+data[i].type+"' class='col-sm-3'><p value='"+data[i].id+"'   onclick='display(this)' id='t1'>"+data[i].type+"</p><a><img  value='"+data[i].id+"' onclick='display(this)' class='trdimg' src='"+images_path+"/"+data[i].image+"' class='img-responsive' style='width:100%' alt='Image'></a></div>";
      }
    }
    else{
      for(var i=4;i<8;i++)
      {
        l_adds=l_adds+"<div title='"+data[i].type+"' class='col-sm-3'><p value='"+data[i].id+"'   onclick='display(this)' id='t1'>"+data[i].type+"</p><a><img  value='"+data[i].id+"' onclick='display(this)' class='trdimg' src='"+images_path+"/"+data[i].image+"' class='img-responsive' style='width:100%' alt='Image'></a></div>";
      }
    }
  }
  $('#upper_ads').html(u_adds);
  $('#lower_ads').html(l_adds);
}
// display ads at bottom close


// submit form
$(document).ready(function () {
$("#features").on('submit',(function(e)
{
document.getElementById("body").classList.add("blur");
document.getElementById('load').style.display="block";
formData=new FormData(this)
e.preventDefault();
$.ajax({
  url: "https://0.0.0.0:9000/api/mobiles/test/", 
  type: "POST",
  data: new FormData(this), 
  datatype: "JSON",
  headers: {Authorization: "Token "+Token,},
  contentType:false,     
  cache: false,            
  processData:false, 
  async:true,                    
  success: function(data)  
{
  new_slides(data.mobiles);
  $('#wc').html('Predicted Price is '+Math.round(data.price))
  fill_bottom_ads(data.mobiles)
  document.getElementById('load').style.display="none";
  document.getElementById("body").classList.remove("blur");
  }
  });
}));
});
// submit form close

// count time
function count(){
  timer=setInterval(function(){time=time+2;if(time%4==0){$('#trained_time').html(time+" seconds ago")}},2000)
}
$(document).ready(function(){
  $('#close_timer').on("click",function(){
    clearInterval(timer)
  })
})
// count time close


// training mobiles
$(document).ready(function(){
  $('#tm').on("click",(function(){
      $('#body').addClass('blur')
      $('#load').css('display','block')
      $.ajax({
        url: "https:/0.0.0.0:9000/api/mobiles/train",
        type: "Get",
        dataType: "JSON",
        headers: {Authorization: "Token "+Token},
        contentType: false,
        cache: false,
        async: true,
        processData: false,
        success: function(data){
          $('#body').removeClass('blur');
          $('#load').css('display','none');
          $('#notify_trained').css('display','block');
          count();
        }
    });
  }));
});
// training mobile closes


// js for sliding images
function plusDivs(n) {
  showDivs(slideIndex += n);
}
function currentDiv(n) {
  showDivs(slideIndex = n);
}
function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" w3-red", "");
  }
  x[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " w3-red";
  slideIndex++;
}
// close js for sliding images

    
