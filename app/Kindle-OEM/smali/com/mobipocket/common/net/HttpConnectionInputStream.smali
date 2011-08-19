.class public Lcom/mobipocket/common/net/HttpConnectionInputStream;
.super Ljava/io/InputStream;
.source "HttpConnectionInputStream.java"


# instance fields
.field private _EndOfRange:I

.field private final _HttpConnection:Lcom/amazon/system/net/HttpConnection;

.field private _HttpInputStream:Ljava/io/InputStream;

.field private final _Url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/system/net/HttpConnection;Ljava/lang/String;)V
    .locals 1
    .parameter "httpConnection"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mobipocket/common/net/HttpConnectionInputStream;->_HttpConnection:Lcom/amazon/system/net/HttpConnection;

    .line 26
    iput-object p2, p0, Lcom/mobipocket/common/net/HttpConnectionInputStream;->_Url:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/mobipocket/common/net/HttpConnectionInputStream;->_HttpConnection:Lcom/amazon/system/net/HttpConnection;

    invoke-interface {v0}, Lcom/amazon/system/net/HttpConnection;->getMaxResponseSize()I

    move-result v0

    iput v0, p0, Lcom/mobipocket/common/net/HttpConnectionInputStream;->_EndOfRange:I

    .line 28
    invoke-interface {p1}, Lcom/amazon/system/net/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/net/HttpConnectionInputStream;->_HttpInputStream:Ljava/io/InputStream;

    .line 29
    return-void
.end method

.method private getNextInputStream()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mobipocket/common/net/HttpConnectionInputStream;->_HttpConnection:Lcom/amazon/system/net/HttpConnection;

    invoke-interface {v0}, Lcom/amazon/system/net/HttpConnection;->close()V

    .line 45
    iget-object v0, p0, Lcom/mobipocket/common/net/HttpConnectionInputStream;->_HttpConnection:Lcom/amazon/system/net/HttpConnection;

    iget-object v1, p0, Lcom/mobipocket/common/net/HttpConnectionInputStream;->_Url:Ljava/lang/String;

    iget v2, p0, Lcom/mobipocket/common/net/HttpConnectionInputStream;->_EndOfRange:I

    invoke-static {v0, v1, v2}, Lcom/mobipocket/common/net/WebLoader;->openHTTPConnection(Lcom/amazon/system/net/HttpConnection;Ljava/lang/String;I)I

    move-result v0

    .line 46
    sget v1, Lcom/mobipocket/common/net/WebLoader;->HTTP_PARTIAL_CONTENT:I

    if-ne v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/mobipocket/common/net/HttpConnectionInputStream;->_HttpConnection:Lcom/amazon/system/net/HttpConnection;

    invoke-interface {v0}, Lcom/amazon/system/net/HttpConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/mobipocket/common/net/HttpConnectionInputStream;->_HttpInputStream:Ljava/io/InputStream;

    .line 49
    iget v0, p0, Lcom/mobipocket/common/net/HttpConnectionInputStream;->_EndOfRange:I

    iget-object v1, p0, Lcom/mobipocket/common/net/HttpConnectionInputStream;->_HttpConnection:Lcom/amazon/system/net/HttpConnection;

    invoke-interface {v1}, Lcom/amazon/system/net/HttpConnection;->getMaxResponseSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/net/HttpConnectionInputStream;->_EndOfRange:I

    .line 53
    :cond_0
    return-void
.end method


# virtual methods
.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v1, p0, Lcom/mobipocket/common/net/HttpConnectionInputStream;->_HttpInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 34
    .local v0, temp:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/mobipocket/common/net/HttpConnectionInputStream;->getNextInputStream()V

    .line 37
    iget-object v1, p0, Lcom/mobipocket/common/net/HttpConnectionInputStream;->_HttpInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 39
    :cond_0
    return v0
.end method
