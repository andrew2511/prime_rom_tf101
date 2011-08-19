.class public final Lorg/apache/xml/serializer/ToUnknownStream;
.super Lorg/apache/xml/serializer/SerializerBase;
.source "ToUnknownStream.java"


# static fields
.field private static final EMPTYSTRING:Ljava/lang/String; = ""


# instance fields
.field private m_firstElementLocalName:Ljava/lang/String;

.field private m_firstElementName:Ljava/lang/String;

.field private m_firstElementPrefix:Ljava/lang/String;

.field private m_firstElementURI:Ljava/lang/String;

.field private m_firstTagNotEmitted:Z

.field private m_handler:Lorg/apache/xml/serializer/SerializationHandler;

.field private m_namespacePrefix:Ljava/util/Vector;

.field private m_namespaceURI:Ljava/util/Vector;

.field private m_needToCallStartDocument:Z

.field private m_setDoctypePublic_called:Z

.field private m_setDoctypeSystem_called:Z

.field private m_setMediaType_called:Z

.field private m_setVersion_called:Z

.field private m_wrapped_handler_not_initialized:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Lorg/apache/xml/serializer/SerializerBase;-><init>()V

    .line 70
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    .line 90
    iput-object v2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementLocalName:Ljava/lang/String;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    .line 101
    iput-object v2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    .line 106
    iput-object v2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    .line 112
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    .line 117
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setVersion_called:Z

    .line 122
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setDoctypeSystem_called:Z

    .line 127
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setDoctypePublic_called:Z

    .line 132
    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setMediaType_called:Z

    .line 141
    new-instance v0, Lorg/apache/xml/serializer/ToXMLStream;

    invoke-direct {v0}, Lorg/apache/xml/serializer/ToXMLStream;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 142
    return-void
.end method

.method private emitFirstTag()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1046
    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    if-eqz v4, :cond_47

    .line 1048
    iget-boolean v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    if-eqz v4, :cond_f

    .line 1050
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->initStreamOutput()V

    .line 1051
    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    .line 1054
    :cond_f
    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    iget-object v7, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    invoke-interface {v4, v5, v8, v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 1056
    iput-object v8, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_attributes:Lorg/apache/xml/serializer/AttributesImplSerializer;

    .line 1059
    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    if-eqz v4, :cond_45

    .line 1061
    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1062
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_27
    if-ge v0, v1, :cond_41

    .line 1064
    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1066
    .local v2, prefix:Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1067
    .local v3, uri:Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v4, v2, v3, v9}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1062
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1069
    .end local v2           #prefix:Ljava/lang/String;
    .end local v3           #uri:Ljava/lang/String;
    :cond_41
    iput-object v8, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    .line 1070
    iput-object v8, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    .line 1072
    .end local v0           #i:I
    .end local v1           #n:I
    :cond_45
    iput-boolean v9, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    .line 1074
    :cond_47
    return-void
.end method

.method private flush()V
    .registers 4

    .prologue
    .line 1208
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v1, :cond_7

    .line 1210
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->emitFirstTag()V

    .line 1212
    :cond_7
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    if-eqz v1, :cond_13

    .line 1214
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1}, Lorg/apache/xml/serializer/SerializationHandler;->startDocument()V

    .line 1215
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z
    :try_end_13
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_13} :catch_14

    .line 1224
    :cond_13
    return-void

    .line 1218
    :catch_14
    move-exception v1

    move-object v0, v1

    .line 1220
    .local v0, e:Lorg/xml/sax/SAXException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getLocalNameUnknown(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    .line 1084
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1085
    .local v0, idx:I
    if-ltz v0, :cond_e

    .line 1086
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1087
    :cond_e
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1088
    if-ltz v0, :cond_1c

    .line 1089
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1090
    :cond_1c
    return-object p1
.end method

.method private getPrefixPartUnknown(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "qname"

    .prologue
    .line 1101
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1102
    .local v0, index:I
    if-lez v0, :cond_e

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_d
    return-object v1

    :cond_e
    const-string v1, ""

    goto :goto_d
.end method

.method private initStreamOutput()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 970
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->isFirstElemHTML()Z

    move-result v0

    .line 972
    .local v0, firstElementIsHTML:Z
    if-eqz v0, :cond_4f

    .line 977
    iget-object v2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 984
    .local v2, oldHandler:Lorg/apache/xml/serializer/SerializationHandler;
    const-string v6, "html"

    invoke-static {v6}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    .line 986
    .local v1, htmlProperties:Ljava/util/Properties;
    invoke-static {v1}, Lorg/apache/xml/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lorg/apache/xml/serializer/Serializer;

    move-result-object v4

    .line 993
    .local v4, serializer:Lorg/apache/xml/serializer/Serializer;
    check-cast v4, Lorg/apache/xml/serializer/SerializationHandler;

    .end local v4           #serializer:Lorg/apache/xml/serializer/Serializer;
    iput-object v4, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    .line 996
    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getWriter()Ljava/io/Writer;

    move-result-object v5

    .line 998
    .local v5, writer:Ljava/io/Writer;
    if-eqz v5, :cond_5d

    .line 999
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v5}, Lorg/apache/xml/serializer/SerializationHandler;->setWriter(Ljava/io/Writer;)V

    .line 1012
    :cond_22
    :goto_22
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    .line 1016
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    .line 1020
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getDoctypePublic()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    .line 1024
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getMediaType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setMediaType(Ljava/lang/String;)V

    .line 1027
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 1034
    .end local v1           #htmlProperties:Ljava/util/Properties;
    .end local v2           #oldHandler:Lorg/apache/xml/serializer/SerializationHandler;
    .end local v5           #writer:Ljava/io/Writer;
    :cond_4f
    iget-boolean v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    if-eqz v6, :cond_5a

    .line 1036
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6}, Lorg/apache/xml/serializer/SerializationHandler;->startDocument()V

    .line 1037
    iput-boolean v8, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    .line 1041
    :cond_5a
    iput-boolean v8, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    .line 1042
    return-void

    .line 1002
    .restart local v1       #htmlProperties:Ljava/util/Properties;
    .restart local v2       #oldHandler:Lorg/apache/xml/serializer/SerializationHandler;
    .restart local v5       #writer:Ljava/io/Writer;
    :cond_5d
    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 1004
    .local v3, os:Ljava/io/OutputStream;
    if-eqz v3, :cond_22

    .line 1005
    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v3}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputStream(Ljava/io/OutputStream;)V

    goto :goto_22
.end method

.method private isFirstElemHTML()Z
    .registers 8

    .prologue
    .line 1117
    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lorg/apache/xml/serializer/ToUnknownStream;->getLocalNameUnknown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 1121
    .local v1, isHTML:Z
    if-eqz v1, :cond_1d

    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    if-eqz v5, :cond_1d

    const-string v5, ""

    iget-object v6, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 1126
    const/4 v1, 0x0

    .line 1129
    :cond_1d
    if-eqz v1, :cond_51

    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    if-eqz v5, :cond_51

    .line 1135
    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1136
    .local v2, max:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2a
    if-ge v0, v2, :cond_51

    .line 1138
    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1139
    .local v3, prefix:Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1141
    .local v4, uri:Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementPrefix:Ljava/lang/String;

    if-eqz v5, :cond_52

    iget-object v5, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementPrefix:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_52

    .line 1146
    const/4 v1, 0x0

    .line 1152
    .end local v0           #i:I
    .end local v2           #max:I
    .end local v3           #prefix:Ljava/lang/String;
    .end local v4           #uri:Ljava/lang/String;
    :cond_51
    return v1

    .line 1136
    .restart local v0       #i:I
    .restart local v2       #max:I
    .restart local v3       #prefix:Ljava/lang/String;
    .restart local v4       #uri:Ljava/lang/String;
    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "rawName"
    .parameter "value"

    .prologue
    .line 289
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 291
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 293
    :cond_7
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 14
    .parameter "uri"
    .parameter "localName"
    .parameter "rawName"
    .parameter "type"
    .parameter "value"
    .parameter "XSLAttribute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 275
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 277
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 279
    :cond_7
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 280
    return-void
.end method

.method public addAttributes(Lorg/xml/sax/Attributes;)V
    .registers 3
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1176
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->addAttributes(Lorg/xml/sax/Attributes;)V

    .line 1177
    return-void
.end method

.method public addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "rawName"
    .parameter "value"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 303
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 305
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 307
    :cond_7
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->addUniqueAttribute(Ljava/lang/String;Ljava/lang/String;I)V

    .line 309
    return-void
.end method

.method public asContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    return-object p0
.end method

.method public asDOM3Serializer()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1314
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->asDOM3Serializer()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public asDOMSerializer()Lorg/apache/xml/serializer/DOMSerializer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1159
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->asDOMSerializer()Lorg/apache/xml/serializer/DOMSerializer;

    move-result-object v0

    return-object v0
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 726
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/apache/xml/serializer/SerializationHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method public characters(Ljava/lang/String;)V
    .registers 5
    .parameter "chars"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 319
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 320
    .local v0, length:I
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_charsBuff:[C

    array-length v1, v1

    if-le v0, v1, :cond_12

    .line 322
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_charsBuff:[C

    .line 324
    :cond_12
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_charsBuff:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 325
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_charsBuff:[C

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/xml/serializer/ToUnknownStream;->characters([CII)V

    .line 326
    return-void
.end method

.method public characters([CII)V
    .registers 5
    .parameter "characters"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 780
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 782
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 785
    :cond_7
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V

    .line 787
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->close()V

    .line 164
    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .registers 3
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 529
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 531
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->emitFirstTag()V

    .line 539
    :cond_b
    :goto_b
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->comment(Ljava/lang/String;)V

    .line 540
    return-void

    .line 533
    :cond_11
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    if-eqz v0, :cond_b

    .line 535
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->startDocument()V

    .line 536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    goto :goto_b
.end method

.method public comment([CII)V
    .registers 5
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 890
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 892
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 895
    :cond_7
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->comment([CII)V

    .line 896
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 735
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 737
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->emitFirstTag()V

    .line 739
    :cond_7
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/SerializationHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    return-void
.end method

.method public endCDATA()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 905
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->endCDATA()V

    .line 906
    return-void
.end method

.method public endDTD()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 915
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->endDTD()V

    .line 916
    return-void
.end method

.method public endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 795
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 797
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 800
    :cond_7
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V

    .line 803
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .registers 3
    .parameter "elementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 334
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 336
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 338
    :cond_7
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->endElement(Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 812
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_17

    .line 814
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 815
    if-nez p1, :cond_f

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 816
    iget-object p1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    .line 819
    :cond_f
    if-nez p2, :cond_17

    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementLocalName:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 820
    iget-object p2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementLocalName:Ljava/lang/String;

    .line 823
    :cond_17
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 924
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 926
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->emitFirstTag()V

    .line 928
    :cond_7
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->endEntity(Ljava/lang/String;)V

    .line 929
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .registers 3
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 832
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method public entityReference(Ljava/lang/String;)V
    .registers 3
    .parameter "entityName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1238
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->entityReference(Ljava/lang/String;)V

    .line 1239
    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 752
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 754
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 756
    :cond_7
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    return-void
.end method

.method protected firePseudoElement(Ljava/lang/String;)V
    .registers 8
    .parameter "elementName"

    .prologue
    .line 1291
    iget-object v2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v2, :cond_22

    .line 1292
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1294
    .local v1, sb:Ljava/lang/StringBuffer;
    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1295
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1300
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1301
    .local v0, ch:[C
    iget-object v2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    const/16 v3, 0xb

    const/4 v4, 0x0

    array-length v5, v0

    invoke-interface {v2, v3, v0, v4, v5}, Lorg/apache/xml/serializer/SerializerTrace;->fireGenerateEvent(I[CII)V

    .line 1307
    .end local v0           #ch:[C
    .end local v1           #sb:Ljava/lang/StringBuffer;
    :cond_22
    return-void
.end method

.method public flushPending()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1199
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 1201
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->flushPending()V

    .line 1202
    return-void
.end method

.method public getDoctypePublic()Ljava/lang/String;
    .registers 2

    .prologue
    .line 549
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getDoctypePublic()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDoctypeSystem()Ljava/lang/String;
    .registers 2

    .prologue
    .line 558
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 567
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndent()Z
    .registers 2

    .prologue
    .line 576
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getIndent()Z

    move-result v0

    return v0
.end method

.method public getIndentAmount()I
    .registers 2

    .prologue
    .line 585
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getIndentAmount()I

    move-result v0

    return v0
.end method

.method public getMediaType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getMediaType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;
    .registers 3

    .prologue
    .line 1186
    const/4 v0, 0x0

    .line 1187
    .local v0, mappings:Lorg/apache/xml/serializer/NamespaceMappings;
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz v1, :cond_b

    .line 1189
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceMappings()Lorg/apache/xml/serializer/NamespaceMappings;

    move-result-object v0

    .line 1191
    :cond_b
    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .parameter "qname"
    .parameter "isElement"

    .prologue
    .line 1246
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceURI(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "prefix"

    .prologue
    .line 1251
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->getNamespaceURIFromPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOmitXMLDeclaration()Z
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getOmitXMLDeclaration()Z

    move-result v0

    return v0
.end method

.method public getOutputFormat()Ljava/util/Properties;
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getOutputFormat()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "namespaceURI"

    .prologue
    .line 1231
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStandalone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 612
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getStandalone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .registers 2

    .prologue
    .line 1266
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 621
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWriter()Ljava/io/Writer;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getWriter()Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .registers 5
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 842
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 844
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 846
    :cond_7
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->ignorableWhitespace([CII)V

    .line 847
    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 766
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 768
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 770
    :cond_7
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/SerializationHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method public namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 367
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    if-nez v1, :cond_1e

    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    if-eqz v1, :cond_1e

    .line 369
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/xml/serializer/ToUnknownStream;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, prefix1:Ljava/lang/String;
    if-nez v0, :cond_1e

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 376
    iput-object p2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    .line 379
    .end local v0           #prefix1:Ljava/lang/String;
    :cond_1e
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/xml/serializer/ToUnknownStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 380
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 856
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 858
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 861
    :cond_7
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    return-void
.end method

.method public reset()Z
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->reset()Z

    move-result v0

    return v0
.end method

.method public serialize(Lorg/w3c/dom/Node;)V
    .registers 3
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_7

    .line 213
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 215
    :cond_7
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->serialize(Lorg/w3c/dom/Node;)V

    .line 216
    return-void
.end method

.method public setCdataSectionElements(Ljava/util/Vector;)V
    .registers 3
    .parameter "URI_and_localNames"

    .prologue
    .line 1169
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setCdataSectionElements(Ljava/util/Vector;)V

    .line 1170
    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .registers 3
    .parameter "ch"

    .prologue
    .line 1274
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 1275
    return-void
.end method

.method public setDoctype(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "system"
    .parameter "pub"

    .prologue
    .line 629
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p2}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method public setDoctypePublic(Ljava/lang/String;)V
    .registers 3
    .parameter "doctype"

    .prologue
    .line 641
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypePublic(Ljava/lang/String;)V

    .line 642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setDoctypePublic_called:Z

    .line 643
    return-void
.end method

.method public setDoctypeSystem(Ljava/lang/String;)V
    .registers 3
    .parameter "doctype"

    .prologue
    .line 653
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setDoctypeSystem(Ljava/lang/String;)V

    .line 654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setDoctypeSystem_called:Z

    .line 655
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 3
    .parameter "locator"

    .prologue
    .line 870
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 871
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 3
    .parameter "encoding"

    .prologue
    .line 663
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setEncoding(Ljava/lang/String;)V

    .line 664
    return-void
.end method

.method public setEscaping(Z)Z
    .registers 3
    .parameter "escape"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setEscaping(Z)Z

    move-result v0

    return v0
.end method

.method public setIndent(Z)V
    .registers 3
    .parameter "indent"

    .prologue
    .line 672
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setIndent(Z)V

    .line 673
    return-void
.end method

.method public setIndentAmount(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 680
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setIndentAmount(I)V

    .line 681
    return-void
.end method

.method public setMediaType(Ljava/lang/String;)V
    .registers 3
    .parameter "mediaType"

    .prologue
    .line 688
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setMediaType(Ljava/lang/String;)V

    .line 689
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setMediaType_called:Z

    .line 690
    return-void
.end method

.method public setOmitXMLDeclaration(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 698
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setOmitXMLDeclaration(Z)V

    .line 699
    return-void
.end method

.method public setOutputFormat(Ljava/util/Properties;)V
    .registers 3
    .parameter "format"

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputFormat(Ljava/util/Properties;)V

    .line 234
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "output"

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputStream(Ljava/io/OutputStream;)V

    .line 244
    return-void
.end method

.method public setSourceLocator(Ljavax/xml/transform/SourceLocator;)V
    .registers 3
    .parameter "locator"

    .prologue
    .line 1285
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setSourceLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 1286
    return-void
.end method

.method public setStandalone(Ljava/lang/String;)V
    .registers 3
    .parameter "standalone"

    .prologue
    .line 707
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setStandalone(Ljava/lang/String;)V

    .line 708
    return-void
.end method

.method public setTransformer(Ljavax/xml/transform/Transformer;)V
    .registers 4
    .parameter "t"

    .prologue
    .line 1256
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setTransformer(Ljavax/xml/transform/Transformer;)V

    .line 1257
    instance-of v1, p1, Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v1, :cond_18

    move-object v0, p1

    check-cast v0, Lorg/apache/xml/serializer/SerializerTrace;

    move-object v1, v0

    invoke-interface {v1}, Lorg/apache/xml/serializer/SerializerTrace;->hasTraceListeners()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1259
    check-cast p1, Lorg/apache/xml/serializer/SerializerTrace;

    .end local p1
    iput-object p1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    .line 1263
    :goto_17
    return-void

    .line 1261
    .restart local p1
    :cond_18
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    goto :goto_17
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 3
    .parameter "version"

    .prologue
    .line 429
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_setVersion_called:Z

    .line 434
    return-void
.end method

.method public setWriter(Ljava/io/Writer;)V
    .registers 3
    .parameter "writer"

    .prologue
    .line 253
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->setWriter(Ljava/io/Writer;)V

    .line 254
    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 879
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->skippedEntity(Ljava/lang/String;)V

    .line 880
    return-void
.end method

.method public startCDATA()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 937
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->startCDATA()V

    .line 938
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 947
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    return-void
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 441
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_needToCallStartDocument:Z

    .line 442
    return-void
.end method

.method public startElement(Ljava/lang/String;)V
    .registers 3
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 448
    invoke-virtual {p0, v0, v0, p1, v0}, Lorg/apache/xml/serializer/ToUnknownStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 449
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 453
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xml/serializer/ToUnknownStream;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 454
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "elementName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 463
    iget-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v0, :cond_32

    .line 466
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 472
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 473
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 521
    :cond_10
    :goto_10
    return-void

    .line 482
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_wrapped_handler_not_initialized:Z

    .line 483
    iput-object p3, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    .line 486
    invoke-direct {p0, p3}, Lorg/apache/xml/serializer/ToUnknownStream;->getPrefixPartUnknown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementPrefix:Ljava/lang/String;

    .line 489
    iput-object p1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    .line 492
    iput-object p2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementLocalName:Ljava/lang/String;

    .line 494
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_tracer:Lorg/apache/xml/serializer/SerializerTrace;

    if-eqz v0, :cond_27

    .line 495
    invoke-virtual {p0, p3}, Lorg/apache/xml/serializer/ToUnknownStream;->firePseudoElement(Ljava/lang/String;)V

    .line 504
    :cond_27
    if-eqz p4, :cond_2c

    .line 505
    invoke-super {p0, p4}, Lorg/apache/xml/serializer/SerializerBase;->addAttributes(Lorg/xml/sax/Attributes;)V

    .line 510
    :cond_2c
    if-eqz p4, :cond_10

    .line 511
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    goto :goto_10

    .line 519
    :cond_32
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    goto :goto_10
.end method

.method public startEntity(Ljava/lang/String;)V
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 956
    iget-object v0, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0, p1}, Lorg/apache/xml/serializer/SerializationHandler;->startEntity(Ljava/lang/String;)V

    .line 957
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 349
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xml/serializer/ToUnknownStream;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 350
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .parameter "prefix"
    .parameter "uri"
    .parameter "shouldFlush"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, pushed:Z
    iget-boolean v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstTagNotEmitted:Z

    if-eqz v1, :cond_40

    .line 388
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementName:Ljava/lang/String;

    if-eqz v1, :cond_15

    if-eqz p3, :cond_15

    .line 394
    invoke-direct {p0}, Lorg/apache/xml/serializer/ToUnknownStream;->flush()V

    .line 395
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 419
    :cond_14
    :goto_14
    return v0

    .line 399
    :cond_15
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    if-nez v1, :cond_27

    .line 401
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    .line 402
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    .line 404
    :cond_27
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespacePrefix:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 405
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_namespaceURI:Ljava/util/Vector;

    invoke-virtual {v1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 407
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    if-nez v1, :cond_14

    .line 409
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementPrefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 410
    iput-object p2, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_firstElementURI:Ljava/lang/String;

    goto :goto_14

    .line 417
    :cond_40
    iget-object v1, p0, Lorg/apache/xml/serializer/ToUnknownStream;->m_handler:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1, p1, p2, p3}, Lorg/apache/xml/serializer/SerializationHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_14
.end method
