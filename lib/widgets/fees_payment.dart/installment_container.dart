import 'package:flutter/material.dart';
import 'due_installment.dart';
import 'paid_installment.dart';

class InstallmentContainer extends StatelessWidget {
  final int installmentNumber;
  final int amount;
  final int size;

  InstallmentContainer({
    required this.installmentNumber,
    required this.amount,
    required this.size,
  });

  int get dueAmount => size - amount;
  bool get isFullyPaid => amount >= size;
  double get progressPercentage => (amount / size) * 100;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: isFullyPaid
          ? PaidInstallmentContainer(
              installmentNumber: installmentNumber,
              amount: amount,
            )
          : DueInstallmentContainer(
              installmentNumber: installmentNumber,
              amount: amount,
              size: size,
              dueAmount: dueAmount,
              progressPercentage: progressPercentage,
            ),
    );
  }
}