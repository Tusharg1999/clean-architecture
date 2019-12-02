import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class NumberTrivia extends Equatable {
  final String text;
  final int number;
   NumberTrivia({@required this.number,
     @required this.text}): super();

  @override
  // TODO: implement props
  List<Object> get props => [text,number];
}
