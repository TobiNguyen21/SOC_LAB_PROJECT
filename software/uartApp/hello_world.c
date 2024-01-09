#include <stdio.h>
#include <unistd.h>
#include "system.h"
#include "io.h"

#define SWITCHES_BASE    SWITCH_BASE
#define LEDS_BASE        LED_BASE
int main() {
    char previous_switch_state = 0;
    char current_switch_state;
    char uart_char;

    printf("Hello from Nios II!\n");

    while (1) {
        // Đọc trạng thái của các công tắc
        current_switch_state = IORD(SWITCHES_BASE, 0);

        // Kiểm tra xem có sự thay đổi từ trạng thái trước đó không
        if (current_switch_state != previous_switch_state) {
            // Ghi trạng thái của công tắc lên thanh LED
            IOWR(LEDS_BASE, 0, current_switch_state);

            // Gửi dữ liệu qua UART
            printf("Switch state changed: %x\n", current_switch_state);

            // Đọc một ký tự từ UART
            uart_char = getchar();

            // Hiển thị ký tự trên thanh LED
            IOWR(LEDS_BASE, 0, uart_char);

            // Cập nhật trạng thái trước đó
            previous_switch_state = current_switch_state;
        }

        // Ngủ một khoảng thời gian ngắn để tránh việc đọc liên tục
        usleep(100000);
    }

    return 0;
}