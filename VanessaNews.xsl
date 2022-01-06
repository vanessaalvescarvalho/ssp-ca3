<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
    <table id="catalogTable" border="1" class="indent">
        <thead>
            <tr>
                <th>Name</th>
                <th>Surname</th>
                <th>Age</th>
                <th>Phone Number</th>
                <th>Date of birth</th>
            </tr>
        </thead>
        <tbody>
            <xsl:for-each select="//section">
                <tr>
                    <td colspan="5">
                        <xsl:value-of select="@name" />
                    </td>
                </tr>
                <xsl:for-each select="entry">
                    <tr>
                        <td>
                            <xsl:value-of select="name" />
                        </td>
                        <td align="right">
                            <xsl:value-of select="surname" />
                        </td>
                        <td align="right">
                            <xsl:value-of select="age" />
                        </td>
                        <td align="right">
                            <xsl:value-of select="phoneNumber" />
                        </td>
                        <td align="right">
                            <xsl:value-of select="birthDate" />
                        </td>
                    </tr>
                </xsl:for-each>
            </xsl:for-each>
        </tbody>
    </table>
</xsl:template>
</xsl:stylesheet>