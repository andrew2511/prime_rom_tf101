.class Lcom/ecareme/pixwe/media/Photographs$SetWallpaperThread;
.super Ljava/lang/Thread;
.source "Photographs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/Photographs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetWallpaperThread"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private final mFile:Ljava/io/File;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/os/Handler;Landroid/content/Context;Ljava/io/File;)V
    .locals 0
    .parameter "bitmap"
    .parameter "handler"
    .parameter "context"
    .parameter "file"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/ecareme/pixwe/media/Photographs$SetWallpaperThread;->mBitmap:Landroid/graphics/Bitmap;

    .line 88
    iput-object p2, p0, Lcom/ecareme/pixwe/media/Photographs$SetWallpaperThread;->mHandler:Landroid/os/Handler;

    .line 89
    iput-object p3, p0, Lcom/ecareme/pixwe/media/Photographs$SetWallpaperThread;->mContext:Landroid/content/Context;

    .line 90
    iput-object p4, p0, Lcom/ecareme/pixwe/media/Photographs$SetWallpaperThread;->mFile:Ljava/io/File;

    .line 91
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Photographs$SetWallpaperThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/Photographs$SetWallpaperThread;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/content/Context;->setWallpaper(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Photographs$SetWallpaperThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 101
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Photographs$SetWallpaperThread;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 103
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 98
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v1, "Wallpaper"

    const-string v2, "Failed to set wallpaper."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Photographs$SetWallpaperThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 101
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Photographs$SetWallpaperThread;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 99
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 100
    iget-object v2, p0, Lcom/ecareme/pixwe/media/Photographs$SetWallpaperThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 101
    iget-object v2, p0, Lcom/ecareme/pixwe/media/Photographs$SetWallpaperThread;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 102
    throw v1
.end method
