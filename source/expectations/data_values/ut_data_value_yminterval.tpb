create or replace type body ut_data_value_yminterval as

  constructor function ut_data_value_yminterval(self in out nocopy ut_data_value_yminterval, a_value yminterval_unconstrained) return self as result is
  begin
    self.data_value := a_value;
    self.data_type := 'year to month interval';
    return;
  end;

  overriding member function is_null return boolean is
  begin
    return (self.data_value is null);
  end;

  overriding member function to_string return varchar2 is
  begin
    return ut_utils.to_string(self.data_value);
  end;

end;
/
