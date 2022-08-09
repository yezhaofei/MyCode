#include <iostream>
#include <unistd.h>

void *run(void*)
{
    int cnt = 0;
    while (1)
    {
        std::cout << ++cnt << std::endl;
        sleep(1);
    }
}

int main(int argc, char* argv[])
{
    run(nullptr);
    return 0;
}