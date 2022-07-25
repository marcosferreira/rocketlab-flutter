import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:rocketlab/models/order.dart';
import 'package:rocketlab/widgets/filter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _selectedStatus = '';

  void setSelectedStatus(String value) {
    setState(() {
      _selectedStatus = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/images/logo_secondary.svg',
        ),
        leadingWidth: 0,
        toolbarHeight: 100,
        actions: [
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color?>(
                const Color(0xff202024),
              ),
            ),
            child: const Icon(
              PhosphorIcons.signOut,
              color: Color(0xff7C7C8A),
            ),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [_heading(context), _filterGroup(), _listCall()],
          ),
        ),
      ),
    );
  }

  Expanded _listCall() {
    return Expanded(
      child: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (_, index) => Card(
          child: ClipPath(
            clipper: ShapeBorderClipper(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(color: Color(0xffFBA94C), width: 5),
                ),
              ),
              child: ListTile(
                title: Text(
                  'Património ${orders[index].patrimony}',
                ),
                subtitle: Row(
                  children: [
                    const Icon(
                      PhosphorIcons.clockAfternoon,
                      size: 14,
                    ),
                    Text(
                      ' ${orders[index].when}',
                    ),
                  ],
                ),
                trailing: const CircleAvatar(
                  backgroundColor: Color(0xFF29292E),
                  child: Icon(
                    PhosphorIcons.hourglass,
                    size: 19,
                    color: Color(0xffFBA94C),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row _filterGroup() {
    return Row(
      children: [
        Expanded(
          child: Filter(
            title: 'EM ANDAMENTO',
            type: 'open',
            isActive: _selectedStatus == 'open',
            onPressed: () => setSelectedStatus('open'),
          ),
        ),
        const SizedBox(
          width: 12,
          height: 12,
        ),
        Expanded(
          child: Filter(
            title: 'FINALIZADO',
            type: 'closed',
            isActive: _selectedStatus == 'closed',
            onPressed: () => setSelectedStatus('closed'),
          ),
        ),
      ],
    );
  }

  Row _heading(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 10),
          child: Text(
            'Meus chamados',
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Text('0', style: Theme.of(context).textTheme.headline6)
      ],
    );
  }
}
