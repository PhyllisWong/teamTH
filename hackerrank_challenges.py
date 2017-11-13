# import sys
#
# def onceInATram(num):
#     num_str = str(num)
#     l_int = int(num_str[0:3])
#     l_sum = sum(map(int, num_str[0:3]))  # 15
#
#     r_str = num_str[3:]  # '555'
#     r_sum = sum(map(int, r_str))  # 15
#
#     if num_str[0:3] == num_str[3:]:
#         num += 1
#         # print(num)
#         num_str = str(num)
#         # print(num_str)
#         r_sum = sum(map(int, num_str[3:]))
#         # print(r_sum)
#         while r_sum != l_sum:
#             num += 1
#             num_str = str(num)
#             r_str = num_str[3:]
#             r_sum = sum(map(int, r_str))
#             # print(r_sum)
#         if r_sum == l_sum:
#             # print(r_sum == l_sum)
#             num_str = str(num)
#             return num_str
#     elif l_int == 100:
#         # increase the value of the left numbers by one
#         l_int += 1
#         r_int = int(r_str)
#         num = int(str(l_int) + str(r_int))  # put the 2 sides back together
#         num_str = str(num)  # assign it to a string
#
#         l_int = int(num_str[0:3])  # reassign left int
#         l_sum = sum(map(int, num_str[0:3]))
#         num -= 12  # incriment the whole number
#         num_str = str(num)  # convert it to a string
#         r_sum = sum(map(int, num_str[3:]))  # look at the sum of the right side
#
#         while r_sum != l_sum:
#             num -= 12
#             num_str = str(num)
#             r_str = num_str[3:]
#             # print(r_str)
#             r_sum = sum(map(int, r_str))
#         if r_sum == l_sum:
#             # print(r_sum == l_sum)
#             num_str = str(num)
#             return num_str
#     else:
#         while r_sum != l_sum:
#             # print(l_sum)
#             num += 1
#             num_str = str(num)
#             r_str = num_str[3:]
#             r_sum = sum(map(int, r_str))
#             # print("sum: {}".format(r_sum))
#         if r_sum == l_sum:
#             # print(r_sum == l_sum)
#             num_str = str(num)
#             return num_str
#
#
# if __name__ == "__main__":
#     num = 565123
#     result = onceInATram(num)
#     print(result)

n = int(input())
list_to_print = []
for _ in range(n):
    s = input().split()
    cmd = s[0]
    args = s[1:]
    if cmd != "print":
        cmd += "(" + ",".join(args) + ")"
        eval("l." + cmd)
    else:
        print(l)

if __name__ == "__main__":
    input()
    result = onceInATram(num)
    print(result)
