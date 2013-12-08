



function chat() {

    this.url = 'chattxt/chat.txt'; //---gets the url of the file---//
    this.AjaxBusy = false;

    this.Ajax = function Ajax() {
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
    };

    this.update_chat = function update_chat() {
        var mypostrequest = this.Ajax();
        mypostrequest.open("POST", this.url, true);
        mypostrequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        mypostrequest.onreadystatechange = function () { new chat().update_chat_statechanged(mypostrequest); };
        mypostrequest.send();

        this.AjaxBusy = true;
    };

    this.update_chat_statechanged = function statechanged(RequestObj) {
        switch (RequestObj.readyState) {
            case 0: // UNINITIALIZED
                break;
            case 1: // LOADING
                break;
            case 2: // LOADED
                break;
            case 3: // INTERACTIVE
                break;
            case 4: //COMPLETED
                if (RequestObj.status === 200) {
                    var chatrows = '';
                    var objChat = JSON.parse(RequestObj.responseText);
                    for (var i = 0; i < objChat.chats.length; i++) {
                        chatrows += '<p><span class="chatusr">&bull; ' + objChat.chats[i].user + ' - </span><em>' + objChat.chats[i].date + '</em><span class="chatmsg">- ' + objChat.chats[i].chat + '</span></p>';
                    }
                    document.body.innerHTML = chatrows;
                }

                this.AjaxBusy = false;
                break;
        }
    };

    this.AjaxPeriodicPoller = function AjaxPeriodicPoller() {

        if (!this.AjaxBusy) {
            this.update_chat();
        }

        setTimeout(function () {
            new chat().AjaxPeriodicPoller();
        }, 1900);

    };

};

var chat_obj = new chat();
chat_obj.AjaxPeriodicPoller();