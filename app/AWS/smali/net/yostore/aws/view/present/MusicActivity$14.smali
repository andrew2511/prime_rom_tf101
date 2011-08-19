.class Lnet/yostore/aws/view/present/MusicActivity$14;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/view/present/MusicActivity;->initSpin(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/present/MusicActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/present/MusicActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/present/MusicActivity$14;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 414
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity$14;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v0, v0, Lnet/yostore/aws/view/present/MusicActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity$14;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v0, v0, Lnet/yostore/aws/view/present/MusicActivity;->play:Landroid/widget/ImageButton;

    invoke-static {}, Lnet/yostore/aws/view/present/MusicActivity;->access$3()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 416
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity$14;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/present/MusicActivity$14;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    const v2, 0x7f06009f

    invoke-virtual {v1, v2}, Lnet/yostore/aws/view/present/MusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 417
    iget-object v0, p0, Lnet/yostore/aws/view/present/MusicActivity$14;->this$0:Lnet/yostore/aws/view/present/MusicActivity;

    iget-object v0, v0, Lnet/yostore/aws/view/present/MusicActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 419
    :cond_0
    return-void
.end method
