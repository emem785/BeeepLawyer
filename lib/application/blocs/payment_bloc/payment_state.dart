part of 'payment_bloc.dart';


@immutable
@freezed
abstract class PaymentState with _$PaymentState{
  const factory PaymentState.paymentInitial() = PaymentInitial;
  const factory PaymentState.paymentInitialized() = PaymentInitialized;
  const factory PaymentState.paymentFailed(Failure failure) = PaymentFailed;
  const factory PaymentState.paymentSucceeded() = PaymentSucceeded;
  const factory PaymentState.paymentLoading() = PaymentLoading;
}