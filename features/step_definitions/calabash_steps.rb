require 'calabash-android/calabash_steps'
When(/^I swipee right$/) do
    perform_action('drag', 85, 25, 5, 5, 5)
end
Then(/^I see the "([^\"]*)"$/) do |displayed_label|
  case displayed_label

    when "Get started screen"
      var_text = "* marked:'GET STARTED'"
    when "Skip"
      var_text = "textview  id:'tv_fragment_carousel_skip'"
    when "Zipcode screen"
      var_text = "* marked:'Go'"

    when "New order screen"
      var_text = "* id:'btn_fragment_new_order_get_cleaned_clothes'"
    when"Keep me Posted"
      var_text = "* id:'btn_fragment_keep_me_posted'  marked:'KEEP ME POSTED'"
    when "Contact info screen"
      var_text = "* id:'et_fragment_add_contact_info_name'"
    when "Address screen"
      var_text = "* id:'et_fragment_address_line_one'"
    when "Credit card screen"
      var_text = "* id:'et_fragment_add_credit_card_number'"
    when "Order Summary screen"
      var_text = "* id:'btn_fragment_order_summary_get_cleaned_clothes'"
    when "Order confirmation screen"
      var_text = "* marked:'Your Order\nis Confirmed!'"
  end

wait_for_elements_exist( var_text , :timeout => 5)
end


Then (/^I touch the "(.*?)" button$/) do |select|
  case select
    when "Start"
      touch("* {text CONTAINS 'GET STARTED'}")
   
    when "Skip"
      tap_when_element_exists("*  id:'tv_fragment_carousel_skip'", :timeout => 5)
    
    when "Zipcode"
      tap_when_element_exists("*  id:'tv_fragment_add_zip_click'", :timeout => 5)
    
    when "Go"
      touch("*   marked:'Go'")
    
    when "Got it"
       tap_when_element_exists("*  id:'btn_dialog_price_list_ok'")
    
    when "Email"
       tap_when_element_exists("*   id:'et_fragment_no_service_email_address'")
   
    when "Keep me Posted"
       tap_when_element_exists("*  id:'btn_fragment_keep_me_posted'")
     
    when "Full Name"
      touch("*   id:'et_fragment_add_contact_info_name'")
    
    when "Email Address"
      touch("*   id:'et_fragment_add_contact_info_email'")
    
    when "Phone Number"
      touch("*   id:'et_fragment_add_contact_info_phone'")
    
    when "Next"
      touch("*   id:'confirm'")
    
    when "Get Your Clothes Cleaned"
      touch("button   id:'btn_fragment_new_order_get_cleaned_clothes'")
    
    when "Address Line 1"
      touch ("* id:'et_fragment_address_line_one'")
    
    when "Card Number"
      touch ("* id:'et_fragment_add_credit_card_number'")
    
    when "MM/YY"
      touch ("* id:'et_fragment_add_credit_card_expiry'")
    
    when "CVC"
      touch ("* id:'et_fragment_add_credit_card_cvc'")
    
    when "accept terms"
      touch ("* id:'cb_fragment_order_summary_terms_and_conditions'")
    
    when "Confirm"
      touch ("* id:'btn_fragment_order_summary_get_cleaned_clothes'")

    when "Pick Up"
      touch ("* id:'fl_fragment_new_order_pickup_container'")

    when "Drop Off"
      touch ("* id:'fl_fragment_new_order_dropoff_container'")
    
    when "Done"
      touch ("textview id:'tv_fragment_time_picker_action'")
    
    when"Date List"
      touch ("* id:'lv_fragment_time_picker_date'")
   
    when "Time List"
      touch ("* id:'lv_fragment_time_picker_time'")


  end

end


Then(/^I enter "(.*?)"$/) do |text_input|
  case text_input

    when "an uncovered zipcode"
      text_to_input = '0000'

    when "a covered zipcode" #in Berlin
      text_to_input = '10117'

     when "an Email Address"
       text_to_input = Array.new(16){[*'0'..'9', *'a'..'z'].sample}.join + '@example.com'

    when "a Phone Number"
      text_to_input = Array.new(16){[*'0'..'9', *'a'..'z'].sample}.join
    when "any name"
          text_to_input = Array.new(8){[*'a'..'z'].sample}.join
    when "an address"
      text_to_input = Array.new(5){[*'a'..'z'].sample}.join
    when "a credit card number"
      text_to_input = "4111111111111111"
    when "expiration month"
      text_to_input = "06"

    when "expiration year"
      text_to_input = "16"
    when "CVC"
      text_to_input = "737"

end

  keyboard_enter_text text_to_input
end
