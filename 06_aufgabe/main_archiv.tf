provider "archive" {}

resource "archive_file" "mein_archiv" {
  type        = "zip"
  source_dir  = "./Backup"
  output_path = "output/archive.zip"
}

