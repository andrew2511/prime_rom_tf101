.class Lcom/layar/AudioActivity$2;
.super Ljava/lang/Object;
.source "AudioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/AudioActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/AudioActivity;


# direct methods
.method constructor <init>(Lcom/layar/AudioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/AudioActivity$2;->this$0:Lcom/layar/AudioActivity;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/layar/AudioActivity$2;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v0}, Lcom/layar/AudioActivity;->access$0(Lcom/layar/AudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/layar/AudioActivity$2;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v0}, Lcom/layar/AudioActivity;->access$0(Lcom/layar/AudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/layar/AudioActivity$2;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v0}, Lcom/layar/AudioActivity;->access$0(Lcom/layar/AudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 51
    iget-object v0, p0, Lcom/layar/AudioActivity$2;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v0}, Lcom/layar/AudioActivity;->access$7(Lcom/layar/AudioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/layar/AudioActivity$2;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v0}, Lcom/layar/AudioActivity;->access$0(Lcom/layar/AudioActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 54
    iget-object v0, p0, Lcom/layar/AudioActivity$2;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v0}, Lcom/layar/AudioActivity;->access$4(Lcom/layar/AudioActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/AudioActivity$2;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v1}, Lcom/layar/AudioActivity;->access$9(Lcom/layar/AudioActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    iget-object v0, p0, Lcom/layar/AudioActivity$2;->this$0:Lcom/layar/AudioActivity;

    invoke-static {v0}, Lcom/layar/AudioActivity;->access$7(Lcom/layar/AudioActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method
