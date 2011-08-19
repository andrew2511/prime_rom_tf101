.class Lcom/android/gallery3d/app/VideoView$4;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 351
    iput-object p1, p0, Lcom/android/gallery3d/app/VideoView$4;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7
    .parameter "mp"
    .parameter "framework_err"
    .parameter "impl_err"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 353
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$4;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$1400(Lcom/android/gallery3d/app/VideoView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$4;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2, v5}, Lcom/android/gallery3d/app/VideoView;->access$202(Lcom/android/gallery3d/app/VideoView;I)I

    .line 355
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$4;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2, v5}, Lcom/android/gallery3d/app/VideoView;->access$1202(Lcom/android/gallery3d/app/VideoView;I)I

    .line 356
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$4;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$800(Lcom/android/gallery3d/app/VideoView;)Lcom/android/gallery3d/app/MediaController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$4;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$800(Lcom/android/gallery3d/app/VideoView;)Lcom/android/gallery3d/app/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/app/MediaController;->hide()V

    .line 361
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$4;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$1500(Lcom/android/gallery3d/app/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 362
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$4;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$1500(Lcom/android/gallery3d/app/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery3d/app/VideoView$4;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v3}, Lcom/android/gallery3d/app/VideoView;->access$700(Lcom/android/gallery3d/app/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v6

    .line 399
    :goto_0
    return v2

    .line 372
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$4;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/app/VideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 373
    iget-object v2, p0, Lcom/android/gallery3d/app/VideoView$4;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v2}, Lcom/android/gallery3d/app/VideoView;->access$1600(Lcom/android/gallery3d/app/VideoView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 376
    .local v1, r:Landroid/content/res/Resources;
    const/16 v2, 0xc8

    if-ne p2, v2, :cond_3

    .line 377
    const v0, 0x1040015

    .line 382
    .local v0, messageId:I
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/gallery3d/app/VideoView$4;->this$0:Lcom/android/gallery3d/app/VideoView;

    invoke-static {v3}, Lcom/android/gallery3d/app/VideoView;->access$1700(Lcom/android/gallery3d/app/VideoView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1040012

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040010

    new-instance v4, Lcom/android/gallery3d/app/VideoView$4$1;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/app/VideoView$4$1;-><init>(Lcom/android/gallery3d/app/VideoView$4;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .end local v0           #messageId:I
    .end local v1           #r:Landroid/content/res/Resources;
    :cond_2
    move v2, v6

    .line 399
    goto :goto_0

    .line 379
    .restart local v1       #r:Landroid/content/res/Resources;
    :cond_3
    const v0, 0x1040011

    .restart local v0       #messageId:I
    goto :goto_1
.end method
