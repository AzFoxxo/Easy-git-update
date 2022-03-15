#include <stdio.h>
#include <stdlib.h>

#define null 0
#define false 0
#define true 1

void fast_sync();

int main(void)
{
    puts("STARTING!");
    while (true)
    {
        // Run fast sync
        fast_sync();
        
	// Halt till enter pressed or any character
	puts("Hit enter to re-sync!\nControl + C to exit!");
	getchar();
    }
}

void fast_sync()
{
	// Add changes
	puts(">> Adding everything...");
	system("git add .");

	// Commit change
	puts(">> Commiting everything...");
	system("git commit -m \"Add changes and commit!\"");

	// Push changes
	puts(">> Pushing everything to remote git repo...");
	system("git push");

	// Everything has been synced
	puts(">> Everything is complete");
	system("git status");
}
