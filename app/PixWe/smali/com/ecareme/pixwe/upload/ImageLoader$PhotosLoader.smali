.class Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;
.super Ljava/lang/Thread;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/upload/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotosLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/upload/ImageLoader;


# direct methods
.method constructor <init>(Lcom/ecareme/pixwe/upload/ImageLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;->this$0:Lcom/ecareme/pixwe/upload/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 175
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;->this$0:Lcom/ecareme/pixwe/upload/ImageLoader;

    iget-object v5, v5, Lcom/ecareme/pixwe/upload/ImageLoader;->photosQueue:Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;

    invoke-static {v5}, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;->access$0(Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 176
    iget-object v5, p0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;->this$0:Lcom/ecareme/pixwe/upload/ImageLoader;

    iget-object v5, v5, Lcom/ecareme/pixwe/upload/ImageLoader;->photosQueue:Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;

    invoke-static {v5}, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;->access$0(Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :try_start_1
    iget-object v6, p0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;->this$0:Lcom/ecareme/pixwe/upload/ImageLoader;

    iget-object v6, v6, Lcom/ecareme/pixwe/upload/ImageLoader;->photosQueue:Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;

    invoke-static {v6}, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;->access$0(Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V

    .line 176
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;->this$0:Lcom/ecareme/pixwe/upload/ImageLoader;

    iget-object v5, v5, Lcom/ecareme/pixwe/upload/ImageLoader;->photosQueue:Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;

    invoke-static {v5}, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;->access$0(Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 182
    iget-object v5, p0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;->this$0:Lcom/ecareme/pixwe/upload/ImageLoader;

    iget-object v5, v5, Lcom/ecareme/pixwe/upload/ImageLoader;->photosQueue:Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;

    invoke-static {v5}, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;->access$0(Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v5

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 183
    :try_start_3
    iget-object v6, p0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;->this$0:Lcom/ecareme/pixwe/upload/ImageLoader;

    iget-object v6, v6, Lcom/ecareme/pixwe/upload/ImageLoader;->photosQueue:Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;

    invoke-static {v6}, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;->access$0(Lcom/ecareme/pixwe/upload/ImageLoader$PhotosQueue;)Ljava/util/Stack;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ecareme/pixwe/upload/ImageLoader$PhotoToLoad;

    .line 182
    .local v3, photoToLoad:Lcom/ecareme/pixwe/upload/ImageLoader$PhotoToLoad;
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 187
    :try_start_4
    iget-object v5, p0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;->this$0:Lcom/ecareme/pixwe/upload/ImageLoader;

    new-instance v6, Ljava/io/File;

    iget-object v7, v3, Lcom/ecareme/pixwe/upload/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/ecareme/pixwe/upload/ImageLoader;->access$0(Lcom/ecareme/pixwe/upload/ImageLoader;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 188
    .local v2, bmp:Landroid/graphics/Bitmap;
    iget-object v5, v3, Lcom/ecareme/pixwe/upload/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 189
    .local v4, tag:Ljava/lang/Object;
    if-eqz v4, :cond_2

    check-cast v4, Ljava/lang/String;

    .end local v4           #tag:Ljava/lang/Object;
    iget-object v5, v3, Lcom/ecareme/pixwe/upload/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 190
    new-instance v1, Lcom/ecareme/pixwe/upload/ImageLoader$BitmapDisplayer;

    iget-object v5, p0, Lcom/ecareme/pixwe/upload/ImageLoader$PhotosLoader;->this$0:Lcom/ecareme/pixwe/upload/ImageLoader;

    iget-object v6, v3, Lcom/ecareme/pixwe/upload/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-direct {v1, v5, v2, v6}, Lcom/ecareme/pixwe/upload/ImageLoader$BitmapDisplayer;-><init>(Lcom/ecareme/pixwe/upload/ImageLoader;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    .line 191
    .local v1, bd:Lcom/ecareme/pixwe/upload/ImageLoader$BitmapDisplayer;
    iget-object v5, v3, Lcom/ecareme/pixwe/upload/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 192
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 195
    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #bd:Lcom/ecareme/pixwe/upload/ImageLoader$BitmapDisplayer;
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    .end local v3           #photoToLoad:Lcom/ecareme/pixwe/upload/ImageLoader$PhotoToLoad;
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 201
    :goto_0
    return-void

    .line 176
    :catchall_0
    move-exception v6

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v6
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 198
    :catch_0
    move-exception v5

    goto :goto_0

    .line 182
    :catchall_1
    move-exception v6

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v6
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
.end method
