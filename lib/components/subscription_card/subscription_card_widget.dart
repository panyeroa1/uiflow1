import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'subscription_card_model.dart';
export 'subscription_card_model.dart';

class SubscriptionCardWidget extends StatefulWidget {
  const SubscriptionCardWidget({
    super.key,
    this.color,
    this.price,
    this.isSelected,
  });

  final Color? color;
  final String? price;
  final bool? isSelected;

  @override
  State<SubscriptionCardWidget> createState() => _SubscriptionCardWidgetState();
}

class _SubscriptionCardWidgetState extends State<SubscriptionCardWidget> {
  late SubscriptionCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubscriptionCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).primaryBtnText,
          width: 1.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
            child: Icon(
              FFIcons.knameCrown,
              color: widget.color,
              size: 64.0,
            ),
          ),
          Text(
            'Premium',
            style: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: 'Poppins',
                  letterSpacing: 0.0,
                ),
          ),
          Text(
            widget.price!,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Poppins',
                  letterSpacing: 0.0,
                ),
          ),
          ListTile(
            leading: Icon(
              FFIcons.knameTick,
              color: widget.color,
            ),
            title: Text(
              'High quality',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            subtitle: Text(
              'Watch videos in 4K quality',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                  ),
            ),
            tileColor: Colors.transparent,
            dense: false,
          ),
          ListTile(
            leading: Icon(
              FFIcons.knameTick,
              color: widget.color,
            ),
            title: Text(
              'Watch offline',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            subtitle: Text(
              'Download videos and watch later',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    fontSize: 12.0,
                    letterSpacing: 0.0,
                  ),
            ),
            tileColor: Colors.transparent,
            dense: false,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
            child: ListTile(
              leading: Icon(
                FFIcons.knameTick,
                color: widget.color,
              ),
              title: Text(
                'Ad-free streaming',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              subtitle: Text(
                'Enjoy watching videos without ad-free',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                    ),
              ),
              tileColor: Colors.transparent,
              dense: false,
            ),
          ),
        ],
      ),
    );
  }
}
