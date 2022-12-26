<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">

<script type="text/javascript">
$(document).ready(function(){
    $('.customer-logos').slick({
        slidesToShow: 6,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 1500,
        arrows: false,
        dots: false,
        pauseOnHover: false,
        responsive: [{
            breakpoint: 768,
            settings: {
                slidesToShow: 4
            }
        }, {
            breakpoint: 520,
            settings: {
                slidesToShow: 3
            }
        }]
    });
});
</script>
<style type="text/css">
h2{
  text-align:center;
  padding: 20px;
}
/* Slider */

.slick-slide {
    margin: 0px 20px;
}

.slick-slide img {
    width: 100px;
    height: 100px;
}

.slick-slider
{
    position: relative;
    display: block;
    box-sizing: border-box;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
            user-select: none;
    -webkit-touch-callout: none;
    -khtml-user-select: none;
    -ms-touch-action: pan-y;
        touch-action: pan-y;
    -webkit-tap-highlight-color: transparent;
}

.slick-list
{
    position: relative;
    display: block;
    overflow: hidden;
    margin: 0;
    padding: 0;
}
.slick-list:focus
{
    outline: none;
}
.slick-list.dragging
{
    cursor: pointer;
    cursor: hand;
}

.slick-slider .slick-track,
.slick-slider .slick-list
{
    -webkit-transform: translate3d(0, 0, 0);
       -moz-transform: translate3d(0, 0, 0);
        -ms-transform: translate3d(0, 0, 0);
         -o-transform: translate3d(0, 0, 0);
            transform: translate3d(0, 0, 0);
}

.slick-track
{
    position: relative;
    top: 0;
    left: 0;
    display: block;
}
.slick-track:before,
.slick-track:after
{
    display: table;
    content: '';
}
.slick-track:after
{
    clear: both;
}
.slick-loading .slick-track
{
    visibility: hidden;
}

.slick-slide
{
    display: none;
    float: left;
    height: 100%;
    min-height: 1px;
}
[dir='rtl'] .slick-slide
{
    float: right;
}
.slick-slide img
{
    display: block;
}
.slick-slide.slick-loading img
{
    display: none;
}
.slick-slide.dragging img
{
    pointer-events: none;
}
.slick-initialized .slick-slide
{
    display: block;
}
.slick-loading .slick-slide
{
    visibility: hidden;
}
.slick-vertical .slick-slide
{
    display: block;
    height: auto;
    border: 1px solid transparent;
}
.slick-arrow.slick-hidden {
    display: none;
}
</style>
</head>
<body>

<div class="container">
  <h4 style="text-align: left;"><b>CLUBS</b></h4>
   <section class="customer-logos slider">
      <div class="slide"><img src="https://www.bundesliga.com/assets/clublogo/DFL-CLU-00000G.svg"></div>
      <div class="slide"><img src="https://www.bundesliga.com/assets/clublogo/DFL-CLU-000017.svg"></div>
      <div class="slide"><img src="https://www.bundesliga.com/assets/clublogo/DFL-CLU-000007.svg"></div>
      <div class="slide"><img src="https://www.bundesliga.com/assets/clublogo/DFL-CLU-000003.svg"></div>
      <div class="slide"><img src="https://www.bundesliga.com/assets/clublogo/DFL-CLU-00000F.svg"></div>
      <div class="slide"><img src="https://www.bundesliga.com/assets/clublogo/DFL-CLU-00000B.svg"></div>
      <div class="slide"><img src="https://www.bundesliga.com/assets/clublogo/DFL-CLU-00000G.svg"></div>
      <div class="slide"><img src="https://www.bundesliga.com/assets/clublogo/DFL-CLU-000017.svg"></div>
      <div class="slide"><img src="https://www.bundesliga.com/assets/clublogo/DFL-CLU-000007.svg"></div>
      <div class="slide"><img src="https://www.bundesliga.com/assets/clublogo/DFL-CLU-000003.svg"></div>
      <div class="slide"><img src="https://www.bundesliga.com/assets/clublogo/DFL-CLU-00000F.svg"></div>
      <div class="slide"><img src="https://www.bundesliga.com/assets/clublogo/DFL-CLU-00000B.svg"></div>
     
     
   </section>
</div>
</body>
</html>