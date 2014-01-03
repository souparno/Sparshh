
Ajaxsend = 0; // parameter to check Ajax sending
Parameter = '';
Url = '';

function initCacheCall(userid,url) {
    Parameter = "userid=" + userid;
    Url = url;
};



function cachechannel() {

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




    this.post = function post() {
        Ajaxsend = 1; // Ajax Buzy
        var mypostrequest = this.Ajax();
        mypostrequest.open("POST", Url, true);
        mypostrequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        mypostrequest.onreadystatechange = function () { new cachechannel().statechanged(mypostrequest); };
        mypostrequest.send(encodeURI(Parameter));

    };

    this.statechanged = function statechanged(RequestObj) {
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
                    var objChat = JSON.parse(RequestObj.responseText);
                    //alert(objChat.Alert);
                    Ajaxsend = 0;// Set the ajax free
                }
                break;
        }
    };
};

// Calls Ajax function to each 2 seconds (with chatuser) to 
function apelAjax() {
    // if Ajax free, sends data, else, set free for next auto-call
    if (Ajaxsend === 0) {
        var obj = new cachechannel();
        obj.post();
    }
    else ajxsend = 0;
    setTimeout('apelAjax()', 4000);
}


