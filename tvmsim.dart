import 'dart:html';
import 'dart:math';

void main() {

		querySelector("#button").onClick.listen(simulate);

}

void simulate(MouseEvent event) {

	// Get number input from textfield.
	int rounds = int.parse((querySelector("#num") as InputElement).value);

	// The following is a list of possible codes and the corresponding number of
	// steps for each given method to solve it. stepsT contains the method speed
	// information for Thraxis, stepsM for Madison's.
	final Map stepsT = {"AAA": 1, "AAB": 2, "AAC": 3, "ABA": 3, "ABB": 3, "ABC": 3, "ACA": 4, "ACB": 4, "ACC": 3, "BAA": 4, "BAB": 4, "BAC": 6, "BBA": 5, "BBB": 2, "BBC": 3, "BCA": 4, "BCB": 4, "BCC": 3, "CAA": 5, "CAB": 5, "CAC": 4, "CBA": 5, "CBB": 5, "CBC": 4, "CCA": 5, "CCB": 5, "CCC": 3};
	final Map stepsM = {"AAA": 1, "AAB": 3, "AAC": 4, "ABA": 3, "ABB": 3, "ABC": 2, "ACA": 4, "ACB": 4, "ACC": 4, "BAA": 3, "BAB": 3, "BAC": 4, "BBA": 3, "BBB": 2, "BBC": 4, "BCA": 4, "BCB": 4, "BCC": 4, "CAA": 4, "CAB": 4, "CAC": 5, "CBA": 4, "CBB": 4, "CBC": 4, "CCA": 4, "CCB": 4, "CCC": 3};

	// Initalize totals for adding up.
	int stpTotalT = 0;
	int stpTotalM = 0;
	String outputText = "";

	// Loops through randomized codes and tallies the number of steps
	// necessary for each method to solve it, and keeps track of totals.
	for (int i = 0; i < rounds; i++) {

		String code = rndCode();
		int stpT = stepsT[code];
		int stpM = stepsM[code];
		stpTotalT = stpTotalT + stpT;
		stpTotalM = stpTotalM + stpM;
		outputText = outputText + "${code}\n";
		outputText = outputText + "Thraxis: ${stpT}\n";
		outputText = outputText + "Madison's: ${stpM}\n\n";

	}

	// Calculates average number of steps taken for each method.
	outputText = outputText + "Average steps\n";
	outputText = outputText + "-------------\n";
	outputText = outputText + "Thraxis: ${stpTotalT / rounds}\n";
	outputText = outputText + "Madison's: ${stpTotalM / rounds}";

	// Outputs results to webpage.
	querySelector("#output").text = outputText;

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
