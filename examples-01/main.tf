module ec2{

source = "./ec2"
sg_id = module.sg.sg_id
nameValue = module.sg.nameVal
}

module sg{

source = "./sg"


}