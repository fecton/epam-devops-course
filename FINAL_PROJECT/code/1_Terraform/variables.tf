# -----------------------------------------------------------------------------------
# Filename: variables.tf
# Description: A terraform file with necessary variables
# -----------------------------------------------------------------------------------

variable "Author" {
    type = string
    default = "Andrii Lytvynenko"
}

variable "ProjectName" {
    type = string
    default = "EPAM L1 Final"
}

variable "DefaultInstanceAMI" {
    type = string
    default = "ami-0caef02b518350c8b" # Ubuntu Linux AMI
    # default = "ami-076309742d466ad69" # Amazon Linux AMI
}

variable "DefaultInstanceType" {
    type = string
    default = "t2.micro"
}