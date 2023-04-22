module ec2{

source = "./ec2"
sg_id = module.sg.sg_id
nameVal = module.sg.nameVal
}

module sg{

source = "./sg"


}