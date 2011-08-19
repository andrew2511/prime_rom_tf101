.class public abstract Lcom/google/android/feeds/xml/net/XmlContentHandler;
.super Ljava/net/ContentHandler;
.source "XmlContentHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/net/ContentHandler;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    .local p0, this:Lcom/google/android/feeds/xml/net/XmlContentHandler;,"Lcom/google/android/feeds/xml/net/XmlContentHandler<TT;>;"
    invoke-direct {p0}, Ljava/net/ContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getCharSet(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 1
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/google/android/feeds/xml/net/XmlContentHandler;,"Lcom/google/android/feeds/xml/net/XmlContentHandler<TT;>;"
    invoke-static {p1}, Lcom/google/android/feeds/core/net/ContentHandlerUtil;->getCharSet(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getContent()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .locals 7
    .parameter "connection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URLConnection;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Lcom/google/android/feeds/xml/net/XmlContentHandler;,"Lcom/google/android/feeds/xml/net/XmlContentHandler<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/feeds/xml/net/XmlContentHandler;->getInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v3

    .line 57
    .local v3, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/feeds/xml/net/XmlContentHandler;->getCharSet(Ljava/net/URLConnection;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 59
    .local v2, encoding:Ljava/lang/String;
    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v1

    .line 60
    .local v1, e:Landroid/util/Xml$Encoding;
    invoke-virtual {p0}, Lcom/google/android/feeds/xml/net/XmlContentHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    .line 61
    .local v0, contentHandler:Lorg/xml/sax/ContentHandler;
    invoke-static {v3, v1, v0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/feeds/xml/net/XmlContentHandler;->getContent()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .line 70
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    return-object v6

    .line 63
    .end local v0           #contentHandler:Lorg/xml/sax/ContentHandler;
    .end local v1           #e:Landroid/util/Xml$Encoding;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 64
    .local v1, e:Lorg/xml/sax/SAXException;
    :try_start_2
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, message:Ljava/lang/String;
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 66
    .local v4, ioe:Ljava/io/IOException;
    invoke-virtual {v4, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 67
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    .end local v1           #e:Lorg/xml/sax/SAXException;
    .end local v2           #encoding:Ljava/lang/String;
    .end local v4           #ioe:Ljava/io/IOException;
    .end local v5           #message:Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v6
.end method

.method protected abstract getContentHandler()Lorg/xml/sax/ContentHandler;
.end method

.method protected getInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .locals 1
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/google/android/feeds/xml/net/XmlContentHandler;,"Lcom/google/android/feeds/xml/net/XmlContentHandler<TT;>;"
    invoke-static {p1}, Lcom/google/android/feeds/core/net/ContentHandlerUtil;->getUncompressedInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
