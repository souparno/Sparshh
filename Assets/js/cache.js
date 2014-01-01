function cachechannel(userid,url) {

    this.url = url;
    this.userid = userid;

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



    this.connect = function connect() {
        var mypostrequest = this.Ajax();
        mypostrequest.open("POST", this.url, true);
        mypostrequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        mypostrequest.onreadystatechange = function () { new cachechannel().update_chat_statechanged(mypostrequest); };
        mypostrequest.send(encodeURI("userid=" + this.userid));

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
                    //var objChat = JSON.parse(RequestObj.responseText);
                    alert(RequestObj.responseText);

                }
                break;
        }
    };
};



