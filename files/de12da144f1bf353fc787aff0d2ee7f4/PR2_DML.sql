INSERT INTO `recruitment_analytics`.`source`
(`source_id`,
`name`)
VALUES
(UUID(), 'Company Website'),
(UUID(), 'LinkedIn'),
(UUID(), 'Indeed'),
(UUID(), 'Glassdoor'),
(UUID(), 'CareerBuilder');

INSERT INTO `recruitment_analytics`.`education`
(`education_id`,
`required_education_name`)
VALUES
(UUID(), 'High School Diploma'),
(UUID(), 'Bachelor\'s Degree'),
(UUID(), 'Master\'s Degree'),
(UUID(), 'Ph.D.'),
(UUID(), 'Professional Certification');

INSERT INTO `recruitment_analytics`.`job_group`
(`job_group_id`,
`name`)
VALUES
(UUID(), 'Sales'),
(UUID(), 'Marketing'),
(UUID(), 'Engineering'),
(UUID(), 'Finance'),
(UUID(), 'Operations');

INSERT INTO `recruitment_analytics`.`work_from_home_fraction`
(`work_from_home_fraction_id`,
`min`,
`max`)
VALUES
(UUID(), 0, 0),
(UUID(), 1, 20),
(UUID(), 21, 40),
(UUID(), 41, 60),
(UUID(), 61, 80),
(UUID(), 81, 100);

INSERT INTO `recruitment_analytics`.`salary`
(`salary_id`,
`min`,
`max`)
VALUES
(UUID(), 0, 40000),
(UUID(), 40001, 60000),
(UUID(), 60001, 80000),
(UUID(), 80001, 100000),
(UUID(), 100001, 120000),
(UUID(), 120001, 140000),
(UUID(), 140001, 160000),
(UUID(), 160001, 180000);

INSERT INTO `recruitment_analytics`.`employment_fraction`
(`employment_fraction_id`,
`min`,
`max`)
VALUES
(UUID(), 0, 20),
(UUID(), 21, 40),
(UUID(), 41, 60),
(UUID(), 61, 80),
(UUID(), 81, 100);

INSERT INTO `recruitment_analytics`.`location`
(`location_id`,
`name`)
VALUES
(UUID(), 'California'),
(UUID(), 'London'),
(UUID(), 'Ontario'),
(UUID(), 'New South Wales'),
(UUID(), 'Bavaria');

INSERT INTO `recruitment_analytics`.`employee`
(`employee_id`,
`location_id`,
`abbreviation`,
`first_name`,
`last_name`)
VALUES
(UUID(), (SELECT location_id FROM `recruitment_analytics`.`location` WHERE `name` = 'California'), 'doejo', 'John', 'Doe'),
(UUID(), (SELECT location_id FROM `recruitment_analytics`.`location` WHERE `name` = 'London'), 'smite', 'Emily', 'Smith'),
(UUID(), (SELECT location_id FROM `recruitment_analytics`.`location` WHERE `name` = 'Ontario'), 'johnm', 'Michael', 'Johnson'),
(UUID(), (SELECT location_id FROM `recruitment_analytics`.`location` WHERE `name` = 'New South Wales'), 'andes', 'Sophia', 'Anderson'),
(UUID(), (SELECT location_id FROM `recruitment_analytics`.`location` WHERE `name` = 'Bavaria'), 'mueld', 'Daniel', 'Müller');

INSERT INTO `recruitment_analytics`.`origin`
(`origin_id`,
`name`,
`iso_3166_2_code`)
VALUES
(UUID(), 'California', 'US-CA'),
(UUID(), 'London', 'GB-ENG'),
(UUID(), 'Ontario', 'CA-ON'),
(UUID(), 'New South Wales', 'AU-NSW'),
(UUID(), 'Bavaria', 'DE-BY');

INSERT INTO `recruitment_analytics`.`candidate`
(`candidate_id`,
`origin_id`,
`first_name`,
`last_name`)
VALUES
(UUID(), (SELECT origin_id FROM `recruitment_analytics`.`origin` WHERE name = 'California'), 'Olivia', 'Wilson'),
(UUID(), (SELECT origin_id FROM `recruitment_analytics`.`origin` WHERE name = 'London'), 'James', 'Brown'),
(UUID(), (SELECT origin_id FROM `recruitment_analytics`.`origin` WHERE name = 'Ontario'), 'Isabella', 'Taylor'),
(UUID(), (SELECT origin_id FROM `recruitment_analytics`.`origin` WHERE name = 'New South Wales'), 'Benjamin', 'Lee'),
(UUID(), (SELECT origin_id FROM `recruitment_analytics`.`origin` WHERE name = 'Bavaria'), 'Mia', 'Schmidt'); 

INSERT INTO `recruitment_analytics`.`application_state`
(`application_state_id`,
`name`)
VALUES
(UUID(), 'Submitted'),
(UUID(), 'Under Review'),
(UUID(), 'Interview Scheduled'),
(UUID(), 'Rejected'),
(UUID(), 'Offer Extended');

INSERT INTO `recruitment_analytics`.`business_type`
(`business_type_id`,
`name`)
VALUES
(UUID(), 'Retail'),
(UUID(), 'Technology'),
(UUID(), 'Hospitality'),
(UUID(), 'Finance'),
(UUID(), 'Healthcare');

INSERT INTO `recruitment_analytics`.`company`
(`company_id`,
`business_type_id`,
`name`)
VALUES
(UUID(), (SELECT business_type_id FROM `recruitment_analytics`.`business_type` WHERE `name` = 'Retail'), 'Acme Corporation'),
(UUID(), (SELECT business_type_id FROM `recruitment_analytics`.`business_type` WHERE `name` = 'Technology'), 'InnovateTech Solutions'),
(UUID(), (SELECT business_type_id FROM `recruitment_analytics`.`business_type` WHERE `name` = 'Hospitality'), 'Grand Hotel Group'),
(UUID(), (SELECT business_type_id FROM `recruitment_analytics`.`business_type` WHERE `name` = 'Finance'), 'Financial Services Inc.'),
(UUID(), (SELECT business_type_id FROM `recruitment_analytics`.`business_type` WHERE `name` = 'Healthcare'), 'HealthFirst Medical Center');

INSERT INTO `recruitment_analytics`.`country`
(`country_id`,
`name`,
`iso_3166_1_code`)
VALUES
(UUID(), 'United States', 'US'),
(UUID(), 'United Kingdom', 'GB'),
(UUID(), 'Canada', 'CA'),
(UUID(), 'Australia', 'AU'),
(UUID(), 'Germany', 'DE');

INSERT INTO `recruitment_analytics`.`region`
(`region_id`,
`country_id`,
`name`,
`iso_3166_2_code`)
VALUES
(UUID(), (SELECT country_id FROM `recruitment_analytics`.`country` WHERE name = 'United States'), 'California', 'US-CA'),
(UUID(), (SELECT country_id FROM `recruitment_analytics`.`country` WHERE name = 'United Kingdom'), 'London', 'GB-ENG'),
(UUID(), (SELECT country_id FROM `recruitment_analytics`.`country` WHERE name = 'Canada'), 'Ontario', 'CA-ON'),
(UUID(), (SELECT country_id FROM `recruitment_analytics`.`country` WHERE name = 'Australia'), 'New South Wales', 'AU-NSW'),
(UUID(), (SELECT country_id FROM `recruitment_analytics`.`country` WHERE name = 'Germany'), 'Bavaria', 'DE-BY');

INSERT INTO `recruitment_analytics`.`company`
(`company_id`,
`business_type_id`,
`name`)
VALUES
(UUID(), (SELECT business_type_id FROM `recruitment_analytics`.`business_type` WHERE `name` = 'Retail'), 'Acme Corporation'),
(UUID(), (SELECT business_type_id FROM `recruitment_analytics`.`business_type` WHERE `name` = 'Technology'), 'InnovateTech Solutions'),
(UUID(), (SELECT business_type_id FROM `recruitment_analytics`.`business_type` WHERE `name` = 'Hospitality'), 'Grand Hotel Group'),
(UUID(), (SELECT business_type_id FROM `recruitment_analytics`.`business_type` WHERE `name` = 'Finance'), 'Financial Services Inc.'),
(UUID(), (SELECT business_type_id FROM `recruitment_analytics`.`business_type` WHERE `name` = 'Healthcare'), 'HealthFirst Medical Center');

INSERT INTO `recruitment_analytics`.`site`
(`site_id`,
`company_id`,
`region_id`,
`name`)
VALUES
(UUID(), (SELECT company_id FROM `recruitment_analytics`.`company` WHERE name = 'Acme Corporation'), (SELECT region_id FROM `recruitment_analytics`.`region` WHERE name = 'California'), 'San Francisco Office'),
(UUID(), (SELECT company_id FROM `recruitment_analytics`.`company` WHERE name = 'InnovateTech Solutions'), (SELECT region_id FROM `recruitment_analytics`.`region` WHERE name = 'London'), 'London Office'),
(UUID(), (SELECT company_id FROM `recruitment_analytics`.`company` WHERE name = 'Grand Hotel Group'), (SELECT region_id FROM `recruitment_analytics`.`region` WHERE name = 'Ontario'), 'Toronto Office'),
(UUID(), (SELECT company_id FROM `recruitment_analytics`.`company` WHERE name = 'Financial Services Inc.'), (SELECT region_id FROM `recruitment_analytics`.`region` WHERE name = 'New South Wales'), 'Sydney Office'),
(UUID(), (SELECT company_id FROM `recruitment_analytics`.`company` WHERE name = 'HealthFirst Medical Center'), (SELECT region_id FROM `recruitment_analytics`.`region` WHERE name = 'Bavaria'), 'Munich Office');


INSERT INTO `recruitment_analytics`.`advertisement`
(`advertisement_id`,
`job_group_id`,
`source_id`,
`education_id`,
`title`,
`creation_date`)
VALUES
(UUID(), '76a21d80-1e82-11ee-8f1d-5405dbf7e87b', '4f0bf730-1e75-11ee-8f1d-5405dbf7e87b', '3f6e0b64-1e82-11ee-8f1d-5405dbf7e87b', 'Senior Data Analyst', '2023-03-10 08:45:23'),
(UUID(), '76a21cab-1e82-11ee-8f1d-5405dbf7e87b', '4f0bfea2-1e75-11ee-8f1d-5405dbf7e87b', '3f6e082c-1e82-11ee-8f1d-5405dbf7e87b', 'Marketing Coordinator', '2023-09-21 15:12:06'),
(UUID(), '76a21d80-1e82-11ee-8f1d-5405dbf7e87b', '4f0bffb2-1e75-11ee-8f1d-5405dbf7e87b', '3f6e0c33-1e82-11ee-8f1d-5405dbf7e87b', 'Software Engineer', '2023-07-04 12:30:59'),
(UUID(), '76a21e09-1e82-11ee-8f1d-5405dbf7e87b', '4f0c0049-1e75-11ee-8f1d-5405dbf7e87b', '3f6e0ce3-1e82-11ee-8f1d-5405dbf7e87b', 'Financial Analyst', '2023-05-18 19:27:41'),
(UUID(), '76a21e90-1e82-11ee-8f1d-5405dbf7e87b', '4f0c00ba-1e75-11ee-8f1d-5405dbf7e87b', '3f6e0c90-1e82-11ee-8f1d-5405dbf7e87b', 'Human Resources Manager', '2023-01-29 10:16:55');

INSERT INTO `recruitment_analytics`.`vacancy`
(`vacancy_id`,
`advertisement_id`,
`salary_salary_id`,
`employment_fraction_id`,
`work_from_home_fraction_id`)
VALUES
(UUID(), 'f10d2aba-1e8c-11ee-8f1d-5405dbf7e87b', '5d945463-1e83-11ee-8f1d-5405dbf7e87b', '9f2df04a-1e83-11ee-8f1d-5405dbf7e87b', 'e30cb483-1e82-11ee-8f1d-5405dbf7e87b'),
(UUID(), 'f10d378a-1e8c-11ee-8f1d-5405dbf7e87b', '5d945391-1e83-11ee-8f1d-5405dbf7e87b', '9f2deffa-1e83-11ee-8f1d-5405dbf7e87b', 'e30cb444-1e82-11ee-8f1d-5405dbf7e87b'),
(UUID(), 'f10d390f-1e8c-11ee-8f1d-5405dbf7e87b', '5d9455c3-1e83-11ee-8f1d-5405dbf7e87b', '9f2df09f-1e83-11ee-8f1d-5405dbf7e87b', 'e30cb3f9-1e82-11ee-8f1d-5405dbf7e87b'),
(UUID(), 'f10d39f1-1e8c-11ee-8f1d-5405dbf7e87b', '5d945517-1e83-11ee-8f1d-5405dbf7e87b', '9f2df09f-1e83-11ee-8f1d-5405dbf7e87b', 'e30cb444-1e82-11ee-8f1d-5405dbf7e87b'),
(UUID(), 'f10d3ac5-1e8c-11ee-8f1d-5405dbf7e87b', '5d945669-1e83-11ee-8f1d-5405dbf7e87b', '9f2df09f-1e83-11ee-8f1d-5405dbf7e87b', 'e30cb483-1e82-11ee-8f1d-5405dbf7e87b');

INSERT INTO `recruitment_analytics`.`application`
(`application_id`,
`application_state_id`,
`candidate_id`,
`employee_id`,
`site_id`,
`vacancy_id`)
VALUES
(UUID(), 'ff9b9102-1e85-11ee-8f1d-5405dbf7e87b', 'cbd1bbf3-1e85-11ee-8f1d-5405dbf7e87b', 'c447a654-1e84-11ee-8f1d-5405dbf7e87b', '47989502-1e88-11ee-8f1d-5405dbf7e87b', '9f1a7740-1e8d-11ee-8f1d-5405dbf7e87b'),
(UUID(), 'ff9b9102-1e85-11ee-8f1d-5405dbf7e87b', 'cbd1c4c8-1e85-11ee-8f1d-5405dbf7e87b', 'c447a654-1e84-11ee-8f1d-5405dbf7e87b', '4798a343-1e88-11ee-8f1d-5405dbf7e87b', '9f1a8d5a-1e8d-11ee-8f1d-5405dbf7e87b'),
(UUID(), 'ff9b96b6-1e85-11ee-8f1d-5405dbf7e87b', 'cbd1c4c8-1e85-11ee-8f1d-5405dbf7e87b', 'c447b0bd-1e84-11ee-8f1d-5405dbf7e87b', '4798a693-1e88-11ee-8f1d-5405dbf7e87b', '9f1a9002-1e8d-11ee-8f1d-5405dbf7e87b'),
(UUID(), 'ff9b97f2-1e85-11ee-8f1d-5405dbf7e87b', 'cbd1c71c-1e85-11ee-8f1d-5405dbf7e87b', 'c447b0bd-1e84-11ee-8f1d-5405dbf7e87b', '4798aa0d-1e88-11ee-8f1d-5405dbf7e87b', '9f1a91fa-1e8d-11ee-8f1d-5405dbf7e87b'),
(UUID(), 'ff9b9901-1e85-11ee-8f1d-5405dbf7e87b', 'cbd1c897-1e85-11ee-8f1d-5405dbf7e87b', 'c447b72d-1e84-11ee-8f1d-5405dbf7e87b', '4798aa0d-1e88-11ee-8f1d-5405dbf7e87b', '9f1a93f6-1e8d-11ee-8f1d-5405dbf7e87b');

