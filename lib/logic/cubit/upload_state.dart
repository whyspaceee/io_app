part of 'upload_cubit.dart';

enum Status { initial, loading, loaded, error }

class UploadState extends Equatable {
  final Status status;
  final String url;

  const UploadState({required this.url, required this.status});

  UploadState.initial()
      : this.url = '',
        status = Status.initial;

  @override
  List<Object> get props => [url];
}
