.class Lcom/nvidia/tegrazone/services/HTTP$FileResponseHandler;
.super Ljava/lang/Object;
.source "HTTP.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/tegrazone/services/HTTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileResponseHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field protected final file:Ljava/io/File;

.field protected final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .parameter "file"
    .parameter "url"

    .prologue
    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-object p1, p0, Lcom/nvidia/tegrazone/services/HTTP$FileResponseHandler;->file:Ljava/io/File;

    .line 510
    iput-object p2, p0, Lcom/nvidia/tegrazone/services/HTTP$FileResponseHandler;->url:Ljava/lang/String;

    .line 511
    return-void
.end method


# virtual methods
.method protected copyStreamToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 4
    .parameter "source"
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 532
    .local v0, buffer:[B
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 533
    .local v1, out:Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 534
    .local v2, read:I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 537
    if-eqz v1, :cond_0

    .line 539
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :cond_0
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 535
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 540
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Boolean;
    .locals 5
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 517
    .local v1, statusCode:I
    const/16 v2, 0x12c

    if-lt v1, v2, :cond_0

    .line 518
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Source not found at "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nvidia/tegrazone/services/HTTP$FileResponseHandler;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 519
    const-string v4, ", response code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 518
    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 522
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 523
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-nez v0, :cond_1

    .line 524
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 527
    :goto_0
    return-object v2

    :cond_1
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/nvidia/tegrazone/services/HTTP$FileResponseHandler;->file:Ljava/io/File;

    invoke-virtual {p0, v2, v3}, Lcom/nvidia/tegrazone/services/HTTP$FileResponseHandler;->copyStreamToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/nvidia/tegrazone/services/HTTP$FileResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
