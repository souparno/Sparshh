CREATE PROCEDURE [dbo].[CreateOfflineMember]
    @usr_id nvarchar(9), 
    @usr_about text,
    @usr_name text,
    @usr_gender varchar(7),
    @usr_dob_day int,
    @usr_dob_month int,
    @usr_dob_year int,
    @usr_place_of_birth text,
    @usr_marital_status varchar(3),
    @usr_no_children varchar(3),
    @usr_children_staying_with varchar(3),
    @usr_diet varchar(3),
    @usr_smoking_habit varchar(3),
    @usr_drinking_habit varchar(3),
    @usr_more_basic_details text,
    @usr_body_type varchar(3),
    @usr_body_complexion varchar(3),
    @usr_physically_challanged varchar(3),
    @usr_height varchar(3),
    @usr_weight varchar(3),
    @usr_blood_group varchar(3),
    @usr_more_physical_attributes text,
    @usr_mother_tongue varchar(3),
    @usr_religion varchar(3),
    @usr_caste varchar(3),
    @usr_subcaste varchar(3),
    @usr_mangalik varchar(3),
    @usr_gotra varchar(3),
    @usr_sunsign varchar(3),
    @usr_moonsign varchar(3),
    @usr_nakshatra varchar(3),
    @usr_horoscope_match varchar(3),
    @usr_more_religious_details text,
    @usr_education_category varchar(3),
    @usr_education_details text,
    @usr_profession varchar(3),
    @usr_professional_details text,
    @usr_income varchar(3),
    @usr_more_occupaion_details text,
    @usr_family_values varchar(3),
    @usr_family_type varchar(3),
    @usr_family_status varchar(3),
    @usr_family_origin text,
    @usr_fathers_occupation varchar(3),
    @usr_fathers_occupation_details text,
    @usr_mothers_occupation varchar(3),
    @usr_mothers_occupation_details text,
    @usr_no_brothers text,
    @usr_no_brothers_married text,
    @usr_no_sisters text,
    @usr_no_sisters_married text,
    @usr_more_family_details text,
    @usr_country varchar(3),
    @usr_state varchar(3),
    @usr_citizenship text,
    @usr_city varchar(3),
    @usr_present_address text,
    @usr_permanent_address text,
    @usr_mobile_number text,
    @usr_other_contact text,
    @usr_more_contact_details text 
AS BEGIN
INSERT INTO offline_usr_details
           ([usr_id]
           ,[usr_about]
           ,[usr_name]
           ,[usr_gender]
           ,[usr_dob_day]
           ,[usr_dob_month]
           ,[usr_dob_year]
           ,[usr_place_of_birth]
           ,[usr_marital_status]
           ,[usr_no_children]
           ,[usr_chaildren_staying_with]
           ,[usr_diet]
           ,[usr_smoking_habit]
           ,[usr_drinking_habit]
           ,[usr_more_basic_details]
           ,[usr_body_type]
           ,[usr_body_complexion]
           ,[usr_physically_chalanged]
           ,[usr_height]
           ,[usr_weight]
           ,[usr_blood_group]
           ,[usr_more_physical_sttributes]
           ,[usr_mother_tongue]
           ,[usr_religion]
           ,[usr_caste]
           ,[usr_subcaste]
           ,[usr_mangalik]
           ,[usr_gotra]
           ,[usr_sunsign]
           ,[usr_moonsign]
           ,[usr_nakshatra]
           ,[usr_horoscope_match]
           ,[usr_more_religious_details]
           ,[usr_education_category]
           ,[usr_education_details]
           ,[usr_profession]
           ,[usr_professiona_details]
           ,[usr_incme]
           ,[usr_more_occupation_details]
           ,[usr_family_values]
           ,[usr_family_type]
           ,[usr_fmaily_status]
           ,[usr_family_origin]
           ,[usr_fathers_occupation]
           ,[usr_fathers_occupation_details]
           ,[usr_mothers_occupation]
           ,[usr_mothers_occupation_details]
           ,[usr_no_brothers]
           ,[usr_no_brothers_married]
           ,[usr_no_sisters]
           ,[usr_no_sisters_married]
           ,[usr_more_family_details]
           ,[usr_country]
           ,[usr_state]
           ,[usr_citizenship]
           ,[usr_city]
           ,[usr_present_address]
           ,[usr_permanent_address]
           ,[usr_mobile_number]
           ,[usr_other_contect]
           ,[usr_more_contact_details])
     VALUES
           (@usr_id
           ,@usr_about
           ,@usr_name
           ,@usr_gender
           ,@usr_dob_day
           ,@usr_dob_month
           ,@usr_dob_year
           ,@usr_place_of_birth
           ,@usr_marital_status
           ,@usr_no_children
           ,@usr_children_staying_with
           ,@usr_diet
           ,@usr_smoking_habit
           ,@usr_drinking_habit
           ,@usr_more_basic_details
           ,@usr_body_type
           ,@usr_body_complexion
           ,@usr_physically_challanged
           ,@usr_height
           ,@usr_weight
           ,@usr_blood_group
           ,@usr_more_physical_attributes
           ,@usr_mother_tongue
           ,@usr_religion
           ,@usr_caste
           ,@usr_subcaste
           ,@usr_mangalik
           ,@usr_gotra
           ,@usr_sunsign
           ,@usr_moonsign
           ,@usr_nakshatra
           ,@usr_horoscope_match
           ,@usr_more_religious_details
           ,@usr_education_category
           ,@usr_education_details
           ,@usr_profession
           ,@usr_professional_details
           ,@usr_income
           ,@usr_more_occupaion_details
           ,@usr_family_values
           ,@usr_family_type
           ,@usr_family_status
           ,@usr_family_origin 
           ,@usr_fathers_occupation
           ,@usr_fathers_occupation_details
           ,@usr_mothers_occupation
           ,@usr_mothers_occupation_details
           ,@usr_no_brothers
           ,@usr_no_brothers_married
           ,@usr_no_sisters
           ,@usr_no_sisters_married
           ,@usr_more_family_details
           ,@usr_country
           ,@usr_state
           ,@usr_citizenship
           ,@usr_city
           ,@usr_present_address
           ,@usr_permanent_address
           ,@usr_mobile_number
           ,@usr_other_contact
           ,@usr_more_contact_details)
END

