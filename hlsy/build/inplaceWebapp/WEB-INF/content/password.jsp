<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>花朵朵</title>   
        <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"> 
        <link rel="stylesheet" type="text/css" href="../dist/css/wangEditor.min.css"> 
         <link rel="stylesheet" type="text/css" href="../dist/css/mystyle.css">       
        <!-- 以下两个插件用于在IE8以及以下版本浏览器支持HTML5元素和媒体查询，如果不需要用可以移除 -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
<div class="container_1" style="margin-top:150px;">
          <form class="form-horizontal" role="form" id="change_password" action="" method="post">
           <div class="form-group">
              <label for="old_password" class="col-md-4 control-label">旧密码：</label>
              <div class="col-md-6">
               <input type="password" class="form-control" id="old_password" name="oldPwd"/>               
              </div>
           </div>         
           <div class="form-group">
              <label for="new_password" class="col-md-4 control-label">新密码：</label>
              <div class="col-md-6">
               <input type="password" class="form-control" id="new_password" name="newPwd"/>
              </div>
           </div>
           <div class="form-group">
              <label for="ensure_password" class="col-md-4 control-label">确认新密码：</label>
              <div class="col-md-6">
               <input type="password" class="form-control" id="ensure_password"/>
              </div>
           </div>
           <div class="form-group">
            <button type="submit" class="col-md-2 btn btn-default btn_r disabled" id="save" class="form-control">保存</button>
           </div>
          </form>
         </div>  
        <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../dist/js/lib/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="../dist/js/wangEditor.js"></script>
    <script type="text/javascript" src="../dist/js/password.js"></script>
    </body>
</html>