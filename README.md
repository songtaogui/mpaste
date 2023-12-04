# mpaste

Multi-thread paste for linux

## INSTALL

mpaste is a bash script, so it should be worked by just download and put in PATH
```
git clone https://github.com/songtaogui/mpaste.git
# give mpaste/mpaste file the execute permission and put it in path
cd mpaste
chmod 755 mpaste
echo "export PATH=$PWD:\$PATH" >> ~/.bashrc && source ~/.bashrc
```

## USAGE

```
------------------------------------------------------------
Parallel paste for large number of files
------------------------------------------------------------
Dependence:
- GNU paste;
- GNU parallel;
- easy_bash (https://github.com/songtaogui/easy_bash)
------------------------------------------------------------
USAGE:
    bash mpaste [OPTIONS] [wildcard_files...]

OPTIONS: ([R]:required  [O]:optional)
    -h, --help                          show help and exit.
    -t, --threads       <num>   [O]     set threads (default: 2)
    -o, --out           <file>  [O]     output to a file, default: to stdout
    -d, --delimiter     <str>   [O]     reuse character from LIST instead of TABs
    -l, --list          <file>  [O]     paste from list of files
    -m, --max           <num>   [O]     max files to paste per threads, default: 1000
    --header           <regex>  [O]     Modify the file name according to the regex (perl)
                                        as the header of the output, eg:
                                            --header 's/.*/_AAA/'
                                            --header 's#.*/##'
                                        use empty char for not modify:
                                            --header ''
    -v, --verbose                       be verbose, output detailed logs
------------------------------------------------------------
Author: Songtao Gui
E-mail: songtaogui@sina.com
```

## EXAMPLE

```
cd test
bash run_test.sh
```