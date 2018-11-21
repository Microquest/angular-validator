angular.module 'validator.rules', ['validator']

.config ['$validatorProvider', ($validatorProvider) ->
    # ----------------------------------------
    # required
    # ----------------------------------------
    $validatorProvider.register 'required',
        invoke: 'watch'
        validator: /.+/
        error: 'This field is required.'

    # ----------------------------------------
    # number
    # ----------------------------------------
    $validatorProvider.register 'number',
        invoke: 'watch'
        validator: /^[-+]?[0-9]*[\.]?[0-9]*$/
        error: 'A number is required for this field.'

    # ----------------------------------------
    # email
    # ----------------------------------------
    $validatorProvider.register 'email',
        invoke: 'blur'
        validator: /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
        error: 'Must be a valid email address'

    # ----------------------------------------
    # url
    # ----------------------------------------
    $validatorProvider.register 'url',
        invoke: 'blur'
        validator: /((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)/
        error: 'Must be a valid URL.'

    # ----------------------------------------
    # Phone
    # ----------------------------------------
    $validatorProvider.register 'phone',
      invoke: 'watch'
      validator: /((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}/
      error: 'Must be a valid phone number.'
]
