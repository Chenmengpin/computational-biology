## script obtained from https://www.biostars.org/p/79202/ by vivek Krishnakumar
## removes contigs of length less than 200bp
## invoke as perl removesmalls.pl 200 contigs.fasta > contigs-l200.fasta
## removesmalls.pl
#!/usr/bin/perl
use strict;
use warnings;

my $minlen = shift or die "Error: `minlen` parameter not provided\n";
{
    local $/=">";
    while(<>) {
        chomp;
        next unless /\w/;
        s/>$//gs;
        my @chunk = split /\n/;
        my $header = shift @chunk;
        my $seqlen = length join "", @chunk;
        print ">$_" if($seqlen >= $minlen);
    }
    local $/="\n";
}
