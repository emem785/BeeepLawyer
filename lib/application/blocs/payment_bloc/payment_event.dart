part of 'payment_bloc.dart';


@immutable
@freezed
abstract class PaymentEvent with _$PaymentEvent{
  const factory PaymentEvent.makePayment(int chargeAmount,BuildContext context) = MakePayment;
}
