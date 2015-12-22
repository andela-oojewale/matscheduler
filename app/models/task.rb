class Task < Todo::ActiveManager
  begin
      db.execute "create table sellers(
                  id Integer PRIMIARY KEY,
                  name Varchar(80),
                  alive Boolean,
                  today_date Date,
                  now_time Time,
                  now_now Timestamp
                  )"
    rescue SQLite3::Exception => exp
    puts self.db_error(exp)
    exit
    end
end