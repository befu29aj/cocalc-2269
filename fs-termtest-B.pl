# fs-termtest-B.pl
use List::Util 'shuffle';

srand;

$aufgabe[0]=sub {
    print termtest "\\aufgabe{5} A production cycle requires good weather. In September, based on many years of experience, $v001[$i1] out of $v002[$i1] days have good enough weather for the production cycle. Calculate the probability that on exactly four out of these five days the weather was good enough for the production cycle:\n";
    print termtest "\\begin{tabular}{l}\n";
    print termtest "  September 5, 2011 \\\\\n";
    print termtest "  September 5, 2012 \\\\\n";
    print termtest "  September 5, 2013 \\\\\n";
    print termtest "  September 5, 2014 \\\\\n";
    print termtest "  September 5, 2015 \\\\\n";
    print termtest "\\end{tabular}\n";
};

$aufgabe[1]=sub {
    print termtest "In a meat manufacturing plant, cattle are processed at a work station. On average, $v004[$i1] cattle per hour create problems that cause an interruption in the work flow. Calculate the probability that a work station will experience strictly less than four interruptions on a given work day (eight hours).\n";
};

$aufgabe[2]=sub {
    print termtest "\\aufgabe{5} A factory worker produces a mean of $v005[$i1] units of a food product per hour with a standard deviation of $v006[$i1] units. The distribution is normal. Determine the missing number \$x\$ in the following statement: $v007[$i1]\\\% of the time, the factory worker produces more than \$x\$ units in an hour.\n";
};

$aufgabe[3]=sub {
    print termtest "\\aufgabe{5} A company that makes processed foods receives an ingredient in single units from a supplier. $v008[$i1]\\\% of the ingredients are A-grade quality, $v009[$i1]\\\% are B-grade quality, and the rest is spoiled. On Tuesday, the supplier drops off $v010[$i1] units. Estimate (!) the probability that $v011[$i1] or more units are spoiled.\n";
};

$aufgabe[4]=sub {
    print termtest "\\aufgabe{5} A bakery product maintains its quality for a mean of $v012[$i1] hours after production with a standard deviation of $v013[$i1] hours. The distribution is normal. The ``best before'' date is chosen such that $v014[$i1]\\\% of the product maintain their quality by that date. How many hours after production should the ``best before'' date be set?\n";
};

for ($y2=0;$y2<=$#aufgabe;++$y2)
{
    $z5=rand;
    $z1[$y2]=$z5.";;"."$y2";
}
    @z3=sort(@z1);
for ($y4=0;$y4<=$#z3;++$y4)
{
    @z4=split(/;;/,$z3[$y4]);
    $z2[$y4]=$z4[1];
}

$nm[0]="termtest1";
$nm[1]="termtest2";

$vn[0]="1";
$vn[1]="2";

$v001[0]="8";
$v002[0]="11";
$v003[0]="40";
$v004[0]="0.72";
$v005[0]="96.5";
$v006[0]="4.7";
$v007[0]="92";
$v008[0]="19.2";
$v009[0]="78.3";
$v010[0]="600";
$v011[0]="20";
$v012[0]="112";
$v013[0]="10";
$v014[0]="95";

$v001[1]="9";
$v002[1]="13";
$v003[1]="30";
$v004[1]="0.66";
$v005[1]="91.1";
$v006[1]="5.8";
$v007[1]="79";
$v008[1]="22.7";
$v009[1]="76.1";
$v010[1]="800";
$v011[1]="12";
$v012[1]="140";
$v013[1]="12";
$v014[1]="90";

for ($i1=0;$i1<=$#nm;++$i1)
{
open(termtest,">./fs-termtest-B$vn[$i1].tex");
print termtest "% fs-termtest-B.tex\n\n";
print termtest "\\documentclass[11pt]{article}\n";
print termtest "\\usepackage{alltt}\n";
print termtest "\\usepackage{enumerate}\n";
print termtest "\\usepackage{syllogism} \n";
print termtest "\\usepackage{october}\n";
print termtest "\\usepackage[table]{xcolor}\n";
print termtest "\\pagestyle{empty}\n\n";
print termtest "\\newcounter{aufg}\n";
print termtest "\\setcounter{aufg}{0}\n";
print termtest "\\newcommand{\\aufgabe}[1]{\\refstepcounter{aufg}\\textbf{(\\arabic{aufg})}[#1 points]}\n\n";

print termtest "\\begin{document}\n\n";

print termtest "\\textbf{Term Test B version $vn[$i1]}\n\n";

@bufgabe=shuffle(@aufgabe);

for ($i2=0;$i2<=$#aufgabe;++$i2)
{
    $bufgabe[$i2]->();
    print termtest "\n";
}

print termtest "\\end{document}\n";
close(termtest);
}
