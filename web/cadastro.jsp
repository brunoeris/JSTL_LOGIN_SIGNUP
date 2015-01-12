<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  </head>

  <body>
    <div class="container">
      <h1>Olá, visitante!</h1>
      <h3>Informe seus dados:</h3><br>
      <form class="form-horizontal" role="form" action="incluir.jsp">
        <div class="form-group">
          <label class="control-label col-sm-2" for="email">Email:</label>
          <div class="col-sm-10">
            <input type="email" class="form-control" name="email" id="email" placeholder="Email" required>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2" for="pwd">Senha:</label>
          <div class="col-sm-10">          
            <input type="password" class="form-control" name="pass" id="password1" placeholder="Senha" required>
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-2" for="pwd">Confirme a Senha:</label>
          <div class="col-sm-10">          
            <input type="password" class="form-control" id="password2" placeholder="Repita a senha" required>
          </div>
        </div>
        <div class="form-group">        
          <div class="col-sm-offset-2 col-sm-10">
            <button type="submit" class="btn btn-primary">Cadastrar</button>
          </div>
        </div>
      </form>
    </div>
      
      <script type="text/javascript">
        window.onload = function () {
            document.getElementById("password1").onchange = validatePassword;
            document.getElementById("password2").onchange = validatePassword;
        };
        function validatePassword(){
        var pass2=document.getElementById("password2").value;
        var pass1=document.getElementById("password1").value;
        if(pass1!==pass2)
            document.getElementById("password2").setCustomValidity("Senhas não conferem!");
        else
            document.getElementById("password2").setCustomValidity('');
        }
     </script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  </body>

</html>
