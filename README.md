# pingUpDown

A ping sweep is a basic network scanning technique used to determine which of a range of IP addresses map to live hosts. (Techtarget)

This script executes the ping command with a count equal to one and grabs the value of the package received. If the value is zero, the host is down, now if the value is one, the host is up.

- **NOTE**: There is no error handling, this script only verifies if the file exists (-f) or if it has read permission (-r).

## How to run:

```bash

# Clone
$ git clone <https://github.com/hihackthis/pingUpDown.git>

# Access the directory
$ cd pingUpDow

# Give privileges
$ chmod +x pingUpDown.sh

# Run script
$ ./pingUpDown.sh /PATH/FILE

```

## DEMO

![ ](https://raw.githubusercontent.com/hihackthis/pingUpDown/main/img/ping_anima.gif)

File examples:

1)

```
1.1.1.1
2.2.2.2
3.3.3.3
4.4.4.4
5.5.5.5
```

2)

```
site1.com
site2.com.br
site3.net
site4.gov
```

3)

```
1.1.1.1
2.2.2.2
3.3.3.3
4.4.4.4
site1.com
site2.com.br
```

## Final words 

Have fun! :money_mouth_face:

<div align="center">

[!["Buy Me A Cake"](https://github.com/hihackthis/autoKNOXSS/blob/main/images/06.png)](https://bmc.link/moicanodieQ) 

[!["Paypal"](https://github.com/hihackthis/autoKNOXSS/blob/main/images/07.png)](https://www.paypal.com/donate/?hosted_button_id=UC7N8XFXNQCPA)

</div>

Heartfelt thanks :sunglasses:
