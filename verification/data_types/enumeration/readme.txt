Enumeration

--------------------
Problem:
--------------------

enum colors having:
    red, green and white with default numbering

typedef enum size having:
    xs=5, s, m, l=3 and xl


display all methods for enum

display all methods for enum type variable 'pkt' assigned value 's'


--------------------
Takeaways:
--------------------
-Enum can go inside:
    Library
    Package
    Class
    Module
    Interface
    Program
    Checker
    Generate

-Enum items are generally designated by numbers, strating from 0 by default. It can be changed, but stays always incremental:
    enum {red, green, white} colors;            //red=0, green=1, white=2
    enum {red=5, green, white=8, blue} colors;  //red=5, green=6, white=8, blue=9
    enum {black[4]} colors;                     //black1=1, black2=2, black3=3, black4=4
    enum {red[3]=5} colors;                     //red0=5, red1=6, red2=7
    enum {red=0, green, white=1} colors;        //ERROR, as 1 is already assigned to green
    enum {red=5, green, white=1} colors;        //OK, as numbers are by default incremental, red=5,green=6,white=1

-'enum {...} colors', here colors cannot be used as type. For using enum as type, use C++ way of typedef:
    typedef enum {......} colors

-There is one more way of C++ typedef, which is not allowed here:
    enum {...} colors;
    typedef enum colors type_color; //ERROR here, valid in C++

-enum Methods:
    first()     returns the value of the first member of the enumeration
    last()    returns the value of the last member of the enumeration
    next()    returns the value of next member of the enumeration
    next(N)    returns the value of next Nth member of the enumeration
    prev()    returns the value of previous member of the enumeration
    prev(N)    returns the value of previous Nth member of the enumeration
    num()    returns the number of elements in the given enumeration
    name()    returns the string representation of the given enumeration value

-These methoda generally returns assigned number,i.e., position in enum.
-If we use '.name' after these method, it will return the name string of the enum-item.

-methods on enum:  (generaly not used like this)
    enum {red, green, white} colors;
        colors.num          - 3         //total number
        colors              - 0         //base number always 0, even if 'enum {red=5, green, white=1} colors'
        colors.name         - red       //base name
        colors.next         - 1         //next number 1
        colors.next.name    - green     //next number 1's name - green
        colors.next(2)      - 2         //2nd next number 0+2 = 2
        colors.next(2).name - white     //2nd next number 0+2 = 2's name - white
        colors.prev         - 2         //prev number before 0 = 2
        colors.prev(2)      - 1         //2nd prev number before 0, = 1
        colors.first        - 0         //first number
        colors.last         - 2         //last number
        colors.last.name    - white     //last number's name

-methods on enum type variable: (generally used like this)
    typedef enum {xs=5, s, m, l=3, xl} size;
    size pkt = s;
        pkt.num             - 5         //total number
        pkt                 - 6         //as pkt=s, number = 6
        pkt.name            - s         //name at 6 = s
        pkt.next            - 7         //next number 7
        pkt.next.name       - m         //next number 7's name - m
        pkt.next(2)         - 3         //2nd next number from 6, 3
        pkt.next(2).name    - l         //2nd next number from 6, 3's name = l
        pkt.prev            - 5         //prev number before 6 is 5
        pkt.prev(2)         - 4         //2nd prev number before 6, = 1
        pkt.first           - 5         //first number
        pkt.last            - 4         //last number
        pkt.last.name       - xl        //last number's name
