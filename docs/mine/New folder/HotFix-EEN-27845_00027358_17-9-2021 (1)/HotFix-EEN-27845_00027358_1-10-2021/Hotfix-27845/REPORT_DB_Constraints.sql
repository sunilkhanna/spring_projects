ALTER SESSION SET CURRENT_SCHEMA = <REPORT_DATABASE_NAME>;

ALTER TABLE <REPORT_DATABASE_NAME>.finished_batch_xml_data ADD CONSTRAINT Unique_fbxd UNIQUE 
(
    batch_instance_id ,doc_identifier ,page_identifier 
);

ALTER TABLE <REPORT_DATABASE_NAME>.modified_batch_instance  ADD CONSTRAINT Unique_mbi UNIQUE
(
    identifier
);

ALTER TABLE <REPORT_DATABASE_NAME>.throughput_common_data  ADD CONSTRAINT Unique_tcd UNIQUE
(
    batch_instance_id
);

ALTER TABLE <REPORT_DATABASE_NAME>.throughput_common_module_data  ADD CONSTRAINT Unique_tcmd UNIQUE
(
    batch_instance_id , module_name
);

ALTER TABLE <REPORT_DATABASE_NAME>.global_data ADD CONSTRAINT Unique_gd UNIQUE
(
    batch_id,document_id
);

ALTER TABLE <REPORT_DATABASE_NAME>.field_details  ADD CONSTRAINT Unique_fd UNIQUE
(
    batch_id,document_id,field_name
);

ALTER TABLE <REPORT_DATABASE_NAME>.field_correction_details  ADD CONSTRAINT Unique_fcd UNIQUE
(
    batch_id,document_id,field_name
);

ALTER TABLE <REPORT_DATABASE_NAME>.field_correction  ADD CONSTRAINT Unique_fc UNIQUE
(
    batch_id,document_type,field_name
);

ALTER TABLE <REPORT_DATABASE_NAME>.extraction_correction  ADD CONSTRAINT Unique_ec UNIQUE
(
    batch_id,document_type
);

ALTER TABLE <REPORT_DATABASE_NAME>.classification_correction  ADD CONSTRAINT Unique_cc UNIQUE
(
    batch_id,document_id
);

ALTER TABLE <REPORT_DATABASE_NAME>.classifi_correct_accuracy  ADD CONSTRAINT Unique_cca UNIQUE
(
    batch_id,document_type
);

ALTER TABLE <REPORT_DATABASE_NAME>.seperation_correction  ADD CONSTRAINT Unique_sc UNIQUE
(
    batch_id,document_id
);

ALTER TABLE <REPORT_DATABASE_NAME>.seperation_correction_accuracy  ADD CONSTRAINT Unique_sca UNIQUE
(
    batch_id,document_type
);

ALTER TABLE <REPORT_DATABASE_NAME>.unnecessary_review  ADD CONSTRAINT Unique_ur UNIQUE
(
    batch_id,document_id
);

ALTER TABLE <REPORT_DATABASE_NAME>.false_positive  ADD CONSTRAINT Unique_fp UNIQUE
(
    batch_id,document_id
);

ALTER TABLE <REPORT_DATABASE_NAME>.document_correction  ADD CONSTRAINT Unique_dc UNIQUE
(
    batch_id,document_type
);

ALTER TABLE <REPORT_DATABASE_NAME>.post_review_xml_details  ADD CONSTRAINT Unique_prxd UNIQUE
(
    batch_id,document_type
);