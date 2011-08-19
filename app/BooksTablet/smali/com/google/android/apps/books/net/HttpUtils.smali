.class public Lcom/google/android/apps/books/net/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 7
    .parameter "respEntity"

    .prologue
    .line 40
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    .line 41
    .local v1, header:Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 43
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, contentType:Ljava/lang/String;
    new-instance v3, Lorg/apache/http/message/BasicHeaderValueParser;

    invoke-direct {v3}, Lorg/apache/http/message/BasicHeaderValueParser;-><init>()V

    .line 45
    .local v3, parser:Lorg/apache/http/message/HeaderValueParser;
    invoke-static {v0, v3}, Lorg/apache/http/message/BasicHeaderValueParser;->parseElements(Ljava/lang/String;Lorg/apache/http/message/HeaderValueParser;)[Lorg/apache/http/HeaderElement;

    move-result-object v4

    .line 46
    .local v4, values:[Lorg/apache/http/HeaderElement;
    array-length v5, v4

    if-lez v5, :cond_0

    .line 47
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string v6, "charset"

    invoke-interface {v5, v6}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v2

    .line 48
    .local v2, param:Lorg/apache/http/NameValuePair;
    if-eqz v2, :cond_0

    .line 49
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 53
    .end local v0           #contentType:Ljava/lang/String;
    .end local v2           #param:Lorg/apache/http/NameValuePair;
    .end local v3           #parser:Lorg/apache/http/message/HeaderValueParser;
    .end local v4           #values:[Lorg/apache/http/HeaderElement;
    :goto_0
    return-object v5

    :cond_0
    const-string v5, "ISO-8859-1"

    goto :goto_0
.end method

.method public static parseXml(Lorg/apache/http/HttpEntity;Lorg/xml/sax/ContentHandler;)V
    .locals 6
    .parameter "entity"
    .parameter "contentHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 67
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/apps/books/net/HttpUtils;->getCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, encoding:Ljava/lang/String;
    invoke-static {v1}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 70
    .local v4, xmlEncoding:Landroid/util/Xml$Encoding;
    :try_start_1
    invoke-static {v2, v4, p1}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    .line 82
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 84
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/AssertionError;
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    .local v3, ioe:Ljava/io/IOException;
    invoke-virtual {v3, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 75
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    .end local v0           #e:Ljava/lang/AssertionError;
    .end local v1           #encoding:Ljava/lang/String;
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v4           #xmlEncoding:Landroid/util/Xml$Encoding;
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v5

    .line 76
    .restart local v1       #encoding:Ljava/lang/String;
    .restart local v4       #xmlEncoding:Landroid/util/Xml$Encoding;
    :catch_1
    move-exception v0

    .line 77
    .local v0, e:Lorg/xml/sax/SAXException;
    :try_start_3
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 78
    .restart local v3       #ioe:Ljava/io/IOException;
    invoke-virtual {v3, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 79
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
