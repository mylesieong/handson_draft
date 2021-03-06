<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap Core CSS file -->
    <link rel="stylesheet" 
      href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

    <!--Custom css style-->
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/carousel.css">

    <!-- JQuery scripts and Bootstrap Core scripts -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <!-- Custom js script -->
    <script src="js/poc.js"> </script>
  </head>
  <body>
    <div class="container">

      <button type="button" class="btn btn-primary text-center" 
	onclick="loadText()">Load Text</button>
      <p class="small"> Get from support-text.txt </p>
      <div class="well" id="output-text">Output Text Area.</div>

      <button type="button" class="btn btn-success text-center" 
	onclick="loadJson()">Load Json</button>
      <p class="small"> Get from support-json.txt </p>
      <div class="well" id="output-json">Output Json Area.</div>

      <button type="button" class="btn btn-info text-center" 
	onclick="loadServlet()">Load Json From Servlet</button>
      <p class="small"> Post from Servlet </p>
      <div class="well" id="output-servlet">Output Json Area.</div>

    </div>
  </body>
</html>
