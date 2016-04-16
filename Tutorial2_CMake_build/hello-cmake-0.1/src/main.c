#include <stdio.h>
#include <test.h>

int main(int argc, char *argv[])
{
	printf("Hello CMake!\n");
	printf("definition 'MY_PROJECT_NAME' : %s\n", MY_PROJECT_NAME);
	printf("definition 'MY_COLOR_CONFIG' : %s\n", MY_COLOR_CONFIG);
	printf("definition 'MY_AUTHOR_NAME' : %s\n", MY_AUTHOR_NAME);
	printf("definition 'BLOG_ADDRESS' : %s\n", BLOG_ADDRESS);

	return 0;
}
