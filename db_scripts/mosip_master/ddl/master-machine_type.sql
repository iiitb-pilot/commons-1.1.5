-- -------------------------------------------------------------------------------------------------
-- Database Name: mosip_master
-- Table Name 	: master.machine_type
-- Purpose    	: Machine Type : Types of Machines that are supported by the system,  like laptop, desktop, dongle etc.
--           
-- Create By   	: Nasir Khan / Sadanandegowda
-- Created Date	: 15-Jul-2019
-- 
-- Modified Date        Modified By         Comments / Remarks
-- ------------------------------------------------------------------------------------------
-- Jan-2021		Ram Bhatt	    Set is_deleted flag to not null and default false
-- Mar-2021		Ram Bhatt	    Reverting is_deleted not null changes
-- Apr-2021		Ram Bhatt	    Lang_code nullable and/or removed from pk constraint
-- ------------------------------------------------------------------------------------------

-- object: master.machine_type | type: TABLE --
-- DROP TABLE IF EXISTS master.machine_type CASCADE;
CREATE TABLE master.machine_type(
	code character varying(36) NOT NULL,
	name character varying(64) NOT NULL,
	descr character varying(128),
	lang_code character varying(3),
	is_active boolean NOT NULL,
	cr_by character varying(256) NOT NULL,
	cr_dtimes timestamp NOT NULL,
	upd_by character varying(256),
	upd_dtimes timestamp,
	is_deleted boolean DEFAULT FALSE,
	del_dtimes timestamp,
	CONSTRAINT pk_mtyp_code PRIMARY KEY (code)

);
-- ddl-end --
COMMENT ON TABLE master.machine_type IS 'Machine Type : Types of Machines that are supported by the system,  like laptop, desktop, dongle etc';
-- ddl-end --
COMMENT ON COLUMN master.machine_type.code IS 'Code : types of machines used for registration processes, for ex., laptop, dongle, workstation etc';
-- ddl-end --
COMMENT ON COLUMN master.machine_type.name IS 'Name : Machine type name.';
-- ddl-end --
COMMENT ON COLUMN master.machine_type.descr IS 'Description : Machine type description';
-- ddl-end --
COMMENT ON COLUMN master.machine_type.lang_code IS 'Language Code : For multilanguage implementation this attribute Refers master.language.code. The value of some of the attributes in current record is stored in this respective language. ';
-- ddl-end --
COMMENT ON COLUMN master.machine_type.is_active IS 'IS_Active : Flag to mark whether the record is Active or In-active';
-- ddl-end --
COMMENT ON COLUMN master.machine_type.cr_by IS 'Created By : ID or name of the user who create / insert record';
-- ddl-end --
COMMENT ON COLUMN master.machine_type.cr_dtimes IS 'Created DateTimestamp : Date and Timestamp when the record is created/inserted';
-- ddl-end --
COMMENT ON COLUMN master.machine_type.upd_by IS 'Updated By : ID or name of the user who update the record with new values';
-- ddl-end --
COMMENT ON COLUMN master.machine_type.upd_dtimes IS 'Updated DateTimestamp : Date and Timestamp when any of the fields in the record is updated with new values.';
-- ddl-end --
COMMENT ON COLUMN master.machine_type.is_deleted IS 'IS_Deleted : Flag to mark whether the record is Soft deleted.';
-- ddl-end --
COMMENT ON COLUMN master.machine_type.del_dtimes IS 'Deleted DateTimestamp : Date and Timestamp when the record is soft deleted with is_deleted=TRUE';
-- ddl-end --
