
abstract class LandingStates {}
class InitialState extends LandingStates {}
class Loading extends LandingStates {}
class GetDataSucess extends LandingStates {}

class GetDataError extends LandingStates {
  final String error ;

  GetDataError(this.error);

}



