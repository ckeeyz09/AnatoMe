class AddEmailAndUsernameToUsers < ActiveRecord::Migration
  change_table :users do |t|
    t.string :username
    t.string :email
end
end
