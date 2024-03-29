
CREATE TABLE IF NOT EXISTS Public."nurse" (
    "NurseID" BIGINT NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 9223372036854775807 CACHE 1 ),
    "PhysicianID" BIGINT NOT NULL,
    "PatientRecordNumber" BIGINT NOT NULL,
    CONSTRAINT nurse_pkey PRIMARY KEY ("NurseID")
    CONSTRAINT physician_fkey REFERENCES physician ("PhysicianID")
    CONSTRAINT patient_fkey REFERENCES patient ("PatientRecordNumber")
)
