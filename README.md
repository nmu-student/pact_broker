# Pact Broker

The Pact Broker provides a repository for consumer driven contracts created using the pact gem. It 

* solves the problem of how to share pacts between consumer and provider projects
* allows you to [decouple your service release cycyles][decouple]
* provides documentation that is guaranteed to be up-to date
* allows you to visualise the relationships between your services

Travis CI Status: [![Build Status](https://travis-ci.org/bethesque/pact_broker.svg?branch=master)](https://travis-ci.org/bethesque/pact_broker)

Features:

* An endpoint for a consumer project to publish a pact
* An endpoint for the provider to retrieve the latest pact between itself and a consumer. 
* Autogenerated documentation for each pact.
* Dynamically generated network diagrams.
* Enables a pact version to be tagged (ie. "prod") so a provider can verify itself against a fixed version of a pact to ensure backwards compatibility.
* Webhooks to trigger a provider build when a consumer publishes a change to a pact.

See the [Pact Broker Client](https://github.com/bethesque/pact_broker-client) for documentation on how to publish a pact to the Pact Broker, and configure the URLs in the provider project.

### Screenshots

#### Index
<img src="https://raw.githubusercontent.com/wiki/bethesque/pact_broker/images/index.png"/>

#### Autogenerated documentation
<img src="https://raw.githubusercontent.com/wiki/bethesque/pact_broker/images/autogenerated_documentation.png"/>

#### Network diagram
<img src="https://raw.githubusercontent.com/wiki/bethesque/pact_broker/images/network_diagram.png"/>

## Documentation

See the [wiki](https://github.com/bethesque/pact_broker/wiki) for documentation.

## Usage

* Create a database using a product that is supported by the Sequel gem (listed on this page http://sequel.jeremyevans.net/rdoc/files/README_rdoc.html). At time of writing, Sequel has adapters for:  ADO, Amalgalite, CUBRID, DataObjects, DB2, DBI, Firebird, IBM_DB, Informix, JDBC, MySQL, Mysql2, ODBC, OpenBase, Oracle, PostgreSQL, SQLAnywhere, SQLite3, Swift, and TinyTDS.
* __Note:__ It is recommended to use __PostgreSQL__ as it will support JSON search features that are planned in a future release.
* Install ruby 1.9.3 or later
* Copy the [example](/example) directory to your workstation.
* Modify the config.ru and Gemfile as desired (eg. choose database driver gem, set your database credentials)
* Please ensure you use `encoding: 'utf8'` in your Sequel options to avoid encoding issues.
* Run `bundle`
* Run `bundle exec rackup`
* Open [http://localhost:9292](http://localhost:9292) and you should see the HAL browser.

For production usage, use a web application server like [Phusion Passenger](https://www.phusionpassenger.com) to serve the Pact Broker application.

[decouple]: http://techblog.realestate.com.au/enter-the-pact-matrix-or-how-to-decouple-the-release-cycles-of-your-microservices/
