# ActionMailer Gist

Using the ActionMailer Ruby Gem, you will be able to easily send emails from your webpage using custom templates.


## How to Install

Create a Rails Project and enter into the terminal

```
gem install actionmailer
```

## Generate A Mailer Through Rails

You first need to **generate** a mailer. This will create a class that you can add methods to. Generally speaking you will hold the sender's email and method that holds a user's email.

```
rails g mailer mailer_name

```

## Create A View for Your Mailer 

You will want to make a view for your mailer that will hold the template of an email that is being sent. 

An example of a view for Mailer...

```
<!DOCTYPE html>
<html>
  <head>
    <meta content='text/html; charset=UTF-8' http-equiv='Content-Type' />
  </head>
  <body>
    <h1>Hi <%= @user.name %></h1>
    <p>
      Sample mail sent using smtp.
      
      This is a gem test for action mailer.
      This is coming from views/sample_email.html.erb
    </p>
  </body>
</html>
```

## Optional: Create a Preview Page

A good test to see what your email template will look like is to create a preview page. You can do that by going into your test/mailer/preview/mailer_name.rb and calling your class and method inside the file.

Go to **http://localhost:3000/rails/mailers/mailer_name/sample_mail_preview** in your browser to see the preview.

## Configure Your Production and Development Environment

Rails will default use SMTP to send emails. You will have to go into your environment file structures and find either your development or production file. At the bottom add this block of code. 

```
config.action_mailer.delivery_method = :smtp
# SMTP settings for gmail
config.action_mailer.smtp_settings = {
 :address              => "smtp.gmail.com",
 :port                 => 587,
 :user_name            => ENV['gmail_username'],
 :password             => ENV['gmail_password'],
 :authentication       => "plain",
:enable_starttls_auto => true
}
```
## Call Your Class and Method

Now all you have to do is fine a place where you would like to call your Mailer class and method. 

## Resources
<https://github.com/rails/rails/tree/master/actionmailer>

<http://api.rubyonrails.org/classes/ActionMailer/Base.html>

<https://launchschool.com/blog/handling-emails-in-rails>