function SendMsg(e, Control, URL) {

    var xmlhttpObject_SendChat;
    try { xmlhttpObject_SendChat = new ActiveXObject("Msxml2.XMLHTTP"); }
    catch (e) {
        try { xmlhttpObject_SendChat = new ActiveXObject("Microsoft.XMLHTTP"); }
        catch (e) {
            try { xmlhttpObject_SendChat = new XMLHttpRequest(); }
            catch (e) {
                alert("Your Browser Does Not Support AJAX");
            }
        }
    }


    var KeyCode = (e.keyCode ? e.keyCode : e.which);
    if (KeyCode == 13 && Control.value != "") {
        xmlhttpObject_SendChat.open("POST", URL, true);
        xmlhttpObject_SendChat.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xmlhttpObject_SendChat.timeout = 10000;
        var PARAMETERS = encodeURI("msg=" + Control.value);
        xmlhttpObject_SendChat.send(PARAMETERS);
        Control.value = "";
    }

}


var UpdatedChatId = 0;

function GetMsg(URL) {

    var xmlhttpObject_GetChat;
    try { xmlhttpObject_GetChat = new ActiveXObject("Msxml2.XMLHTTP"); }
    catch (e) {
        try { xmlhttpObject_GetChat = new ActiveXObject("Microsoft.XMLHTTP"); }
        catch (e) {
            try { xmlhttpObject_GetChat = new XMLHttpRequest(); }
            catch (e) {
                alert("Your Browser Does Not Support AJAX");
            }
        }
    }

    xmlhttpObject_GetChat.onreadystatechange = function () {
        switch (xmlhttpObject_GetChat.readyState) {
            case 0: // UNINITIALIZED
                break;
            case 1: // LOADING
                break;
            case 2: // LOADED
                break;
            case 3: // INTERACTIVE
                break;
            case 4: // COMPLETED
                if (xmlhttpObject_GetChat.status == 200) {
                    var response = xmlhttpObject_GetChat.responseText.split(",");
                    if (response[0] != "") {
                        UpdatedChatId = response[0];
                        var div = document.createElement("DIV");
                        div.innerHTML = response[1];
                        document.getElementById("messages").appendChild(div);
                    }
                    window.setTimeout("GetMsg('" + URL + "')", 1000);
                }
                break;
            default: alert("error");
        }
    }

    xmlhttpObject_GetChat.open("POST", "msgsrv.php", true);
    xmlhttpObject_GetChat.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    var PARAMETERS = encodeURI("UpdatedChatId=" + UpdatedChatId);
    xmlhttpObject_GetChat.send(PARAMETERS);

    xmlhttpObject_GetChat.timeout = 20000;
    xmlhttpObject_GetChat.ontimeout = function () {
        xmlhttpObject_GetChat.abort();
        window.setTimeout("GetMsg('" + URL + "')", 1000);
    }
}

