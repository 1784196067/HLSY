<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>test</title>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"> 
    <link rel="stylesheet" type="text/css" href="../dist/css/wangEditor.min.css">   
    <style type="text/css">
        #editor-trigger {
            height: 400px;
            /*max-height: 500px;*/
        }
        .container {
            width: 100%;
            margin: 0 auto;
            position: relative;
        }
        .vertical{
            width: 100%;
            margin-top: 5px;
            margin-right: -8px;
            text-align: center;
        }
    </style>
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../dist/js/lib/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="../dist/js/wangEditor.js"></script>
    <script type="text/javascript">
         $(function () {
             var w = $(".nav li").css('width');
             $(".dropdown ul li").css('width', w);
             $("#myProjects").click(function(){
                 alert("hello");
                 var ifr = window.frames[0];
                 //window.frames[0].document.location="all.html"; 
                 ifr.attr("src", "all.html");
                 ifr.location.reload(true);
                 //ifr.reload();
             });
         });
    </script>
    <script type="text/javascript">
        // var editor = new wangEditor('editor-trigger');
        // editor.create();
        $(function () {
            var editor = new wangEditor('editor-trigger');
            editor.create();
        });
    </script>
</head>
<body>
    <div class="row">
        <div class="col-md-2">
             <div class="vertical">
                <div class="navbar navbar-default" role="navigation">
                    <ul class="nav nav-tabs nav-stacked">
                     <li id="user"><a href="javascript:void(0)"><span class="glyphicon glyphicon-user"></span>用户名</a></li>
                     <li class="active" id="myProjects"><a href="javascript:void(0)"><span class="glyphicon glyphicon-tags"></span>我的项目</a></li>
                     <li id="applying""><a href="javascript:void(0)"><span class="glyphicon glyphicon-flag"></span>申请项目</a></li>
                     <li id="create"><a href="javascript:void(0)"><span class="glyphicon glyphicon-upload"></span>发起项目</a></li>
                     <li id="myMessags"><a href="javascript:void(0)"><span class="glyphicon glyphicon-envelope"></span>我的消息</a></li>
                     <li class="dropdown navbar navbar-default">
                        <a data-toggle="dropdown" class="dropdown-toggle"><span class="glyphicon glyphicon-cog"></span> 账号管理<span class="caret"></span></a>
                         <ul class="dropdown-menu"  style="text-align:center">
        	             <li class="btn-primary"><a href=""><span class="glyphicon glyphicon-pencil"></span>修改资料</a></li>
        	             <li class="btn-primary"><a href=""><span class="glyphicon glyphicon-pencil"></span>修改密码</a></li>
        	             <li class="btn-primary"><a href=""><span class="glyphicon glyphicon-off"></span>退出账号</a></li>
                        </ul>
                    </li>  
                  </ul>
             </div> 
        </div>
      </div>

        <div class="col-md-10">
            <iframe src="apply.html" name="frame_content" id="frame_content" style="width:100%;height:981px;min-height:700px;"></iframe>
        </div>

    </div>
    
</body>
</html>