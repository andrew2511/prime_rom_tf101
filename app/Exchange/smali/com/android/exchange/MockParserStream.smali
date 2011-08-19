.class public Lcom/android/exchange/MockParserStream;
.super Ljava/io/InputStream;
.source "MockParserStream.java"


# instance fields
.field array:[I

.field pos:I


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/MockParserStream;->array:[I

    iget v2, p0, Lcom/android/exchange/MockParserStream;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/exchange/MockParserStream;->pos:I

    aget v1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 43
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 44
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "End of stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
