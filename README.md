# Tstore

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/c0a243b8cbbf494ca5d0a0438a1bca37)](https://www.codacy.com/app/ThaDeveloper/tstore?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=ThaDeveloper/tstore&amp;utm_campaign=Badge_Grade)

A positive store for a positive customer. Build in rails, postgresql, JQuery and bootstrap.


## Run the App 

### Live version

Visit https://tstore-dev.herokuapp.com/
  Sample user - username : **user**, password : **pass1234**
  
   
  Sample admin - username: **admin**, password : **pass1234**

### Locally
 `$ git clone https://github.com/ThaDeveloper/tstore.git`
 
 `$ cd tstore`
 
  Ensure you have the latest versions of Ruby, Rails  and Postgresql installed.
  
 `$ bundle install`
 
 `$ rake db:create && rake db:migrate` to create and migrate  test and development databases.
 
  **NOTE**: You will have to create enviroment variables in the following fortmat before running these commands:
  
  
  *export DB_USER=youruserbasedonrolescreated*
  
  
  *export DB_USER=youruserpasswordcreated*
  
 
 `$ rake db:seed` to get sample login data.
 
   Sample user - username : **user**, password : **pass1234**
   
   
   Sample admin - username: **admin**, password : **pass1234**
   
   
 Finally run `$ rails s` and visit http://0.0.0.0:3000


## License

MIT License

Copyright (c) 2018 Justin Ndwiga

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

```
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
