<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Student Catalog</title>
            </head>
            <body>
                <h2>Laboratory Work 2 - Student List</h2>
                <p><strong>Author:</strong> <xsl:value-of select="catalog/author"/></p>

                <table>
                    <tr>
                        <th>Gender</th>
                        <th>Group</th>
                    </tr>
                    <xsl:for-each select="catalog/students/student">
                        <tr>
                            <td><xsl:value-of select="gender"/></td>
                            <td><xsl:value-of select="group"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
