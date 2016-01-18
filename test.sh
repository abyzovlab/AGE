#!/bin/sh

echo "* Test #1"
echo "For alignment with large deletion and micro insersion. Mismatches"
echo "and small deletions are present in each flanking sequence."
echo "Run as: ./age_align test1_*.fa"
./age_align test1_*.fa "$@"

echo "* Test #2"
echo "For alignment with same size deletion and insersion."
echo "Run as: ./age_align test2_*.fa"
./age_align test2_*.fa "$@"

echo "* Test #3"
echo "For alignment with large deletion, insersion and microhomology around"
echo "breakpoints."
echo "Run as: ./age_align test3_*.fa"
./age_align test3_*.fa "$@"

echo "* Test #4"
echo "Another test for homology around breakpoints."
echo "Run as: ./age_align test4_*.fa"
./age_align test4_*.fa "$@"

echo "* Test #5"
echo "For microhomology inside and outside breakpoints."
echo "Run as: ./age_align test5_*.fa"
./age_align test5_*.fa "$@"

echo "* Test #6"
echo "For an alternative alignment. There is a 2 bp homology at breakpoints."
echo "No alternative should be reported."
echo "Run as: ./age_align test6_*.fa"
./age_align test6_*.fa "$@"

echo "* Test #7"
echo "For an alternative alignment. Right flanking sequence aligns at a"
echo "different place."
echo "Run as: ./age_align test7_*.fa"
./age_align test7_*.fa "$@"

echo "* Test #8"
echo "Test for an alignment of reverse complement (second sequence)."
echo "Run as: ./age_align test8_*.fa -revcom2"
./age_align test8_*.fa -revcom2 "$@"

echo "* Test #9"
echo "Test for alignment with many indels/mismatches in flanking sequences."
echo "Run as: ./age_align test9_*.fa"
./age_align test9_*.fa "$@"

echo "* Test #10"
echo "Test for inversion."
echo "Run as: ./age_align test10_*.fa -inv"
./age_align test10_*.fa -inv "$@"

echo "* Test #11"
echo "Test for inversion."
echo "Run as: ./age_align test11_*.fa -inv"
./age_align test11_*.fa -inv "$@"

echo "* Test #12"
echo "Test to demonstrate that linear pass to find optimal split between two"
echo "local alignments won't find correct alginment. This case is put in the"
echo "paper (Abyzov & Gerstein, 2011)."
echo "Run as: ./age_align test12_*.fa -match=1 -mismatch=-2 -go=-4 -ge=-2"
./age_align test12_*.fa -match=1 -mismatch=-2 -go=-4 -ge=-2 "$@"

echo "* Test #13"
echo "Test for tandem duplication."
echo "Run as: ./age_align test13_*.fa -tdup"
./age_align test13_*.fa -tdup "$@"

echo "* Test #14"
echo "Inversion with conting over left breakpoint."
echo "Run as: ./age_align test14_*.fa -inv"
./age_align test14_*.fa -inv "$@"

echo "* Test #15"
echo "Inversion with conting over right breakpoint."
echo "Run as: ./age_align test15_*.fa -inv"
./age_align test15_*.fa -inv "$@"

exit 0;