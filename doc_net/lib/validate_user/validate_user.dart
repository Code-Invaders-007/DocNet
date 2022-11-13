import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ValidateuserWidget extends StatefulWidget {
  const ValidateuserWidget({Key? key}) : super(key: key);

  @override
  _ValidateuserWidgetState createState() => _ValidateuserWidgetState();
}

class _ValidateuserWidgetState extends State<ValidateuserWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Valid user For that uid',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectionArea(
                        child: Text(
                      'Name ',
                      style: FlutterFlowTheme.of(context).title1,
                    )),
                    SelectionArea(
                        child: Text(
                      'DOB',
                      style: FlutterFlowTheme.of(context).title1,
                    )),
                    SelectionArea(
                        child: Text(
                      'UID',
                      style: FlutterFlowTheme.of(context).title1,
                    )),
                    SelectionArea(
                        child: Text(
                      'Region ',
                      style: FlutterFlowTheme.of(context).title1,
                    )),
                    SelectionArea(
                      child: Text(
                        'Transaction hash: ',
                        style: FlutterFlowTheme.of(context).title1,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 500, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectionArea(
                        child: Text(
                      ': Akshath G',
                      style: FlutterFlowTheme.of(context).title1,
                    )),
                    SelectionArea(
                        child: Text(
                      ': 23/05/2002',
                      style: FlutterFlowTheme.of(context).title1,
                    )),
                    SelectionArea(
                        child: Text(
                      ': ind2002kdht4ebi4et4ho4f4nv234dj4iereh29483',
                      style: FlutterFlowTheme.of(context).title1,
                    )),
                    SelectionArea(
                      child: Text(
                        ': Tumkur',
                        style: FlutterFlowTheme.of(context).title1,
                      ),
                    ),
                    SelectionArea(
                      child: Text(
                        ': OxF371BC4A311F2B009EEF952DD83CA80E2B60026C8E935592D0F9C308453C813E',
                        style: FlutterFlowTheme.of(context).title1,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
