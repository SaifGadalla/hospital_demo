import '../../common.dart';

mixin SearchMixin {
  FormGroup searchFormGroup = FormGroup({
    kSearchFCN: FormControl<String>(value: ''),
  });
}
