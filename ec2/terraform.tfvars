#provider variables
region = "us-east-2"
credentials_file = "~/.aws/credentials"

#vpc info variables
vpc_id = "vpc-175ce27c"

#aws_key_pair variables
key_name = "pubkey1"
public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC65z30jAJ1cWnSyEoVMDo6KUInOkZ16oS5LO/634Eo0W82RkqTNJ8Bv+Sc94hPvUs0ywQ5DE/DO1QKCcU4HMGYz114ROtMMC7NiFOnDC/V7Mv5N1Vk23XAmQNKcEuafiRC9MP4WEJaOLYUOzfS20IkYDmZyYtSs4J9LqsdFTwG3rdVdn9AWHIoDOKQclsdnqGZ16jmVaek6sw/31dcveXsK71tW6V8gLb/+KZl1DNYSS+txYFLx6o+eOKrduh7aj/GJTD/MkMvesiOXWIsHaUCAj5Yw3BLp88ORMPgJO5KzYxJMkQr1PQ+UcLAAfd8+rUJgUvqiGOIOUl5svg7QSaXNLj9Clsep0JBWnCaRD+RLB8QL0QwEnC54FXqGBaZl5kmGgjrbFMJYcSQ6mpwKoahL3gibbcqnyVtIS5pR9MiaKsa+AO3cxrutOzvkwVoZagLRrQpXivyhmZnEReUPTylOe0MENBSac2lZv6wqoZBQHvuR7Dh3IR4qNJJbStoi/8oSELrDKieGwPMHPGkdfkCxp5uC26khxFlbG4gn5+lZJF5EhojzzCn8hV9jhhx7/qMg40jKevkTnxMbnwgU4v+mf1vazCMM0BjgluB1qxnMMFELv4WEafalh6c8WDJyz7u4yBiLNnSaCHhOBkDvXXXe4WRXG2J6uRt/GRFMtmKlQ== cechevarria@chris-desktop"


#security group variables
sg_name = "ssh_security_group"
sg_description = "security group to allow ssh"

#ec2 resource variables
ami = "ami-0a91cd140a1fc148a"
instance_type = "t2.micro"


tags = {
    "owner" = "chris echevarria"
    "environment" = "test"
    }
