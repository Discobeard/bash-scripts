#!/bin/bash

blue() {
	echo "\e[34m"
}

prompt_blue() {
	echo "\[\033[1;34m\]"
}

red() {
	echo "\e[31m"
}

prompt_red() {
	echo "\[\033[1;31m\]"
}

green() {
	echo "\e[32m"
}

prompt_green() {
	echo "\[\033[1;32m\]"
}

orange() {
	echo "\e[33m"
}

prompt_orange() {
	echo "\[\033[1;33m\]"
}

endc() {
	echo "\e[0m"
}

prompt_endc(){
	echo "\[\033[0m\]"
}
