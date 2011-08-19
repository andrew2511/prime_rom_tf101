.class public Lorg/dom4j/io/SAXValidator;
.super Ljava/lang/Object;
.source "SAXValidator.java"


# instance fields
.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 0
    .parameter "xmlReader"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 44
    return-void
.end method


# virtual methods
.method protected configureReader()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 152
    iget-object v1, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v1}, Lorg/xml/sax/XMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    .line 154
    .local v0, handler:Lorg/xml/sax/ContentHandler;
    if-nez v0, :cond_0

    .line 155
    iget-object v1, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    new-instance v2, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v2}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 159
    :cond_0
    iget-object v1, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    const-string v2, "http://xml.org/sax/features/validation"

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 162
    iget-object v1, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    const-string v2, "http://xml.org/sax/features/namespaces"

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 163
    iget-object v1, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    const-string v2, "http://xml.org/sax/features/namespace-prefixes"

    .line 164
    const/4 v3, 0x0

    .line 163
    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 165
    return-void
.end method

.method protected createXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/dom4j/io/SAXHelper;->createXMLReader(Z)Lorg/xml/sax/XMLReader;

    move-result-object v0

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/dom4j/io/SAXValidator;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lorg/dom4j/io/SAXValidator;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 89
    invoke-virtual {p0}, Lorg/dom4j/io/SAXValidator;->configureReader()V

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .parameter "errorHandler"

    .prologue
    .line 126
    iput-object p1, p0, Lorg/dom4j/io/SAXValidator;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 127
    return-void
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 0
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 105
    iput-object p1, p0, Lorg/dom4j/io/SAXValidator;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 106
    invoke-virtual {p0}, Lorg/dom4j/io/SAXValidator;->configureReader()V

    .line 107
    return-void
.end method

.method public validate(Lorg/dom4j/Document;)V
    .locals 5
    .parameter "document"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 59
    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p0}, Lorg/dom4j/io/SAXValidator;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 62
    .local v1, reader:Lorg/xml/sax/XMLReader;
    iget-object v2, p0, Lorg/dom4j/io/SAXValidator;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lorg/dom4j/io/SAXValidator;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 67
    :cond_0
    :try_start_0
    new-instance v2, Lorg/dom4j/io/DocumentInputSource;

    invoke-direct {v2, p1}, Lorg/dom4j/io/DocumentInputSource;-><init>(Lorg/dom4j/Document;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1           #reader:Lorg/xml/sax/XMLReader;
    :cond_1
    return-void

    .line 68
    .restart local v1       #reader:Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 69
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Caught and exception that should never happen: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
