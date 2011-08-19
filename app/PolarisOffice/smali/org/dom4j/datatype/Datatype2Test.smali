.class public Lorg/dom4j/datatype/Datatype2Test;
.super Lorg/dom4j/datatype/AbstractDataTypeTestCase;
.source "Datatype2Test.java"


# static fields
.field public static final DATE:I = 0x1f

.field public static final MONTH:I = 0xa

.field public static final YEAR:I = 0x7d1

.field static class$0:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/dom4j/datatype/AbstractDataTypeTestCase;-><init>()V

    return-void
.end method

.method private static getDate()Ljava/util/Calendar;
    .locals 4

    .prologue
    .line 244
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 245
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 246
    const/4 v1, 0x1

    const/16 v2, 0x7d1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 247
    const/4 v1, 0x2

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 248
    const/4 v1, 0x5

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 249
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 250
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "XSD \'Z\' timezone"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 252
    return-object v0
.end method

.method private static getDateString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 236
    const/16 v3, 0x7d1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, yyyy:Ljava/lang/String;
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, mm:Ljava/lang/String;
    const/16 v3, 0x1f

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, dd:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getSchema()Lorg/dom4j/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .local v0, b:Ljava/lang/StringBuffer;
    const-string v3, "<?xml version=\'1.0\' encoding=\'UTF-8\'?>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    const-string v3, "<xsd:schema xmlns:xsd=\'http://www.w3.org/2001/XMLSchema\'>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v3, " <xsd:element name=\'test\'>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    const-string v3, "  <xsd:complexType>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    const-string v3, "   <xsd:sequence>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    const-string v3, "    <xsd:element name=\'floatElement\' type=\'xsd:float\' />"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    const-string v3, "    <xsd:element name=\'dateElement\' type=\'xsd:date\' />"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    const-string v3, "   </xsd:sequence>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    const-string v3, "   <xsd:attribute name=\'longAttribute\' type=\'xsd:long\' />"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    const-string v3, "  </xsd:complexType>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    const-string v3, " </xsd:element>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    const-string v3, "</xsd:schema>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    new-instance v1, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, in:Ljava/io/StringReader;
    new-instance v2, Lorg/dom4j/io/SAXReader;

    invoke-direct {v2}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 165
    .local v2, parser:Lorg/dom4j/io/SAXReader;
    invoke-virtual {v2, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v3

    return-object v3
.end method

.method private getSchemaWithNamedComplexType()Lorg/dom4j/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 170
    .local v0, b:Ljava/lang/StringBuffer;
    const-string v3, "<?xml version=\'1.0\' encoding=\'UTF-8\'?>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    const-string v3, "<xsd:schema xmlns:xsd=\'http://www.w3.org/2001/XMLSchema\'>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    const-string v3, " <xsd:element name=\'test\' type=\'TimePeriodType\' />"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    const-string v3, " <xsd:complexType name=\'TimePeriodType\'>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    const-string v3, "  <xsd:sequence>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    const-string v3, "   <xsd:element name=\'floatElement\' type=\'xsd:float\' />"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    const-string v3, "   <xsd:element name=\'dateElement\' type=\'xsd:date\' />"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    const-string v3, "  </xsd:sequence>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const-string v3, "  <xsd:attribute name=\'longAttribute\' type=\'xsd:long\' />"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    const-string v3, " </xsd:complexType>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    const-string v3, "</xsd:schema>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    new-instance v1, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, in:Ljava/io/StringReader;
    new-instance v2, Lorg/dom4j/io/SAXReader;

    invoke-direct {v2}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 185
    .local v2, parser:Lorg/dom4j/io/SAXReader;
    invoke-virtual {v2, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v3

    return-object v3
.end method

.method private getSchemaWithNamedSimpleType()Lorg/dom4j/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 211
    .local v0, b:Ljava/lang/StringBuffer;
    const-string v3, "<?xml version=\'1.0\' encoding=\'UTF-8\'?>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    const-string v3, "<xsd:schema xmlns:xsd=\'http://www.w3.org/2001/XMLSchema\'>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    const-string v3, " <xsd:element name=\'test\'>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    const-string v3, "  <xsd:complexType>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    const-string v3, "   <xsd:sequence>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    const-string v3, "    <xsd:element name=\'floatElement\' type=\'xsd:float\' />"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const-string v3, "    <xsd:element name=\'dateElement\' type=\'dateType\' />"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    const-string v3, "   </xsd:sequence>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    const-string v3, "   <xsd:attribute name=\'longAttribute\' type=\'xsd:long\' />"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    const-string v3, "  </xsd:complexType>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    const-string v3, " </xsd:element>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    const-string v3, " <xsd:simpleType name=\'dateType\'>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    const-string v3, "  <xsd:restriction base=\'xsd:date\'>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    const-string v3, "  </xsd:restriction>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    const-string v3, " </xsd:simpleType>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    const-string v3, "</xsd:schema>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    new-instance v1, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 229
    .local v1, in:Ljava/io/StringReader;
    new-instance v2, Lorg/dom4j/io/SAXReader;

    invoke-direct {v2}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 231
    .local v2, parser:Lorg/dom4j/io/SAXReader;
    invoke-virtual {v2, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v3

    return-object v3
.end method

.method private getSchemaWithReference()Lorg/dom4j/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    .local v0, b:Ljava/lang/StringBuffer;
    const-string v3, "<?xml version=\'1.0\' encoding=\'UTF-8\'?>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    const-string v3, "<xsd:schema xmlns:xsd=\'http://www.w3.org/2001/XMLSchema\'>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    const-string v3, " <xsd:element name=\'test\' type=\'TimePeriodType\' />"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    const-string v3, " <xsd:complexType name=\'TimePeriodType\'>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    const-string v3, "  <xsd:sequence>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    const-string v3, "   <xsd:element name=\'floatElement\' type=\'xsd:float\' />"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    const-string v3, "   <xsd:element ref=\'dateElement\' />"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    const-string v3, "  </xsd:sequence>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    const-string v3, "  <xsd:attribute name=\'longAttribute\' type=\'xsd:long\' />"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    const-string v3, " </xsd:complexType>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    const-string v3, " <xsd:element name=\'dateElement\' type=\'xsd:date\' />"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    const-string v3, "</xsd:schema>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    new-instance v1, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, in:Ljava/io/StringReader;
    new-instance v2, Lorg/dom4j/io/SAXReader;

    invoke-direct {v2}, Lorg/dom4j/io/SAXReader;-><init>()V

    .line 206
    .local v2, parser:Lorg/dom4j/io/SAXReader;
    invoke-virtual {v2, v1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v3

    return-object v3
.end method

.method private getSource(Lorg/dom4j/Document;)Lorg/dom4j/Document;
    .locals 6
    .parameter "schema"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    .local v0, b:Ljava/lang/StringBuffer;
    const-string v4, "<?xml version=\'1.0\' ?>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v4, "<test xmlns:xsi=\'http://www.w3.org/2001/XMLSchema-instance\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v4, "        xsi:noNamespaceSchemaLocation=\'long.xsd\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v4, "        longAttribute=\'123\' >"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const-string v4, "    <floatElement>1.23</floatElement>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "    <dateElement>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/dom4j/datatype/Datatype2Test;->getDateString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "</dateElement>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    const-string v4, "</test>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    new-instance v2, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 139
    .local v2, in:Ljava/io/StringReader;
    new-instance v1, Lorg/dom4j/datatype/DatatypeDocumentFactory;

    invoke-direct {v1}, Lorg/dom4j/datatype/DatatypeDocumentFactory;-><init>()V

    .line 140
    .local v1, docFactory:Lorg/dom4j/datatype/DatatypeDocumentFactory;
    invoke-virtual {v1, p1}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->loadSchema(Lorg/dom4j/Document;)V

    .line 142
    new-instance v3, Lorg/dom4j/io/SAXReader;

    invoke-direct {v3, v1}, Lorg/dom4j/io/SAXReader;-><init>(Lorg/dom4j/DocumentFactory;)V

    .line 144
    .local v3, parser:Lorg/dom4j/io/SAXReader;
    invoke-virtual {v3, v2}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v4

    return-object v4
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 39
    sget-object v0, Lorg/dom4j/datatype/Datatype2Test;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.dom4j.datatype.Datatype2Test"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/Datatype2Test;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljava/lang/Class;)V

    .line 40
    return-void

    .line 39
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private validateData(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .parameter "test"
    .parameter "retrieved"
    .parameter "expected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 111
    .local v2, retrievedClass:Ljava/lang/Class;
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 114
    .local v0, expectedClass:Ljava/lang/Class;
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "class mismatch in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ":expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 116
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", retrieved "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 115
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 121
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 122
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "value mismatch in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ":expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 123
    const-string v4, ", retrieved "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .restart local v1       #msg:Ljava/lang/String;
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    .end local v1           #msg:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private validateDateElement(Lorg/dom4j/Element;)V
    .locals 11
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    const-string v8, "dateElement"

    invoke-interface {p1, v8}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v1

    .line 86
    .local v1, elem:Lorg/dom4j/Element;
    invoke-interface {v1}, Lorg/dom4j/Element;->getData()Ljava/lang/Object;

    move-result-object v3

    .line 87
    .local v3, elemData:Ljava/lang/Object;
    invoke-static {}, Lorg/dom4j/datatype/Datatype2Test;->getDate()Ljava/util/Calendar;

    move-result-object v5

    .line 89
    .local v5, expected:Ljava/util/Calendar;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, "retrieved element:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 92
    instance-of v8, v3, Ljava/util/Calendar;

    invoke-static {v8}, Lorg/dom4j/datatype/Datatype2Test;->assertTrue(Z)V

    .line 94
    move-object v0, v3

    check-cast v0, Ljava/util/Calendar;

    move-object v2, v0

    .line 96
    .local v2, elemCal:Ljava/util/Calendar;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "MM/dd/yyyyZ"

    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 97
    .local v7, format:Ljava/text/DateFormat;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 99
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, elemStr:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 103
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 105
    .local v6, expectedStr:Ljava/lang/String;
    const-string v8, "testDateElement"

    invoke-static {v8, v6, v4}, Lorg/dom4j/datatype/Datatype2Test;->assertEquals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method private validateDocumentWithSchema(Lorg/dom4j/Document;)V
    .locals 2
    .parameter "schema"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/dom4j/datatype/Datatype2Test;->getSource(Lorg/dom4j/Document;)Lorg/dom4j/Document;

    move-result-object v0

    .line 64
    .local v0, doc:Lorg/dom4j/Document;
    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v1

    .line 65
    .local v1, root:Lorg/dom4j/Element;
    invoke-direct {p0, v1}, Lorg/dom4j/datatype/Datatype2Test;->validateLongAttribute(Lorg/dom4j/Element;)V

    .line 66
    invoke-direct {p0, v1}, Lorg/dom4j/datatype/Datatype2Test;->validateFloatElement(Lorg/dom4j/Element;)V

    .line 67
    invoke-direct {p0, v1}, Lorg/dom4j/datatype/Datatype2Test;->validateDateElement(Lorg/dom4j/Element;)V

    .line 68
    return-void
.end method

.method private validateFloatElement(Lorg/dom4j/Element;)V
    .locals 6
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    const-string v2, "floatElement"

    invoke-interface {p1, v2}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    .line 79
    .local v0, elem:Lorg/dom4j/Element;
    invoke-interface {v0}, Lorg/dom4j/Element;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 80
    .local v1, elemData:Ljava/lang/Object;
    const-string v2, "testFloatElement"

    new-instance v3, Ljava/lang/Float;

    const-wide v4, 0x3ff3ae147ae147aeL

    invoke-direct {v3, v4, v5}, Ljava/lang/Float;-><init>(D)V

    invoke-direct {p0, v2, v1, v3}, Lorg/dom4j/datatype/Datatype2Test;->validateData(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "retrieved element:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private validateLongAttribute(Lorg/dom4j/Element;)V
    .locals 6
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    const-string v2, "longAttribute"

    invoke-interface {p1, v2}, Lorg/dom4j/Element;->attribute(Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v0

    .line 72
    .local v0, attr:Lorg/dom4j/Attribute;
    invoke-interface {v0}, Lorg/dom4j/Attribute;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 73
    .local v1, attrData:Ljava/lang/Object;
    const-string v2, "testLongAttribute"

    new-instance v3, Ljava/lang/Long;

    const-wide/16 v4, 0x7b

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-direct {p0, v2, v1, v3}, Lorg/dom4j/datatype/Datatype2Test;->validateData(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "retrieved attribute "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method public testSchema()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/dom4j/datatype/Datatype2Test;->getSchema()Lorg/dom4j/Document;

    move-result-object v0

    .line 44
    .local v0, schema:Lorg/dom4j/Document;
    invoke-direct {p0, v0}, Lorg/dom4j/datatype/Datatype2Test;->validateDocumentWithSchema(Lorg/dom4j/Document;)V

    .line 45
    return-void
.end method

.method public testSchemaWithNamedComplexType()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/dom4j/datatype/Datatype2Test;->getSchemaWithNamedComplexType()Lorg/dom4j/Document;

    move-result-object v0

    .line 49
    .local v0, schema:Lorg/dom4j/Document;
    invoke-direct {p0, v0}, Lorg/dom4j/datatype/Datatype2Test;->validateDocumentWithSchema(Lorg/dom4j/Document;)V

    .line 50
    return-void
.end method

.method public testSchemaWithNamedSimpleType()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/dom4j/datatype/Datatype2Test;->getSchemaWithNamedSimpleType()Lorg/dom4j/Document;

    move-result-object v0

    .line 59
    .local v0, schema:Lorg/dom4j/Document;
    invoke-direct {p0, v0}, Lorg/dom4j/datatype/Datatype2Test;->validateDocumentWithSchema(Lorg/dom4j/Document;)V

    .line 60
    return-void
.end method

.method public testSchemaWithReference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/dom4j/datatype/Datatype2Test;->getSchemaWithReference()Lorg/dom4j/Document;

    move-result-object v0

    .line 54
    .local v0, schema:Lorg/dom4j/Document;
    invoke-direct {p0, v0}, Lorg/dom4j/datatype/Datatype2Test;->validateDocumentWithSchema(Lorg/dom4j/Document;)V

    .line 55
    return-void
.end method
