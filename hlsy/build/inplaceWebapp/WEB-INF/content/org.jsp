<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>test</title>
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"> 
    <link rel="stylesheet" type="text/css" href="../dist/css/wangEditor.min.css">  
    <style type="text/css">
        #editor-trigger {
            height: 600px;
            /*max-height: 500px;*/
        }
        body {
            width: 95%;
            margin: 0 auto;
            position: relative;
            margin-left: 10px;
            margin-right: 10px;
        }
        input{
            margin-right:35px;
            margin-bottom:35px;
        }
        #content{
            margin: 0 auto;
        }
    </style>
    <script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../dist/js/lib/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="../dist/js/wangEditor.js"></script>
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
    <form name="content" id="content" method="post" action="">
     
        <div id="editor-container" class="container">
        <div class="radio">申请经费：
         <label for="fund2"><input type="radio" name="fund" id="fund2" value="否"/>否</label>&nbsp;&nbsp;&nbsp;
          <label for="fund1"><input type="radio" name="fund" id="fund1" value="是"/>是</label>
          <label for="num" style="display:none;"><input type="input" name="num" id="num" style="width:45px;"  value=""/>元</label>
     </div>

     <div class="radio">申请类型：
         <label for="cate1"><input type="radio" name="cate" id="cate1" value="game"/> 比赛类</label>&nbsp;&nbsp;&nbsp;
         <label for="cate2"><input type="radio" name="cate" id="cate2" value="activity"/>活动类</label>&nbsp;&nbsp;&nbsp;
         <label for="cate3"><input type="radio" name="cate" id="cate3" value="lecture"/>讲座类</label>&nbsp;&nbsp;&nbsp;
         <label for="cate4"><input type="radio" name="cate" id="cate4" value="other"/>其他</label>
     </div>
        
      <div class="form-group">主办方：
           <select id="college1" name="college1">
            <option value="">请选择....</option>
            <option value="管理学院">管理学院</option>
            <option value="信电学院">信电学院</option>
            <option value="文法学院">文法学院</option>
          </select>&nbsp;
          <select id="club1" name="club1">
           <option value="">请选择.....</option>
          </select>
      </div>

      <div class="form-group">协办方：
           <select id="college2" name="college2">
            <option value="">请选择....</option>
            <option value="管理学院">管理学院</option>
            <option value="信电学院">信电学院</option>
            <option value="文法学院">文法学院</option>
          </select>&nbsp;
          <select id="club2" name="club2">
           <option value="">请选择.....</option>
          </select>
      </div>

        <a href="">添加附件</a>
        <div id="editor-trigger">
            <p>请输入内容...</p>
        </div>
    </div>
    </form>
    
    
</body>
</html>