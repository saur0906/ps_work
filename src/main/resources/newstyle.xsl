<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="HTTP://WWW.W3.ORG/2001/XMLSCHEMA-INSTANCE" 
xmlns:fo="http://www.w3.org/1999/XSL/Format" >
<xsl:output method="text" omit-xml-declaration="yes" indent="yes"/>
<xsl:template match="/">
SENDERID,RECIPIENT_ID,MESSAGE_TYPE,VERSION_NUMBER,MESSAGE_REFERENCE,TIME_STAMP,SUBMISSION_TYPE,DATARETRIEVAL_DATE,TRUSTEE_APPROVAL_NUMBER,GENERALPARTICULARS_REMARKS,MPFAREFNO,PARTICIPATIONNO,DEFAULTERNAME_EN,DEFAULTERNAME_CH,DEFAULTERCONTACTPERSON_EN,DEFAULTERCONTACTPERSON_CH,AUTHORIZEDPERSON,PHONENOREGIONALCODE,PHONENOAREACODE,PHONENO,FAXNOREGIONALCODE,FAXNOAREACODE,FAXNO,ADDRESS1,ADDRESS2,ADDRESS3,ADDRESS4,ADDRESS5,EMAIL,SCHEMEREGISTRATIONNO,SUBSCHEMENUMBER,SUBSCHEMESERVICEOFFICERNAME,SUBSCHEMESERVICEOFFICERPHONE,INDUSTRYTYPE,UNTRACEABLEDEFAULTER,CHANGEOFDEFAULTERNAME,ORIGINALDEFAULTERNAME_EN,ORIGINALDEFAULTERNAME_CH,NOOFENROLLEDMEMBERS,SCHEMEEFFECTIVEDATE,SCHEMETERMINATIONDATE,REMARKS,HKIDNUMBER,CHECKDIGIT,LASTNAME_EN,FIRSTNAME_EN,LASTNAME_CH,FIRSTNAME_CH,DATEOFBIRTH,MOBILENO,PHONENO,MEM_ADDRESS1,MEM_ADDRESS2,MEM_ADDRESS3,MEM_ADDRESS4,MEM_ADDRESS5,NATUREOFEMPLOYMENT,EMPLOYMENTSTARTDATE,LASTEMPLOYMENTDATE,INTRAGROUPTRANSFER,LATEENROLLEDMEMBER,ENROLLMENTPROCESSINGDATE,MEM_REMARKS,PERIODSTARTDATE,PERIODENDDATE,RELEVANTINCOME,RELEVANTINCOMEREF,ONTIMEMCPAID_ERSEP_AMOUNT,ONTIMEMCPAID_EE_AMOUNT,ONTIMEMCPAIDDATE,LATEMCPAID_ERSEP_AMOUNT,LATEMCPAID_EE_AMOUNT,LATEMCPAIDDATE,SURCHARGEPAID_ERSEP_AMOUNT,SURCHARGEPAID_EE_AMOUNT,SURCHARGEPAIDDATE,FREQUENCY,DCREASON,ISUNIQUEREFNO,ISNODAYS,ISDATERANGEFROM,ISDATERANGETO,CONTRI_REMARKS
<xsl:for-each select="PARENT">
		<xsl:variable name="SENDER_ID" select="HEADER/SENDERID"/>
		<xsl:variable name="RECIPIENT_ID" select="HEADER/RECIPIENTID"/>
		<xsl:variable name="MESSAGE_TYPE" select="HEADER/MESSAGETYPE"/>
		<xsl:variable name="VERSION_NUMBER" select="HEADER/VERSIONNUMBER"/>
		<xsl:variable name="MESSAGE_REFERENCE" select="HEADER/MESSAGEREFERENCE"/>
		<xsl:variable name="TIME_STAMP" select="HEADER/TIMESTAMP"/>
		<xsl:variable name="SUBMISSION_TYPE" select="GENERALPARTICULARS/SUBMISSIONTYPE"/>
		<xsl:variable name="DATARETRIEVAL_DATE" select="GENERALPARTICULARS/DATARETRIEVALDATE"/>
		<xsl:variable name="TRUSTEE_APPROVAL_NUMBER" select="GENERALPARTICULARS/TRUSTEEAPPROVALNUMBER"/>
		<xsl:variable name="GENERALPARTICULARS_REMARKS" select="GENERALPARTICULARS/REMARKS"/>
<xsl:for-each select="ER">

		<xsl:variable name="ER_MPFAREFNO">
		<xsl:choose>
            <xsl:when test="not(MPFAREFNO/@xsl:nil)">
                <xsl:value-of select="MPFAREFNO" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="''"/>
            </xsl:otherwise>
        </xsl:choose>
    	</xsl:variable>    	
    	<xsl:variable name="ER_PARTICIPATIONNO" select="PARTICIPATIONNO"/>
    	    	
		<xsl:variable name="ER_DEFAULTERNAME_EN" select="DEFAULTERNAME[@LANG='EN']/NAME"/>
    	<xsl:variable name="ER_DEFAULTERNAME_CH" select="DEFAULTERNAME[@LANG='CH']/NAME"/>
		
		<xsl:variable name="ER_DEFAULTERCONTACTPERSON_EN" select="DEFAULTERCONTACTPERSON[@LANG='EN']/NAME"/>
    	<xsl:variable name="ER_DEFAULTERCONTACTPERSON_CH" select="DEFAULTERCONTACTPERSON[@LANG='CH']/NAME"/>

		<xsl:variable name="ER_AUTHORIZEDPERSON">
		<xsl:choose>
            <xsl:when test="not(AUTHORIZEDPERSON/@xsl:nil)">
                <xsl:value-of select="AUTHORIZEDPERSON" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="''"/>
            </xsl:otherwise>
        </xsl:choose>
    	</xsl:variable>    	
		
		<xsl:variable name="ER_PHONENOREGIONALCODE">
		<xsl:choose>
            <xsl:when test="not(PHONENOREGIONALCODE/@xsl:nil)">
                <xsl:value-of select="PHONENOREGIONALCODE" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="''"/>
            </xsl:otherwise>
        </xsl:choose>
    	</xsl:variable>    	

		<xsl:variable name="ER_PHONENOAREACODE">
		<xsl:choose>
            <xsl:when test="not(PHONENOAREACODE/@xsl:nil)">
                <xsl:value-of select="PHONENOAREACODE" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="''"/>
            </xsl:otherwise>
        </xsl:choose>
    	</xsl:variable>    	

    	<xsl:variable name="ER_PHONENO" select="PHONENO"/>

		<xsl:variable name="ER_FAXNOREGIONALCODE">
		<xsl:choose>
            <xsl:when test="not(FAXNOREGIONALCODE/@xsl:nil)">
                <xsl:value-of select="FAXNOREGIONALCODE" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="''"/>
            </xsl:otherwise>
        </xsl:choose>
    	</xsl:variable>    	

		<xsl:variable name="ER_FAXNOAREACODE">
		<xsl:choose>
            <xsl:when test="not(FAXNOAREACODE/@xsl:nil)">
                <xsl:value-of select="FAXNOAREACODE" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="''"/>
            </xsl:otherwise>
        </xsl:choose>
    	</xsl:variable>    	

    	<xsl:variable name="ER_FAXNO" select="FAXNO"/>

		<xsl:variable name="ER_ADDRESS1">
		<xsl:choose>
            <xsl:when test="not(ADDRESS1/@xsl:nil)">
                <xsl:value-of select="ADDRESS1" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="''"/>
            </xsl:otherwise>
        </xsl:choose>
    	</xsl:variable>    	

		<xsl:variable name="ER_ADDRESS2">
		<xsl:choose>
            <xsl:when test="not(ADDRESS2/@xsl:nil)">
                <xsl:value-of select="ADDRESS2" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="''"/>
            </xsl:otherwise>
        </xsl:choose>
    	</xsl:variable>    	

		<xsl:variable name="ER_ADDRESS3">
		<xsl:choose>
            <xsl:when test="not(ADDRESS3/@xsl:nil)">
                <xsl:value-of select="ADDRESS3" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="''"/>
            </xsl:otherwise>
        </xsl:choose>
    	</xsl:variable>    	

		<xsl:variable name="ER_ADDRESS4">
		<xsl:choose>
            <xsl:when test="not(ADDRESS4/@xsl:nil)">
                <xsl:value-of select="ADDRESS4" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="''"/>
            </xsl:otherwise>
        </xsl:choose>
    	</xsl:variable>    	

		<xsl:variable name="ER_ADDRESS5">
		<xsl:choose>
            <xsl:when test="not(ADDRESS5/@xsl:nil)">
                <xsl:value-of select="ADDRESS5" />
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="''"/>
            </xsl:otherwise>
        </xsl:choose>
    	</xsl:variable>    	
       	<xsl:variable name="ER_EMAIL" select="EMAIL"/>
       	<xsl:variable name="ER_SCHEMEREGISTRATIONNO" select="SCHEMEREGISTRATIONNO"/>
       	<xsl:variable name="ER_SUBSCHEMENUMBER" select="SUBSCHEMENUMBER"/>
       	<xsl:variable name="ER_SUBSCHEMESERVICEOFFICERNAME" select="SUBSCHEMESERVICEOFFICERNAME"/>
       	
       	<xsl:variable name="ER_SUBSCHEMESERVICEOFFICERPHONE" select="SUBSCHEMESERVICEOFFICERPHONE"/>
 		<xsl:variable name="ER_INDUSTRYTYPE" select="INDUSTRYTYPE"/>
       	<xsl:variable name="ER_UNTRACEABLEDEFAULTER" select="UNTRACEABLEDEFAULTER"/>
       	<xsl:variable name="ER_CHANGEOFDEFAULTERNAME" select="CHANGEOFDEFAULTERNAME"/>
   		<xsl:variable name="ER_ORIGINALDEFAULTERNAME_EN" select="ORIGINALDEFAULTERNAME[@LANG='EN']/NAME"/>
    	<xsl:variable name="ER_ORIGINALDEFAULTERNAME_CH" select="ORIGINALDEFAULTERNAME[@LANG='CH']/NAME"/>
       	<xsl:variable name="ER_NOOFENROLLEDMEMBERS" select="NOOFENROLLEDMEMBERS"/>
       	<xsl:variable name="ER_SCHEMEEFFECTIVEDATE" select="SCHEMEEFFECTIVEDATE"/>
       	<xsl:variable name="ER_SCHEMETERMINATIONDATE" select="SCHEMETERMINATIONDATE"/>
       	<xsl:variable name="ER_REMARKS" select="REMARKS"/>

       	 <xsl:for-each select="MEMBER">
       	 		<xsl:variable name="ER_HKIDNUMBER" select="IDENTITY/HKID/HKIDNUMBER"/>
       	 		<xsl:variable name="ER_CHECKDIGIT" select="IDENTITY/HKID/CHECKDIGIT"/>       	 		
				<xsl:variable name="ER_MEMBERUNIQUEREFNO" select="MEMBERUNIQUEREFNO"/>
		   		<xsl:variable name="ER_LASTNAME_EN" select="MEMBERNAME[@LANG='EN']/LASTNAME"/>
    			<xsl:variable name="ER_FIRSTNAME_EN" select="MEMBERNAME[@LANG='EN']/FIRSTNAME"/>
		   		<xsl:variable name="ER_LASTNAME_CH" select="MEMBERNAME[@LANG='CH']/LASTNAME"/>
    			<xsl:variable name="ER_FIRSTNAME_CH" select="MEMBERNAME[@LANG='CH']/FIRSTNAME"/>
				
				<xsl:variable name="ER_DATEOFBIRTH" select="DATEOFBIRTH"/>
				<xsl:variable name="ER_MOBILENO" select="MOBILENO"/>
				<xsl:variable name="ER_MEM_PHONENO" select="PHONENO"/>
				<xsl:variable name="ER_MEM_ADDRESS1" select="ADDRESS1"/>
				<xsl:variable name="ER_MEM_ADDRESS2" select="ADDRESS2"/>
				<xsl:variable name="ER_MEM_ADDRESS3" select="ADDRESS3"/>
				<xsl:variable name="ER_MEM_ADDRESS4" select="ADDRESS4"/>
				<xsl:variable name="ER_MEM_ADDRESS5" select="ADDRESS5"/>
				
				<xsl:variable name="ER_NATUREOFEMPLOYMENT" select="NATUREOFEMPLOYMENT"/>
				<xsl:variable name="ER_EMPLOYMENTSTARTDATE" select="EMPLOYMENTSTARTDATE"/>
				<xsl:variable name="ER_LASTEMPLOYMENTDATE" select="LASTEMPLOYMENTDATE"/>
				<xsl:variable name="ER_INTRAGROUPTRANSFER" select="INTRAGROUPTRANSFER"/>
				<xsl:variable name="ER_LATEENROLLEDMEMBER" select="LATEENROLLEDMEMBER"/>
				<xsl:variable name="ER_ENROLLMENTPROCESSINGDATE" select="ENROLLMENTPROCESSINGDATE"/>
				<xsl:variable name="ER_MEM_REMARKS" select="REMARKS"/>
				
				<xsl:for-each select="CONTRIBUTION">
						<xsl:variable name="ER_MEM_CONTRI_PERIODSTARTDATE" select="PERIODSTARTDATE"/>
						<xsl:variable name="ER_MEM_CONTRI_PERIODENDDATE" select="PERIODENDDATE"/>
						<xsl:variable name="ER_MEM_CONTRI_RELEVANTINCOME" select="RELEVANTINCOME"/>
						<xsl:variable name="ER_MEM_CONTRI_RELEVANTINCOMEREF" select="RELEVANTINCOMEREF"/>
						<xsl:variable name="ER_MEM_CONTRI_ONTIMEMCPAID_ERSEP_AMOUNT" select="ONTIMEMCPAID/ONTIMEMCPAIDAMOUNT[@TYPE='ERSEP']/AMOUNT"/>
						<xsl:variable name="ER_MEM_CONTRI_ONTIMEMCPAID_EE_AMOUNT" select="ONTIMEMCPAID/ONTIMEMCPAIDAMOUNT[@TYPE='EE']/AMOUNT"/>
						<xsl:variable name="ER_MEM_CONTRI_ONTIMEMCPAIDDATE" select="ONTIMEMCPAID/ONTIMEMCPAIDDATE"/>
						<xsl:variable name="ER_MEM_CONTRI_LATEMCPAID_ERSEP_AMOUNT" select="LATEMCPAID/LATEMCPAIDAMOUNT[@TYPE='ERSEP']/AMOUNT"/>
						<xsl:variable name="ER_MEM_CONTRI_LATEMCPAID_EE_AMOUNT" select="LATEMCPAID/LATEMCPAIDAMOUNT[@TYPE='EE']/AMOUNT"/>
						<xsl:variable name="ER_MEM_CONTRI_LATEMCPAIDDATE" select="LATEMCPAID/LATEMCPAIDDATE"/>
						
						<xsl:variable name="ER_MEM_CONTRI_SURCHARGEPAID_ERSEP_AMOUNT" select="SURCHARGEPAID/SURCHARGEPAIDAMOUNT[@TYPE='ERSEP']/AMOUNT"/>
						<xsl:variable name="ER_MEM_CONTRI_SURCHARGEPAID_EE_AMOUNT" select="SURCHARGEPAID/SURCHARGEPAIDAMOUNT[@TYPE='EE']/AMOUNT"/>
						<xsl:variable name="ER_MEM_CONTRI_SURCHARGEPAIDDATE" select="SURCHARGEPAID/SURCHARGEPAIDDATE"/>
						<xsl:variable name="ER_MEM_CONTRI_FREQUENCY" select="FREQUENCY"/>
						<xsl:variable name="ER_MEM_CONTRI_DCREASON" select="DCREASON"/>
						<xsl:variable name="ER_MEM_CONTRI_ISUNIQUEREFNO" select="ISUNIQUEREFNO"/>
						<xsl:variable name="ER_MEM_CONTRI_ISNODAYS" select="ISNODAYS"/>
						<xsl:variable name="ER_MEM_CONTRI_ISDATERANGEFROM" select="ISDATERANGEFROM"/>
						<xsl:variable name="ER_MEM_CONTRI_ISDATERANGETO" select="ISDATERANGETO"/>
						<xsl:variable name="ER_MEM_CONTRI_REMARKS" select="REMARKS"/>
						
								<xsl:text><xsl:value-of select="normalize-space(concat($SENDER_ID,',',$RECIPIENT_ID,',',
								$MESSAGE_TYPE,',',$VERSION_NUMBER,',',$MESSAGE_REFERENCE,',',$TIME_STAMP,',',$SUBMISSION_TYPE,',',$DATARETRIEVAL_DATE,
								',',$TRUSTEE_APPROVAL_NUMBER,',',
			$GENERALPARTICULARS_REMARKS,',',$ER_MPFAREFNO,',',$ER_PARTICIPATIONNO,',',$ER_DEFAULTERNAME_EN,',',$ER_DEFAULTERNAME_CH,',',
			$ER_DEFAULTERCONTACTPERSON_EN,',',$ER_DEFAULTERCONTACTPERSON_CH,',',$ER_AUTHORIZEDPERSON,',',
			$ER_PHONENOREGIONALCODE,',',$ER_PHONENOAREACODE,',',$ER_PHONENO,',',$ER_FAXNOREGIONALCODE
			,',',$ER_FAXNOAREACODE,',',$ER_FAXNO,',',$ER_ADDRESS1,',',$ER_ADDRESS2,',',$ER_ADDRESS3,',',$ER_ADDRESS4,',',$ER_ADDRESS5
			,',',$ER_EMAIL,',',$ER_SCHEMEREGISTRATIONNO,',',$ER_SUBSCHEMENUMBER,',',$ER_SUBSCHEMESERVICEOFFICERNAME	,',',$ER_SUBSCHEMESERVICEOFFICERPHONE
			,',',$ER_INDUSTRYTYPE,',',$ER_UNTRACEABLEDEFAULTER,',',$ER_CHANGEOFDEFAULTERNAME,',',$ER_ORIGINALDEFAULTERNAME_EN
			,',',$ER_ORIGINALDEFAULTERNAME_CH,',',$ER_NOOFENROLLEDMEMBERS,',',$ER_SCHEMEEFFECTIVEDATE,',',$ER_SCHEMETERMINATIONDATE
			,',',$ER_REMARKS,',',$ER_HKIDNUMBER,',',$ER_CHECKDIGIT,',',$ER_LASTNAME_EN,',',$ER_FIRSTNAME_EN,',',$ER_LASTNAME_CH
			,',',$ER_FIRSTNAME_CH,',',$ER_DATEOFBIRTH,',',$ER_MOBILENO,',',$ER_MEM_PHONENO,',',$ER_MEM_ADDRESS1,',',$ER_MEM_ADDRESS2
			,',',$ER_MEM_ADDRESS3,',',$ER_MEM_ADDRESS4,',',$ER_MEM_ADDRESS5,',',$ER_NATUREOFEMPLOYMENT,',',$ER_EMPLOYMENTSTARTDATE
			,',',$ER_LASTEMPLOYMENTDATE,',',$ER_INTRAGROUPTRANSFER,',',$ER_LATEENROLLEDMEMBER,',',$ER_ENROLLMENTPROCESSINGDATE
			,',',$ER_MEM_REMARKS,',',$ER_MEM_CONTRI_PERIODSTARTDATE,',',$ER_MEM_CONTRI_PERIODENDDATE,',',$ER_MEM_CONTRI_RELEVANTINCOME
			,',',$ER_MEM_CONTRI_RELEVANTINCOMEREF,',',$ER_MEM_CONTRI_ONTIMEMCPAID_ERSEP_AMOUNT,',',$ER_MEM_CONTRI_ONTIMEMCPAID_EE_AMOUNT
			,',',$ER_MEM_CONTRI_ONTIMEMCPAIDDATE,',',$ER_MEM_CONTRI_LATEMCPAID_ERSEP_AMOUNT,',',$ER_MEM_CONTRI_LATEMCPAID_EE_AMOUNT
			,',',$ER_MEM_CONTRI_LATEMCPAIDDATE,',',$ER_MEM_CONTRI_SURCHARGEPAID_ERSEP_AMOUNT,',',$ER_MEM_CONTRI_SURCHARGEPAID_EE_AMOUNT,',',$ER_MEM_CONTRI_SURCHARGEPAIDDATE
			,',',$ER_MEM_CONTRI_FREQUENCY,',',$ER_MEM_CONTRI_DCREASON,',',$ER_MEM_CONTRI_ISUNIQUEREFNO,',',$ER_MEM_CONTRI_ISNODAYS,',',$ER_MEM_CONTRI_ISDATERANGEFROM
			,',',$ER_MEM_CONTRI_ISDATERANGETO,',',$ER_MEM_CONTRI_REMARKS))"/></xsl:text>
			<xsl:text>&#xa;</xsl:text>
						
				</xsl:for-each>

       	 </xsl:for-each>      	       			

</xsl:for-each>
</xsl:for-each>

</xsl:template>
</xsl:stylesheet>