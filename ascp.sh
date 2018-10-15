#!/usr/local/bin/expect
set timeout 30
set srcfile [lindex $argv 0]
set destfile [lindex $argv 1]
spawn scp $srcfile ubuntu@hercats.tencent.com:$destfile
 expect {
 "(yes/no)?"
 {
   send "yes\n"
   expect "*password: " { send "kele991146\n"}
 }
 "*password: "
 {
   send "kele991146\n"
 }
}
expect "100%"
expect eof
