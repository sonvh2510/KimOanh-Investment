<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<!--Begin Banner-->
	<xsl:template match="/">
		<xsl:if test="count(/BannerList/Banner) > 0">
			<section class="canhcam-banner-1">
				<article class="list-items">
					<!--Call Banner Child-->
					<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
				</article>
			</section>
		</xsl:if>
	</xsl:template>

	<!--Begin Banner Child-->
	<xsl:template match="Banner">
		<!--item-->
		<div class="item">
			<xsl:attribute name="bg-img">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<div class="title">
				<p><xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of></p>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>