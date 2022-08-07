import 'package:ea_kazi/src/common/common_exports.dart';
import 'package:ea_kazi/src/constants/constants_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/utils_exports.dart';

// Initial Selected Value
final selectedItemProvider = StateProvider<String>((ref) => 'Item 1');

class WithdrawScreen extends ConsumerWidget {
  const WithdrawScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedValue = ref.watch(selectedItemProvider);
    SizeConfig().init(context);
    return EaKaziScaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => null, //TODO: WORK ON THIS
            icon: const Icon(
              Icons.more_vert_outlined,
              color: AppColors.darkColor,
            ),
          )
        ],
        title: Text(
          AppStrings.deposit,
          style: Theme.of(context).textTheme.headline6,
        ),
        leading: BackButton(
          onPressed: () => null, //TODO: IMPLEMENT BACK BUTTON FUNCTIONALITY
          color: AppColors.darkColor,
        ),
      ),
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: kDefaultPadding,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.p10),
                color: const Color(0xFFF1F3F6), //TODO: WORK ON THIS
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "N20,600",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  gapH2,
                  Text(
                    AppStrings.currentBalance,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: AppColors.secondaryColor,
                        ),
                  ),
                ],
              ),
            ),
            gapH4,
            Text(
              AppStrings.selectAsset,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            gapH2,
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: Sizes.p16,
                vertical: Sizes.p4,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.secondaryColor),
                borderRadius: BorderRadius.circular(Sizes.p6),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  // Initial Value
                  hint: Text(
                    AppStrings.selectIntrests,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: AppColors.secondaryColor,
                        ),
                  ),
                  // value: selectedValue,
                  // Down Arrow Icon
                  icon: const Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: Sizes.p18,
                    color: AppColors.secondaryColor,
                  ),

                  // Array list of items
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (_) {},
                ),
              ),
            ),
            gapH6,
            PrimaryButton(
              text: AppStrings.next,
              onPressed: () => null, //TODO: WORK ON THIS
            )
          ],
        ),
      ),
    );
  }
}

// List of items in our dropdown menu
var items = [
  'Item 1',
  'Item 2',
  'Item 3',
  'Item 4',
  'Item 5',
];

class SelectBankScreen extends StatelessWidget {
  const SelectBankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return EaKaziScaffold(
      //TODO: WORK ON THIS
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => null, //TODO: WORK ON THIS
            icon: const Icon(
              Icons.more_vert_outlined,
              color: AppColors.darkColor,
            ),
          )
        ],
        title: Text(
          AppStrings.withdraw,
          style: Theme.of(context).textTheme.headline6,
        ),
        leading: BackButton(
          onPressed: () => null, //TODO: IMPLEMENT BACK BUTTON FUNCTIONALITY
          color: AppColors.darkColor,
        ),
      ),
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          children: [
            Container(
              padding: kDefaultPadding,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Sizes.p10),
                color: const Color(0xFFF1F3F6), //TODO: WORK ON THIS
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "N20,600",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  gapH2,
                  Text(
                    AppStrings.currentBalance,
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(
                          color: const Color(0xFF3A4276), //TODO:!!!!!!
                        ),
                  ),
                ],
              ),
            ),
            gapH6,
            Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.selectBank,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  gapH2,
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: Sizes.p16,
                      vertical: Sizes.p4,
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.secondaryColor),
                      borderRadius: BorderRadius.circular(Sizes.p6),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        // Initial Value
                        hint: Text(
                          AppStrings.selectBank,
                          style:
                              Theme.of(context).textTheme.subtitle1!.copyWith(
                                    color: AppColors.secondaryColor,
                                  ),
                        ),
                        // value: selectedValue,
                        // Down Arrow Icon
                        icon: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: Sizes.p18,
                          color: AppColors.secondaryColor,
                        ),

                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (_) {},
                      ),
                    ),
                  ),
                  gapH4,
                  const BankCustomFormField(
                    title: AppStrings.accountNumber,
                  ),
                  gapH4,
                  const BankCustomFormField(
                    title: AppStrings.ammount,
                  ),
                  gapH4,
                  const BankCustomFormField(
                    title: AppStrings.description,
                  ),
                  gapH6,
                  PrimaryButton(
                    text: AppStrings.next,
                    onPressed: () => null, //TODO: WORK ON THIS
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BankCustomFormField extends StatelessWidget {
  const BankCustomFormField({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        gapH2,
        TextFormField(
          keyboardType: TextInputType.name,
          autocorrect: false,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: Sizes.p12,
              vertical: Sizes.p6,
            ),
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}

class EnterPinScreen extends StatelessWidget {
  const EnterPinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return EaKaziScaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => null, //TODO: WORK ON THIS
            icon: const Icon(
              Icons.more_vert_outlined,
              color: AppColors.darkColor,
            ),
          )
        ],
        title: Text(
          AppStrings.withdraw,
          style: Theme.of(context).textTheme.headline6,
        ),
        leading: BackButton(
          onPressed: () => null, //TODO: IMPLEMENT BACK BUTTON FUNCTIONALITY
          color: AppColors.darkColor,
        ),
      ),
      body: Padding(
        padding: kDefaultPadding,
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppStrings.enterPin,
                style: Theme.of(context).textTheme.headline6,
              ),
              gapH2,
              Text(
                AppStrings.enterPinHelperText,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: AppColors.secondaryColor,
                    ),
              ),
              gapH8,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  Sizes.p4.toInt(),
                  (index) => const CustomPinBox(),
                ),
              ),
              gapH12,
              PrimaryButton(
                text: AppStrings.next,
                onPressed: () => null, //TODO: WORK ON THIS
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomPinBox extends StatelessWidget {
  const CustomPinBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.blockSizeVertical * Sizes.p6,
      width: SizeConfig.blockSizeHorizontal * Sizes.p12,
      padding: kDefaultPadding / Sizes.p2,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.secondaryColor, width: Sizes.p2),
        borderRadius: BorderRadius.circular(Sizes.p10),
      ),
      child: const TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(border: InputBorder.none),
      ),
    );
  }
}

class SuccefulScreen extends StatelessWidget {
  const SuccefulScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EaKaziScaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => null, //TODO: WORK ON THIS
            icon: const Icon(
              Icons.more_vert_outlined,
              color: AppColors.darkColor,
            ),
          )
        ],
        title: Text(
          AppStrings.withdraw,
          style: Theme.of(context).textTheme.headline6,
        ),
        leading: BackButton(
          onPressed: () => null, //TODO: IMPLEMENT BACK BUTTON FUNCTIONALITY
          color: AppColors.darkColor,
        ),
      ),
      body: Column(),
    );
  }
}
