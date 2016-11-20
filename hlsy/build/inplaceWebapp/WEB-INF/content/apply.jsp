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
            background-color: ghostwhite;
        }
        .ra{
            margin-right:20px;
            margin-bottom:15px;
        }
        #content{
            margin: 0 auto;
            margin-top:30px;
        }
        select{
            padding: 3px;
            margin-left:15px;
            margin-bottom:15px;
        }
        option{
            width:98px;
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
    
     <script type="text/javascript">
        $(function () {
            $("input:radio[name='fund']").click(function(){
                if($("input:radio[name='fund']:checked")[0].value == "是"){
                    $("#num").show();
                }else{
                    $("#num").hide();
                }
            })
        });
    </script>
    


       <script type="text/javascript">
        $(function() {
          function objInit(obj) {//下拉列表框初始化
              return $(obj).html("<option>请选择</option>");
          }
          var arrData = { //定义一个数组保存相关数据
              管理学院: { 社团: "型号1_1_1,型号1_1_2", 学生会: "型号1_2_1,型号1_2_2" },
              信电学院: { 社团: "型号2_1_1,型号2_1_2", 学生会: "型号2_2_1,型号2_2_2" },
              文法学院: { 社团: "型号3_1_1,型号3_1_2", 学生会: "型号3_2_1,型号3_2_2" }
          };
          function objChange(F, T, C){
              var n = 1;
            $.each(arrData, function(pF) { //遍历数据增加厂商项
              $(F).append("<option>" + pF + "</option>");
            });

          $(F).change(function() { //厂商列表框选项改变事件
              objInit(T);
              objInit(C);
              
              $.each(arrData, function(pF, pS) {
                  var selF = F + " option:selected";
                  if ($(selF).text() == pF) { //如果厂商选中项与数据匹配

                      $.each(pS, function(pT, pC) { //遍历数据增加品牌项
                          $(T).append("<option>" + pT + "</option>");
                      });

                      $(T).change(function() { //品牌列表框选项改变事件
                          objInit(C);
                          $.each(pS, function(pT, pC) {
                              var selT = T + " option:selected";
                              if ($(selT).text() == pT) { //如果品牌选中项与数据匹配

                                  $.each(pC.split(","), function() { //遍历数据增加型号项
                                      $(C).append("<option>" + this + "</option>");
                                  });
                              }
                          });
                      });
                  }
              });
              if($(C).val() == "请选择" ){
                  $(C).change(function() {
                      //alert(C.substring(1,C.length-1));
                    if( F.substring(1,F.length-1) == "mcollege" ){
                      n++;
                      var add = "<br/><select id=mcollege" + n +" name=mcollege" + n +" style='margin-left:73px;'><option value=''>请选择....</option></select>&nbsp;<select id=mcate" + n +  " name=mcate" 
                      + n +"><option value=''>请选择.....</option></select>&nbsp;<select id=mclub" + n + " name=mclub" + n +"><option value=''>请选择.....</option></select>";
                      $(F).parent().append(add);
                      objChange('#mcollege' + n , '#mcate' + n, '#mclub' + n);
                    }else if( F.substring(1,F.length-1) == "dcollege" ){
                        n++;
                      var add = "<br/><select id=dcollege" + n + " name=dcollege" + n +" style='margin-left:73px;'><option value=''>请选择....</option></select>&nbsp;<select id=dcate" + n +  " name=dcate" 
                      + n +"><option value=''>请选择.....</option></select>&nbsp;<select id=dclub" + n + " name=dclub" + n +"><option value=''>请选择.....</option></select>";
                      $(F).parent().append(add);
                      objChange('#dcollege' + n , '#dcate' + n, '#dclub' + n);
                    }                  
                  });
              }  
               
          });
          }
         objChange('#mcollege1' , '#mcate1', '#mclub1');
         objChange('#dcollege1' , '#dcate1', '#dclub1');
          })
       </script>
</head>
<body>
    <form name="content" id="content" method="post" action="">
     
        <div id="editor-container" class="container">
        <div class="radio ra">申请经费：
         <label for="fund2"><input type="radio" name="fund" id="fund2" value="否"/>否</label>&nbsp;&nbsp;&nbsp;
          <label for="fund1"><input type="radio" name="fund" id="fund1" value="是"/>是</label>
          <label for="num" style="display:none;" id="num"><input type="input" name="num"  style="width:45px;"  value=""/>&nbsp;&nbsp; 元</label>
     </div>

     <div class="radio ra">申请类型：
         <label for="cate1"><input type="radio" name="cate" id="cate1" value="game"/> 比赛类</label>&nbsp;&nbsp;&nbsp;
         <label for="cate2"><input type="radio" name="cate" id="cate2" value="activity"/>活动类</label>&nbsp;&nbsp;&nbsp;
         <label for="cate3"><input type="radio" name="cate" id="cate3" value="lecture"/>讲座类</label>&nbsp;&nbsp;&nbsp;
         <label for="cate4"><input type="radio" name="cate" id="cate4" value="other"/>其他</label>
     </div>
        
      <div class="form-group">主办方：
           <select id="mcollege1" name="mcollege1">
            <option value="">请选择....</option>
          </select>&nbsp;
          <select id="mcate1" name="mcate1">
           <option value="">请选择.....</option>
          </select>&nbsp;
          <select id="mclub1" name="mclub1">
           <option value="">请选择.....</option>
          </select>
      </div>

      <div class="form-group">协办方：
           <select id="dcollege1" name="dcollege1">
            <option value="">请选择....</option>
          </select>&nbsp;
          <select id="dcate1" name="dcate1">
           <option value="">请选择.....</option>
          </select>&nbsp;
          <select id="dclub1" name="dclub1">
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