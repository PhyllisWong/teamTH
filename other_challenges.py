

def answer(name):
    abb_name_list = []
    name_list = name.split()

    for i in range(len(name_list)):
        if i != 0 and i != len(name_list)-1:
            abb_name_list.append(name_list[i][0] + ".")
        else:
            abb_name_list.append(name_list[i])

    return " ".join(abb_name_list)

print(answer("John Applegate Lover Smith"))
