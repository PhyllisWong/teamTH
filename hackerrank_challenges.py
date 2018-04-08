collection = ["1", "4", "3", "2"]

def reversed_list():
    for i in range(1, len(collection)+1):
        print('i: {}, collection[-i]: {}'.format(i, collection[-i]))


def main():
    reversed_list()


if __name__ == '__main__':
      main()
