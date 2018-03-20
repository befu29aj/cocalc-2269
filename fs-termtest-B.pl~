use List::Util 'shuffle';

print "The problem with Newton's Cooling Law is too difficult, not knowing the initial temperature.\n";
print "As an alternative I suggest Example 6 in Thomas' Calculus, page 508.\n";
print "You may also want to replace the limit question with something easier.\n";
print "There is an alternative term test in gc-termtest-A-davidworthen.tex.\n";

srand;

$aufgabe[0]=sub {
print termtest "\\aufgabe{5} Evaluate the limit\n";
print termtest "\\begin{equation}\n";
print termtest "  \\label{eq:wohghoda}\n";
print termtest "  $v002[$i1]\\notag\n";
print termtest "\\end{equation}\n\n";
};

$aufgabe[1]=sub {
print termtest "\\aufgabe{8} Find the equation of the tangent line to the curve\n";
print termtest "\\begin{equation}\n";
print termtest "  \\label{eq:leegaigh}\n";
print termtest "  $v003[$i1]\\notag\n";
print termtest "\\end{equation}\n";
print termtest "at the point \$($v011[$i1],$v004[$i1])\$.\n\n";
};

$aufgabe[2]=sub {
print termtest "\\aufgabe{7} Find the domain and the derivative of\n";
print termtest "\\begin{equation}\n";
print termtest "  \\label{eq:javahvap}\n";
print termtest "  f(x)=\\frac{\\ln{}x}{$v005[$i1]+\\ln{}x}\\notag\n";
print termtest "\\end{equation}\n";
print termtest "Make sure to simplify the derivative as much as possible.\n\n";
};

$aufgabe[3]=sub {
print termtest "\\aufgabe{5} Find the derivative of \n";
print termtest "\\begin{equation}\n";
print termtest "  \\label{eq:ohjoceej}\n";
print termtest "  $v006[$i1]\\notag\n";
print termtest "\\end{equation}\n\n";
};

$aufgabe[4]=sub {
print termtest "\\aufgabe{7} $v007[$i1]\n\n";
};

$aufgabe[5]=sub {
print termtest "\\aufgabe{8} Provide the second derivative of the following two\n";
print termtest "functions in their simplest form. \n";
print termtest "\\begin{equation}\n";
print termtest "  \\label{eq:loesheop}\n";
print termtest "  f(x)=5x-\\frac{3}{x-2}\\notag\n";
print termtest "\\end{equation}\n";
print termtest "\\begin{equation}\n";
print termtest "  \\label{eq:eighohbi}\n";
print termtest "  g(x)=\\frac{x^{2}\\ln{}x}{2}-\\frac{3x^{2}}{4}\\notag\n";
print termtest "\\end{equation}\n\n";
};

$aufgabe[6]=sub {
print termtest "\\aufgabe{9} ";
print termtest "An aluminum beam was brought from the outside cold into a machine shop where the temperature was held at $v008[$i1]\$^{\\circ}\$F. After 10 minutes, the beam warmed to $v009[$i1]\$^{\\circ}\$F and after another 10 minutes it was $v010[$i1]\$^{\\circ}\$F. Use Newton's law of cooling to estimate the beam's initial temperature.\n\n";
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

$v001[0]="1";
$v002[0]="\\lim_{x\\rightarrow{}5}\\left(\\frac{1}{x-5}-\\frac{10}{x^{2}-25}\\right)";
$v003[0]="y=\\frac{1}{5\\sin{}x+2\\cos{}x}";
$v004[0]="0.5";
$v005[0]="3";
$v006[0]="g(t)=4e^{t\\cos{}t}";
$v007[0]="The half-life of Polonium-210 is 139 days, but your sample will not be useful to you after 95\\% of the radioactive nuclei present on the day the sample arrives has disintegrated. For about how many days after the sample arrives will you be able to use the polonium?";
$v008[0]="65";
$v009[0]="35";
$v010[0]="50";
$v011[0]="0";

$v001[1]="2";
$v002[1]="\\lim_{x\\rightarrow{}4}\\left(\\frac{1}{x-4}-\\frac{8}{x^{2}-16}\\right)";
$v003[1]="y=\\frac{1}{5\\cos{}x+2\\sin{}x}";
$v004[1]="\\frac{1}{2}";
$v005[1]="2";
$v006[1]="g(t)=-7e^{t\\sin{}t}";
$v007[1]="The half-life of Palladium-100 is 4 days. You have a sample of 3.26mg. How many days will pass before it is reduced to 1mg?";
$v008[1]="70";
$v009[1]="30";
$v010[1]="45";
$v011[1]="\\frac{\\pi}{2}";

for ($i1=0;$i1<=$#nm;++$i1)
{
open(termtest,">./gc-termtest-A$vn[$i1].tex");
print termtest "% gc-termtest-A.tex\n\n";
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

print termtest "\\textbf{Term Test A version $vn[$i1]}\n\n";

@bufgabe=shuffle(@aufgabe);

for ($i2=0;$i2<=$#aufgabe;++$i2)
{
$bufgabe[$i2]->();
}

print termtest "\\end{document}\n";
close(termtest);
}
