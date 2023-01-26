# ----------------------------------------------------------------------------
# Filename: main.tf
# Description: Main terraform file
# ----------------------------------------------------------------------------
provider "aws" {}



# Public keys
# ============================================================================
    locals {
        JenkinsMaster_pub  = file("~/.ssh/jenkins_host.pub")
        JenkinsSlave_pub = file("~/.ssh/jenkins_slave.pub")
        Production_pub   = file("~/.ssh/prod.pub")
    }
# ============================================================================



# AWS INSTANCES
# ============================================================================

    # Creating a Jenkins MASTER server for testing, deploying and sending to Jenkins SLAVE
    resource "aws_instance" "Jenkins_MASTER" {
        ami                     = var.DefaultInstanceAMI
        instance_type           = var.DefaultInstanceType
        vpc_security_group_ids  = [aws_security_group.sg-basicConnection.id]
        # user_data               = file("./JenkinsStartUp.sh")
        key_name                = "jenkins-master-key"

        tags = {
            Name        = "Jenkins Master server"
            Author      = var.Author
            Project     = var.ProjectName
            Jenkins     = "HOST"
            Terraform   = "True"
        }
    }

    # Creating a Jenkins SLAVE server for getting tasks from Jenkins HOST
    resource "aws_instance" "Jenkins_SLAVE" {
        ami                     = var.DefaultInstanceAMI
        instance_type           = var.DefaultInstanceType
        vpc_security_group_ids  = [aws_security_group.sg-basicConnection.id]
        # user_data               = file("./JenkinsStartUp.sh")
        key_name                = "jenkins-slave-key"

        tags = {
            Name        = "Jenkins Slave server"
            Author      = var.Author
            Project     = var.ProjectName
            Jenkins     = "HOST"
            Terraform   = "True"
        }

    }

# Creating a production (target) server
    resource "aws_instance" "Production_server" {
        ami                     = var.DefaultInstanceAMI
        instance_type           = var.DefaultInstanceType
        vpc_security_group_ids  = [aws_security_group.sg-basicConnection.id]
        key_name                = "production-server-key"

        tags = {
            Name        = "Production server"
            Author      = var.Author
            Project     = var.ProjectName
            Terraform   = "True"
            Jenkins     = "Slave"
        }

        lifecycle {
            prevent_destroy = false
            ignore_changes = [

            ]
            create_before_destroy = false
        }
    }
# ============================================================================



# AWS KEY PAIR
# ============================================================================
    resource "aws_key_pair" "Jenkins_Master" {
        key_name    = "jenkins-master-key"
        public_key  = local.JenkinsMaster_pub
    }

    resource "aws_key_pair" "Jenkins_Slave" {
        key_name    = "jenkins-slave-key"
        public_key  = local.JenkinsSlave_pub
    }

    resource "aws_key_pair" "Production_Server" {
        key_name    = "production-server-key"
        public_key  = local.Production_pub
    }
# ============================================================================



# AWS Security Groups
# ============================================================================
    resource "aws_security_group" "sg-basicConnection" {
        name = "SSH/HTTP/HTTPS/8080"
        description = "Allows SSH, HTTP, HTTPS and 8080 traffic for host"

        dynamic "ingress" {
            for_each = [22, 80, 443, 8080]
            content {
                from_port   = ingress.value
                to_port     = ingress.value
                protocol    = "tcp"
                cidr_blocks = ["0.0.0.0/0"]
            }
        }

        egress {
            from_port   = 0
            to_port     = 0
            protocol    = "-1"
            cidr_blocks = ["0.0.0.0/0"]
        }
    }
# ============================================================================



# OUTPUT
# ============================================================================

    # Jenkins HOST
    output "Jenkins-Master-STATE" {
        value = aws_instance.Jenkins_MASTER.instance_state
    }
    output "Jenkins-Master-IP" {
        value = aws_instance.Jenkins_MASTER.public_ip
    }
    output "Jenkins-Master-SECURITY-GROUPS" {
        value = aws_instance.Jenkins_MASTER.security_groups
    }

    # Jenkins SLAVE
    output "Jenkins-Slave-STATE" {
        value = aws_instance.Jenkins_SLAVE.instance_state
    }
    output "Jenkins-Slave-IP" {
        value = aws_instance.Jenkins_SLAVE.public_ip
    }
    output "Jenkins-Slave-SECURITY-GROUPS" {
        value = aws_instance.Jenkins_SLAVE.security_groups
    }



    # Production Server
    output "Production-Server-STATE" {
        value = aws_instance.Production_server.instance_state
    }
    output "Production-Server-IP" {
        value = aws_instance.Production_server.public_ip
    }
    output "Production-Server-SECURITY-GROUPS" {
        value = aws_instance.Production_server.security_groups
    }

# ============================================================================
