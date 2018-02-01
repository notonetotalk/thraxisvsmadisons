import 'dart:math';

void main() {

	// The following is a list of possible codes and the corresponding number of
	// steps for each given method to solve it. steps1 contains the method speed
	// information for Thraxis, steps2 for Madison's.
	final Map steps1 = {"AAA": 1, "AAB": 2, "AAC": 3, "ABA": 3, "ABB": 3, "ABC": 3, "ACA": 4, "ACB": 4, "ACC": 3, "BAA": 4, "BAB": 4, "BAC": 6, "BBA": 5, "BBB": 2, "BBC": 3, "BCA": 4, "BCB": 4, "BCC": 3, "CAA": 5, "CAB": 5, "CAC": 4, "CBA": 5, "CBB": 5, "CBC": 4, "CCA": 5, "CCB": 5, "CCC": 3};
	final Map steps2 = {"AAA": 1, "AAB": 3, "AAC": 4, "ABA": 3, "ABB": 3, "ABC": 2, "ACA": 4, "ACB": 4, "ACC": 4, "BAA": 3, "BAB": 3, "BAC": 4, "BBA": 3, "BBB": 2, "BBC": 4, "BCA": 4, "BCB": 4, "BCC": 4, "CAA": 4, "CAB": 4, "CAC": 5, "CBA": 4, "CBB": 4, "CBC": 4, "CCA": 4, "CCB": 4, "CCC": 3};

	// Initalize totals for adding up.
	int stpttl1 = 0;
	int stpttl2 = 0;

	// Loops through 100 randomized codes and prints out the number of total steps
	// for each method to solve it individually, and keeps track of total.
	for (int i = 0; i < 100; i++) {
		String code = rndCode();
		int stp1 = steps1[code];
		int stp2 = steps2[code];
		stpttl1 = stpttl1 + stp1;
		stpttl2 = stpttl2 + stp2;
		print(code);
		print("Thraxis: $stp1");
		print("Madison's: $stp2\n");
	}

	// Calculates average number of steps taken for each method.
	double stpavg1 = stpttl1 / 100;
	double stpavg2 = stpttl2 / 100;

	print("Average steps");
	print("-------------");
	print("Thraxis: $stpavg1");
	print("Madison's: $stpavg2");

}

// Generates random code for our given methods to solve.
String rndCode() {
	final List ltrs = ["A","B","C"];
	final Random rnd = new Random();
	String code = "";
	for (int i = 0; i < 3; i++) {
		code = code + ltrs[rnd.nextInt(3)];
	}
	return code;
}
