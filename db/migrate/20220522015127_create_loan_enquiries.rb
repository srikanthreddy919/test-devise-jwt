class CreateLoanEnquiries < ActiveRecord::Migration[6.1]
  def change
    create_table :loan_enquiries do |t|
      t.string :full_name
      t.string :gender
      t.string :dob
      t.string :employment_type
      t.string :company_name
      t.string :monthly_in_hand_salary
      t.string :pincode
      t.string :pan_number
      t.string :mobile_number
      t.string :email

      t.timestamps
    end
  end
end
