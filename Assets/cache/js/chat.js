/************************************************************************************
This is a simple chat class implemented with the OOPS in javascript
Version      : 1.0
Developed By : Souparno Majumder 
Copyright    : Go ahead and use this as you wish.  ©2014-2015
************************************************************************************/

var UserId = '';
var UserName = '';

function chat(Argument) {
    UserId = Argument.UserId;
    UserName = Argument.UserName;
}


var AjaxBusy = 0;
var RequestJobManager = 0;
var delay = 2;

    /******************************************************************************************* 
       self calling function 
    ********************************************************************************************/
    function apealAjax() {
         if (AjaxBusy === 0) {
            if (RequestJobManager == 0) {
                AjaxBusy = 1;
                GetUser();
            }
            else if (RequestJobManager == delay) {
                RequestJobManager = -1;
                AjaxBusy = 1;
                SetUser();
            }
            RequestJobManager++;
        }
        setTimeout('apealAjax()', 1900);
    };


    /******************************************************************************************* 
    Gets the online users form the cache
    ********************************************************************************************/
    function GetUser() {
            new AJAX({
                RequestVerb: 'GET',
                RequestUrl: '../Assets/cache/cache.txt',
                onSuccess: onlineusers,
                onComplete: requestComplete,
                TimeOut: '6'
            }).SendHTTPRequest();
    }

    /******************************************************************************************* 
    Updates the present user to the cache
    ********************************************************************************************/
    function SetUser() {
            new AJAX({
                RequestVerb: 'POST',
                RequestUrl: '../Assets/cache/cache.php',
                Parameters: "userid=" + UserId + "&username=" + UserName,
                onSuccess: UpdateSuccess,
                onComplete: requestComplete,
                TimeOut: '6'
            }).SendHTTPRequest();
    }


    /******************************************************************************************* 
    This function gets called on every successful registration of users to the cache
    ********************************************************************************************/
    function UpdateSuccess(param) {
        var response = JSON.parse(param);
        for (var key in response) {
            if (key === "Error") alert(key + "" + response[key]);
        }
    }
    /******************************************************************************************* 
    This function gets called after every successful fetch of online users from the cache
    ********************************************************************************************/
    function onlineusers(param) {
        var response = JSON.parse(param);
        users = "";
        for (var i = 0; i < response.length; i++) {
            users = users + "<a style='color: #336699;text-decoration: none;font-size:10px;font-weight:900;'>" + response[i].UserName + "</a><hr />";
        }
        document.getElementById("online-buddies").innerHTML = users;
    }
    /*****************************************************************************************
    This function frees the ajax for the next call to be made
    ******************************************************************************************/
    function requestComplete() {
        AjaxBusy = 0;
    }
