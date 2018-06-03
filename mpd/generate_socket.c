#define SOCK_PATH "/var/tmp/socket"
struct sockaddr_un local;
char str[100];
int s;

if ((s = socket(AF_UNIX, SOCK_STREAM, 0)) == -1) {
	perror("socket"); 
	exit(1); 
}

if (strlen(SOCK_PATH) >= sizeof(local.sun_path)) { 
	perror("path to long!"); 
	exit(1); 
}

local.sun_len = sizeof(local); 

local.sun_family = AF_UNIX; 

strcpy(local.sun_path, SOCK_PATH); 

unlink(local.sun_path);

if (bind(s, (struct sockaddr *)&local, SUN_LEN(&local)) == -1) { 
	perror("bind"); 
	exit(1); 
}
