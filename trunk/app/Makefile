### Makefile --- 

## Author: sebastianarcila@gmail.com
## Keywords: C, assembler, Gtk+
## X-URL: http://code.assembla.com/trigo_assembla/subversion/nodes

CFLAGS = -Wall -g -export-dynamic `pkg-config --cflags --libs gtk+-2.0` `pkg-config --cflags --libs libglade-2.0`
OBJS = trigonometria
all = trigo
CC = gcc
SRC = trigonometria.c
trigo: 
	$(CC) $(PREFLAG) $(SRC)  -o  $(OBJS) $(CFLAGS)

clean:
	-$(RM) trigonometria

### Makefile ends here
