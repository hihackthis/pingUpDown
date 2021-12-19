# pingUpDown

## A ping sweep is a basic network scanning technique used to determine which of a range of IP addresses map to live computers.(Techtarget)

### This script execute the ping command with count equal one and grab the value of package received. If the value is zero, the host is down, now if the value is one, the host is up.

### Note: There is not error handling, this is script only verifies if the file exist (-f) or if it have read permission (-r).

### How to run:

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

# DEMO 
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

Have a fun! :-D
