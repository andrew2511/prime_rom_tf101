.class public Lorg/scribe/utils/StreamUtils;
.super Ljava/lang/Object;
.source "StreamUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStreamContents(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .parameter "is"

    .prologue
    .line 20
    const-string v5, "Cannot get String from a null object"

    invoke-static {p0, v5}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    const/high16 v5, 0x1

    :try_start_0
    new-array v0, v5, [C

    .line 24
    .local v0, buffer:[C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .local v3, out:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v1, p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 29
    .local v1, in:Ljava/io/Reader;
    :cond_0
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v1, v0, v5, v6}, Ljava/io/Reader;->read([CII)I

    move-result v4

    .line 30
    .local v4, read:I
    if-lez v4, :cond_1

    .line 32
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 34
    :cond_1
    if-gez v4, :cond_0

    .line 35
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 37
    .end local v0           #buffer:[C
    .end local v1           #in:Ljava/io/Reader;
    .end local v3           #out:Ljava/lang/StringBuilder;
    .end local v4           #read:I
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 39
    .local v2, ioe:Ljava/io/IOException;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Error while reading response body"

    invoke-direct {v5, v6, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method
