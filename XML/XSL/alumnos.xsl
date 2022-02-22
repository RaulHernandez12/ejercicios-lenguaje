<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0">
	<xsl:output method="html" />
	<xsl:template match="/">
		<html>
			<head>
				<title>Alumnos</title>
			</head>
			<body>
				<h1 style="color:red;"><xsl:value-of select="instituto/@nombre"/></h1>
				<h2 style="color:black;margin-left:15px;">Alumnos aprobados</h2>
				<xsl:apply-templates select="//modulo"></xsl:apply-templates>
			</body>
		</html>
	</xsl:template>
	
	
	<xsl:template match="//modulo">
		<div style="border:solid 1px black; box-shadow:10px 10px 10px;">
			<b>CICLO: </b><xsl:value-of select="@ciclo"/>
			<br></br>
			<b>MODULO:  </b><xsl:value-of select="@nombre"/>			
		</div>
		<ul><xsl:apply-templates></xsl:apply-templates></ul>
	</xsl:template>
	<xsl:template match="//alumno[nota>=5]">				
		<li style="color:red;"><xsl:value-of select="nombre"/><xsl:text> </xsl:text><b style="color:black;"><xsl:value-of select="nota"/></b></li>
	</xsl:template>
	<xsl:template match="//alumno[nota &lt;5]">
		
	</xsl:template>
		
</xsl:stylesheet>
