
# DevPartner 2017 Web API Examples

This repository contains the sample code that was developed and demonstrated during the
DevPartner 2017 Pre-Conference Workshop on Monday 8th May 2017 in Atlanta, GA. The title
of the workshop was "Building RESTful Services with ASP.NET Web API and Synergy .NET".

For information about ASP.NET Web API refer to https://www.asp.net/web-api

In order to successfully build and run the code contained in this repository, you will need:

* Windows 7, 8 or 10 (Professional or Enterprise edition, not Home edition)
* Internet Information Services (IIS)
* Microsoft Visual Studio 2015 or 2017
* Synergy DBL Integration foor Visual Studio 10.3.3c (or later)
* Synergy/DE 10.3.3c (or later)

Having cloned the repository, use Visual Studio to open the solution named WebApiExample.sln
and then prepare the environment for use via your local IIS web server. To do this:

* In Solution Explorer, right-click on the WebServer project and select Peoperties
* In the project properties dialog, switch to the Web tab
* Under the Servers heading, ensure that the drop-down list is set to "Local IIS" 
* Check that Project Url is set to http://localhost/WebServer
* Click the Create Virtual Directory button.
* When you see a dialog informing you that "The virtual directory was created successfully", click the OK button.
* Close the project properties dialog.

Within the solution you will find several projects:

## WebApiServices Project

This is a Synergy .NET Class Library project where the Web API services are defined. 
The Models folder contains model (data) classes as well as classes that implement the
repository data access pattern. The controllers folder contains the main code that
defines the actual Web API controllers that implement the RESTful API.

## WebServer Project

This is a C# ASP.NET MVC Web Application that ius used to host the Web API services that
are defined in the WebApiServices project, to which it has a reference.

Various Web API configuration code exists in the C# environment, but all of the code that
implements the RESTful API is in the Synergy .NET assembly.

## SelfHost project

This is a Synergy .NET Console Application that contains a very simple example of "self
hosting" Web API services outside of IIS. The OWIN (a.k.a. Katana) environment is used to
achieve this. For additional information refer to https://docs.microsoft.com/en-us/aspnet/aspnet/overview/owin-and-katana/an-overview-of-project-katana

## TestClientNet Project

This is a Synergy .NET Console Application that contains a very simple example of how
to interact with a RESTful web service from Synergy .NET.

The example is configured to call the service hosted by the WebServer project. If you
want to use the SelfHost instance then you will need to:

1. Edit EmployeeServiceClient.dbl and change the baseUrl value to http://localhost:8088/api/employee
2. Configure the solution to start both the SelfHost and TestClientNet projects, in that order.

## TestClientWpf Project

This is a Synergy .NET WPF Application that contains a very simple example of how
to interact with a RESTful web service from Synergy .NET.

The example is configured to call the service hosted by the WebServer project. If you
want to use the SelfHost instance then you will need to:

1. Edit Tools\EmployeeServiceClient.dbl and change the baseUrl value to http://localhost:8088/api/employee
2. Configure the solution to start both the SelfHost and TestClientWpf projects, in that order.


## TestClientDBR Project

This is a traditional Synergy DBR application that contains a very simple example of how
to interact with a RESTful web service from traditional Synergy.

The example is configured to call the service hosted by the WebServer project. If you
want to use the SelfHost instance then you will need to:

1. Edit Program.dbl and change the url to http://localhost:8088/api/department/manager/1089
2. Configure the solution to start both the SelfHost and TestClientDBR projects, in that order.
