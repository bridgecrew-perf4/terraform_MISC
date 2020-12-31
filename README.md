# Terraform misc 

### Testing Variables

### variable types

 - String
 - Number
 - Boolean
 
### Let Terraform decide on type
```
variable "a-string"{
 default = "this is a string"
}
variable "this-is-a-list"{
 default = ["list of", "strings"]
}
```
```
variable "a-string"
type = string
}
variable "this-is-a-number" {
type = number
}
variable "true-or-false" {
type = boolean
}
```

```
terraform console
```
```
> var.myvar
> "${var.myvar}"
```

### Testing maps

#### maps contain {"key" = "value pairs"}

```
terraform console
```
```
> var.mymap 
> var.mymap["mykey"]
> "${var.mymap["mykey"]}"
```

### Testing lists 
#### A list is ordered and will always return values Terraform sorts the order
```
terraform console
```
```
> var.mylist 

> var.mylist[0]
 # output is 1 
```
### example usage of list with functions
```
element(var.mylist, 1)
slice(var.mylist, 0, 2)
```

### tuple
#### A tuple is like a list but each element can have a different value
```
[0, "string", false]
```

### conditionals (refer to conditional directory in this repo)
#### Example conditionally omitted argument
#### conditional driectory provides provisioner for Azure Blob storage

#### If filename is not expected just leave blank
```
# Example conditional expression
variable "filename" {
  type    = string
  default = ""
}

```

#### Run Terraform plan
```
terraform plan --var override_tier=cool
```

##### Example conditional expression
#### Run Terraform plan
```
terraform plan --var filename=productionfile.txt
```

### functions
##### use terraform built in functions
##### User defined functions are not allowed

https://www.terraform.io/docs/configuration/functions.html  

### for and foreach loops
#### you can loop over a list [1,2,3,4] or even a map {"key" = "value"}
#### used when assigning value to argument
#### lists can be output as maps

```
[for s in ["this is a", "list"]:upper(s)]
```
#### return elements as list
```
terraform console
> [for s in ["a", "b", "c"]: s]
```

#### pass a variable to list
```
[for s in var.;list1: s]
```



