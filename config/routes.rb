Rails.application.routes.draw do
  # Routes for the Todo resource:

  # CREATE
  post("/insert_todo", { :controller => "todo", :action => "create" })

  # READ
  get("/", { :controller => "todo", :action => "index" })
  # get("/:path_id", { :controller => "todos", :action => "show" })

  # UPDATE
 post("/modify_todo/:path_id", { :controller => "todo", :action => "update" })

  # DELETE
  get("/delete_todo/:path_id", { :controller => "todo", :action => "destroy" })

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })

  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })

  # EDIT PROFILE FORM
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })

  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })

  # DELETE RECORD
  post("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })

  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })

  # SIGN OUT
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
 # delete '/user_sign_out', to: 'user_sessions#destroy', as: :user_sign_out


end
