# Download the latest Ghost image
resource "docker_image" "my_image2" {
  name = "ghost:latest"
}

# Start the Container
resource "docker_container" "my_container2" {
  name  = "My_container_blog_3"
  image = "${docker_image.my_image2.latest}"
  ports {
    internal = "2368"
    external = "80"
  }
}

