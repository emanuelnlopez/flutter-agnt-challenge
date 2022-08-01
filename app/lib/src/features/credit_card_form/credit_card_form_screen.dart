import 'package:app/src/core/core.dart';
import 'package:app/src/features/features.dart';
import 'package:app/src/ui/theme/theme.dart';
import 'package:app/src/ui/widgets/widgets.dart';
import 'package:app/src/utils/utils.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class CreditCardFormScreen extends StatefulWidget {
  const CreditCardFormScreen({
    this.creditCard,
    required this.customer,
    Key? key,
  }) : super(key: key);

  final CreditCard? creditCard;
  final Customer customer;

  @override
  State<CreditCardFormScreen> createState() => _CreditCardFormScreenState();
}

class _CreditCardFormScreenState extends State<CreditCardFormScreen> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _cardCVCController;
  late TextEditingController _cardExpirationDateController;
  late TextEditingController _cardNameController;
  late TextEditingController _cardNumberController;

  late CreditCardFormDTO _dto;
  late CreditCardFormViewModel _viewModel;

  @override
  void initState() {
    super.initState();

    _dto = CreditCardFormDTO.fromCreditCard(widget.creditCard);

    _cardCVCController = TextEditingController(text: _dto.cvc);

    String? expirationDate;
    if (_dto.expirationMonth != null && _dto.expirationYear != null) {
      expirationDate = '${_dto.expirationMonth}/${_dto.expirationYear}';
    }

    _cardExpirationDateController = TextEditingController(
      text: expirationDate,
    );
    _cardNameController = TextEditingController(text: _dto.name);
    _cardNumberController = TextEditingController(text: _dto.number);

    _viewModel = context.read<Injector>().creditCardFormViewModel;
  }

  Widget _buildBody(
    BuildContext context, {
    required CreditCardFormViewState state,
  }) {
    Widget result;

    if (state is CreditCardFormViewStateSuccess) {
      SchedulerBinding.instance.addPostFrameCallback(
        (_) => DefaultDialog.showCustomDialog(
          context,
          title: 'Card assigned',
          body: Text('The credit card has been assigned successfully'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pop(true);
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }

    if (state is CreditCardFormViewStateError) {
      result = ErrorScreen(
        errorMessage: state.errorMessage,
        onTap: () => Navigator.of(context).popUntil(
          ModalRoute.withName(NamedRoute.listCustomers),
        ),
      );
    } else {
      var buttonChild = state is CreditCardFormViewStateInitial
          ? Text('Save')
          : CircularProgressIndicator();

      var callback = state is CreditCardFormViewStateInitial
          ? () {
              if (_formKey.currentState!.validate()) {
                _dto.cvc = _cardCVCController.text;
                _dto.expirationMonth = int.parse(
                  _cardExpirationDateController.text.split('/')[0],
                );
                _dto.expirationYear = int.parse(
                  _cardExpirationDateController.text.split('/')[1],
                );
                _dto.name = _cardNameController.text;
                _dto.number = _cardNumberController.text;

                _viewModel.createCreditCard(
                  creditCard: _dto.toCreditCard(),
                  customerId: widget.customer.id!,
                );
              }
            }
          : null;

      result = SingleChildScrollView(
        padding: const EdgeInsets.all(
          Spacing.medium,
        ),
        child: Column(
          children: [
            const SizedBox(height: Spacing.medium),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _cardNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: Spacing.small,
                        vertical: Spacing.medium,
                      ),
                      hintText: 'John Doe',
                      labelText: 'Card holder name',
                    ),
                    keyboardType: TextInputType.name,
                    validator: (value) => Validator.validateRequired(value),
                  ),
                  const SizedBox(height: Spacing.medium),
                  TextFormField(
                    controller: _cardNumberController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: Spacing.small,
                        vertical: Spacing.medium,
                      ),
                      hintText: '1234234545675678',
                      labelText: 'Card number',
                    ),
                    keyboardType: TextInputType.number,
                    validator: (value) => Validator.validateRequired(value),
                  ),
                  const SizedBox(height: Spacing.medium),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: TextFormField(
                          controller: _cardExpirationDateController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: Spacing.small,
                              vertical: Spacing.medium,
                            ),
                            hintText: 'MM/YY',
                            labelText: 'Expiry date',
                          ),
                          keyboardType: TextInputType.datetime,
                          validator: (value) =>
                              Validator.validateRequired(value),
                        ),
                      ),
                      const SizedBox(width: Spacing.medium),
                      Expanded(
                        flex: 2,
                        child: TextFormField(
                          controller: _cardCVCController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: Spacing.small,
                              vertical: Spacing.medium,
                            ),
                            hintText: '555',
                            labelText: 'Security code',
                          ),
                          keyboardType: TextInputType.number,
                          validator: (value) =>
                              Validator.validateRequired(value),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: Spacing.medium),
                  ElevatedButton(
                    onPressed: callback,
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(
                        double.infinity,
                        Spacing.large * 2,
                      ),
                    ),
                    child: buttonChild,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return result;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            widget.creditCard != null ? 'Edit credit card' : 'New credit card',
          ),
        ),
        body: ChangeNotifierProvider<CreditCardFormViewModel>(
          create: (_) => _viewModel,
          child: Consumer<CreditCardFormViewModel>(
            builder: (_, viewModel, __) => _buildBody(
              context,
              state: viewModel.state,
            ),
          ),
        ),
      );
}
