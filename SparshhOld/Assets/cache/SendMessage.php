<?php
// This prevents IE from caching the page. VERY annoying problem.
header ( "Pragma: no-cache" );
header ( "Cache-Control: no-cache" );
clearstatcache();



define('CHATDIR'       , '');                           // Name of the directory where the cache file is stored.
define('CHATFILE'      , 'chat.txt');                   // Name of the cache file.
define('SUCCESS'       , 'CHAT UPDATED SUCCESSFULLY');  // success message for cache update
define('ERR'           , 'ERROR UPDATING CHAT');        // error message in cache update


class Chat{
    
    protected $_sender_userId;       // Gets the usercode for the curent user
	protected $_sender_userName;     // Gets the username for the curent user
	protected $_receiver_userId;
	protected $_receiver_username;
	protected $_chat_msg;
	
	
    protected $chatdir;      // Gets the cache directory name
	protected $chatfile;     // Gets the cache file name
    protected $success;      // Gets the cache success message
    protected $err;          // Gets the cache error message
    
    
    public function __construct() {
  
        if(defined('CHATDIR'))    $this->chatdir = CHATDIR;
		if(defined('CHATFILE'))   $this->chatfile = CHATFILE;
        if(defined('SUCCESS'))    $this->success = SUCCESS;
        if(defined('ERR'))        $this->err = ERR;
		
        if(isset($_POST['_sender_userId']))    
		$this->_sender_userId=trim(htmlentities($_POST['_sender_userId'], ENT_NOQUOTES, 'utf-8'));
		if(isset($_POST['_sender_userName']))  
		$this->_sender_userName=trim(htmlentities($_POST['_sender_userName'], ENT_NOQUOTES, 'utf-8'));
		
		if(isset($_POST['_receiver_userId']))    
		$this->_receiver_userId=trim(htmlentities($_POST['_receiver_userId'], ENT_NOQUOTES, 'utf-8'));
		if(isset($_POST['_receiver_username']))  
		$this->_receiver_username=trim(htmlentities($_POST['_receiver_username'], ENT_NOQUOTES, 'utf-8'));
		
		if(isset($_POST['_chat_msg']))  
		$this->_chat_msg=trim(htmlentities($_POST['_chat_msg'], ENT_NOQUOTES, 'utf-8'));

   } 
    
    public function SendMessage(){

    
if(file_exists($this->chatdir.$this->chatfile)){



  if($this->_sender_userId !== '' && $this->_sender_userId !== null && $this->_receiver_userId !== '' && $this->_receiver_userId !== null && $this->_chat_msg !== null && $this->_chat_msg !== '')
            {
            
            
            
		 $ChatData=json_decode(file_get_contents($this->chatdir.$this->chatfile), true);
         
		 $ChatData[]=array(
		     'SenderID'=>$this->_sender_userId,
			 'RecipientID'=>$this->_receiver_userId,
			 'SenderName'=>$this->_sender_userName,
			 'RecipientName'=>$this->_receiver_username,
			 'Chat'=>$this->_chat_msg,
			 'Time'=>date('Y-m-d H:i:s'),
			 'Read'=>'0'
		 );
		
                if(file_put_contents($this->chatdir.$this->chatfile, json_encode($ChatData))){
				 return json_encode(array('Success'=>$this->success));}
                else return json_encode(array('Error'=>$this->err));
            }
         }
        
    }
    
}

$obj=new Chat();
echo $obj->SendMessage();
?>