.class final Landroid/view/ViewDebug$6;
.super Ljava/lang/Object;
.source "ViewDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->performViewCapture(Landroid/view/View;Z)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cache:[Landroid/graphics/Bitmap;

.field final synthetic val$captureView:Landroid/view/View;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$skpiChildren:Z


# direct methods
.method constructor <init>([Landroid/graphics/Bitmap;Landroid/view/View;ZLjava/util/concurrent/CountDownLatch;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1175
    iput-object p1, p0, Landroid/view/ViewDebug$6;->val$cache:[Landroid/graphics/Bitmap;

    iput-object p2, p0, Landroid/view/ViewDebug$6;->val$captureView:Landroid/view/View;

    iput-boolean p3, p0, Landroid/view/ViewDebug$6;->val$skpiChildren:Z

    iput-object p4, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1178
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewDebug$6;->val$cache:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/view/ViewDebug$6;->val$captureView:Landroid/view/View;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    iget-boolean v7, p0, Landroid/view/ViewDebug$6;->val$skpiChildren:Z

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_38
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_10} :catch_16

    .line 1188
    iget-object v2, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1190
    :goto_15
    return-void

    .line 1180
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 1182
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_18
    iget-object v2, p0, Landroid/view/ViewDebug$6;->val$cache:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/view/ViewDebug$6;->val$captureView:Landroid/view/View;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    iget-boolean v7, p0, Landroid/view/ViewDebug$6;->val$skpiChildren:Z

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_38
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_28} :catch_2e

    .line 1188
    :goto_28
    iget-object v2, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_15

    .line 1184
    :catch_2e
    move-exception v2

    move-object v1, v2

    .line 1185
    .local v1, e2:Ljava/lang/OutOfMemoryError;
    :try_start_30
    const-string v2, "View"

    const-string v3, "Out of memory for bitmap"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_38

    goto :goto_28

    .line 1188
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    .end local v1           #e2:Ljava/lang/OutOfMemoryError;
    :catchall_38
    move-exception v2

    iget-object v3, p0, Landroid/view/ViewDebug$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v2
.end method
