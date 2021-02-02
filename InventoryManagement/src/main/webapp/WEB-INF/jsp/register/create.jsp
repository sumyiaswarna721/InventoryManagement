<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<body>
    <div class="container-fluid" class="border border-warning" style="background-color: #C3C5CA">
        <div class="row">
            <div class="col-md-6 col-sm-12 col-lg-6 col-md-offset-3">
                <div class="panel panel-primary" C3C5CA>
                    <div class="panel-heading">Enter Your Details Here
                    </div>
                    <div class="panel-body">
                        <form name="myform" style="background-color: #C3C5CA">
                            <div class="form-group">
                                <label for="myName">First Name *</label>
                                <input id="myName" name="myName" class="form-control" type="text" data-validation="required">
                                <span id="error_name" class="text-danger"></span>
                            </div>
                            <div class="form-group">
                                <label for="lastname">Last Name *</label>
                                <input id="lastname" name="lastname" class="form-control" type="text" data-validation="email">
                                <span id="error_lastname" class="text-danger"></span>
                            </div>
                            <div class="form-group">
                                <label for="dob">Date Of Birth *</label>
                                <input type="date" name="dob" id="dob" class="form-control">
                                <span id="error_dob" class="text-danger"></span>
                            </div>
                            <div class="form-group">
                                <label for="email">E-mail *</label>
                                <input id="email" name="email"  class="form-control" >
                                <span id="error_email" class="text-danger"></span>
                            </div>
                            <div class="form-group">
                                <label for="gender">Gender</label>
                                <select name="gender" id="gender" class="form-control">
                                    <option selected>Male</option>
                                    <option>Female</option>
                                    <option>Other</option>
                                </select>
                                <span id="error_gender" class="text-danger"></span>
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone Number *</label>
                                <input type="text" id="phone" name="phone" class="form-control" >
                                <span id="error_phone" class="text-danger"></span>
                            </div>
                            <div class="form-group">
                                <label for="address">Address *</label>
                                <input type="text" id="address" name="address" class="form-control" >
                                <span id="error_address" class="text-danger"></span>
                            </div>

                            <button id="submit" type="submit" value="submit" class="btn btn-primary center">Submit</button>

                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</body>