[![License](http://img.shields.io/badge/license-Apache--2-blue.svg?style=flat)](https://apache.org/licenses/LICENSE-2.0)
[![Build Status](https://travis-ci.org/apache/airavata.png?branch=develop)](https://travis-ci.org/github/apache/airavata)

Apache Airavata Source - README.txt
--------------------------------------------------------------------------------

About
=====
Apache Airavata, a software framework to executing and managing computational jobs on 
distributed computing resources including local clusters, supercomputers, national grids, 
academic and commercial clouds. Airavata builds on general concepts of service oriented computing, 
distributed messaging, and workflow composition and orchestration. Airavata bundles a server package 
with an API, client software development Kits and a general purpose reference UI implementation - Apache Airavata PHP reference gateway.   

Contact
========
For additional information about Apache Airavata, please contact the user or dev mailing lists:
https://airavata.apache.org/mailing-list.html

Description of Airavata Directory Structure
==================================
    - airavata-api
      This directory contains Airavata API related data models, api methods, generated server skeletons, client stubs, server implementations and client samples. 

    - modules
      This contains the source code of all the airavata maven projects organized as libraries, services and distributions

    - samples
      This contains all the system wide samples provided in Airavata distribution. All the sample are having its README file
      So users have to refer each readme file before running each sample.

    - tools
      This contains source code libraries that can enhance Airavata features.

    - README
      This document.
    
    - RELEASE_NOTES
      The describe the key features and know issues with the current release. 

    - INSTALL
      This document will contain information on installing Apache-Airavata.

Airavata Source Distribution Directory Structure
================================================

    AIRAVATA_MASTER
		├── airavata-api
		├── modules
		│   ├── airavata-client
		│   ├── app-catalog
		│   ├── commons
		│   │   ├── gfac-schema
		│   │   ├── utils
		│   │   ├── workflow-execution-context
		│   │   └── workflow-tracking
		│   ├── credential-store-service
		│   ├── distribution
		│   │   ├── api-server
		│   │   ├── client
		│   │   ├── gfac-server
		│   │   ├── orchestrator-server
		│   │   ├── server
		│   │   └── release
		│   ├── gfac
		│   │   ├── airavata-gfac-service
		│   │   ├── gfac-bes
		│   │   ├── gfac-core
		│   │   ├── gfac-ec2
		│   │   ├── gfac-gram
		│   │   ├── gfac-gsissh
		│   │   ├── gfac-hadoop
		│   │   ├── gfac-local
		│   │   ├── gfac-monitor
		│   │   ├── gfac-ssh
		│   │   ├── gfac-thrift-descriptions
		│   ├── integration-tests
		│   ├── messaging
		│   ├── orchestrator
		│   ├── registry
		│   │   ├── airavata-jpa-registry
		│   │   ├── registry-cpi
		│   ├── security
		│   ├── credential-store
		│   ├── server
		│   ├── test-suite
		│   ├── workflow-model
		│   │   ├── workflow-engine
		│   │   ├── workflow-model-component-node
		│   │   └── workflow-model-core
		│   └── xbaya-gui
		├── samples
		├── tools
		│   ├── gsissh
		│   ├── gsissh-cli-tools
		│   ├── phoebus-integration
		│   └── registry-migrate
		├── INSTALL
		├── LICENSE
		├── NOTICE
		├── README
		└── RELEASE_NOTES

Available Binary Distributions
==============================

Server Distributions
--------------------
* Airavata Server
  The Airavata Server binary distribution allows you to run a standalone Airavata Server which includes all the airavata services 
  shipped with a default derby database as the backend registry. For stable purposes, a mysql configuration is recommended. 

* Airavata API Server
  This is the server that contains Airavata API Server.

* Airavata Orchestrator Server
  This is the stand-alone orchestrator server

* Airavata GFac Server
  This is the standalone GFac Server

Client Distributions
--------------------

* Airavata Client
  The Airavata Client distribution is a set of libraries and configurations files that allow a 3rd party application to programatically 
  access Airavata functionality through Airavata API. 
  
 How to test and run samples
===========================
* If you built Airavata from source, and if you see "BUILD SUCCESS", then the test cases should have passes.
* The test cases are beyond unit level, they startup embedded services and run through basic workflow use cases.
* To walk through Airavata features, follow "XBAYA Quick-Start Tutorial" tutorial at https://cwiki.apache.org/confluence/display/AIRAVATA/XBAYA+Quick-Start+Tutorial.
* For advanced use cases, please contact mailing lists - http://airavata.apache.org/community/mailing-lists.html
