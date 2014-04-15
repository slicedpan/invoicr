namespace :server do
    task :restart => [:stop, :start] do
        puts "restarted"
    end
    task :stop do
        if !File.exists?("tmp/pids/server.pid") 
            puts "server is not running"
        else
            pid_file = File.open("tmp/pids/server.pid")
            pid = pid_file.read.to_i
            pid_file.close
            puts "stopping server"
            puts `kill #{pid}`
        end
    end
    task :start do
        puts "starting server"
        puts `rails server -d`
    end
end
