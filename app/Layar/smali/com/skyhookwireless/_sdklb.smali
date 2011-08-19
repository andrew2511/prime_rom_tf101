.class final Lcom/skyhookwireless/_sdklb;
.super Lcom/skyhookwireless/_sdkkb;


# instance fields
.field _sdke:Lorg/apache/http/HttpEntity;


# direct methods
.method constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/skyhookwireless/_sdkkb;-><init>()V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/skyhookwireless/_sdklb;->_sdka:I

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/_sdklb;->_sdke:Lorg/apache/http/HttpEntity;

    iget-object v0, p0, Lcom/skyhookwireless/_sdklb;->_sdke:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdklb;->_sdke:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/_sdklb;->_sdkd:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/skyhookwireless/_sdklb;->_sdke:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/skyhookwireless/_sdklb;->_sdkc:J

    iget-object v0, p0, Lcom/skyhookwireless/_sdklb;->_sdke:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/skyhookwireless/_sdklb;->_sdke:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/skyhookwireless/_sdklb;->_sdkb:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public _sdkd()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/skyhookwireless/_sdkkb;->_sdkd()V

    iget-object v0, p0, Lcom/skyhookwireless/_sdklb;->_sdke:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    return-void
.end method
