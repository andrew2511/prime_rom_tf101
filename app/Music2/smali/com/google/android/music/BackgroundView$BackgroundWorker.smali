.class Lcom/google/android/music/BackgroundView$BackgroundWorker;
.super Lcom/google/android/music/Worker;
.source "BackgroundView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/BackgroundView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/BackgroundView;


# direct methods
.method public constructor <init>(Lcom/google/android/music/BackgroundView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/android/music/BackgroundView$BackgroundWorker;->this$0:Lcom/google/android/music/BackgroundView;

    .line 270
    invoke-direct {p0, p2}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    .line 271
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 275
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 276
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 277
    .local v1, newAlbumId:J
    iget-object v4, p0, Lcom/google/android/music/BackgroundView$BackgroundWorker;->this$0:Lcom/google/android/music/BackgroundView;

    invoke-static {v4}, Lcom/google/android/music/BackgroundView;->access$200(Lcom/google/android/music/BackgroundView;)J

    move-result-wide v4

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 306
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v4, p0, Lcom/google/android/music/BackgroundView$BackgroundWorker;->this$0:Lcom/google/android/music/BackgroundView;

    invoke-static {v4, v1, v2}, Lcom/google/android/music/BackgroundView;->access$202(Lcom/google/android/music/BackgroundView;J)J

    .line 283
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_2

    .line 284
    iget-object v4, p0, Lcom/google/android/music/BackgroundView$BackgroundWorker;->this$0:Lcom/google/android/music/BackgroundView;

    invoke-static {v4}, Lcom/google/android/music/BackgroundView;->access$300(Lcom/google/android/music/BackgroundView;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 291
    .local v3, nextBitmap:Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    move-object v0, v3

    .line 292
    .local v0, finalNextBitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/google/android/music/BackgroundView$BackgroundWorker;->this$0:Lcom/google/android/music/BackgroundView;

    iget-object v4, v4, Lcom/google/android/music/BackgroundView;->mAnimation:Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;

    iget-object v5, p0, Lcom/google/android/music/BackgroundView$BackgroundWorker;->this$0:Lcom/google/android/music/BackgroundView;

    invoke-static {v5}, Lcom/google/android/music/BackgroundView;->access$400(Lcom/google/android/music/BackgroundView;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;->initBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 293
    iget-object v4, p0, Lcom/google/android/music/BackgroundView$BackgroundWorker;->this$0:Lcom/google/android/music/BackgroundView;

    iget-object v4, v4, Lcom/google/android/music/BackgroundView;->mAnimation:Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;->setDuration(J)V

    .line 295
    iget-object v4, p0, Lcom/google/android/music/BackgroundView$BackgroundWorker;->this$0:Lcom/google/android/music/BackgroundView;

    invoke-virtual {v4}, Lcom/google/android/music/BackgroundView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 296
    iget-object v4, p0, Lcom/google/android/music/BackgroundView$BackgroundWorker;->this$0:Lcom/google/android/music/BackgroundView;

    iget-object v5, p0, Lcom/google/android/music/BackgroundView$BackgroundWorker;->this$0:Lcom/google/android/music/BackgroundView;

    invoke-static {v5}, Lcom/google/android/music/BackgroundView;->access$500(Lcom/google/android/music/BackgroundView;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/music/BackgroundView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 286
    .end local v0           #finalNextBitmap:Landroid/graphics/Bitmap;
    .end local v3           #nextBitmap:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v4, p0, Lcom/google/android/music/BackgroundView$BackgroundWorker;->this$0:Lcom/google/android/music/BackgroundView;

    invoke-virtual {v4}, Lcom/google/android/music/BackgroundView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v2}, Lcom/google/android/music/utils/BackgroundUtils;->getAdaptedBitmap(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 287
    .restart local v3       #nextBitmap:Landroid/graphics/Bitmap;
    if-nez v3, :cond_1

    .line 288
    iget-object v4, p0, Lcom/google/android/music/BackgroundView$BackgroundWorker;->this$0:Lcom/google/android/music/BackgroundView;

    invoke-static {v4}, Lcom/google/android/music/BackgroundView;->access$300(Lcom/google/android/music/BackgroundView;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    .line 298
    .restart local v0       #finalNextBitmap:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v4, p0, Lcom/google/android/music/BackgroundView$BackgroundWorker;->this$0:Lcom/google/android/music/BackgroundView;

    invoke-static {v4, v0}, Lcom/google/android/music/BackgroundView;->access$402(Lcom/google/android/music/BackgroundView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 299
    iget-object v4, p0, Lcom/google/android/music/BackgroundView$BackgroundWorker;->this$0:Lcom/google/android/music/BackgroundView;

    iget-object v5, p0, Lcom/google/android/music/BackgroundView$BackgroundWorker;->this$0:Lcom/google/android/music/BackgroundView;

    iget-object v5, v5, Lcom/google/android/music/BackgroundView;->mAnimation:Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;

    invoke-static {v4, v5}, Lcom/google/android/music/BackgroundView;->access$602(Lcom/google/android/music/BackgroundView;Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;)Lcom/google/android/music/BackgroundView$BitmapTransitionAnimation;

    .line 300
    iget-object v4, p0, Lcom/google/android/music/BackgroundView$BackgroundWorker;->this$0:Lcom/google/android/music/BackgroundView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/android/music/BackgroundView;->access$702(Lcom/google/android/music/BackgroundView;J)J

    goto :goto_0

    .line 304
    .end local v0           #finalNextBitmap:Landroid/graphics/Bitmap;
    .end local v1           #newAlbumId:J
    .end local v3           #nextBitmap:Landroid/graphics/Bitmap;
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown message type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
