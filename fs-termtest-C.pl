# fs-termtest-C.pl
use List::Util 'shuffle';

# round(runif(50,999999.5,9999999.5),0)
@seed=(
"6115106",
"4458352",
"4824915",
"7481256",
"1240486",
"8929712",
"9952218",
"4989765",
"2284686",
"9931308",
"5912840",
"3903347",
"6265910",
"1514605",
"4308856",
"7275789",
"2596263",
"7911112",
"1205361",
"2005506",
"5940815",
"5088095",
"1925569",
"6953980",
"2495016",
"1444195",
"3505611",
"2641570",
"2266736",
"6513845",
"7455149",
"3770263",
"8390824",
"3786564",
"3094608",
"7232933",
"9924671",
"3290431",
"8241726",
"8254946",
"4828353",
"9381326",
"6652952",
"7318252",
"1987123",
"4009287",
"1234320",
"6088281",
"1513202",
"4292859"
    );

srand($seed[0]);

# Devore Peck, 407
$aufgabe[0]=sub {
    print termtest "A sample of $v001[$i1] historians responded to questions about the performance of various U.S. presidents, and the results were presented at the annual conference of the Organization of American Historians (Associated Press, March 28, 1991). Of the $v001[$i1] surveyed, $v002[$i1] responded that Ronald Reagan lacked the proper intellect for the presidency. Construct a $v003[$i1]\\\% confidence interval for the true proportion of all historians who believe that Ronald Reagan lacked the proper intellect for the presidency. Assume that the sample is a simple random sample of all historians.\n";
};

# Aczel, 279
$aufgabe[1]=sub {
    print termtest "An accountant wants to test the null hypothesis that the variance of the amounts in company accounts is equal to $v004[$i1] (dollars squared) versus the alternative that the variance is not equal to $v004[$i1]. A random sample of $v005[$i1] accounts gives a sample variance of $v006[$i1]. Conduct the two-tailed test at the \$\\alpha=\$$v007[$i1] level of significance. Assume that the population is normally distributed.\n";
};

# Aczel, 223
$aufgabe[2]=sub {
    print termtest "A company believes its market share is about $v008[$i1]\\\%. Find the minimum required sample size for estimating the actual market share to within $v009[$i1]\\\% with $v010[$i1]\\\% confidence. The sample is a collection of products which are either made by this company or by a competitor.\n";
};

# Aczel, 265
$aufgabe[3]=sub {
    print termtest "The average weekly earnings for all full-time-equivalent employees are reported to be \\\$$v011[$i1]. Suppose that you want to check this claim since you believe it is too low. You want to prove that average weekly earnings of all employees are higher than the amount stated. You collect a random sample of $v012[$i1] employees in all areas and find that the sample mean is \\\$$v013[$i1] and the sample standard deviation is \\\$$v014[$i1]. Can you disprove the claim? (Use a 0.05 significance level.)\n";
};
    
# Aczel, 203
$aufgabe[4]=sub {
print termtest "A wine importer needs to report the average percentage of alcohol in bottles of Chilean wine. From experience with previous kinds of wine, the importer believes the population standard deviation is $v015[$i1]\\\%. The importer randomly samples $v016[$i1] bottles of the new wine and obtains a sample mean \$\\bar{x}=\$$v017[$i1]\\\%. Give a $v018[$i1]\\\% confidence interval for the average percentage of alcohol in all bottles of the new wine.\n";
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

$v001[0]="481";
$v002[0]="433";
$v003[0]="90";
$v004[0]="10,000";
$v005[0]="34";
$v006[0]="13,896";
$v007[0]="0.05";
$v008[0]="14";
$v009[0]="5";
$v010[0]="99";
$v011[0]="344";
$v012[0]="1,200";
$v013[0]="361";
$v014[0]="110";
$v015[0]="1.2";
$v016[0]="60";
$v017[0]="9.3";
$v018[0]="90";

$v001[1]="502";
$v002[1]="451";
$v003[1]="95";
$v004[1]="8,100";
$v005[1]="36";
$v006[1]="11,256";
$v007[1]="0.05";
$v008[1]="18";
$v009[1]="4";
$v010[1]="99";
$v011[1]="351";
$v012[1]="800";
$v013[1]="360";
$v014[1]="94";
$v015[1]="0.8";
$v016[1]="50";
$v017[1]="8.6";
$v018[1]="90";

$p[0]="5";
$p[1]="5";
$p[2]="5";
$p[3]="5";
$p[4]="5";

for ($i1=0;$i1<=$#nm;++$i1)
{
open(termtest,">./fs-termtest-C$vn[$i1].tex");
print termtest "% fs-termtest-C.tex\n\n";
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

print termtest "\\textbf{Term Test C version $vn[$i1]}\n\n";

@bufgabe=shuffle(@aufgabe);

for ($i2=0;$i2<=$#aufgabe;++$i2)
{
    print termtest "\\aufgabe{$p[$i2]} ";
    $bufgabe[$i2]->();
    print termtest "\n";
}

print termtest "\\end{document}\n";
close(termtest);
}
