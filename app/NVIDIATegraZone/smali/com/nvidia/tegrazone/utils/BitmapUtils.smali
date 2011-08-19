.class public Lcom/nvidia/tegrazone/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final IO_BUFFER_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "Panoramio"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeStream(Ljava/io/Closeable;)V
    .locals 3
    .parameter "stream"

    .prologue
    .line 80
    if-eqz p0, :cond_0

    .line 82
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Panoramio"

    const-string v2, "Could not close stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 101
    .local v0, b:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, read:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 104
    return-void

    .line 102
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "url"

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 52
    .local v4, in:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 55
    .local v6, out:Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v8

    const/16 v9, 0x1000

    invoke-direct {v5, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v4           #in:Ljava/io/InputStream;
    .local v5, in:Ljava/io/InputStream;
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    .local v2, dataStream:Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x1000

    invoke-direct {v7, v2, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    .end local v6           #out:Ljava/io/BufferedOutputStream;
    .local v7, out:Ljava/io/BufferedOutputStream;
    :try_start_2
    invoke-static {v5, v7}, Lcom/nvidia/tegrazone/utils/BitmapUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 60
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 62
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 63
    .local v1, data:[B
    const/4 v8, 0x0

    array-length v9, v1

    invoke-static {v1, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 67
    invoke-static {v5}, Lcom/nvidia/tegrazone/utils/BitmapUtils;->closeStream(Ljava/io/Closeable;)V

    .line 68
    invoke-static {v7}, Lcom/nvidia/tegrazone/utils/BitmapUtils;->closeStream(Ljava/io/Closeable;)V

    move-object v6, v7

    .end local v7           #out:Ljava/io/BufferedOutputStream;
    .restart local v6       #out:Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 71
    .end local v1           #data:[B
    .end local v2           #dataStream:Ljava/io/ByteArrayOutputStream;
    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 64
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 65
    .local v3, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v8, "Panoramio"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not load Bitmap from: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    invoke-static {v4}, Lcom/nvidia/tegrazone/utils/BitmapUtils;->closeStream(Ljava/io/Closeable;)V

    .line 68
    invoke-static {v6}, Lcom/nvidia/tegrazone/utils/BitmapUtils;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 66
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 67
    :goto_2
    invoke-static {v4}, Lcom/nvidia/tegrazone/utils/BitmapUtils;->closeStream(Ljava/io/Closeable;)V

    .line 68
    invoke-static {v6}, Lcom/nvidia/tegrazone/utils/BitmapUtils;->closeStream(Ljava/io/Closeable;)V

    .line 69
    throw v8

    .line 66
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_2

    .end local v4           #in:Ljava/io/InputStream;
    .end local v6           #out:Ljava/io/BufferedOutputStream;
    .restart local v2       #dataStream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    .restart local v7       #out:Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7           #out:Ljava/io/BufferedOutputStream;
    .restart local v6       #out:Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_2

    .line 64
    .end local v2           #dataStream:Ljava/io/ByteArrayOutputStream;
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catch_1
    move-exception v8

    move-object v3, v8

    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_1

    .end local v4           #in:Ljava/io/InputStream;
    .end local v6           #out:Ljava/io/BufferedOutputStream;
    .restart local v2       #dataStream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    .restart local v7       #out:Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v8

    move-object v3, v8

    move-object v6, v7

    .end local v7           #out:Ljava/io/BufferedOutputStream;
    .restart local v6       #out:Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_1
.end method
