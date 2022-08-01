import 'package:app/src/core/core.dart';
import 'package:app/src/features/features.dart';
import 'package:app/src/ui/theme/theme.dart';
import 'package:app/src/ui/widgets/widgets.dart';
import 'package:app/src/utils/utils.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class CustomerFormScreen extends StatefulWidget {
  const CustomerFormScreen({
    this.customer,
    Key? key,
  }) : super(key: key);

  final Customer? customer;

  @override
  State<CustomerFormScreen> createState() => _CustomerFormScreenState();
}

class _CustomerFormScreenState extends State<CustomerFormScreen> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _customerEmailController;
  late TextEditingController _customerNameController;
  late TextEditingController _customerPhoneController;
  late CustomerFormDTO _dto;
  late CustomerFormViewModel _viewModel;

  @override
  void initState() {
    super.initState();

    _dto = CustomerFormDTO.fromCustomer(widget.customer);

    _customerEmailController = TextEditingController(text: _dto.email);
    _customerNameController = TextEditingController(text: _dto.name);
    _customerPhoneController = TextEditingController(text: _dto.phone);

    _viewModel = context.read<Injector>().customerFormViewModel;
  }

  Widget _buildBody(
    BuildContext context, {
    required CustomerFormViewState state,
  }) {
    Widget result;

    if (state is CustomerFormViewStateSuccess) {
      SchedulerBinding.instance.addPostFrameCallback(
        (_) => DefaultDialog.showCustomDialog(
          context,
          title: 'Customer created',
          body: Text('The customer has been created successfully'),
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

    if (state is CustomerFormViewStateError) {
      result = ErrorScreen(
        errorMessage: state.errorMessage,
      );
    } else {
      var buttonChild = state is CustomerFormViewStateInitial
          ? Text('Save')
          : CircularProgressIndicator();

      var callback = state is CustomerFormViewStateInitial
          ? () {
              if (_formKey.currentState!.validate()) {
                _dto.email = _customerEmailController.text;
                _dto.name = _customerNameController.text;
                _dto.phone = _customerPhoneController.text;
                _viewModel.createCustomer(_dto.toCustomer());
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
                    controller: _customerNameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: Spacing.small,
                        vertical: Spacing.medium,
                      ),
                      hintText: 'John Doe',
                      labelText: 'Name',
                    ),
                    keyboardType: TextInputType.name,
                    validator: (value) => Validator.validateRequired(value),
                  ),
                  const SizedBox(height: Spacing.medium),
                  TextFormField(
                    controller: _customerEmailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: Spacing.small,
                        vertical: Spacing.medium,
                      ),
                      hintText: 'john@doe.com',
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) => Validator.validateEmail(value),
                  ),
                  const SizedBox(height: Spacing.medium),
                  TextFormField(
                    controller: _customerPhoneController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: Spacing.small,
                        vertical: Spacing.medium,
                      ),
                      hintText: '+1-202-555-0148 ',
                      labelText: 'Phone Number',
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (value) => Validator.validateRequired(value),
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
            widget.customer != null ? 'Edit customer' : 'New Customer',
          ),
        ),
        body: ChangeNotifierProvider<CustomerFormViewModel>(
          create: (_) => _viewModel,
          child: Consumer<CustomerFormViewModel>(
            builder: (_, viewModel, __) => _buildBody(
              context,
              state: viewModel.state,
            ),
          ),
        ),
      );
}
