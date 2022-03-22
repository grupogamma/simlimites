import 'package:app_sim/models/sim/sim_models.dart';
import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        //appBar: CustomAppBar(title: 'Store'),
        body: GlobalCountry());
  }
}

class GlobalCountry extends StatelessWidget {
  const GlobalCountry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _simDetails = SimLocalCountries.countries;
    print(_simDetails.length);

    return ListView.builder(
      itemCount: _simDetails.length,
      itemBuilder: (context, index) {
        final simListing = _simDetails[index];
        return Card(
          elevation: 1,
          child: ListTile(
            title: Text(simListing.productName),
            subtitle: Text(simListing.shortDescription),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PlanDetails(
                            simDetails: _simDetails[index],
                            planes: simListing.planes,
                          )));
            },
          ),
        );
      },
    );
  }
}

class PlanDetails extends StatelessWidget {
  final SimLocalCountries simDetails;
  final PlanData planes;
  const PlanDetails({Key? key, required this.simDetails, required this.planes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          elevation: 1,
          title: Text(
            simDetails.productName,
            style: const TextStyle(color: Colors.black),
          )),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Card(
            elevation: 1,
            child: ListTile(
              title: Text(planes.currentyType),
              subtitle: Text(planes.days),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
