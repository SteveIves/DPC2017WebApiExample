<CODEGEN_FILENAME>DataClassBase.dbl</CODEGEN_FILENAME>
<CODEGEN_FOLDER>Models</CODEGEN_FOLDER>

namespace <NAMESPACE>

    public enum RepositoryResult
        Success
        NotFound
        Exists
		BadRequest
    endenum

    public abstract class DataClassBase

        protected virtual method hhmmToDateTime, DateTime
            required in group theTime, d4
                theHour,   d2
                theMinute, d2
            endgroup
        proc
            mreturn new DateTime(1,1,1,(int)theHour,(int)theMinute,0)
        endmethod

        protected virtual method dateTimeToHHMM, d4
            required in theDateTime, DateTime
        proc
            mreturn ^d((a)theDateTime.ToString("HHmm"))
        endmethod

        protected virtual method hhmmssToDateTime, DateTime
            required in group theTime, d6
                theHour,   d2
                theMinute, d2
                theSecond, d2
            endgroup
        proc
            mreturn new DateTime(0,0,0,(int)theHour,(int)theMinute,(int)theSecond)
        endmethod

        protected virtual method dateTimeToHHMMSS, d6
            required in theDateTime, DateTime
        proc
            mreturn ^d((a)theDateTime.ToString("HHmmss"))
        endmethod

        protected virtual method yyyymmddToDateTime, DateTime
            required in group theDate, d8
                theYear,  d4
                theMonth, d2
                theDay,   d2
            endgroup
        proc
            mreturn new DateTime((int)theYear,(int)theMonth,(int)theDay)
        endmethod

        protected virtual method dateTimeToYYYYMMDD, d8
            required in theDateTime, DateTime
        proc
            mreturn ^d((a)theDateTime.ToString("yyyyMMdd"))
        endmethod

        protected virtual method yyyymmddToNullableDateTime, @Nullable<DateTime>
            required in group theDate, d8
                theYear,  d4
                theMonth, d2
                theDay,   d2
            endgroup
        proc
            if (!theDate)
                mreturn ^null
            mreturn new DateTime((int)theYear,(int)theMonth,(int)theDay)
        endmethod

        protected virtual method nullableDateTimeToYYYYMMDD, d8
            required in theDateTime, @Nullable<DateTime>
        proc
            if (theDateTime==^null)
                mreturn 0
            mreturn ^d((a)theDateTime.Value.ToString("yyyyMMdd"))
        endmethod

    endclass

endnamespace