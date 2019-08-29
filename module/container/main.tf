resource "docker_container" "ghost_container" {
  name  = "${var.container_name}"
  image = "${var.image_name}"
  ports {
    internal = "2368"
    external = "${var.ext_port}"
  }
}
