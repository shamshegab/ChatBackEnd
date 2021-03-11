# ChatBackEnd
A Ruby on Rails chat api only application, that serves multiple endpoints (explained below). This application uses Sidekiq for queuing add chat and add messeges requests in order to optimize performance. Elasticsearch is used for searching messsages text. Also Redis is used to cache some attributes for performance. Race condition on creation of chats and messages is handled.

# Usage
Make sure to have docker machine set up and ready.

Then run this command in your terminal
```bash
docker-compose up
```

Wait for everything to install and setup. Once rails is ready and listening to port 3000 you are ready to start sending requests.

# APIs
Just add your docker machine's ip and port 3000 before any of the urls below.

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
   
**Get user's chats**

  This lets you get all chat details for this user.

* **URL**

  /applications/:token/chats/
  
* **Method:**

   `GET` 
  
*  **URL Params**

   **Required:**
   
**Get chat details**

  This lets you get chat details and messages in it.

* **URL**

  /applications/:token/chats/:chat_number
  
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

  /applications/:token/chats/:chat_number/messeges
  
* **Method:**

   `GET` 
  
*  **URL Params**

   **Required:**
   `query=[string]`

  
