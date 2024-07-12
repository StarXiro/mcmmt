
LIM = 2147483647

if __name__ == '__main__':
    base = 1
    while True:
        if base * base > LIM:
            break
        base += 1
        print(base, base*base)
