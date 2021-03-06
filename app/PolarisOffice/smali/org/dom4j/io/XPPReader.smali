.class public Lorg/dom4j/io/XPPReader;
.super Ljava/lang/Object;
.source "XPPReader.java"


# instance fields
.field private dispatchHandler:Lorg/dom4j/io/DispatchHandler;

.field private factory:Lorg/dom4j/DocumentFactory;

.field private xppFactory:Lorg/gjt/xpp/XmlPullParserFactory;

.field private xppParser:Lorg/gjt/xpp/XmlPullParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/dom4j/io/XPPReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 60
    return-void
.end method


# virtual methods
.method public addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V
    .locals 1
    .parameter "path"
    .parameter "handler"

    .prologue
    .line 329
    invoke-virtual {p0}, Lorg/dom4j/io/XPPReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/io/DispatchHandler;->addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V

    .line 330
    return-void
.end method

.method protected createReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method protected getDispatchHandler()Lorg/dom4j/io/DispatchHandler;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/dom4j/io/XPPReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Lorg/dom4j/io/DispatchHandler;

    invoke-direct {v0}, Lorg/dom4j/io/DispatchHandler;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/XPPReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    .line 426
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XPPReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    return-object v0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/dom4j/io/XPPReader;->factory:Lorg/dom4j/DocumentFactory;

    if-nez v0, :cond_0

    .line 297
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XPPReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 300
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XPPReader;->factory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getXPPFactory()Lorg/gjt/xpp/XmlPullParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gjt/xpp/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lorg/dom4j/io/XPPReader;->xppFactory:Lorg/gjt/xpp/XmlPullParserFactory;

    if-nez v0, :cond_0

    .line 279
    invoke-static {}, Lorg/gjt/xpp/XmlPullParserFactory;->newInstance()Lorg/gjt/xpp/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XPPReader;->xppFactory:Lorg/gjt/xpp/XmlPullParserFactory;

    .line 282
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XPPReader;->xppFactory:Lorg/gjt/xpp/XmlPullParserFactory;

    return-object v0
.end method

.method public getXPPParser()Lorg/gjt/xpp/XmlPullParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gjt/xpp/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lorg/dom4j/io/XPPReader;->xppParser:Lorg/gjt/xpp/XmlPullParser;

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lorg/dom4j/io/XPPReader;->getXPPFactory()Lorg/gjt/xpp/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/gjt/xpp/XmlPullParserFactory;->newPullParser()Lorg/gjt/xpp/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/XPPReader;->xppParser:Lorg/gjt/xpp/XmlPullParser;

    .line 274
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/XPPReader;->xppParser:Lorg/gjt/xpp/XmlPullParser;

    return-object v0
.end method

.method protected parseDocument()Lorg/dom4j/Document;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;,
            Lorg/gjt/xpp/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0}, Lorg/dom4j/io/XPPReader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v9

    invoke-virtual {v9}, Lorg/dom4j/DocumentFactory;->createDocument()Lorg/dom4j/Document;

    move-result-object v0

    .line 361
    .local v0, document:Lorg/dom4j/Document;
    const/4 v4, 0x0

    .line 362
    .local v4, parent:Lorg/dom4j/Element;
    invoke-virtual {p0}, Lorg/dom4j/io/XPPReader;->getXPPParser()Lorg/gjt/xpp/XmlPullParser;

    move-result-object v5

    .line 363
    .local v5, parser:Lorg/gjt/xpp/XmlPullParser;
    const/4 v9, 0x1

    invoke-interface {v5, v9}, Lorg/gjt/xpp/XmlPullParser;->setNamespaceAware(Z)V

    .line 365
    new-instance v6, Lorg/dom4j/xpp/ProxyXmlStartTag;

    invoke-direct {v6}, Lorg/dom4j/xpp/ProxyXmlStartTag;-><init>()V

    .line 366
    .local v6, startTag:Lorg/dom4j/xpp/ProxyXmlStartTag;
    iget-object v9, p0, Lorg/dom4j/io/XPPReader;->xppFactory:Lorg/gjt/xpp/XmlPullParserFactory;

    invoke-virtual {v9}, Lorg/gjt/xpp/XmlPullParserFactory;->newEndTag()Lorg/gjt/xpp/XmlEndTag;

    move-result-object v1

    .line 369
    .local v1, endTag:Lorg/gjt/xpp/XmlEndTag;
    :cond_0
    :goto_0
    invoke-interface {v5}, Lorg/gjt/xpp/XmlPullParser;->next()B

    move-result v8

    .line 371
    .local v8, type:I
    packed-switch v8, :pswitch_data_0

    .line 416
    new-instance v9, Lorg/dom4j/DocumentException;

    new-instance v10, Ljava/lang/StringBuffer;

    const-string v11, "Error: unknown type: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 376
    :pswitch_0
    invoke-interface {v5, v6}, Lorg/gjt/xpp/XmlPullParser;->readStartTag(Lorg/gjt/xpp/XmlStartTag;)V

    .line 378
    invoke-virtual {v6}, Lorg/dom4j/xpp/ProxyXmlStartTag;->getElement()Lorg/dom4j/Element;

    move-result-object v3

    .line 380
    .local v3, newElement:Lorg/dom4j/Element;
    if-eqz v4, :cond_1

    .line 381
    invoke-interface {v4, v3}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 386
    :goto_1
    move-object v4, v3

    .line 388
    goto :goto_0

    .line 383
    :cond_1
    invoke-interface {v0, v3}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    goto :goto_1

    .line 392
    .end local v3           #newElement:Lorg/dom4j/Element;
    :pswitch_1
    invoke-interface {v5, v1}, Lorg/gjt/xpp/XmlPullParser;->readEndTag(Lorg/gjt/xpp/XmlEndTag;)V

    .line 394
    if-eqz v4, :cond_0

    .line 395
    invoke-interface {v4}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v4

    .line 398
    goto :goto_0

    .line 402
    :pswitch_2
    invoke-interface {v5}, Lorg/gjt/xpp/XmlPullParser;->readContent()Ljava/lang/String;

    move-result-object v7

    .line 404
    .local v7, text:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 405
    invoke-interface {v4, v7}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    goto :goto_0

    .line 407
    :cond_2
    const-string v2, "Cannot have text content outside of the root document"

    .line 409
    .local v2, msg:Ljava/lang/String;
    new-instance v9, Lorg/dom4j/DocumentException;

    invoke-direct {v9, v2}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 373
    .end local v2           #msg:Ljava/lang/String;
    .end local v7           #text:Ljava/lang/String;
    :pswitch_3
    return-object v0

    .line 371
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public read(Ljava/io/File;)Lorg/dom4j/Document;
    .locals 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;,
            Lorg/gjt/xpp/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, systemID:Ljava/lang/String;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v1, v0}, Lorg/dom4j/io/XPPReader;->read(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    return-object v1
.end method

.method public read(Ljava/io/InputStream;)Lorg/dom4j/Document;
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;,
            Lorg/gjt/xpp/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XPPReader;->createReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XPPReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/InputStream;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1
    .parameter "in"
    .parameter "systemID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;,
            Lorg/gjt/xpp/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XPPReader;->createReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/dom4j/io/XPPReader;->read(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/Reader;)Lorg/dom4j/Document;
    .locals 1
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;,
            Lorg/gjt/xpp/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/dom4j/io/XPPReader;->getXPPParser()Lorg/gjt/xpp/XmlPullParser;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/gjt/xpp/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 189
    invoke-virtual {p0}, Lorg/dom4j/io/XPPReader;->parseDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1
    .parameter "reader"
    .parameter "systemID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;,
            Lorg/gjt/xpp/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Lorg/dom4j/io/XPPReader;->read(Ljava/io/Reader;)Lorg/dom4j/Document;

    move-result-object v0

    .line 262
    .local v0, document:Lorg/dom4j/Document;
    invoke-interface {v0, p2}, Lorg/dom4j/Document;->setName(Ljava/lang/String;)V

    .line 264
    return-object v0
.end method

.method public read(Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 1
    .parameter "systemID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;,
            Lorg/gjt/xpp/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 137
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 139
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XPPReader;->read(Ljava/net/URL;)Lorg/dom4j/Document;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/io/XPPReader;->read(Ljava/io/File;)Lorg/dom4j/Document;

    move-result-object v0

    goto :goto_0
.end method

.method public read(Ljava/net/URL;)Lorg/dom4j/Document;
    .locals 2
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;,
            Lorg/gjt/xpp/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, systemID:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/dom4j/io/XPPReader;->createReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/dom4j/io/XPPReader;->read(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v1

    return-object v1
.end method

.method public read([C)Lorg/dom4j/Document;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/dom4j/DocumentException;,
            Ljava/io/IOException;,
            Lorg/gjt/xpp/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p0}, Lorg/dom4j/io/XPPReader;->getXPPParser()Lorg/gjt/xpp/XmlPullParser;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/gjt/xpp/XmlPullParser;->setInput([C)V

    .line 213
    invoke-virtual {p0}, Lorg/dom4j/io/XPPReader;->parseDocument()Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public removeHandler(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 340
    invoke-virtual {p0}, Lorg/dom4j/io/XPPReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/DispatchHandler;->removeHandler(Ljava/lang/String;)Lorg/dom4j/ElementHandler;

    .line 341
    return-void
.end method

.method public setDefaultHandler(Lorg/dom4j/ElementHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 353
    invoke-virtual {p0}, Lorg/dom4j/io/XPPReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/DispatchHandler;->setDefaultHandler(Lorg/dom4j/ElementHandler;)V

    .line 354
    return-void
.end method

.method protected setDispatchHandler(Lorg/dom4j/io/DispatchHandler;)V
    .locals 0
    .parameter "dispatchHandler"

    .prologue
    .line 430
    iput-object p1, p0, Lorg/dom4j/io/XPPReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    .line 431
    return-void
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 0
    .parameter "documentFactory"

    .prologue
    .line 315
    iput-object p1, p0, Lorg/dom4j/io/XPPReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 316
    return-void
.end method

.method public setXPPFactory(Lorg/gjt/xpp/XmlPullParserFactory;)V
    .locals 0
    .parameter "xPPFactory"

    .prologue
    .line 286
    iput-object p1, p0, Lorg/dom4j/io/XPPReader;->xppFactory:Lorg/gjt/xpp/XmlPullParserFactory;

    .line 287
    return-void
.end method
