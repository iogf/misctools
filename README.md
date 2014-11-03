misctools
=========

A set of fun scripts.


figbox
======
A simple script to draw box around text.

    tau@spin:~$ figbox This is cool
    +----------------+
    |                |
    |  This is cool  |
    |                |
    +----------------+
    
    tau@spin:~$ figbox 'I can use text 
    > inside a box as a section'
    +-----------------------------+
    |                             |
    |       I can use text        |
    |  inside a box as a section  |
    |                             |
    +-----------------------------+
    
    tau@spin:~$ figbox 'With a different style
    > this may look better' -v '#' -o '#' -c '*'
    *##########################*
    #                          #
    #  With a different style  #
    #   this may look better   #
    #                          #
    *##########################*
    
    tau@spin:~$ figbox "`figlet -f standard Ameliabot`" -v '#' -o '#' -c '#'
    ########################################################
    #                                                      #
    #      _                   _ _       _           _     #
    #     / \   _ __ ___   ___| (_) __ _| |__   ___ | |_   #
    #    / _ \ | '_ ` _ \ / _ \ | |/ _` | '_ \ / _ \| __|  #
    #   / ___ \| | | | | |  __/ | | (_| | |_) | (_) | |_   #
    #  /_/   \_\_| |_| |_|\___|_|_|\__,_|_.__/ \___/ \__|  #
    #                                                      #
    #                                                      #
    ########################################################
    
    tau@spin:~$ figbox "$(figbox "`figlet -f standard COOl`" -v '#' -o '#' -c '#'<x "`figlet -f standard COOl`" -v '#' -o '#' -c '#')"
    +------------------------------+
    |                              |
    |  ##########################  |
    |  #                        #  |
    |  #    ____ ___   ___  _   #  |
    |  #   / ___/ _ \ / _ \| |  #  |
    |  #  | |  | | | | | | | |  #  |
    |  #  | |__| |_| | |_| | |  #  |
    |  #   \____\___/ \___/|_|  #  |
    |  #                        #  |
    |  #                        #  |
    |  ##########################  |
    |                              |
    +------------------------------+
    
into
====

Used to substitute files into template files.

template

    The file
    $data.c$

    and the file.

    $alpha.c$


This command would generate a file like.
    into -s template -o done

done

    The file
    int main(void) {
        return 0;
    }


    int main(void) {
        return 1;
    }


Where data.c is

    int main(void) {
        return 0;
    }

and alpha.c

    int main(void) {
        return 1;
    }

You can pass a regex to into as well.

    into -s template -o done -r '\{(?P<filename>.*?)\}' 

would replace all filenames inside {} for their contents.



