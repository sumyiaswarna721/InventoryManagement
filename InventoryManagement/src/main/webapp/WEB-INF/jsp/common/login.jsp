            
<html lang="en">
    <head>
        <title>login</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


        <style type="text/css">

            body{
                background-image: url(http://www.joburgchiropractor.co.za/images/background.jpg);
            }

        </style>
    </head>
    <body>

        <!-- if you want to create login page and register page together in one page ...you have to only chnage his name...that's it...                 -->
        <div class="container" style="margin-top: 5%;">
            <div class="row">
                <div class="col-sm-4"> 

                </div>
                <div class="col-md-4">

                    <h1 class="text-center text-success"> Login Form</h1>
                    <br/>

                    <div class="col-sm-12">
                        <div class="tab-content">
                            <div id="home" class="tab-pane fade in active">
                                <form method="POST" id="sweetModal" action="/login">
                                    <!--                <form name='loginForm' action="<c:url value='login'/>" method='POST'>-->

                                    <table>
                                        <tr>
                                            <td>User Name :</td>
                                            <td><input type='text' name='username' value=''> <br><br>
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                       
                                            <td>Password :</td>
                                            <td><input type='password' name='password' /> <br><br>
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                       
                                            <td><input name="submit" type="submit"
                                                       value="submit" />
                                            </td>
                                            <td><input name="reset" type="reset" />
                                            </td>
                                        </tr>
                                    </table>

                                </form>
                                <br/>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>

