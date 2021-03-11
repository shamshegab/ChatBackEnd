# ChatBackEnd
A Ruby on Rails chat api only application. The application serves multiple endpoints (explained below).
# Usage
Make sure to have docker machine set up and ready.

Then run this command in your terminal
```bash
docker-compose up
```

Wait for everything to install and setup then you are ready to send out requests.

# APIs

**Create application**

  This lets you create an application that holds a name and a token.

* **URL**

  /applications
  
* **Method:**

   `POST` 
  
*  **URL Params**

   **Required:**
 
   `name=[string]`
   
**Get application details**

  This lets you get application details.

* **URL**

  /applications/:token
  
* **Method:**

   `GET` 
  
*  **URL Params**

   **Required:**
   
**Update application details**

  This lets you update application name.

* **URL**

  /applications/:token
  
* **Method:**

   `PATCH` 
  
*  **URL Params**

   **Required:**
 
   `name=[string]`
   
**Create chat**

  This lets you create a chat with another application.

* **URL**

  /applications/:your_token/chats
  
* **Method:**

   `POST` 
  
*  **URL Params**

   **Required:**
 
   `recipient=[string]`
   
**Get chat details**

  This lets you get chat details and messages in it.

* **URL**

  /applications/:your_token/chats/:chat_number
  
* **Method:**

   `GET` 
  
*  **URL Params**

   **Required:**
   
**Send message**

  This lets you send a message to specific chat.

* **URL**

  /applications/:your_token/chats/:chat_number/messeges
  
* **Method:**

   `POST` 
  
*  **URL Params**

   **Required:**
   `msg=[string]`
   
**Search message**

  This lets you search through a messages in a specific chat.

* **URL**

  /applications/:your_token/chats/:chat_number/messeges
  
* **Method:**

   `GET` 
  
*  **URL Params**

   **Required:**
   `query=[string]`

  
