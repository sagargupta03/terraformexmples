# Download the latest Ghost image
resource "docker_image" "my_image" {
  name = "ghost:latest"
}

