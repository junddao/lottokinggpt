
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';

import '../index.dart';

final networkNotifierProvider = StateNotifierProvider<NetworkNotifier, NetworkState>(
  (ref) {
    ref.listenSelf((previous, next) {
      if(previous != null && (previous is NetworkInitial) == false){
        if(next is NetworkSuccess){
          csShowSnackBar(content: '인터넷이 다시 연결되었습니다.');
        }
        if(next is NetworkFailure){
          csShowSnackBar(content: '인터넷 연결이 끊어졌습니다.');
        }
      }
    });
    return NetworkNotifier(ref)..networkInitial();
  },
  name: 'networkNotifierProvider',
);

class NetworkNotifier extends StateNotifier<NetworkState> {
  NetworkNotifier(this.ref) : super(const NetworkInitial());

  final Ref ref;

  void networkInitial() async {
    ConnectivityResult result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      state = NetworkFailure(state, 'data');
    }
    _observe();
  }

  void _observe() {
    Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        state = NetworkFailure(state, 'data');
      } else {
        state = NetworkSuccess(state);
      }
    });
  }
}

abstract class NetworkState extends Equatable {
  const NetworkState(this.previous);

  final NetworkState? previous;

}

class NetworkInitial extends NetworkState {
  const NetworkInitial() : super(null);
  
  @override
  List<Object?> get props => [];
}

class NetworkSuccess extends NetworkState {
  const NetworkSuccess(super.previous);

  @override
  List<Object?> get props => [previous];
}

class NetworkFailure extends NetworkState {
  final String message;
  const NetworkFailure(super.previous, this.message);

  @override
  List<Object?> get props => [previous, message];
}