diff --git a/spec/controllers/pages_controller_spec.rb b/spec/controllers/pages_controller_spec.rb
index 4e63e66..7f2728c 100644
--- a/spec/controllers/pages_controller_spec.rb
+++ b/spec/controllers/pages_controller_spec.rb
@@ -1,18 +1,7 @@
 require 'spec_helper'
 
-
-class PagesController < ApplicationController
-def home
-	end
-def contact
-end
-def about
-end
-end
-
-
 describe PagesController do
-	render_views
+  render_views
 
   describe "GET 'home'" do
     it "should be successful" do
@@ -25,19 +14,22 @@ describe PagesController do
     it "should be successful" do
       get 'contact'
       response.should be_success
-      
-      describe "GET 'about'" do
-it "should be successful"do
-get 'about'
-response.should be_success
     end
     
-    it "should have the right title" do
-get 'home'
-response.should have_selector("title",
-:content => "Ruby on Rails Tutorial Sample App | Home")
-end
+    describe "GET 'about'" do
+      it "should be successful"do
+      get 'about'
+      response.should be_success
+    end
+  end
 
+  it "should have the right title" do
+    get 'home'
+    response.should have_selector("title",
+    :content => "Ruby on Rails Tutorial Sample App | Home")
   end
+end
+
 
 end
+
