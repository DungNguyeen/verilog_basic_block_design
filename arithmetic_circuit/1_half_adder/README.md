# half adder là mạch số dùng để cộng 2 bit đầu vào a và b. Tạo ra hai đầu ra là tổng sum và bit nhớ carry

#   `Bảng chân lý mạch half adder`
    |  a  |  b  |  sum  |  carry  |
    |  0  |  0  |   0   |    0    |
    |  0  |  1  |   1   |    0    |
    |  1  |  0  |   1   |    0    |  
    |  1  |  1  |   0   |    1    |

     sum = a XOR b
     carry = a AND b

 ![Sơ đồ mạch logic](..\docs\images\half_adder_logic_circuit.png)