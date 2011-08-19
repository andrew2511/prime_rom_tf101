.class Lcom/android/gallery3d/app/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/VideoView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/VideoView;)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 9
    .parameter "mp"

    .prologue
    const/16 v8, 0x1e

    const/16 v4, 0x1d

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 276
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/VideoView;->access$202(Lcom/android/gallery3d/app/VideoView;I)I

    .line 279
    invoke-virtual {p1, v5, v5}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 282
    .local v0, data:Landroid/media/Metadata;
    if-eqz v0, :cond_a

    .line 283
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_0
    move v3, v6

    :goto_0
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/VideoView;->access$302(Lcom/android/gallery3d/app/VideoView;Z)Z

    .line 285
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v0, v8}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v8}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_1
    move v3, v6

    :goto_1
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/VideoView;->access$402(Lcom/android/gallery3d/app/VideoView;Z)Z

    .line 287
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    const/16 v3, 0x1f

    invoke-virtual {v0, v3}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x1f

    invoke-virtual {v0, v3}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_2
    move v3, v6

    :goto_2
    invoke-static {v2, v3}, Lcom/android/gallery3d/app/VideoView;->access$502(Lcom/android/gallery3d/app/VideoView;Z)Z

    .line 293
    :goto_3
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$600(Lcom/android/gallery3d/app/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 294
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$600(Lcom/android/gallery3d/app/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v3}, Lcom/android/gallery3d/app/VideoView;->access$700(Lcom/android/gallery3d/app/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 296
    :cond_3
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$800(Lcom/android/gallery3d/app/VideoView;)Lcom/android/gallery3d/app/MediaController;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 297
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$800(Lcom/android/gallery3d/app/VideoView;)Lcom/android/gallery3d/app/MediaController;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/gallery3d/app/MediaController;->setEnabled(Z)V

    .line 299
    :cond_4
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/VideoView;->access$002(Lcom/android/gallery3d/app/VideoView;I)I

    .line 300
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/VideoView;->access$102(Lcom/android/gallery3d/app/VideoView;I)I

    .line 302
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$900(Lcom/android/gallery3d/app/VideoView;)I

    move-result v1

    .line 303
    .local v1, seekToPosition:I
    if-eqz v1, :cond_5

    .line 304
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/app/VideoView;->seekTo(I)V

    .line 306
    :cond_5
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$000(Lcom/android/gallery3d/app/VideoView;)I

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$100(Lcom/android/gallery3d/app/VideoView;)I

    move-result v2

    if-eqz v2, :cond_d

    .line 308
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v3}, Lcom/android/gallery3d/app/VideoView;->access$000(Lcom/android/gallery3d/app/VideoView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v4}, Lcom/android/gallery3d/app/VideoView;->access$100(Lcom/android/gallery3d/app/VideoView;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 309
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$1000(Lcom/android/gallery3d/app/VideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v3}, Lcom/android/gallery3d/app/VideoView;->access$000(Lcom/android/gallery3d/app/VideoView;)I

    move-result v3

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$1100(Lcom/android/gallery3d/app/VideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v3}, Lcom/android/gallery3d/app/VideoView;->access$100(Lcom/android/gallery3d/app/VideoView;)I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 313
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$1200(Lcom/android/gallery3d/app/VideoView;)I

    move-result v2

    if-ne v2, v7, :cond_b

    .line 314
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/VideoView;->start()V

    .line 315
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$800(Lcom/android/gallery3d/app/VideoView;)Lcom/android/gallery3d/app/MediaController;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 316
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$800(Lcom/android/gallery3d/app/VideoView;)Lcom/android/gallery3d/app/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MediaController;->show()V

    .line 333
    :cond_6
    :goto_4
    return-void

    .end local v1           #seekToPosition:I
    :cond_7
    move v3, v5

    .line 283
    goto/16 :goto_0

    :cond_8
    move v3, v5

    .line 285
    goto/16 :goto_1

    :cond_9
    move v3, v5

    .line 287
    goto/16 :goto_2

    .line 290
    :cond_a
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    iget-object v3, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    iget-object v4, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v4, v6}, Lcom/android/gallery3d/app/VideoView;->access$502(Lcom/android/gallery3d/app/VideoView;Z)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/VideoView;->access$402(Lcom/android/gallery3d/app/VideoView;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/VideoView;->access$302(Lcom/android/gallery3d/app/VideoView;Z)Z

    goto/16 :goto_3

    .line 318
    .restart local v1       #seekToPosition:I
    :cond_b
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/VideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_6

    if-nez v1, :cond_c

    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/VideoView;->getCurrentPosition()I

    move-result v2

    if-lez v2, :cond_6

    .line 320
    :cond_c
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$800(Lcom/android/gallery3d/app/VideoView;)Lcom/android/gallery3d/app/MediaController;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 322
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$800(Lcom/android/gallery3d/app/VideoView;)Lcom/android/gallery3d/app/MediaController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/gallery3d/app/MediaController;->show(I)V

    goto :goto_4

    .line 329
    :cond_d
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$1200(Lcom/android/gallery3d/app/VideoView;)I

    move-result v2

    if-ne v2, v7, :cond_6

    .line 330
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$2;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/VideoView;->start()V

    goto :goto_4
.end method
