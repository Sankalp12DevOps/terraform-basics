
variable "country"{

default = "India"

}


variable "states"{

default = ["Karnataka","Andhra Pradesh"]

}

variable "cities"{

default = {

   metro = "Chennai"
   tier1 = "Bangalore"
   tier2 = "Anantapur"
   tier3 = "CK Palli"


}
}

output "citynames"{

value = var.country

}

output "citiesNames"{

value = "this is tier 1 city ${var.cities.tier1}"

}

output "statesNames"{

value = "this is state with name ${var.states[0]}"

}
