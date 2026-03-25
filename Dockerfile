FROM ubuntu

RUN apt-get update && apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
  loop = set()\n\
  while n!=1:\n\
    total = 0\n\
    while n > 0:\n\
      digit = n % 10\n\
      total += digit ** 2\n\
      n = n // 10\n\
    n = total\n\
    if n in loop:\n\
      return False\n\
    loop.add(n)\n\
  return True\n\
print(isHappy(19))\n\
print(isHappy(2))"]