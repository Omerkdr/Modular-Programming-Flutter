import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veli_capraz/101/image_learns.dart';
import 'package:veli_capraz/303/reqrest_resource/service/reqres_service.dart';
import 'package:veli_capraz/303/reqrest_resource/viewModel/req_res_provider.dart';
import 'package:veli_capraz/product/extension/string_extension.dart';
import 'package:veli_capraz/product/global/resource_context.dart';
import 'package:veli_capraz/product/service/project_dio.dart';

import '../../../product/global/theme_notifer.dart';
import '../model/resource_model.dart';

class ReqResView extends StatefulWidget {
  const ReqResView({super.key});

  @override
  State<ReqResView> createState() => _ReqResViewState();
}

//class _ReqResViewState extends ReqresViewModel

class _ReqResViewState extends State<ReqResView> with ProjectDioMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ReqResProvider>(
      create: (context) => ReqResProvider(ReqresService(service)),
      builder: (context, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: () {
            context.read<ThemeNotifer>().changeTheme();
          }),
          appBar: AppBar(
              actions: const [_SaveandNavigate()],
              title: context.watch<ReqResProvider>().isLoading
                  ? const CircularProgressIndicator(color: Colors.white)
                  : null),
          body: Column(
            children: [
              const _TempPlaceHolder(),
              Expanded(
                child: _resourceListview(
                    context, context.watch<ReqResProvider>().resources),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _SaveandNavigate extends StatelessWidget {
  const _SaveandNavigate();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          context
              .read<ReqResProvider>()
              .saveToLocale(context.read<ResourceContext>());
          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            return const ImageLearn();
          }));
        },
        child: const Icon(Icons.ac_unit));
  }
}

class _TempPlaceHolder extends StatelessWidget {
  const _TempPlaceHolder();

  @override
  Widget build(BuildContext context) {
    return Selector<ReqResProvider, bool>(builder: (context, value, child) {
      return value ? const Placeholder() : const Text('data');
    }, selector: (context, provider) {
      return provider.isLoading;
    });
  }
}

ListView _resourceListview(BuildContext context, List<Data> items) {
  return ListView.builder(
    itemCount: items.length,
    itemBuilder: (BuildContext context, int index) {
      return Card(
          color: Color(items[index].color?.colorValue ?? 0),
          child: Text(items[index].name ?? ''));
    },
  );
}
