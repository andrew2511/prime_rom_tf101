.class public Lorg/dom4j/jaxb/JAXBModifier;
.super Lorg/dom4j/jaxb/JAXBSupport;
.source "JAXBModifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/dom4j/jaxb/JAXBModifier$JAXBElementModifier;
    }
.end annotation


# instance fields
.field private modifier:Lorg/dom4j/io/SAXModifier;

.field private modifiers:Ljava/util/HashMap;

.field private outputFormat:Lorg/dom4j/io/OutputFormat;

.field private pruneElements:Z

.field private xmlWriter:Lorg/dom4j/io/XMLWriter;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "contextPath"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lorg/dom4j/jaxb/JAXBSupport;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifiers:Ljava/util/HashMap;

    .line 68
    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->outputFormat:Lorg/dom4j/io/OutputFormat;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1
    .parameter "contextPath"
    .parameter "classloader"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lorg/dom4j/jaxb/JAXBSupport;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifiers:Ljava/util/HashMap;

    .line 86
    new-instance v0, Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0}, Lorg/dom4j/io/OutputFormat;-><init>()V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->outputFormat:Lorg/dom4j/io/OutputFormat;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;Lorg/dom4j/io/OutputFormat;)V
    .locals 1
    .parameter "contextPath"
    .parameter "classloader"
    .parameter "outputFormat"

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lorg/dom4j/jaxb/JAXBSupport;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifiers:Ljava/util/HashMap;

    .line 123
    iput-object p3, p0, Lorg/dom4j/jaxb/JAXBModifier;->outputFormat:Lorg/dom4j/io/OutputFormat;

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/dom4j/io/OutputFormat;)V
    .locals 1
    .parameter "contextPath"
    .parameter "outputFormat"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lorg/dom4j/jaxb/JAXBSupport;-><init>(Ljava/lang/String;)V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifiers:Ljava/util/HashMap;

    .line 103
    iput-object p2, p0, Lorg/dom4j/jaxb/JAXBModifier;->outputFormat:Lorg/dom4j/io/OutputFormat;

    .line 104
    return-void
.end method

.method private createXMLWriter()Lorg/dom4j/io/XMLWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Lorg/dom4j/io/XMLWriter;

    iget-object v1, p0, Lorg/dom4j/jaxb/JAXBModifier;->outputFormat:Lorg/dom4j/io/OutputFormat;

    invoke-direct {v0, v1}, Lorg/dom4j/io/XMLWriter;-><init>(Lorg/dom4j/io/OutputFormat;)V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    .line 475
    :cond_0
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-object v0
.end method

.method private getModifier()Lorg/dom4j/io/SAXModifier;
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifier:Lorg/dom4j/io/SAXModifier;

    if-nez v0, :cond_0

    .line 460
    new-instance v0, Lorg/dom4j/io/SAXModifier;

    invoke-virtual {p0}, Lorg/dom4j/jaxb/JAXBModifier;->isPruneElements()Z

    move-result v1

    invoke-direct {v0, v1}, Lorg/dom4j/io/SAXModifier;-><init>(Z)V

    iput-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifier:Lorg/dom4j/io/SAXModifier;

    .line 463
    :cond_0
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifier:Lorg/dom4j/io/SAXModifier;

    return-object v0
.end method

.method private getXMLWriter()Lorg/dom4j/io/XMLWriter;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-object v0
.end method

.method private installModifier()Lorg/dom4j/io/SAXModifier;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 440
    new-instance v3, Lorg/dom4j/io/SAXModifier;

    invoke-virtual {p0}, Lorg/dom4j/jaxb/JAXBModifier;->isPruneElements()Z

    move-result v4

    invoke-direct {v3, v4}, Lorg/dom4j/io/SAXModifier;-><init>(Z)V

    iput-object v3, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifier:Lorg/dom4j/io/SAXModifier;

    .line 442
    iget-object v3, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifier:Lorg/dom4j/io/SAXModifier;

    invoke-virtual {v3}, Lorg/dom4j/io/SAXModifier;->resetModifiers()V

    .line 444
    iget-object v3, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifiers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 446
    .local v2, modifierIt:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 453
    iget-object v3, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifier:Lorg/dom4j/io/SAXModifier;

    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->getXMLWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/dom4j/io/SAXModifier;->setXMLWriter(Lorg/dom4j/io/XMLWriter;)V

    .line 455
    iget-object v3, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifier:Lorg/dom4j/io/SAXModifier;

    return-object v3

    .line 447
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 448
    .local v0, entry:Ljava/util/Map$Entry;
    new-instance v1, Lorg/dom4j/jaxb/JAXBModifier$JAXBElementModifier;

    .line 449
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/dom4j/jaxb/JAXBObjectModifier;

    .line 448
    invoke-direct {v1, p0, p0, v3}, Lorg/dom4j/jaxb/JAXBModifier$JAXBElementModifier;-><init>(Lorg/dom4j/jaxb/JAXBModifier;Lorg/dom4j/jaxb/JAXBModifier;Lorg/dom4j/jaxb/JAXBObjectModifier;)V

    .line 450
    .local v1, mod:Lorg/dom4j/io/ElementModifier;
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->getModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3, v1}, Lorg/dom4j/io/SAXModifier;->addModifier(Ljava/lang/String;Lorg/dom4j/io/ElementModifier;)V

    goto :goto_0
.end method


# virtual methods
.method public addObjectModifier(Ljava/lang/String;Lorg/dom4j/jaxb/JAXBObjectModifier;)V
    .locals 1
    .parameter "path"
    .parameter "mod"

    .prologue
    .line 394
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifiers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    return-void
.end method

.method public isPruneElements()Z
    .locals 1

    .prologue
    .line 425
    iget-boolean v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->pruneElements:Z

    return v0
.end method

.method public modify(Ljava/io/File;)Lorg/dom4j/Document;
    .locals 1
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->installModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXModifier;->modify(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public modify(Ljava/io/File;Ljava/nio/charset/Charset;)Lorg/dom4j/Document;
    .locals 5
    .parameter "source"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 167
    .local v2, reader:Ljava/io/Reader;
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->installModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/dom4j/io/SAXModifier;->modify(Ljava/io/Reader;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 168
    .end local v2           #reader:Ljava/io/Reader;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 169
    .local v1, ex:Lorg/dom4j/jaxb/JAXBRuntimeException;
    invoke-virtual {v1}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 170
    .local v0, cause:Ljava/lang/Throwable;
    new-instance v3, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 171
    .end local v0           #cause:Ljava/lang/Throwable;
    .end local v1           #ex:Lorg/dom4j/jaxb/JAXBRuntimeException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 172
    .local v1, ex:Ljava/io/FileNotFoundException;
    new-instance v3, Lorg/dom4j/DocumentException;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public modify(Ljava/io/InputStream;)Lorg/dom4j/Document;
    .locals 4
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->installModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXModifier;->modify(Ljava/io/InputStream;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 218
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 219
    .local v1, ex:Lorg/dom4j/jaxb/JAXBRuntimeException;
    invoke-virtual {v1}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 220
    .local v0, cause:Ljava/lang/Throwable;
    new-instance v2, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public modify(Ljava/io/InputStream;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 4
    .parameter "source"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->installModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXModifier;->modify(Ljava/io/InputStream;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 244
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 245
    .local v1, ex:Lorg/dom4j/jaxb/JAXBRuntimeException;
    invoke-virtual {v1}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 246
    .local v0, cause:Ljava/lang/Throwable;
    new-instance v2, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public modify(Ljava/io/Reader;)Lorg/dom4j/Document;
    .locals 4
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->installModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXModifier;->modify(Ljava/io/Reader;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 267
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 268
    .local v1, ex:Lorg/dom4j/jaxb/JAXBRuntimeException;
    invoke-virtual {v1}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 269
    .local v0, cause:Ljava/lang/Throwable;
    new-instance v2, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public modify(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 4
    .parameter "source"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->installModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXModifier;->modify(Ljava/io/Reader;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 293
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 294
    .local v1, ex:Lorg/dom4j/jaxb/JAXBRuntimeException;
    invoke-virtual {v1}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 295
    .local v0, cause:Ljava/lang/Throwable;
    new-instance v2, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public modify(Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 4
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->installModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXModifier;->modify(Ljava/lang/String;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 316
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 317
    .local v1, ex:Lorg/dom4j/jaxb/JAXBRuntimeException;
    invoke-virtual {v1}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 318
    .local v0, cause:Ljava/lang/Throwable;
    new-instance v2, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public modify(Ljava/net/URL;)Lorg/dom4j/Document;
    .locals 4
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->installModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXModifier;->modify(Ljava/net/URL;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 339
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 340
    .local v1, ex:Lorg/dom4j/jaxb/JAXBRuntimeException;
    invoke-virtual {v1}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 341
    .local v0, cause:Ljava/lang/Throwable;
    new-instance v2, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public modify(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;
    .locals 4
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->installModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXModifier;->modify(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/jaxb/JAXBRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 194
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 195
    .local v1, ex:Lorg/dom4j/jaxb/JAXBRuntimeException;
    invoke-virtual {v1}, Lorg/dom4j/jaxb/JAXBRuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 196
    .local v0, cause:Ljava/lang/Throwable;
    new-instance v2, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public removeObjectModifier(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 405
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifiers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->getModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXModifier;->removeModifier(Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public resetObjectModifiers()V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lorg/dom4j/jaxb/JAXBModifier;->modifiers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 415
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->getModifier()Lorg/dom4j/io/SAXModifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/SAXModifier;->resetModifiers()V

    .line 416
    return-void
.end method

.method public setOutput(Ljava/io/File;)V
    .locals 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->createXMLWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lorg/dom4j/io/XMLWriter;->setOutputStream(Ljava/io/OutputStream;)V

    .line 356
    return-void
.end method

.method public setOutput(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->createXMLWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/XMLWriter;->setOutputStream(Ljava/io/OutputStream;)V

    .line 369
    return-void
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 1
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-direct {p0}, Lorg/dom4j/jaxb/JAXBModifier;->createXMLWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/XMLWriter;->setWriter(Ljava/io/Writer;)V

    .line 382
    return-void
.end method

.method public setPruneElements(Z)V
    .locals 0
    .parameter "pruneElements"

    .prologue
    .line 436
    iput-boolean p1, p0, Lorg/dom4j/jaxb/JAXBModifier;->pruneElements:Z

    .line 437
    return-void
.end method
