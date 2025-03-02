import 'dart:math';


void main() {
  LoanProcessingSystem system = LoanProcessingSystem();

  system.applyLoan(PersonalLoan("Omar", 1000));
  system.applyLoan(HomeLoan("Ragab", 20000));
  system.applyLoan(CarLoan("Mokhtar", 3000));

  print("\nCalculating Monthly Installments for 12 months:");
  system.calculateInstallments(12);
}
abstract class Loan {
  String borrowerName;
  double loanAmount;
  double interestRate;

  Loan(this.borrowerName, this.loanAmount, this.interestRate);

  double calculateMonthlyInstallment(int months);
}

class PersonalLoan extends Loan {
  PersonalLoan(String borrowerName, double loanAmount)
      : super(borrowerName, loanAmount, 10.0);

  @override
  double calculateMonthlyInstallment(int months) {
    return _calculateInstallment(loanAmount, interestRate, months);
  }
}

class HomeLoan extends Loan {
  HomeLoan(String borrowerName, double loanAmount)
      : super(borrowerName, loanAmount, loanAmount > 500000 ? 9.5 : 8.0);

  @override
  double calculateMonthlyInstallment(int months) {
    return _calculateInstallment(loanAmount, interestRate, months);
  }
}

class CarLoan extends Loan {
  CarLoan(String borrowerName, double loanAmount)
      : super(borrowerName, loanAmount, 7.0);

  @override
  double calculateMonthlyInstallment(int months) {
    double adjustedLoanAmount = loanAmount > 50000 ? loanAmount * 1.02 : loanAmount;
    return _calculateInstallment(adjustedLoanAmount, interestRate, months);
  }
}

class LoanProcessingSystem {
  List<Loan> loans = [];

  void applyLoan(Loan loan) {
    loans.add(loan);
    print("Loan applied successfully for ${loan.borrowerName}.");
  }

  void calculateInstallments(int months) {
    loans.forEach((loan) {
      double installment = loan.calculateMonthlyInstallment(months);
      print("${loan.borrowerName}'s monthly installment: \$${installment.toStringAsFixed(2)}");
    });
  }
}

double _calculateInstallment(double amount, double rate, int months) {
  double monthlyRate = (rate / 100) / 12;
  return (amount * monthlyRate) / (1 - pow(1 + monthlyRate, -months));
}

