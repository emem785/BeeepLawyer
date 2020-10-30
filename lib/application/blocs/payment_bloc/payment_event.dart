part of 'payment_bloc.dart';


@immutable
@freezed
abstract class PaymentEvent with _$PaymentEvent{
  const factory PaymentEvent.initializePayment() = InitializePayment;
  const factory PaymentEvent.makePayment(BuildContext context) = MakePayment;
  const factory PaymentEvent.setPrice(int price) = SetPrice;
}
