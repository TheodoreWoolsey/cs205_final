# TODO: Modify this file to create a shell script that is able to use awk to go through a file
# formatted like pokemon.dat and provides a printed report in the following format (where your 
# script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Non-Legendary Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Defense: [VALUE]
# ======= END SUMMARY =======

# NOTE THAT YOU MUST USE AWK OR YOU WILL LOSE POINTS
# The "Avg." values should be calculated as mean values for the corresponding columns.
# The averages must only be for non-legendary pokemon.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not
# necessarily be called pokemon.dat. However, you can assume that any file passed to this
# script will be formatted exactly the way pokemon.dat is formatted.

echo "====== SUMMARY OF POKEMON.DAT ======"
echo "Total Non-Legendary Pokemon:"
#The following awk script starts at a count of zero, then adds one to the count if the value in column 12 is False.
awk ' BEGIN {count=0;} { if ($12 == "False") count+=1} END {print count}' pokemon.dat
echo "AVG. HP:" 
#The following awk script counts each value in column 4, then divides it by the total number of entries in column 4.
awk '{ total += $4; count++ } END { print total/count}' pokemon.dat
echo "AVG. Defense:"
#The following awk script does the same as the previous script, it counts the sum of each number in column 6, then divides the total by the number of entries.
awk '{ sum += $6; count++ } END { print sum/count}' pokemon.dat
echo "====== END SUMMARY ======"
