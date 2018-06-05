<div class="col-lg-6">
<div class="loan_all loan_personal">
<h2>1. Personal Information</h2>
<label> Full Name<span class="required">*</span>
    [text* FullName] </label>

<label> Mobile Number<span class="required">*</span>
    [tel* MobileNumber id:mobile_number]</label>

<label> Current Home Address<span class="required">*</span>
[textarea* CurrentHomeAddress id:current_home_address]</label>

<label> Residence Type<span class="required">*</span>
[select* ResidenceType id:residence_type include_blank "Own " "Parent" "Relative" "Renting" "Company"]</label>

<label> Years Of Stay<span class="required">*</span>
[select* YearsOfStay id:years_of_stay include_blank "< 1 year" "1 - 5 years" "6 - 10 years" "> 10 years"]</label>

<label> Status<span class="required">*</span>
[select* Status id:status include_blank "Single" "Married"]</label>
</div>
</div>





<div class="col-lg-6">
<div class="loan_all loan_company col-lg-6">
<h2>2. Company Information</h2>
<label> Company Name<span class="required">*</span>
[text CompanyName id:company_name]</label>

<label> Contact Number<span class="required">*</span>
[tel CompanyContact id:company_contact]</label>

<label> Company Address<span class="required">*</span>
[textarea* CompanyAddress id:company_address]</label>

<label> Employment Status<span class="required">*</span>
[select* EmploymentStatus id:employment_status include_blank "Employed" "Self-Employed"]</label>

<label> Years Of Service<span class="required">*</span>
[select* YearsOfService id:years_of_service_company include_blank "< 3 Months" "< 1 Year" "1 - 5 Years" "6 - 10 Years" "> 10 Years"]</label>

<label>Job Position/Department<span class="required">*</span>
[text* JobPositionDepartment id:position_department akismet:author]</label>
</div>
</div>




<div class="col-lg-6">
<div class="loan_all loan col-lg-6">
<h2>3. Loan Information</h2>
<label> Bike Model/Registration Number<span class="required">*</span>
[text* BikeRegistrationNumber id:bike_registration_number]</label>

<label> Bike Condition<span class="required">*</span>
[select* BikeCondition id:bike_condition include_blank "New" "Used"]</label>

<label> Downpayment<span class="required">*</span>
[text Downpayment id:downpayment]</label>

<label> Instalment Period<span class="required">*</span>
[select* InstalmentPeriod id:instalment_period include_blank "12 Months" "24 Months" "36 Months" "48 Months" "60 Months" "72 Months" "84 Months"]</label>

<label>Preferred Location For Bike Collection<span class="required">*</span>
[select* PreferredLocationForBikeCollection id:bike_collect_location include_blank "Batu Cave" "Ampang" "Batang Kali"]</label>
</div>
</div>



<div class="col-lg-6">
<div class="loan_all loan_attachment">
<h2>4. Attachment</h2>
<label> Scan Copy of IC (Front) <span class="required">*</span>
    [file* ICFront limit:2000000 id:ic_front]<label class="custom-file-label" for="ic_front"><strong>Choose a file</strong></label></label>

<label> Scan Copy of IC (Back) <span class="required">*</span>
    [file* ICBack limit:2000000 id:ic_back]<label class="custom-file-label" for="ic_back"><strong>Choose a file</strong></label></label>

<label> Scan Copy 0f Salary Slip OR SSM (PaySlip1)<span class="required">*</span>
    [file* Payslip1 limit:2000000 id:payslip_1] <label class="custom-file-label" for="payslip_1"><strong>Choose a file</strong></label></label>

<label> Scan Copy 0f Salary Slip OR SSM (PaySlip2)<span class="required">*</span>
    [file* Payslip2 limit:2000000 id:payslip_2] <label class="custom-file-label" for="payslip_2"><strong>Choose a file</strong></label></label>
</div>
</div>



<div class="col-lg-6">
<div class="loan_all loan_emergency_1">
<h2>5. Emergency Contact 1</h2>
<label> Full Name (Immediate Family or Relatives)<span class="required">*</span>
[text Emergency1FullName id:emergency_1_full_name]</label>

<label> Current Home Address<span class="required">*</span>
[textarea* Emergency1Address id:emergency_1_address]</label>

<label> Contact Number<span class="required">*</span>
[tel Emergency1Contact id:id:emergency_1_contact]</label>

<label> Relationship <span class="required">*</span>
[text* Emergency1Relationship id:id:emergency_1_relationship]</label>
</div>
</div>





<div class="col-lg-6">
<div class="loan_all loan_emergency_2 ">
<h2>6. Emergency Contact 2</h2>
<label> Full Name (Immediate Family or Relatives)<span class="required">*</span>
[text Emergency2FullName id:emergency_2_full_name]</label>

<label> Current Home Address<span class="required">*</span>
[textarea* Emergency2Address id:emergency_2_address]</label>

<label> Contact Number<span class="required">*</span>
[tel Emergency2Contact id:id:emergency_2_contact]</label>

<label> Relationship <span class="required">*</span>
[text* Emergency2Relationship id:id:emergency_2_relationship]</label>
</div>
</div>


[submit id:loan_submit_button "Submit"]