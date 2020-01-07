<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewVideoWork.aspx.cs" Inherits="NewFinalFYP.Videos.NewVideoWork" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.4.1.min.js"></script>
    <title>Document</title>
</head>
<script language="javascript">
    var video=document.getElementById("#myVideo");
    var count=0;
    var video = document.getElementById(".myVideo"); //or
    var video = $(".myVideo").get(0); //or
    var video = $(".myVideo")[0];

        $(document).ready(function () {

           $(".play").click(function(){
            $(".myVideo").get(0).play();
           count= $('.myVideo').length();
           });
           $(".Pause").click(function(){
            $(".myVideo").get(0).pause();
           // $('#txt').text(count);
           duration();
           });

           $(".myVideo").on("timeupdate",function(event){
                onTrackedVideoFrame(this.currentTime, this.duration);
    });
             



        });
        function onTrackedVideoFrame(currentTime, duration){
    $("#current").text(currentTime); //Change #current to currentTime
    $("#duration").text(duration)
}


            function recursive(){
                    recursion();
            };
            function   recursion(){
                count++;
                
            }
    </script>

<body>
    
<div>
    <button class="play" type="button"> Play</button>
    <button class="Pause" type="button"> Pause</button>
</div>
<div>
     <video class="myVideo" height="400" width="400" autoplay  controls src="Hadees.mp4"  >   
        <source id="ss"  type='video/mp4'>
    </video>
</div>
<button type="button" id="btn">Call Count</button>
<label id="txt">0</label>


<div id="current">0:00</div>
<div id="duration">0:00</div>

</body>
</html>

