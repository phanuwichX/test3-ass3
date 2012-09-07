create table Gateway
(
        gateway_name varchar(255),
	    owner varchar(255),
        PRIMARY KEY (gateway_name)
);

create table Configuration
(
        config_ID int(11) NOT NULL AUTO_INCREMENT,
        config_key varchar(255),
        config_val varchar(255),
        expire_date date,
        PRIMARY KEY(config_ID)
);

create table Users
(
        user_name varchar(255),
        password varchar(255),
        PRIMARY KEY(user_name)
);

create table Gateway_Worker
(
      gateway_name varchar(255),
      user_name varchar(255),
      PRIMARY KEY (gateway_name, user_name),
      FOREIGN KEY (gateway_name) REFERENCES Gateway(gateway_name) ON DELETE CASCADE,
      FOREIGN KEY (user_name) REFERENCES Users(user_name) ON DELETE CASCADE

);

create table Project
(
       project_ID int(11) NOT NULL AUTO_INCREMENT,
       gateway_name varchar(255),
       user_name varchar(255),
       project_name varchar(255),
       PRIMARY KEY(project_ID),
       FOREIGN KEY (gateway_name) REFERENCES Gateway(gateway_name) ON DELETE CASCADE,
       FOREIGN KEY (user_name) REFERENCES Users(user_name) ON DELETE CASCADE
);

create table Published_Workflow
(
       gateway_name varchar(255),
       created_user varchar(255),
       publish_workflow_name varchar(255),
       version varchar(255),
       published_date DATE,
       path varchar (255),
       workflow_content varchar(2000),
       PRIMARY KEY(gateway_name, publish_workflow_name),
       FOREIGN KEY (gateway_name) REFERENCES Gateway(gateway_name) ON DELETE CASCADE,
       FOREIGN KEY (created_user) REFERENCES Users(user_name) ON DELETE CASCADE
);

create table User_Workflow
(
       gateway_name varchar(255),
       owner varchar(255),
       template_name varchar(255),
       last_updated_date DATE,
       path varchar (255),
       workflow_graph varchar(2000),
       PRIMARY KEY(gateway_name, owner, template_name),
       FOREIGN KEY (gateway_name) REFERENCES Gateway(gateway_name) ON DELETE CASCADE,
       FOREIGN KEY (owner) REFERENCES Users(user_name) ON DELETE CASCADE
);


create table Host_Descriptor
(
       gateway_name varchar(255),
       updated_user varchar(255),
       host_descriptor_ID varchar(255),
       host_descriptor_xml varchar(2000),
       PRIMARY KEY(gateway_name, host_descriptor_ID),
       FOREIGN KEY (gateway_name) REFERENCES Gateway(gateway_name) ON DELETE CASCADE,
       FOREIGN KEY (updated_user) REFERENCES Users(user_name) ON DELETE CASCADE
);

create table Service_Descriptor
(
         gateway_name varchar(255),
         updated_user varchar(255),
         service_descriptor_ID varchar(255),
         service_descriptor_xml varchar(2000),
         PRIMARY KEY(gateway_name,service_descriptor_ID),
         FOREIGN KEY (gateway_name) REFERENCES Gateway(gateway_name) ON DELETE CASCADE,
         FOREIGN KEY (updated_user) REFERENCES Users(user_name) ON DELETE CASCADE
);

create table Application_Descriptor
(
         gateway_name varchar(255),
         updated_user varchar(255),
         application_descriptor_ID varchar(255),
         host_descriptor_ID varchar(255),
         service_descriptor_ID varchar(255),
         application_descriptor_xml varchar(2000),
         PRIMARY KEY(gateway_name,host_descriptor_ID, service_descriptor_ID,application_descriptor_ID),
         FOREIGN KEY (gateway_name) REFERENCES Gateway(gateway_name) ON DELETE CASCADE,
         FOREIGN KEY (updated_user) REFERENCES Users(user_name) ON DELETE CASCADE
);

create table Experiment
(
          project_ID int(11),
	      gateway_name varchar(255),
          user_name varchar(255),
          experiment_ID varchar(255),
          submitted_date Date,
          PRIMARY KEY(experiment_ID),
          FOREIGN KEY (gateway_name) REFERENCES Gateway(gateway_name) ON DELETE CASCADE,
          FOREIGN KEY (project_ID) REFERENCES Project(project_ID) ON DELETE CASCADE,
          FOREIGN KEY (user_name) REFERENCES Users(user_name) ON DELETE CASCADE
);

