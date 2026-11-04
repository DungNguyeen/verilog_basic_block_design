# full_adder là mạch tổ hợp dùng để tính tổng 3 số nhị phân 1-bit đầu vào và cho ra kết quả bit sum và bit nhớ carry
#   `Bảng chân lý`:
      i_a     i_b   i_carry  | o_carry  o_sum
       0       0       0     |    0       0
       0       0       1     |    0       1
       0       1       0     |    0       1
       0       1       1     |    1       0
       1       0       0     |    0       1
       1       0       1     |    1       0
       1       1       0     |    1       0
       1       1       1     |    1       1
      o_sum   = i_a XOR i_b XOR i_carry
      o_carry = (i_carry AND (i_a XOR i_b)) OR (i_a AND i_b)
#   `Cách tính`:
        Trường hợp 1: i_a=0;i_b=0;i_carry=0
            o_sum = i_a + i_b + i_carry = 0+0+0 = 0
            0 biểu diễn theo dạng nhị phân là 00 
            => o_carry=0 ; o_sum=0
       Trường hợp 2: i_a=0; i_b=0; i_carry=1
            o_sum = i_a + i_b + i_carry = 0+0+1 = 1
            1 biểu diễn theo dạng nhị phân là 01
            => o_carry=0 ; o_sum=1 
       Trường hợp 3: i_a=0; i_b=1; i_carry=0
            o_sum = i_a + i_b + i_carry = 0+1+0 = 1
            1 biểu diễn theo dạng nhị phân là 01
            => o_carry=0 ; o_sum=1
       Trường hợp 4: i_a=0; i_b=1; i_carry=1
            o_sum = i_a + i_b + i_carry = 0+1+1 = 2
            2 biểu diễn theo dạng nhị phân là 10
            => o_carry=1 ; o_sum=0
       Trường hợp 5: i_a=1; i_b=0; i_carry=0
            o_sum = i_a + i_b + i_carry = 1+0+0 = 1
            1 biểu diễn theo dạng nhị phân là 01
            => o_carry=0 ; o_sum=1
       Trường hợp 6: i_a=1; i_b=0; i_carry=1
            o_sum = i_a + i_b + i_carry = 1+0+1 = 2
            2 biểu diễn theo dạng nhị phân là 10
            => o_carry=1 ; o_sum=0
       Trường hợp 7: i_a=1; i_b=1; i_carry=0
            o_sum = i_a + i_b + i_carry = 1+1+0 = 2
            2 biểu diễn theo dạng nhị phân là 10
            => o_carry=1 ; o_sum=0
       Trường hợp 8: i_a=1; i_b=1; i_carry=1
            o_sum = i_a + i_b + i_carry = 1+1+1 = 3
            3 biểu diễn theo dạng nhị phân là 11
            => o_carry=1 ; o_sum=1