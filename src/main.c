#include <stdio.h>
#include "utils.h"
#include "parser.h"
#include "compute.h"

int main() {
    char input[100];

    printf("Enter a number: ");
    scanf("%s", input);

    int value = parse_input(input);
    int result = compute_square(value);

    print_result(result);

    return 0;
}
