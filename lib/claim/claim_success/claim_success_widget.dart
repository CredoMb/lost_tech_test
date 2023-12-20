import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'claim_success_model.dart';
export 'claim_success_model.dart';

class ClaimSuccessWidget extends StatefulWidget {
  const ClaimSuccessWidget({Key? key}) : super(key: key);

  @override
  _ClaimSuccessWidgetState createState() => _ClaimSuccessWidgetState();
}

class _ClaimSuccessWidgetState extends State<ClaimSuccessWidget> {
  late ClaimSuccessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClaimSuccessModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Container(
                      width: 300.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          'https://ucf4a3a6639702da589e112d1964.previews.dropboxusercontent.com/p/thumb/ACF_qCfYqubUikNF4tKMBZvt2Z9Yrpb3mXs9BrucuSZhoSUQUnJ9v-6HvbOLtNDrYUxFgsiMO7EzqAedRsVhBMoMTuEUZpR1kEfNcLQ7agQMiWKeXX7hY13Cdnq_Ie9iufCkADy0xNxUq3jDsgKXdxsRUkMFQcuOlmMruyeVvAxAg1CIjsYZE1P3Wu5C7088AQN72wdsBJVfss1P8_qjwRjp3j1RmANaRz3gS4eU-QFRyAZ9uVQz2TGx-MmRilbOXY_XHzt3Bm8mqpD1O8aoGdNLavdu-Fh5uyTySZB8VUhgSsFOF-cKAozHoRmjPsg1GaIVbUK0AH3L8d1Exe9xzBtZXS6dvOzFXQZXhF3dE8k1HZ0wIRN_SBG0Qwm5oTxzNyo/p.jpeg',
                          width: 300.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 140.0,
              height: 140.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).accent1,
                shape: BoxShape.circle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).primary,
                  width: 2.0,
                ),
              ),
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30.0, 30.0, 30.0, 30.0),
                child: Icon(
                  Icons.check_rounded,
                  color: FlutterFlowTheme.of(context).primary,
                  size: 60.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
              child: Text(
                'Claim Successful !',
                style: FlutterFlowTheme.of(context).displaySmall.override(
                      fontFamily: 'Outfit',
                      color: FlutterFlowTheme.of(context).primary,
                    ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 0.0),
              child: Text(
                'Choose a pick up point to \nretrieve your object !',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).labelLarge,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(32.0, 20.0, 32.0, 0.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).alternate,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            FlutterFlowPlacePicker(
              iOSGoogleMapsApiKey: '',
              androidGoogleMapsApiKey: '',
              webGoogleMapsApiKey: '',
              onSelect: (place) async {
                setState(() => _model.placePickerValue = place);
              },
              defaultText: 'Pick up location',
              icon: Icon(
                Icons.place,
                color: FlutterFlowTheme.of(context).info,
                size: 16.0,
              ),
              buttonOptions: FFButtonOptions(
                width: 200.0,
                height: 40.0,
                color: FlutterFlowTheme.of(context).primary,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                elevation: 2.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
