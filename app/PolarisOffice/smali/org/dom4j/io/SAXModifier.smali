.class public Lorg/dom4j/io/SAXModifier;
.super Ljava/lang/Object;
.source "SAXModifier.java"


# instance fields
.field private modifiers:Ljava/util/HashMap;

.field private modifyReader:Lorg/dom4j/io/SAXModifyReader;

.field private pruneElements:Z

.field private xmlReader:Lorg/xml/sax/XMLReader;

.field private xmlWriter:Lorg/dom4j/io/XMLWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifiers:Ljava/util/HashMap;

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 1
    .parameter "xmlReader"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifiers:Ljava/util/HashMap;

    .line 86
    iput-object p1, p0, Lorg/dom4j/io/SAXModifier;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Z)V
    .locals 1
    .parameter "xmlReader"
    .parameter "pruneElements"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifiers:Ljava/util/HashMap;

    .line 100
    iput-object p1, p0, Lorg/dom4j/io/SAXModifier;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 101
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "pruneElements"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifiers:Ljava/util/HashMap;

    .line 75
    iput-boolean p1, p0, Lorg/dom4j/io/SAXModifier;->pruneElements:Z

    .line 76
    return-void
.end method

.method private getSAXModifyReader()Lorg/dom4j/io/SAXModifyReader;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifyReader:Lorg/dom4j/io/SAXModifyReader;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lorg/dom4j/io/SAXModifyReader;

    invoke-direct {v0}, Lorg/dom4j/io/SAXModifyReader;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifyReader:Lorg/dom4j/io/SAXModifyReader;

    .line 420
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifyReader:Lorg/dom4j/io/SAXModifyReader;

    return-object v0
.end method

.method private getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lorg/dom4j/io/SAXModifier;->xmlReader:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_0

    .line 409
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/dom4j/io/SAXHelper;->createXMLReader(Z)Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/SAXModifier;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 412
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXModifier;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method private installModifyReader()Lorg/dom4j/io/SAXReader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 380
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->getSAXModifyReader()Lorg/dom4j/io/SAXModifyReader;

    move-result-object v4

    .line 382
    .local v4, reader:Lorg/dom4j/io/SAXModifyReader;
    invoke-virtual {p0}, Lorg/dom4j/io/SAXModifier;->isPruneElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 383
    iget-object v5, p0, Lorg/dom4j/io/SAXModifier;->modifyReader:Lorg/dom4j/io/SAXModifyReader;

    new-instance v6, Lorg/dom4j/io/PruningDispatchHandler;

    invoke-direct {v6}, Lorg/dom4j/io/PruningDispatchHandler;-><init>()V

    invoke-virtual {v5, v6}, Lorg/dom4j/io/SAXModifyReader;->setDispatchHandler(Lorg/dom4j/io/DispatchHandler;)V

    .line 386
    :cond_0
    invoke-virtual {v4}, Lorg/dom4j/io/SAXModifyReader;->resetHandlers()V

    .line 388
    iget-object v5, p0, Lorg/dom4j/io/SAXModifier;->modifiers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 390
    .local v3, modifierIt:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 398
    invoke-virtual {p0}, Lorg/dom4j/io/SAXModifier;->getXMLWriter()Lorg/dom4j/io/XMLWriter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/dom4j/io/SAXModifyReader;->setXMLWriter(Lorg/dom4j/io/XMLWriter;)V

    .line 399
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/dom4j/io/SAXModifyReader;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 401
    return-object v4

    .line 391
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 393
    .local v0, entry:Ljava/util/Map$Entry;
    new-instance v2, Lorg/dom4j/io/SAXModifyElementHandler;

    .line 394
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/dom4j/io/ElementModifier;

    .line 393
    invoke-direct {v2, v5}, Lorg/dom4j/io/SAXModifyElementHandler;-><init>(Lorg/dom4j/io/ElementModifier;)V

    .line 395
    .local v2, handler:Lorg/dom4j/io/SAXModifyElementHandler;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Lorg/dom4j/io/SAXModifyReader;->addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v2           #handler:Lorg/dom4j/io/SAXModifyElementHandler;
    .end local v3           #modifierIt:Ljava/util/Iterator;
    .end local v4           #reader:Lorg/dom4j/io/SAXModifyReader;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 403
    .local v1, ex:Lorg/xml/sax/SAXException;
    new-instance v5, Lorg/dom4j/DocumentException;

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public addModifier(Ljava/lang/String;Lorg/dom4j/io/ElementModifier;)V
    .locals 1
    .parameter "path"
    .parameter "modifier"

    .prologue
    .line 304
    iget-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifiers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    return-void
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->getSAXModifyReader()Lorg/dom4j/io/SAXModifyReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/SAXModifyReader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    return-object v0
.end method

.method public getXMLWriter()Lorg/dom4j/io/XMLWriter;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/dom4j/io/SAXModifier;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    return-object v0
.end method

.method public isPruneElements()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lorg/dom4j/io/SAXModifier;->pruneElements:Z

    return v0
.end method

.method public modify(Ljava/io/File;)Lorg/dom4j/Document;
    .locals 4
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 119
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->installModifyReader()Lorg/dom4j/io/SAXReader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/File;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/io/SAXModifyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 120
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 121
    .local v1, ex:Lorg/dom4j/io/SAXModifyException;
    invoke-virtual {v1}, Lorg/dom4j/io/SAXModifyException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 122
    .local v0, cause:Ljava/lang/Throwable;
    new-instance v2, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public modify(Ljava/io/InputStream;)Lorg/dom4j/Document;
    .locals 4
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 165
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->installModifyReader()Lorg/dom4j/io/SAXReader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/io/SAXModifyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 166
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 167
    .local v1, ex:Lorg/dom4j/io/SAXModifyException;
    invoke-virtual {v1}, Lorg/dom4j/io/SAXModifyException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 168
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
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 191
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->installModifyReader()Lorg/dom4j/io/SAXReader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/InputStream;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/io/SAXModifyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 192
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 193
    .local v1, ex:Lorg/dom4j/io/SAXModifyException;
    invoke-virtual {v1}, Lorg/dom4j/io/SAXModifyException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 194
    .local v0, cause:Ljava/lang/Throwable;
    new-instance v2, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public modify(Ljava/io/Reader;)Lorg/dom4j/Document;
    .locals 4
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 214
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->installModifyReader()Lorg/dom4j/io/SAXReader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/io/SAXModifyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 215
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 216
    .local v1, ex:Lorg/dom4j/io/SAXModifyException;
    invoke-virtual {v1}, Lorg/dom4j/io/SAXModifyException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 217
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
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 240
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->installModifyReader()Lorg/dom4j/io/SAXReader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/io/SAXModifyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 241
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 242
    .local v1, ex:Lorg/dom4j/io/SAXModifyException;
    invoke-virtual {v1}, Lorg/dom4j/io/SAXModifyException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 243
    .local v0, cause:Ljava/lang/Throwable;
    new-instance v2, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public modify(Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 4
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 286
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->installModifyReader()Lorg/dom4j/io/SAXReader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/lang/String;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/io/SAXModifyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 287
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 288
    .local v1, ex:Lorg/dom4j/io/SAXModifyException;
    invoke-virtual {v1}, Lorg/dom4j/io/SAXModifyException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 289
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
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 263
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->installModifyReader()Lorg/dom4j/io/SAXReader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXReader;->read(Ljava/net/URL;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/io/SAXModifyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 264
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 265
    .local v1, ex:Lorg/dom4j/io/SAXModifyException;
    invoke-virtual {v1}, Lorg/dom4j/io/SAXModifyException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 266
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
            Lorg/dom4j/DocumentException;
        }
    .end annotation

    .prologue
    .line 142
    :try_start_0
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->installModifyReader()Lorg/dom4j/io/SAXReader;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;
    :try_end_0
    .catch Lorg/dom4j/io/SAXModifyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 143
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 144
    .local v1, ex:Lorg/dom4j/io/SAXModifyException;
    invoke-virtual {v1}, Lorg/dom4j/io/SAXModifyException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 145
    .local v0, cause:Ljava/lang/Throwable;
    new-instance v2, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public removeModifier(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 324
    iget-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifiers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->getSAXModifyReader()Lorg/dom4j/io/SAXModifyReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXModifyReader;->removeHandler(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public resetModifiers()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lorg/dom4j/io/SAXModifier;->modifiers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 313
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->getSAXModifyReader()Lorg/dom4j/io/SAXModifyReader;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/SAXModifyReader;->resetHandlers()V

    .line 314
    return-void
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 1
    .parameter "factory"

    .prologue
    .line 346
    invoke-direct {p0}, Lorg/dom4j/io/SAXModifier;->getSAXModifyReader()Lorg/dom4j/io/SAXModifyReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/SAXModifyReader;->setDocumentFactory(Lorg/dom4j/DocumentFactory;)V

    .line 347
    return-void
.end method

.method public setXMLWriter(Lorg/dom4j/io/XMLWriter;)V
    .locals 0
    .parameter "writer"

    .prologue
    .line 365
    iput-object p1, p0, Lorg/dom4j/io/SAXModifier;->xmlWriter:Lorg/dom4j/io/XMLWriter;

    .line 366
    return-void
.end method
