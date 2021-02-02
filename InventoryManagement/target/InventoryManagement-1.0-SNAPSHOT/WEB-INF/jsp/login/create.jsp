
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

                                <form action="/login/save">
                                    <div class="form-group">
                                        <label for="UserType">User Type</label>
                                        <select class="form-control" id="userType" name="userType">
                                            <option>Admin</option>
                                            <option>Super Admin</option>
                                            <option>Manager</option>
                                            <option>Accounce</option>
                                            <option>Director</option>
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label for="UserName">User Name:</label>
                                        <input type="text" class="form-control" id="userName" name="userName">
                                    </div>


                                    <div class="form-group">
                                        <label for="email">Email address:</label>
                                        <input type="email" class="form-control" id="email" name="email">
                                    </div>

                                    <div class="form-group">
                                        <label for="pwd">Password:</label>
                                        <input type="password" class="form-control" id="pwd" name="pwd">
                                    </div>


                                    <button type="submit" class="btn btn-primary btn-lg">Log in</button>
                                    <a href="#" class="pull-right btn btn-default btn-danger" > Forgot Your Password ?</a>

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
