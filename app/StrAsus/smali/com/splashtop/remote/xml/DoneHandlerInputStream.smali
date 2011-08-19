.class final Lcom/splashtop/remote/xml/DoneHandlerInputStream;
.super Ljava/io/FilterInputStream;
.source "DomParser.java"


# instance fields
.field private done:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "stream"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 23
    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 4
    .parameter "bytes"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 27
    iget-boolean v2, p0, Lcom/splashtop/remote/xml/DoneHandlerInputStream;->done:Z

    if-nez v2, :cond_0

    .line 28
    const/4 v1, -0x1

    .line 30
    .local v1, result:I
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 36
    :goto_0
    if-eq v1, v3, :cond_0

    move v2, v1

    .line 41
    .end local v1           #result:I
    :goto_1
    return v2

    .line 31
    .restart local v1       #result:I
    :catch_0
    move-exception v0

    .line 32
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 33
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 34
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 40
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #result:I
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/splashtop/remote/xml/DoneHandlerInputStream;->done:Z

    move v2, v3

    .line 41
    goto :goto_1
.end method
