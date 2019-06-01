import 'package:bloc/bloc.dart';
import 'package:hack_19/data/register_repository.dart';
import 'package:hack_19/module/register_events.dart';
import 'package:hack_19/module/register_states.dart';

class RegisterBloc extends Bloc<RegisterBlocEvent, RegisterState> {
  final RegisterRepository registerRepository;

  RegisterBloc(this.registerRepository);

  @override
  RegisterState get initialState => UninitializedState();

  @override
  Stream<RegisterState> mapEventToState(RegisterBlocEvent event) async* {
    if (event is Fetch) {
      var events = await registerRepository.fetch(0);
      yield RegisterLoadedState(events);
    }
    else
      yield initialState;
  }
}