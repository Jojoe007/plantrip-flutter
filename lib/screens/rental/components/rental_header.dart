import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';
import 'package:plantrip/utils/format/DateInputFormatter.dart';

class RentalHeader extends StatefulWidget {
  const RentalHeader({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RentalHeaderState();
}

class _RentalHeaderState extends State<RentalHeader> {
  final DateTime _now = DateTime.now();
  late DateTime _pickup;
  late DateTime _offer;

  final _fromKey = GlobalKey<FormState>();

  final TextEditingController _locationFieldController =
      TextEditingController();
  final TextEditingController _pickupFieldController = TextEditingController();
  final TextEditingController _offerFieldController = TextEditingController();

  @override
  void initState() {
    _pickup = _now;
    _offer = _pickup;

    super.initState();
  }

  @override
  void dispose() {
    _locationFieldController.dispose();
    _pickupFieldController.dispose();
    _offerFieldController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: Colors.grey[300],
      child: SafeArea(
        child: Form(
          key: _fromKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rental",
                    style: theme.textTheme.labelLarge,
                  ),
                  Text(
                    "Pickup ?",
                    style: theme.textTheme.displaySmall,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                // height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: _locationFieldController,
                  onChanged: _onLocationFieldChange,
                  style: const TextStyle(height: 1.2),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "สถานที่รับรถ",
                    hintStyle: TextStyle(height: 0),
                    prefixIcon: Icon(
                      Icons.location_on,
                      // color: Colors.black,
                      size: 28,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                // height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  controller: _pickupFieldController,
                  keyboardType: TextInputType.datetime,
                  inputFormatters: [
                    DateInputFormatter(),
                  ],
                  onChanged: _onPickupFieldChange,
                  style: const TextStyle(height: 1.2),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "วันที่ รับรถ",
                    hintStyle: const TextStyle(height: 0),
                    prefixIcon: const Icon(
                      Ionicons.time,
                      // color: Colors.black,
                      size: 28,
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.calendar_month_outlined,
                        // color: Colors.black,
                      ),
                      onPressed: _openPickupDatePicker,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                // height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  enabled: _pickupFieldController.text.isNotEmpty,
                  controller: _offerFieldController,
                  onChanged: _onOfferFieldChange,
                  keyboardType: TextInputType.datetime,
                  inputFormatters: [
                    DateInputFormatter(),
                  ],
                  style: const TextStyle(height: 1.2),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: "วันที่ คืนรถ",
                    hintStyle: const TextStyle(height: 0),
                    prefixIcon: const Icon(
                      Ionicons.time,
                      // color: Colors.black,
                      size: 28,
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.calendar_month_outlined,
                        // color: Colors.black,
                      ),
                      onPressed: _openOfferDatePicker,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _onSearchButtonPressed,
                      child: const Text(
                        "ค้นหา",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _onLocationFieldChange(String value) {}

  _onPickupFieldChange(String value) {}

  _onOfferFieldChange(String value) {}

  _openPickupDatePicker() async {
    final date = await _showDatePicker(_pickup, _now);
    if (date == null) return;

    setState(() {
      _pickupFieldController.text = _dateToString(_pickup = date);
      _offer = date;
      _offerFieldController.text = "";
    });
  }

  _openOfferDatePicker() async {
    final date = await _showDatePicker(_offer, _pickup);
    if (date == null) return;

    setState(() {
      _offerFieldController.text = _dateToString(_offer = date);
    });
  }

  _onSearchButtonPressed() async {
    if (_locationFieldController.text.isNotEmpty) {
      if (_pickupFieldController.text.isNotEmpty) {
        //TODO Send data to parent widget
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            backgroundColor: Colors.green, content: Text("กำลังค้นหา...")));
      }
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Colors.red,
        content: Text("โปรดกรอก วันที่รับรถ"),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Colors.red,
        content: Text("โปรดกรอก สถานที่รับรถ"),
      ));
    }
  }

  _showDatePicker(DateTime init, DateTime first) async => showDatePicker(
        context: context,
        initialDate: init,
        firstDate: first,
        lastDate: DateTime(_now.year + 2),
      );

  String _dateToString(DateTime date) => DateFormat('d/MM/y').format(date);
}
