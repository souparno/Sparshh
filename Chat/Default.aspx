<%@ Page Language="C#" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
      .msg{ background:#aaa;padding:.2em; border-bottom:1px #000 solid}
      .old{ background-color:#246499;}
      .new{ background-color:#3B9957;}
    .error{ background-color:#992E36;}
    </style>
    <style type="text/css">
     .logo
     {
         width:100%;
         height:auto;
     }
     .side-nav
     {
         background-image:url(image/left-bar.png);
     }
     .language-nav
     {
         background-image:url(image/nav-bg.png);
     }
     .footer-img
     {
         width:100%;
         height:auto;
         border-style:solid;
         border-color:#ebcc00;
         border-width:2px;
     }
     .plus
     {
         background-image:url('../image/glyphicons-halflings-white.png');
         background-position: -408px -96px;
         height: 14px;
         width: 14px;
         display: inline-block;
     }
     .minus
     {
         background-image:url('../image/glyphicons-halflings-white.png');
         background-position: -433px -96px;
         height: 14px;
         width: 14px;
         display: inline-block;
     }
     .remove
     {
         background-image:url('../image/glyphicons-halflings-white.png');  
         background-position: -312px 0;
         height: 14px;
         width: 14px;
         display: inline-block;
     }
    </style>
    <script type="text/javascript" src="js/Chat.js"></script>
</head>
<body onload="GetMsg('GetChat.aspx');">


    <div id="chat_window" style="width:200px;position:fixed;bottom:0%;display:block;" class="right">
    <div id="hide_show_control" class="row size-12" style="background-color:#000000;border:1px solid Gray;padding:2px;cursor:pointer;" onclick="hide_chat()">
     <span id="show_chat_user_id" style="color:White" class="left">SP0000001</span>
     <a href="javascript:void(0)" class="remove right" onclick="close_chat()"></a>
     <a id="hide_show_flag" href="javascript:void(0)" class="minus right"></a>
    </div>
    <div id="show_chat" class="row size-12" style="background-color:White;border:1px solid Gray;height:350px;overflow:auto;padding:4px;">
    </div>
    <textarea id="chat_txt" class="row size-12" style="height:50px;width:100%;border:1px solid Gray;" rows="10" cols="10" onkeypress="SendMsg(event, this,'SendChat.aspx')" ></textarea>
    </div>


</body>
</html>
