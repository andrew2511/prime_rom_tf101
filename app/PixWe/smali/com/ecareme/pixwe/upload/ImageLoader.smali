.class public Lcom/ecareme/pixwe/upload/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/upload/ImageLoader$BitmapDisplayer;,
        Lcom/ecareme/pixwe/upload/ImageLoader$PhotoToLoad;,
        Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;,
        Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;
    }
.end annotation


# instance fields
.field photoLoaderThread:Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;

.field photosQueue:Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;

.field final stub_id:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const v0, 0x7f02005d

    iput v0, p0, Lcom/ecareme/pixwe/upload/ImageLoader;->stub_id:I

    .line 31
    new-instance v0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;-><init>(Lcom/ecareme/pixwe/upload/ImageLoader;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/upload/ImageLoader;->photosQueue:Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;

    .line 33
    new-instance v0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;-><init>(Lcom/ecareme/pixwe/upload/ImageLoader;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/upload/ImageLoader;->photoLoaderThread:Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;

    .line 39
    iget-object v0, p0, Lcom/ecareme/pixwe/upload/ImageLoader;->photoLoaderThread:Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;->setPriority(I)V

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/upload/ImageLoader;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/upload/ImageLoader;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "f"

    .prologue
    const/16 v9, 0x14

    const/4 v8, 0x0

    .line 111
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 112
    .local v2, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 113
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v7, 0x0

    invoke-static {v6, v7, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 116
    const/16 v0, 0x14

    .line 117
    .local v0, REQUIRED_SIZE:I
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .local v5, width_tmp:I
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 118
    .local v1, height_tmp:I
    const/4 v4, 0x1

    .line 120
    .local v4, scale:I
    :goto_0
    div-int/lit8 v6, v5, 0x2

    if-lt v6, v9, :cond_0

    div-int/lit8 v6, v1, 0x2

    if-ge v6, v9, :cond_1

    .line 128
    :cond_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 130
    .local v3, o2:Landroid/graphics/BitmapFactory$Options;
    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 131
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 133
    .end local v0           #REQUIRED_SIZE:I
    .end local v1           #height_tmp:I
    .end local v2           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #o2:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #scale:I
    .end local v5           #width_tmp:I
    :goto_1
    return-object v6

    .line 122
    .restart local v0       #REQUIRED_SIZE:I
    .restart local v1       #height_tmp:I
    .restart local v2       #o:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #scale:I
    .restart local v5       #width_tmp:I
    :cond_1
    div-int/lit8 v5, v5, 0x2

    .line 123
    div-int/lit8 v1, v1, 0x2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    mul-int/lit8 v4, v4, 0x2

    .line 119
    goto :goto_0

    .line 132
    .end local v0           #REQUIRED_SIZE:I
    .end local v1           #height_tmp:I
    .end local v2           #o:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #scale:I
    .end local v5           #width_tmp:I
    :catch_0
    move-exception v6

    move-object v6, v8

    .line 133
    goto :goto_1
.end method

.method private getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "url"

    .prologue
    .line 103
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/ecareme/pixwe/upload/ImageLoader;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, bitmap:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private queuePhoto(Ljava/lang/String;Landroid/app/Activity;Landroid/widget/ImageView;)V
    .locals 3
    .parameter "url"
    .parameter "activity"
    .parameter "imageView"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/ecareme/pixwe/upload/ImageLoader;->photosQueue:Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;

    invoke-virtual {v1, p3}, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;->Clean(Landroid/widget/ImageView;)V

    .line 68
    new-instance v0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotoToLoad;

    invoke-direct {v0, p0, p1, p3}, Lcom/ecareme/pixwe/upload/ImageLoader$PhotoToLoad;-><init>(Lcom/ecareme/pixwe/upload/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 69
    .local v0, p:Lcom/ecareme/pixwe/upload/ImageLoader$PhotoToLoad;
    iget-object v1, p0, Lcom/ecareme/pixwe/upload/ImageLoader;->photosQueue:Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;

    invoke-static {v1}, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;->access$0(Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v1

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/ecareme/pixwe/upload/ImageLoader;->photosQueue:Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;

    invoke-static {v2}, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;->access$0(Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v2, p0, Lcom/ecareme/pixwe/upload/ImageLoader;->photosQueue:Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;

    invoke-static {v2}, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;->access$0(Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 69
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v1, p0, Lcom/ecareme/pixwe/upload/ImageLoader;->photoLoaderThread:Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_0

    .line 76
    iget-object v1, p0, Lcom/ecareme/pixwe/upload/ImageLoader;->photoLoaderThread:Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;->start()V

    .line 77
    :cond_0
    return-void

    .line 69
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public DisplayImage(Ljava/lang/String;Landroid/app/Activity;Landroid/widget/ImageView;)V
    .locals 2
    .parameter "url"
    .parameter "activity"
    .parameter "imageView"

    .prologue
    .line 60
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/ecareme/pixwe/upload/ImageLoader;->decodeFile(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    return-void
.end method

.method public clearCache()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public stopThread()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ecareme/pixwe/upload/ImageLoader;->photoLoaderThread:Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;->interrupt()V

    .line 150
    return-void
.end method
