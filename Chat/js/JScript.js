// Start AJAX 
function ajaxRequest() {

    try { return new ActiveXObject("Msxml2.XMLHTTP"); }
    catch (e) {
        try { return new ActiveXObject("Microsoft.XMLHTTP"); }
        catch (e) {
            try { return new XMLHttpRequest(); }
            catch (e) {
                return false;
            }
        }
    }

    this.post = function (RequestObject) {
        RequestObject.open("POST", file, true);
        RequestObject.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        RequestObject.send(parameters);
    };

    this.stateChanged = function (RequestObject) {
        switch (RequestObject.readyState) {
            case 0: // UNINITIALIZED
                break;
            case 1: // LOADING
                break;
            case 2: // LOADED
                break;
            case 3: // INTERACTIVE
                break;
            case 4: // COMPLETED
                if (RequestObject.status === 200 && document.getElementById('chats')) {
                    // determine where the scrollbar is positioned
                    var niv_scroll = document.getElementById('chats').scrollTop;
                    // get chat content to be added in page. 
                    var objChat = JSON.parse(RequestObject.responseText);
                    setHtmlChat(objChat);        // set and add chat content in page

                    // Make auto-scroll to scrollbar position if it was moved, or bottom of DIV #chats
                    var div = document.getElementById('chats');
                    var scrollHeight = Math.max(div.scrollHeight, div.clientHeight);
                    if (niv_scroll !== 0 && niv_scroll < scrol0) {
                        div.scrollTop = niv_scroll;
                    }
                    else {
                        div.scrollTop = div.scrollHeight;
                        i_scrol = 0;
                    }
                    // Sets scrollbar position
                    if (i_scrol === 0) {
                        scrol0 = document.getElementById('chats').scrollTop;
                        i_scrol = 1;
                    }

                    if (playbeep === 2) playBeep(objChat.time);       // calls to check for play beep if chat added
                }
                break;
            default: alert("error");
        }
    };
};