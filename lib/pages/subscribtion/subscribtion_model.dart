import '/components/subscription_card/subscription_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'subscribtion_widget.dart' show SubscribtionWidget;
import 'package:flutter/material.dart';

class SubscribtionModel extends FlutterFlowModel<SubscribtionWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SubscriptionCard component.
  late SubscriptionCardModel subscriptionCardModel1;
  // Model for SubscriptionCard component.
  late SubscriptionCardModel subscriptionCardModel2;

  @override
  void initState(BuildContext context) {
    subscriptionCardModel1 =
        createModel(context, () => SubscriptionCardModel());
    subscriptionCardModel2 =
        createModel(context, () => SubscriptionCardModel());
  }

  @override
  void dispose() {
    subscriptionCardModel1.dispose();
    subscriptionCardModel2.dispose();
  }
}
