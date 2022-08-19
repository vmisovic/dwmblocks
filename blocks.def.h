//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/	/*Update Interval*/	/*Update Signal*/
	{"  ",	"free -h | awk '/^Mem/ { print $3 }' | sed s/i//g",	30,		0},
	{" ",	"brightness.sh",	0,		11},
	{"墳 ",	"volume.sh",		0,		10},
	{" ",	"battery.sh",		10,		0},
	{" ",	"keyboard.sh",		0,		12},
	{" ",	"date '+%b %d %H:%M'",	10,		0},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "^d^ | ";
static unsigned int delimLen = 7;
