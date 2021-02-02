<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Bootstrap 4 Navbar Fixed to Top</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <style>
            .bs-example{
                margin: 20px;

            }
            body{
                padding-top: 70px;
           
                  body{
      background-image: url(https://www.googlesir.com/wp-content/uploads/2019/09/objectives-and-importance-of-inventory-management.jpg);
    }
    
            }
        </style>
    </head>
    <body>
        <div class="bs-example">
            <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
                <a href="#" class="navbar-brand">SSBD</a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav">
                        <a href="#" class="nav-item nav-link active">Home</a>
                        <a href="#" class="nav-item nav-link">Dashboard</a>

                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Administration</a>
                        <div class="dropdown-menu">
                            <a href="/client/create" class="dropdown-item">Add Client</a>
                            <a href="/product/entryProduct" class="dropdown-item">Add Product</a>
                            <a href="/purchaseProduct/purchase" class="dropdown-item">Add Purchase</a>
                            <a href="/invoice/create" class="dropdown-item">Add Invoice</a>
                            <a href="/client/create" class="dropdown-item">Add Report</a>
                            <a href="/register/create" class="dropdown-item">Add Registration</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Report</a>
                        <div class="dropdown-menu">
                            <a href="#" class="dropdown-item">View Client</a>
                            <a href="/viewProduct/create" class="dropdown-item">View Product</a>
                            <a href="#" class="dropdown-item">View Purchase</a>
                            <a href="#" class="dropdown-item">View Invoice</a>
                            <a href="#" class="dropdown-item">View Report</a>
                            <a href="#" class="dropdown-item">View Registration</a>
                        </div>
                    </div>


                    <div class="navbar-nav ">
                        <a href="/login/create" class="nav-item nav-link">Login</a>
                    </div>
                    <form class="form-inline ml-auto">
                        <input type="text" class="form-control mr-sm-2" placeholder="Search">
                        <button type="submit" class="btn btn-outline-light">Search</button>
                    </form>
                </div>
            </nav>

            <!----------start footer----------->
            <div class="container-fluid">
                <div class="row fixed-bottom bg-info">
                    <div class="col-4">

                    </div>
                    <div class="col-4">
                        <p class="text-xs-center">© sumyiaswarna2020. All rights reserved.</p>
                    </div>
                    <div class="col-4">

                    </div>

                </div>
            </div>
            <!----------end footer----------->

        </div>
    </body>
</html>