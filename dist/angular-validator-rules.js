(function() {
  angular.module('validator.rules', ['validator']).config([
    '$validatorProvider', function($validatorProvider) {
      $validatorProvider.register('required', {
        invoke: 'watch',
        validator: /.+/,
        error: 'This field is required.'
      });
      $validatorProvider.register('number', {
        invoke: 'watch',
        validator: /^[-+]?[0-9]*[\.]?[0-9]*$/,
        error: 'A number is required for this field.'
      });
      $validatorProvider.register('email', {
        invoke: 'blur',
        validator: /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/,
        error: 'Must be a valid email address'
      });
      $validatorProvider.register('url', {
        invoke: 'blur',
        validator: /((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)/,
        error: 'Must be a valid URL.'
      });
      return $validatorProvider.register('phone', {
        invoke: 'watch',
        validator: /((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}/,
        error: 'Must be a valid phone number.'
      });
    }
  ]);

}).call(this);
