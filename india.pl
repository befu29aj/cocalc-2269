#!/usr/bin/perl
$fn=$ARGV[0];
system "cp -v $fn.tex $fn.bak";
print "INFO: processing $fn.tex ...\n";
open(x1,"<./$fn.tex");
@x1=<x1>;
close(x1);
foreach $x1 (@x1)
{
chomp($x1);
}
open(x2,">./$fn.tex");
for ($i1=0;
$i1<=$#x1;
++$i1)
{
if ($x1[$i1]=~m/includegraphics/) 
{
    print "INFO: replacing in \"$x1[$i1]\" ...\n";
$x1[$i1]=~s/\.\//.\/diagrams\//g;
print "INFO: substituting \"$x1[$i1]\" ...\n";
}
print x2 "$x1[$i1]\n";
}
close(x2);
print "INFO: executing diff $fn.tex $fn.bak ...";
system "diff $fn.tex $fn.bak";
