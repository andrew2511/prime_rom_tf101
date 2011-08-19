.class public Lorg/dom4j/datatype/DatatypeDocumentFactory;
.super Lorg/dom4j/DocumentFactory;
.source "DatatypeDocumentFactory.java"


# static fields
.field private static final DO_INTERN_QNAME:Z

.field private static final XSI_NAMESPACE:Lorg/dom4j/Namespace;

.field private static final XSI_NO_SCHEMA_LOCATION:Lorg/dom4j/QName;

.field private static final XSI_SCHEMA_LOCATION:Lorg/dom4j/QName;

.field protected static transient singleton:Lorg/dom4j/datatype/DatatypeDocumentFactory;


# instance fields
.field private autoLoadSchema:Z

.field private schemaBuilder:Lorg/dom4j/datatype/SchemaParser;

.field private xmlSchemaReader:Lorg/dom4j/io/SAXReader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/datatype/DatatypeDocumentFactory;-><init>()V

    .line 36
    sput-object v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->singleton:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    .line 39
    const-string v0, "xsi"

    .line 40
    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    .line 39
    invoke-static {v0, v1}, Lorg/dom4j/Namespace;->get(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_NAMESPACE:Lorg/dom4j/Namespace;

    .line 43
    const-string v0, "schemaLocation"

    sget-object v1, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_NAMESPACE:Lorg/dom4j/Namespace;

    .line 42
    invoke-static {v0, v1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_SCHEMA_LOCATION:Lorg/dom4j/QName;

    .line 46
    const-string v0, "noNamespaceSchemaLocation"

    sget-object v1, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_NAMESPACE:Lorg/dom4j/Namespace;

    .line 45
    invoke-static {v0, v1}, Lorg/dom4j/QName;->get(Ljava/lang/String;Lorg/dom4j/Namespace;)Lorg/dom4j/QName;

    move-result-object v0

    sput-object v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_NO_SCHEMA_LOCATION:Lorg/dom4j/QName;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/dom4j/DocumentFactory;-><init>()V

    .line 52
    new-instance v0, Lorg/dom4j/io/SAXReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXReader;-><init>()V

    iput-object v0, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->xmlSchemaReader:Lorg/dom4j/io/SAXReader;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->autoLoadSchema:Z

    .line 58
    new-instance v0, Lorg/dom4j/datatype/SchemaParser;

    invoke-direct {v0, p0}, Lorg/dom4j/datatype/SchemaParser;-><init>(Lorg/dom4j/datatype/DatatypeDocumentFactory;)V

    iput-object v0, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->schemaBuilder:Lorg/dom4j/datatype/SchemaParser;

    .line 59
    return-void
.end method

.method public static getInstance()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->singleton:Lorg/dom4j/datatype/DatatypeDocumentFactory;

    return-object v0
.end method


# virtual methods
.method public createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;
    .locals 6
    .parameter "owner"
    .parameter "qname"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x20

    .line 114
    iget-boolean v3, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->autoLoadSchema:Z

    if-eqz v3, :cond_2

    sget-object v3, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_NO_SCHEMA_LOCATION:Lorg/dom4j/QName;

    invoke-virtual {p2, v3}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v3

    move-object v0, v3

    .line 116
    .local v0, document:Lorg/dom4j/Document;
    :goto_0
    invoke-virtual {p0, v0, p3}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->loadSchema(Lorg/dom4j/Document;Ljava/lang/String;)V

    .line 125
    .end local v0           #document:Lorg/dom4j/Document;
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lorg/dom4j/DocumentFactory;->createAttribute(Lorg/dom4j/Element;Lorg/dom4j/QName;Ljava/lang/String;)Lorg/dom4j/Attribute;

    move-result-object v3

    return-object v3

    :cond_1
    move-object v0, v4

    .line 115
    goto :goto_0

    .line 117
    :cond_2
    iget-boolean v3, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->autoLoadSchema:Z

    if-eqz v3, :cond_0

    sget-object v3, Lorg/dom4j/datatype/DatatypeDocumentFactory;->XSI_SCHEMA_LOCATION:Lorg/dom4j/QName;

    invoke-virtual {p2, v3}, Lorg/dom4j/QName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/dom4j/Element;->getDocument()Lorg/dom4j/Document;

    move-result-object v3

    move-object v0, v3

    .line 119
    .restart local v0       #document:Lorg/dom4j/Document;
    :goto_2
    const/4 v3, 0x0

    invoke-virtual {p3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, uri:Ljava/lang/String;
    invoke-interface {p1, v2}, Lorg/dom4j/Element;->getNamespaceForURI(Ljava/lang/String;)Lorg/dom4j/Namespace;

    move-result-object v1

    .line 121
    .local v1, namespace:Lorg/dom4j/Namespace;
    invoke-virtual {p3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3, v1}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->loadSchema(Lorg/dom4j/Document;Ljava/lang/String;Lorg/dom4j/Namespace;)V

    goto :goto_1

    .end local v0           #document:Lorg/dom4j/Document;
    .end local v1           #namespace:Lorg/dom4j/Namespace;
    .end local v2           #uri:Ljava/lang/String;
    :cond_3
    move-object v0, v4

    .line 118
    goto :goto_2
.end method

.method public getElementFactory(Lorg/dom4j/QName;)Lorg/dom4j/datatype/DatatypeElementFactory;
    .locals 4
    .parameter "elementQName"

    .prologue
    .line 97
    const/4 v2, 0x0

    .line 103
    .local v2, result:Lorg/dom4j/datatype/DatatypeElementFactory;
    invoke-virtual {p1}, Lorg/dom4j/QName;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    .line 104
    .local v1, factory:Lorg/dom4j/DocumentFactory;
    instance-of v3, v1, Lorg/dom4j/datatype/DatatypeElementFactory;

    if-eqz v3, :cond_0

    .line 105
    move-object v0, v1

    check-cast v0, Lorg/dom4j/datatype/DatatypeElementFactory;

    move-object v2, v0

    .line 108
    :cond_0
    return-object v2
.end method

.method public loadSchema(Lorg/dom4j/Document;)V
    .locals 1
    .parameter "schemaDocument"

    .prologue
    .line 80
    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->schemaBuilder:Lorg/dom4j/datatype/SchemaParser;

    invoke-virtual {v0, p1}, Lorg/dom4j/datatype/SchemaParser;->build(Lorg/dom4j/Document;)V

    .line 81
    return-void
.end method

.method protected loadSchema(Lorg/dom4j/Document;Ljava/lang/String;)V
    .locals 8
    .parameter "document"
    .parameter "schemaInstanceURI"

    .prologue
    .line 132
    :try_start_0
    invoke-interface {p1}, Lorg/dom4j/Document;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v3

    .line 134
    .local v3, resolver:Lorg/xml/sax/EntityResolver;
    if-nez v3, :cond_0

    .line 135
    const-string v2, "No EntityResolver available for resolving URI: "

    .line 136
    .local v2, msg:Ljava/lang/String;
    new-instance v5, Lorg/dom4j/datatype/InvalidSchemaException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #resolver:Lorg/xml/sax/EntityResolver;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 150
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Failed to load schema: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 151
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Caught: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    new-instance v5, Lorg/dom4j/datatype/InvalidSchemaException;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Failed to load schema: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 153
    invoke-direct {v5, v6}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 139
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #resolver:Lorg/xml/sax/EntityResolver;
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v3, v5, p2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v1

    .line 142
    .local v1, inputSource:Lorg/xml/sax/InputSource;
    if-nez v3, :cond_1

    .line 143
    new-instance v5, Lorg/dom4j/datatype/InvalidSchemaException;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Could not resolve the URI: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 143
    invoke-direct {v5, v6}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 147
    :cond_1
    iget-object v5, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->xmlSchemaReader:Lorg/dom4j/io/SAXReader;

    invoke-virtual {v5, v1}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v4

    .line 148
    .local v4, schemaDocument:Lorg/dom4j/Document;
    invoke-virtual {p0, v4}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->loadSchema(Lorg/dom4j/Document;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    return-void
.end method

.method protected loadSchema(Lorg/dom4j/Document;Ljava/lang/String;Lorg/dom4j/Namespace;)V
    .locals 8
    .parameter "document"
    .parameter "schemaInstanceURI"
    .parameter "namespace"

    .prologue
    .line 161
    :try_start_0
    invoke-interface {p1}, Lorg/dom4j/Document;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v3

    .line 163
    .local v3, resolver:Lorg/xml/sax/EntityResolver;
    if-nez v3, :cond_0

    .line 164
    const-string v2, "No EntityResolver available for resolving URI: "

    .line 165
    .local v2, msg:Ljava/lang/String;
    new-instance v5, Lorg/dom4j/datatype/InvalidSchemaException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #resolver:Lorg/xml/sax/EntityResolver;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 179
    .local v0, e:Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Failed to load schema: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Caught: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    new-instance v5, Lorg/dom4j/datatype/InvalidSchemaException;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Failed to load schema: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 182
    invoke-direct {v5, v6}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 168
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #resolver:Lorg/xml/sax/EntityResolver;
    :cond_0
    const/4 v5, 0x0

    :try_start_1
    invoke-interface {v3, v5, p2}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v1

    .line 171
    .local v1, inputSource:Lorg/xml/sax/InputSource;
    if-nez v3, :cond_1

    .line 172
    new-instance v5, Lorg/dom4j/datatype/InvalidSchemaException;

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "Could not resolve the URI: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 172
    invoke-direct {v5, v6}, Lorg/dom4j/datatype/InvalidSchemaException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 176
    :cond_1
    iget-object v5, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->xmlSchemaReader:Lorg/dom4j/io/SAXReader;

    invoke-virtual {v5, v1}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v4

    .line 177
    .local v4, schemaDocument:Lorg/dom4j/Document;
    invoke-virtual {p0, v4, p3}, Lorg/dom4j/datatype/DatatypeDocumentFactory;->loadSchema(Lorg/dom4j/Document;Lorg/dom4j/Namespace;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    return-void
.end method

.method public loadSchema(Lorg/dom4j/Document;Lorg/dom4j/Namespace;)V
    .locals 1
    .parameter "schemaDocument"
    .parameter "targetNamespace"

    .prologue
    .line 84
    iget-object v0, p0, Lorg/dom4j/datatype/DatatypeDocumentFactory;->schemaBuilder:Lorg/dom4j/datatype/SchemaParser;

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/datatype/SchemaParser;->build(Lorg/dom4j/Document;Lorg/dom4j/Namespace;)V

    .line 85
    return-void
.end method
