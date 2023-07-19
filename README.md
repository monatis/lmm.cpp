# lmm.cpp
Inference of Large Multimodal Models in C/C++

## Warning
This is still work in progress and not ready for anything.

## Description
This repo implements LLaVA inference in C/C++ on top of 
[clip.cpp](https://github.com/monatis/clip.cpp)
and [llama.cpp](https://github.com/ggerganov/llama.cpp).
Eventually, it will support inference of other large multimodal models, but LLaVA is chosen as a starting point.

## Roadmap
- [ ] Get rid of text model and other unnecessary artifacts in `clip.cpp`
- [ ] Write the conversion script for `LLaVA`. Initially, it should be two-file format **one for the visual encoder and the other for LLaMA.
- [ ] Come up with a way to support single-file format the includes  the CLIP backbone, the multimodal projector and LLaMA weights together.
- [ ] Support other models such as `instructblip`.
