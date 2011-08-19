.class public Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;
.super Ljava/lang/Object;
.source "SyncMLMsgFormatter.java"


# instance fields
.field private mParseHandler:Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;

.field private mSAXParser:Ljavax/xml/parsers/SAXParser;

.field private mSAXParserFactory:Ljavax/xml/parsers/SAXParserFactory;

.field private mXMLReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;->mSAXParserFactory:Ljavax/xml/parsers/SAXParserFactory;

    .line 31
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;->mSAXParserFactory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;->mSAXParser:Ljavax/xml/parsers/SAXParser;

    .line 32
    new-instance v1, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;

    invoke-direct {v1}, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;-><init>()V

    iput-object v1, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;->mParseHandler:Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;

    .line 33
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;->mSAXParser:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;->mXMLReader:Lorg/xml/sax/XMLReader;

    .line 35
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;->mXMLReader:Lorg/xml/sax/XMLReader;

    const-string v2, "http://xml.org/sax/features/namespaces"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 36
    iget-object v1, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;->mXMLReader:Lorg/xml/sax/XMLReader;

    const-string v2, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 38
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 39
    .end local v0           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 40
    .local v0, e:Lorg/xml/sax/SAXException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public format(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "in"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/syncml/exception/MsgParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;->mXMLReader:Lorg/xml/sax/XMLReader;

    iget-object v3, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;->mParseHandler:Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 57
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 58
    .local v0, is:Lorg/xml/sax/InputSource;
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;->mXMLReader:Lorg/xml/sax/XMLReader;

    invoke-interface {v2, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    iget-object v2, p0, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatter;->mParseHandler:Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;

    invoke-virtual {v2}, Lcom/asus/dmlib/syncml/message/SyncMLMsgFormatHandler;->getFormatedMsg()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 60
    .end local v0           #is:Lorg/xml/sax/InputSource;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 61
    .local v1, saxEx:Lorg/xml/sax/SAXException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/dmlib/util/DMLog;->highLightLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v2, Lcom/asus/dmlib/syncml/exception/MsgParseException;

    sget-object v3, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_SYNCML_PARSE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v3}, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->getErrCodeStr()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/asus/dmlib/syncml/exception/MsgParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
