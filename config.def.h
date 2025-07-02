//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Command*/	/*Update Interval*/	/*Update Signal*/
	{"cpu.sh",		10,		0},
	{"memory.sh",		20,		0},
	{"brightness.sh",	0,		11},
	{"volume.sh",		0,		10},
	{"battery.sh",		10,		0},
	{"keyboard.sh",		0,		12},
	{"time.sh",		10,		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "^d^ | ";
static unsigned int delimLen = 7;
