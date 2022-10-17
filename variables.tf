variable "os" {
   description = "The Os reference to search for"
}

variable "amis_primary_owners" {
   description = "Force the ami Owner, could be (self) or specific (id)"
   default     = ""
}

variable "amis_os_map_regex" {
  description = "Map of regex to search amis"
  type = map(string)

  default = {
    centos       = "^CentOS.Linux.7.*x86_64.*"
    centos-6     = "^CentOS.Linux.6.*x86_64.*"
    centos-7     = "^CentOS.Linux.7.*x86_64.*"
    centos-8     = "^CentOS.Linux.8.*x86_64.*"
    rhel         = "^RHEL-7.*x86_64.*"
    rhel-6       = "^RHEL-6.*x86_64.*"
    rhel-7       = "^RHEL-7.*x86_64.*"
    rhel-8       = "^RHEL-8.*x86_64.*"
    debian       = "^debian-stretch-.*"
    debian-8     = "^debian-jessie-.*"
    debian-9     = "^debian-stretch-.*"
    "debian-10"  = "^debian-10-.*"
    fedora-27    = "^Fedora-Cloud-Base-27-.*-gp2.*"
    amazon       = "^amzn-ami-hvm-.*x86_64-gp2"
    amazon-2_lts = "^amzn2-ami-hvm-.*x86_64-gp2"
    suse-les     = "^suse-sles-12-sp\\d-v\\d{8}-hvm-ssd-x86_64"
    suse-les-12  = "^suse-sles-12-sp\\d-v\\d{8}-hvm-ssd-x86_64"
    windows      = "^Windows_Server-2019-English-Full-Base-.*"
    windows-2019-base    = "^Windows_Server-2019-English-Full-Base-.*"
    windows-2016-base    = "^Windows_Server-2016-English-Full-Base-.*"
    windows-2012-r2-base = "^Windows_Server-2012-R2_RTM-English-64Bit-Base-.*"
    windows-2012-base    = "^Windows_Server-2012-RTM-English-64Bit-Base-.*"
    windows-2008-r2-base = "^Windows_Server-2008-R2_SP1-English-64Bit-Base-.*"
  }
}

variable "amis_os_map_owners" {
  description = "Map of amis owner to filter only official amis"
  type = map(string)
   default = {
      rhel         = "309956199498" #Amazon Web Services
      rhel-6       = "309956199498" #Amazon Web Services
      rhel-7       = "309956199498" #Amazon Web Services
      rhel-8       = "309956199498" #Amazon Web Services
      centos       = "679593333241"
      centos-6     = "679593333241"
      centos-7     = "679593333241"
      centos-8     = "679593333241"
      debian       = "679593333241"
      debian-8     = "679593333241"
      debian-9     = "679593333241"
      "debian-10"    = "136693071363"
      fedora-27    = "125523088429" #Fedora
      amazon       = "137112412989" #amazon
      amazon-2_lts = "137112412989" #amazon
      suse-les     = "013907871322" #amazon
      suse-les-12  = "013907871322" #amazon
      windows              = "801119661308" #amazon
      windows-2019-base    = "801119661308" #amazon
      windows-2016-base    = "801119661308" #amazon
      windows-2012-r2-base = "801119661308" #amazon
      windows-2012-base    = "801119661308" #amazon
      windows-2008-r2-base = "801119661308" #amazon
  }
}

variable "region" {
  description = "사용하는 리전"
  type = string
  default = "ap-northeast-2"
}