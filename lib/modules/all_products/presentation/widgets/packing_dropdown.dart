import '../../../home/presentation/barrel.dart';

class PackingDropdown extends StatelessWidget {
  final List<Packing>? packings;
  final Packing? selectedPacking;
  final Function(Packing?) onChanged;
  final String? hint;
  final bool isRequired;
  final String? errorText;

  const PackingDropdown({
    Key? key,
    required this.packings,
    required this.selectedPacking,
    required this.onChanged,
    this.hint,
    this.isRequired = false,
    this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Check if packings list is empty or null
    final bool isEmpty = packings == null || packings!.isEmpty;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Packing',
          style: context.bodySmallStyle!.copyWith(
            color: AppColors.blackTextColor,
          ),
        ),
        heightBox(5),
        DropdownButtonFormField<Packing>(
          initialValue: selectedPacking,
          hint: Text(
            hint ?? 'Select Packing',
            style: context.bodySmallStyle!.copyWith(color: AppColors.greyColor),
          ),

          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.darkGreyColor),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.darkGreyColor),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 4,
            ),
            errorText: errorText,
          ),
          isExpanded: true,
          items: isEmpty
              ? null
              : packings!.map((Packing packing) {
                  return DropdownMenuItem<Packing>(
                    value: packing,
                    child: Text(
                      packing.packingName ?? 'Unknown',
                      overflow: TextOverflow.ellipsis,
                    ),
                  );
                }).toList(),
          onChanged: isEmpty ? null : onChanged,
          validator: isRequired
              ? (value) {
                  if (value == null) {
                    return 'Please select a packing';
                  }
                  return null;
                }
              : null,
        ),
      ],
    );
  }
}
