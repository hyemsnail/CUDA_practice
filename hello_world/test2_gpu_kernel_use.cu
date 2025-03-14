#include <stdio.h>

// CUDA 커널 함수
__global__ void kernel() {
    printf("Hello, World!\n");
}

int main(void) {
    kernel<<<1,1>>>();  // GPU에서 커널 실행
    cudaDeviceSynchronize();  // GPU 연산 완료 대기
    fflush(stdout);  // 출력 버퍼 비우기
    return 0;
}
