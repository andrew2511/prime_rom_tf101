.class final Lcom/android/gallery3d/provider/GalleryProvider$ImagePipeDataWriter;
.super Ljava/lang/Object;
.source "GalleryProvider.java"

# interfaces
.implements Landroid/content/ContentProvider$PipeDataWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/provider/GalleryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImagePipeDataWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/ContentProvider$PipeDataWriter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mImage:Lcom/android/gallery3d/data/PicasaImage;

.field final synthetic this$0:Lcom/android/gallery3d/provider/GalleryProvider;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/provider/GalleryProvider;Lcom/android/gallery3d/data/PicasaImage;)V
    .locals 0
    .parameter
    .parameter "image"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/gallery3d/provider/GalleryProvider$ImagePipeDataWriter;->this$0:Lcom/android/gallery3d/provider/GalleryProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p2, p0, Lcom/android/gallery3d/provider/GalleryProvider$ImagePipeDataWriter;->mImage:Lcom/android/gallery3d/data/PicasaImage;

    .line 223
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/provider/GalleryProvider;Lcom/android/gallery3d/data/PicasaImage;Lcom/android/gallery3d/provider/GalleryProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 218
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/provider/GalleryProvider$ImagePipeDataWriter;-><init>(Lcom/android/gallery3d/provider/GalleryProvider;Lcom/android/gallery3d/data/PicasaImage;)V

    return-void
.end method


# virtual methods
.method public writeDataToPipe(Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 11
    .parameter "output"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "opts"
    .parameter "args"

    .prologue
    .line 227
    iget-object v8, p0, Lcom/android/gallery3d/provider/GalleryProvider$ImagePipeDataWriter;->mImage:Lcom/android/gallery3d/data/PicasaImage;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/PicasaImage;->getPhotoEntry()Lcom/android/gallery3d/picasa/PhotoEntry;

    move-result-object v3

    .line 228
    .local v3, entry:Lcom/android/gallery3d/picasa/PhotoEntry;
    const/4 v4, 0x0

    .line 229
    .local v4, is:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 232
    .local v6, os:Ljava/io/OutputStream;
    :try_start_0
    iget-object v8, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->cachePathname:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget v8, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->cacheStatus:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_0

    .line 234
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v8, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->cachePathname:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .end local v4           #is:Ljava/io/InputStream;
    .local v5, is:Ljava/io/InputStream;
    move-object v4, v5

    .line 245
    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :goto_0
    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v7, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .end local v6           #os:Ljava/io/OutputStream;
    .local v7, os:Ljava/io/OutputStream;
    :try_start_1
    invoke-static {v4, v7}, Lcom/android/gallery3d/provider/GalleryProvider;->access$300(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    invoke-static {v4}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 251
    invoke-static {v7}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v6, v7

    .line 253
    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v6       #os:Ljava/io/OutputStream;
    :goto_1
    return-void

    .line 236
    :cond_0
    :try_start_2
    new-instance v0, Ljava/net/URL;

    iget-object v8, v3, Lcom/android/gallery3d/picasa/PhotoEntry;->contentUrl:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, contentUrl:Ljava/net/URL;
    iget-object v8, p0, Lcom/android/gallery3d/provider/GalleryProvider$ImagePipeDataWriter;->this$0:Lcom/android/gallery3d/provider/GalleryProvider;

    invoke-static {v8}, Lcom/android/gallery3d/provider/GalleryProvider;->access$200(Lcom/android/gallery3d/provider/GalleryProvider;)Lcom/android/gallery3d/data/DownloadCache;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/gallery3d/data/DownloadCache;->lookup(Ljava/net/URL;)Lcom/android/gallery3d/data/DownloadCache$Entry;

    move-result-object v1

    .line 238
    .local v1, downloadEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    if-eqz v1, :cond_1

    .line 239
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v8, v1, Lcom/android/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    invoke-direct {v5, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 242
    :cond_1
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto :goto_0

    .line 247
    .end local v0           #contentUrl:Ljava/net/URL;
    .end local v1           #downloadEntry:Lcom/android/gallery3d/data/DownloadCache$Entry;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 248
    .local v2, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v8, "GalleryProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fail to download: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 250
    invoke-static {v4}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 251
    invoke-static {v6}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 250
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    invoke-static {v4}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 251
    invoke-static {v6}, Lcom/android/gallery3d/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v8

    .line 250
    .end local v6           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v6       #os:Ljava/io/OutputStream;
    goto :goto_3

    .line 247
    .end local v6           #os:Ljava/io/OutputStream;
    .restart local v7       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v8

    move-object v2, v8

    move-object v6, v7

    .end local v7           #os:Ljava/io/OutputStream;
    .restart local v6       #os:Ljava/io/OutputStream;
    goto :goto_2
.end method
