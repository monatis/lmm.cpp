#include "clip.h"

int main(int argc, char ** argv) {
    const char * path = argv[1];

    auto p_ctx = clip_model_load(path, 1);

    clip_free(p_ctx);

    return 0;
}
