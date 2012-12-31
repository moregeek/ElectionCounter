ElectionCounter::Application.routes.draw do


  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users

#  devise_for :users

#  ActiveAdmin.routes(self)

#  devise_for :admin_users, ActiveAdmin::Devise.config, ActiveAdmin::Devise.config

  # Admin Stuff
  ################################################################################
  #resources :admin do
  #  resources :users
  #  resources :votes
  #  resources :votedistricts
  #end


#  devise_for :users



=begin
  devise_for  :users, :path => "",
              :path_names => {  :sign_in => 'login', 
                                :sign_out => 'logout', 
                                :password => 'secret', 
                                :confirmation => 'verification', 
                                :unlock => 'unblock', 
                                :registration => 'register', 
                                :sign_up => 'cmon_let_me_in'
                             }
=end
  resources :votes

  # Routes for API Demo
  ################################################################################
  namespace :apidemo, :only => [] do
    get :graph, :to => :api_v1_demo_graphs
    get :rawdata, :to => :api_v1_demo_rawdata
  end

  # API Namespace
  ################################################################################
  namespace :api, defaults: {format: 'json'} do
    # Version 1 of API
    namespace :v1 do

      ################################################################################
      #
      #  All Responses bellow this point returns a collection of Data in JSON Format
      #
      # GET   /api/v1/rawdata/votedistricts
      # GET   /api/v1/rawdata/districts
      # 
      resources :rawdata, :only => [] do
        collection do
          get 'votedistricts'
          get 'districts'
        end # collection
      end # resources

      ################################################################################
      #
      #       All Responses bellow this point return one or multiple HTTP Links
      #                   which can be included directly as image
      #
      # GET    /api/v1/graph/pie/type1/:resolution
      # GET    /api/v1/graph/pie/type1/
      #
      # GET    /api/v1/graph/bar/type1/:resolution
      # GET    /api/v1/graph/bar/type1/
      #
      # GET    /api/v1/graph/bar/type2/:resolution
      # GET    /api/v1/graph/bar/type2/
      #
      resources :graph, :only => [] do
        collection do
          # Bar Charts
          namespace :bar do
            get 'type1/:resolution/', :controller => :graphs, :action => :graph_bar_t1      # optional with resolution
            get 'type1/', :controller => :graphs, :action => :graph_bar_t1
          end
          # Pie Charts
          namespace :pie do
            get 'type1/:resolution', :controller => :graphs, :action => :graph_pie_type1    # optional with resolution
            get 'type1/', :controller => :graphs, :action => :graph_pie_type1

            get 'type2/:resolution/', :controller => :graphs, :action => :graph_pie_type2   # optional with resolution
            get 'type2/', :controller => :graphs, :action => :graph_pie_type2
          end 
        end # collection 
      end # graph
      ################################################################################

    end # v1
  end # api

  root :to => "votes#index"

end
