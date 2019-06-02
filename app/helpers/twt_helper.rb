module TwtHelper
  def choose_new_or_edit
    if action_name == 'new' ||action_name =='confirm'
      onfirm_twts_path
    elsif action_name == 'edit'
      twt_path
    end
  end
end
