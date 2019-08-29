# Download the image
module "image" {
  source = "./module/image"
  image_name  = "${var.image_name}"
}

module "container" {
  source = "./module/container"
  image_name  = "${var.image_name}"
  container_name = "${var.container_name}"
  ext_port = "${var.ext_port}"
}

