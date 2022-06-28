require "pact_broker/tasks"

PactBroker::DB::MigrationTask.new do | task |
  ENV["RACK_ENV"] ||= "test"
  require_relative "../spec/support/test_database"
  task.database_connection = ::PactBroker::TestDatabase.connection_for_test_database
end

PactBroker::DB::DataMigrationTask.new do | task |
  ENV["RACK_ENV"] ||= "test"
  require_relative "../spec/support/test_database"
  task.database_connection = ::PactBroker::TestDatabase.connection_for_test_database
end

PactBroker::DB::VersionTask.new do | task |
  ENV["RACK_ENV"] ||= "test"
  require_relative "../spec/support/test_database"
  task.database_connection = ::PactBroker::TestDatabase.connection_for_test_database
end

PactBroker::DB::CleanTask.new do | task |
  ENV["RACK_ENV"] ||= "test"
  require_relative "../spec/support/test_database"
  task.database_connection = ::PactBroker::TestDatabase.connection_for_test_database
end

PactBroker::DB::DeleteOverwrittenDataTask.new do | task |
  ENV["RACK_ENV"] ||= "test"
  require_relative "../spec/support/test_database"
  task.database_connection = ::PactBroker::TestDatabase.connection_for_test_database
  task.age_in_days = 7
end
