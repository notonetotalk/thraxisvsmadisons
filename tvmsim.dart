import 'dart:html';
import 'dart:math';

// The following is a list of possible codes and the corresponding number of
// steps for each given method to solve it. stepsT contains the method speed
// information for Thraxis, stepsM for Madison's.
final Map stepsT = {"AAA": 1, "AAB": 2, "AAC": 3, "ABA": 3, "ABB": 3, "ABC": 3, "ACA": 4, "ACB": 4, "ACC": 3, "BAA": 4, "BAB": 4, "BAC": 6, "BBA": 5, "BBB": 2, "BBC": 3, "BCA": 4, "BCB": 4, "BCC": 3, "CAA": 5, "CAB": 5, "CAC": 4, "CBA": 5, "CBB": 5, "CBC": 4, "CCA": 5, "CCB": 5, "CCC": 3};
final Map stepsM = {"AAA": 1, "AAB": 3, "AAC": 4, "ABA": 3, "ABB": 3, "ABC": 2, "ACA": 4, "ACB": 4, "ACC": 4, "BAA": 3, "BAB": 3, "BAC": 4, "BBA": 3, "BBB": 2, "BBC": 4, "BCA": 4, "BCB": 4, "BCC": 4, "CAA": 4, "CAB": 4, "CAC": 5, "CBA": 4, "CBB": 4, "CBC": 4, "CCA": 4, "CCB": 4, "CCC": 3};
// Initalize variables for use in functions.
final InputElement numInput = querySelector("#numInput");
final CheckboxInputElement limitScope = (querySelector("#limitScope") as CheckboxInputElement);
final RadioButtonInputElement radioScope0 = querySelector("#radioScope0");
final RadioButtonInputElement radioScope1 = querySelector("#radioScope1");
final RadioButtonInputElement radioScope2 = querySelector("#radioScope2");
final List ltrs = ["A","B","C"];
final Random rnd = new Random();
int scope;

void main() {

		querySelector("#button").onClick.listen(simulate);

}

bool simulate(MouseEvent event) {

	// Get number input from textfield.
	int rounds = int.parse(numInput.value, onError: (e) => null);
	// Exits execution if input is not an interger.
	if (rounds == null) {
		return false;
	}

	// Initalize totals for adding up.
	int stpTotalT = 0;
	int stpTotalM = 0;
	String outputText = "";

	// Checks if user has requested to limit the scope of the simulation.
	if (limitScope.checked) {updateScope();}

	// Loops through randomized codes and tallies the number of steps
	// necessary for each method to solve it, and keeps track of totals.
	int j = rounds + 1;
	for (int i = 1; i < j; i++) {

		String code = "AAA";
		if (limitScope.checked) {

			// Randomizes a code until a desired one within the scope is found.
			while (code.split("A").length != scope) {

				code = rndCode();

			}
		} else {

			code = rndCode();

		}
		int stpT = stepsT[code];
		int stpM = stepsM[code];
		stpTotalT = stpTotalT + stpT;
		stpTotalM = stpTotalM + stpM;
		outputText =
				outputText +
				"\n\nRound ${i}: ${code}\n" +
				"Thraxis:   ${stpT}, total: ${stpTotalT}\n" +
				"Madison's: ${stpM}, total: ${stpTotalM}";

	}

	// Calculates average number of steps taken for each method.
	outputText =
			"Average steps\n" +
			"-------------\n" +
			"Thraxis:   ${stpTotalT / rounds}\n" +
			"Madison's: ${stpTotalM / rounds}\n" +
			"-------------" + outputText;

	// Outputs results to webpage.
	querySelector("#output").text = outputText;

}

// Updates the scope value based on user input.
updateScope() {

	if (radioScope0.checked) {

		scope = int.parse(radioScope0.value);

	} else if (radioScope1.checked) {

		scope = int.parse(radioScope1.value);

	} else {

		scope = int.parse(radioScope2.value);

	}

}

// Generates random code for our given methods to solve.
String rndCode() {

	String code = "";
	for (int i = 0; i < 3; i++) {

		code = code + ltrs[rnd.nextInt(3)];

	}
	return code;

}
