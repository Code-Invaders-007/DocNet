import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PatientDetailsWidget extends StatefulWidget {
  const PatientDetailsWidget({Key? key}) : super(key: key);

  @override
  _PatientDetailsWidgetState createState() => _PatientDetailsWidgetState();
}

class _PatientDetailsWidgetState extends State<PatientDetailsWidget> {
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
          'Patient Details',
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
            children: [
              Expanded(
                child: Card(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                        child: Container(
                          width: 120,
                          height: 120,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'data:image/jpeg;base64,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',
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 200,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SelectionArea(
                                  child: Text(
                                'Name : Abhishek S',
                                style: FlutterFlowTheme.of(context).title3,
                              )),
                              SelectionArea(
                                  child: Text(
                                'Age : 21',
                                style: FlutterFlowTheme.of(context).title3,
                              )),
                              SelectionArea(
                                  child: Text(
                                'Gender: Male',
                                style: FlutterFlowTheme.of(context).title3,
                              )),
                              SelectionArea(
                                  child: Text(
                                'Blood Group: AB+',
                                style: FlutterFlowTheme.of(context).title3,
                              )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
