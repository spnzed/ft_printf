<h1 align=center>
	<b>ft_printf</b>
	 
  <i>42cursus' project #3</i>
</h2>
This project is pretty straightforward, you have to recode printf. You will learn what is and how to implement variadic functions. Once you validate it, you will reuse this function in your future projects.
The <b>printf</b> function is one of the most versatile and well-known functions in the C language. From a testing aid to tabulation method, printf is a very powerful and important tool in every dev's kit. This project aims to recreate the behaviour of the original MacOS's printf, including its basic error management, some of its flags, minimum field width stipulation and most of its basic conversions.
  <h1 align=center>
    
![ft_printfe](https://github.com/spnzed/ft_printf/assets/95354392/b363a09b-029b-42b3-bfbb-c85937a34b8a)


---

<h3 align=center>
Mandatory
</h3>

> <i>A small description of the required conversion:
> - `%c` print a single character.
> - `%s` print a string of characters.
> - `%p` The void * pointer argument is printed in hexadecimal.
> - `%d` print a decimal (base 10) number.
> - `%i` print an integer in base 10.
> - `%u` print an unsigned decimal (base 10) number.
> - `%x` print a number in hexadecimal (base 16).
> - `%%` print a percent sign.</i>

<h3 align=center>
Bonus
</h3>

> <i>Manage any combination of the following flags: 
> - `-0.` and minimum field width with all conversions
> - Manage all the following flags: `# +`(yes, one of them is a space)<i>

---

<h2>
The project
</h2>

### Implementation files
	
- [`Makefile`](Makefile)
- [`libft functions`](libft/)
- [`header file`](include/ftprintf.h)

Main
	
- [`ft_printf.c`](srcs/ft_printf.c)

Conversion functions

- [`ft_printf_ch_str.c`](srcs/ft_printf_ch_str.c)
- [`ft_printf_ptr_int.c`](srcs/ft_printf_ptr_int.c)
- [`ft_printf_uns_per.c`](srcs/ft_printf_uns_per.c)
- [`ft_printf_x_X.c`](srcs/ft_printf_x_X.c)

### Conversions & Flags & Expected Order

| Conversion  | Description														 			| Project 		|
|-------|-----------------------------------------------------------------------------------|---------------|
| **c** | Single ascii character         													|Mandatory		|
| **s** | String of characters NULL terminated												|Mandatory		|
| **p** | Pointer location converted to hexadecimal value									|Mandatory		|
| **d** | Decimal number 																	|Mandatory		|
| **i** | Integer in decimal base                 											|Mandatory		|
| **u** | Unsigned integer in decimal base                									|Mandatory		|
| **x** | Unsigned number printed in lowercase hexadecimal base                				|Mandatory		|
| **X** | Unsigned number printed in uppercase hexadecimal base                				|Mandatory		|
| **%** | The '%' ascii character                 											|Mandatory		|
| **o** | Unsigned number printed in octal base                 							|Extra			|

| Flag  | Description														 				| Project 		|
|-------|-----------------------------------------------------------------------------------|---------------|
| **-** | Left align the argument passed	         										|Bonus 1		|
| **0** | Add '0' as a padding character in numeric conversions (single space is default)	|Bonus 1		|
| **.** | Precision definition, followed by a number 										|Bonus 1		|
| **+** | Add a plus sign ('+') in the front of positive numeric conversions 				|Bonus 2		|
| **' '** | Add a single space (' ') in the front of positive numeric conversions 			|Bonus 2		|
| **#** | Add the corresponding prefix in front of x, X and o conversions                 	|Bonus 2		|
| **\*** | Add a placeholder for numeric values that shall be passed through the variadic arguments  |Extra			|


| Holder key  | Prefix and justification flags *| Minimum Width *| Precision *	| Conversion 	|
|-------------|---------------------------------|---------------|---------------|---------------|
|`%`		  | `-` , `0` , `+` ,  ...			| `10`, `5` , ... | `.`, `.10`, `.5`, ... | `c`, `d`, `i`, `s`, ... |  

##### * : optional flags and definitions

---
<h2>
Usage
</h2>

### Requirements
`printf` requires a *gcc* compiler and some standard libraries.

### Instructions

Clone this repository in your local computer:

```sh
$> git clone https://github.com/spnzed/ft_printf.git
```

In your local repository, run `make`

```sh
$> make 
```

> `make` suports 6 flags: 
> - `make all` or simply `make` compiles printf in its mandatory format
> - `make clean` deletes the `.o` files generated during compilation
> - `make fclean` deletes the `.o` and the `libftprintf.a` library file generated
> - `make re` executes `fclean` and `all` in sequence, recompiling the library

To use the libftprintf in your code you will need to include the header:
```c
#include "ft_printf.h" 
```
