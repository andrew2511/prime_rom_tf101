.class public Lcom/ecareme/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final DEFULT_BUFFER_LENGHT:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkHttpImage(Ljava/lang/String;)Z
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    .line 32
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 33
    .local v0, conn:Ljava/net/HttpURLConnection;
    const/16 v2, 0xc8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    .line 37
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    :goto_0
    return v2

    .restart local v0       #conn:Ljava/net/HttpURLConnection;
    :cond_0
    move v2, v4

    .line 33
    goto :goto_0

    .line 35
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/io/IOException;
    move v2, v4

    .line 37
    goto :goto_0
.end method

.method public static closeQuitely(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 120
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeQuitely(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .parameter "in"
    .parameter "out"

    .prologue
    .line 80
    invoke-static {p0}, Lcom/ecareme/utils/IOUtils;->closeQuitely(Ljava/io/InputStream;)V

    .line 81
    invoke-static {p1}, Lcom/ecareme/utils/IOUtils;->closeQuitely(Ljava/io/OutputStream;)V

    .line 82
    return-void
.end method

.method public static closeQuitely(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 132
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    :goto_1
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 144
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static closeQuitely(Ljava/io/Reader;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 88
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static closeQuitely(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 0
    .parameter "in"
    .parameter "out"

    .prologue
    .line 74
    invoke-static {p0}, Lcom/ecareme/utils/IOUtils;->closeQuitely(Ljava/io/Reader;)V

    .line 75
    invoke-static {p1}, Lcom/ecareme/utils/IOUtils;->closeQuitely(Ljava/io/Writer;)V

    .line 76
    return-void
.end method

.method public static closeQuitely(Ljava/io/Writer;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 100
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    :goto_1
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 110
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 112
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static copyIO(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    const/16 v0, 0x2000

    invoke-static {p0, p1, v0}, Lcom/ecareme/utils/IOUtils;->copyIO(Ljava/io/InputStream;Ljava/io/OutputStream;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copyIO(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    .locals 6
    .parameter "in"
    .parameter "out"
    .parameter "buffer_size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const-wide/16 v1, 0x0

    .line 44
    .local v1, count:J
    new-array v0, p2, [B

    .line 45
    .local v0, buffer:[B
    const/4 v3, 0x0

    .line 46
    .local v3, n:I
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 51
    return-wide v1

    .line 48
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 49
    int-to-long v4, v3

    add-long/2addr v1, v4

    goto :goto_0
.end method

.method public static copyIO(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 2
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/16 v0, 0x2000

    invoke-static {p0, p1, v0}, Lcom/ecareme/utils/IOUtils;->copyIO(Ljava/io/Reader;Ljava/io/Writer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static copyIO(Ljava/io/Reader;Ljava/io/Writer;I)J
    .locals 6
    .parameter "in"
    .parameter "out"
    .parameter "buffer_size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    const-wide/16 v1, 0x0

    .line 62
    .local v1, count:J
    new-array v0, p2, [C

    .line 63
    .local v0, buffer:[C
    const/4 v3, 0x0

    .line 64
    .local v3, n:I
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 69
    return-wide v1

    .line 66
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/Writer;->write([CII)V

    .line 67
    int-to-long v4, v3

    add-long/2addr v1, v4

    goto :goto_0
.end method
