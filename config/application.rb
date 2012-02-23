diff --git a/config/application.rb b/config/application.rb
index 0d17608..1f2adf1 100644
--- a/config/application.rb
+++ b/config/application.rb
@@ -38,12 +38,14 @@ module SampleApp
 
     # Configure sensitive parameters which will be filtered from the log file.
     config.filter_parameters += [:password]
-    
+
     #BRIAN-ADDED THIS PART TO THIS FILE, SPORK HACK
-	if Rails.env.test?
-initializer :after => :initialize_dependency_mechanism do
-# Work around initializer in railties/lib/rails/application/bootstrap.rb
-ActiveSupport::Dependencies.mechanism = :load
-	#BRIAN-END OF STUFF I ADDED 
+    if Rails.env.test?
+      initializer :after => :initialize_dependency_mechanism do
+        # Work around initializer in railties/lib/rails/application/bootstrap.rb
+        ActiveSupport::Dependencies.mechanism = :load
+        #BRIAN-END OF STUFF I ADDED
+      end
+    end
   end
 end
