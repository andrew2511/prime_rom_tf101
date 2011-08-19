.class public abstract Lcom/splashtop/remote/xml/BaseXmlParser;
.super Ljava/lang/Object;
.source "BaseXmlParser.java"

# interfaces
.implements Lcom/splashtop/remote/xml/XmlParser;


# instance fields
.field final defaultUrl:Ljava/net/URL;

.field final feedUrl:Ljava/net/URL;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "feedUrl"
    .parameter "defaultUrl"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/splashtop/remote/xml/BaseXmlParser;->feedUrl:Ljava/net/URL;

    .line 16
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/splashtop/remote/xml/BaseXmlParser;->defaultUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-void

    .line 17
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 18
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected getInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 24
    :try_start_0
    iget-object v2, p0, Lcom/splashtop/remote/xml/BaseXmlParser;->feedUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 29
    :goto_0
    return-object v2

    .line 25
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 27
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lcom/splashtop/remote/xml/BaseXmlParser;->defaultUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 28
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 29
    .local v1, e1:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method
