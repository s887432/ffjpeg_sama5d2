// 包含头文件
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <sys/time.h>
#include <unistd.h>
#include "jfif.h"
#include "bmp.h"

void showTime(struct timeval t1, struct timeval t2)
{
    long tv1, tv2, t;

    tv1 = t1.tv_sec*1000000 + t1.tv_usec;
    tv2 = t2.tv_sec*1000000 + t2.tv_usec;

    t = tv2 - tv1;

    printf("%ld.%ld\n\r", t / 1000000, t % 1000000);
}

int main(int argc, char *argv[])
{
    void *jfif = NULL;
    BMP   bmp  = {0};
    struct timeval tv1, tv2, tv3, tv4, tv5;

    if (argc < 2) {
        printf(
            "jfif test program\n"
            "usage: %s -d filename decode jpg file to decode.bmp\n",
            argv[0]
        );
        return 0;
    }

    gettimeofday(&tv1, NULL);
    jfif = jfif_load(argv[1]);
    gettimeofday(&tv2, NULL);
    jfif_decode(jfif, &bmp);
    gettimeofday(&tv3, NULL);
    jfif_free  (jfif);
    gettimeofday(&tv4, NULL);
    bmp_save(&bmp, "decode.bmp");
    gettimeofday(&tv5, NULL);
    bmp_free(&bmp);

    printf("Load jpg time: ");
    showTime(tv1, tv2);

    printf("Decode time: ");
    showTime(tv2, tv3);

    printf("save file time: ");
    showTime(tv4, tv5);

    return 0;
}

