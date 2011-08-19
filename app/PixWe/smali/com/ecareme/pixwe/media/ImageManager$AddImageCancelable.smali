.class Lcom/ecareme/pixwe/media/ImageManager$AddImageCancelable;
.super Lcom/ecareme/pixwe/media/BaseCancelable;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AddImageCancelable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ecareme/pixwe/media/BaseCancelable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCr:Landroid/content/ContentResolver;

.field private final mJpegData:[B

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ContentResolver;ILandroid/graphics/Bitmap;[B)V
    .locals 2
    .parameter "uri"
    .parameter "cr"
    .parameter "orientation"
    .parameter "source"
    .parameter "jpegData"

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/BaseCancelable;-><init>()V

    .line 228
    if-nez p4, :cond_0

    if-eqz p5, :cond_1

    :cond_0
    if-nez p1, :cond_2

    .line 229
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_2
    iput-object p1, p0, Lcom/ecareme/pixwe/media/ImageManager$AddImageCancelable;->mUri:Landroid/net/Uri;

    .line 232
    iput-object p2, p0, Lcom/ecareme/pixwe/media/ImageManager$AddImageCancelable;->mCr:Landroid/content/ContentResolver;

    .line 233
    iput-object p5, p0, Lcom/ecareme/pixwe/media/ImageManager$AddImageCancelable;->mJpegData:[B

    .line 234
    return-void
.end method


# virtual methods
.method protected bridge synthetic execute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/ImageManager$AddImageCancelable;->execute()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected execute()Ljava/lang/Void;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 238
    const/4 v7, 0x0

    .line 240
    .local v7, complete:Z
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "mini_thumb_magic"

    aput-object v1, v2, v0

    .line 241
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ImageManager$AddImageCancelable;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/ImageManager$AddImageCancelable;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 243
    .local v6, c:Landroid/database/Cursor;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 247
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 248
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "mini_thumb_magic"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ImageManager$AddImageCancelable;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/ImageManager$AddImageCancelable;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v10, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 250
    const/4 v9, 0x0

    .line 252
    .local v9, outputStream:Ljava/io/OutputStream;
    :try_start_3
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ImageManager$AddImageCancelable;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/ImageManager$AddImageCancelable;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v9

    .line 253
    if-eqz v9, :cond_0

    .line 254
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ImageManager$AddImageCancelable;->mJpegData:[B

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 260
    :cond_0
    :try_start_4
    invoke-static {v9}, Lcom/ecareme/pixwe/media/Util;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 262
    :goto_0
    const/4 v7, 0x1

    .line 265
    if-nez v7, :cond_1

    .line 267
    :try_start_5
    iget-object v0, p0, Lcom/ecareme/pixwe/media/ImageManager$AddImageCancelable;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/ImageManager$AddImageCancelable;->mUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 263
    :cond_1
    :goto_1
    return-object v11

    .line 244
    .end local v9           #outputStream:Ljava/io/OutputStream;
    .end local v10           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    .line 245
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 246
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 264
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    .line 265
    if-nez v7, :cond_2

    .line 267
    :try_start_7
    iget-object v1, p0, Lcom/ecareme/pixwe/media/ImageManager$AddImageCancelable;->mCr:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/ecareme/pixwe/media/ImageManager$AddImageCancelable;->mUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 272
    :cond_2
    :goto_2
    throw v0

    .line 256
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #outputStream:Ljava/io/OutputStream;
    .restart local v10       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 258
    .local v8, ex:Ljava/io/IOException;
    :try_start_8
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Cannot open file: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ecareme/pixwe/media/ImageManager$AddImageCancelable;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 260
    :try_start_9
    invoke-static {v9}, Lcom/ecareme/pixwe/media/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 259
    .end local v8           #ex:Ljava/io/IOException;
    :catchall_2
    move-exception v0

    .line 260
    invoke-static {v9}, Lcom/ecareme/pixwe/media/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 261
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 268
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #outputStream:Ljava/io/OutputStream;
    .end local v10           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v1

    goto :goto_2

    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #outputStream:Ljava/io/OutputStream;
    .restart local v10       #values:Landroid/content/ContentValues;
    :catch_2
    move-exception v0

    goto :goto_1
.end method
