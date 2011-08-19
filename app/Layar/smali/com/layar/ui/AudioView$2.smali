.class Lcom/layar/ui/AudioView$2;
.super Ljava/lang/Object;
.source "AudioView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/AudioView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/AudioView;


# direct methods
.method constructor <init>(Lcom/layar/ui/AudioView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/AudioView$2;->this$0:Lcom/layar/ui/AudioView;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/layar/ui/AudioView$2;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v0}, Lcom/layar/ui/AudioView;->access$0(Lcom/layar/ui/AudioView;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/layar/ui/AudioView$2;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v0}, Lcom/layar/ui/AudioView;->access$0(Lcom/layar/ui/AudioView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/layar/ui/AudioView$2;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v0}, Lcom/layar/ui/AudioView;->access$0(Lcom/layar/ui/AudioView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 53
    iget-object v0, p0, Lcom/layar/ui/AudioView$2;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v0}, Lcom/layar/ui/AudioView;->access$5(Lcom/layar/ui/AudioView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/layar/ui/AudioView$2;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v0}, Lcom/layar/ui/AudioView;->access$0(Lcom/layar/ui/AudioView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 56
    iget-object v0, p0, Lcom/layar/ui/AudioView$2;->this$0:Lcom/layar/ui/AudioView;

    iget-object v1, p0, Lcom/layar/ui/AudioView$2;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v1}, Lcom/layar/ui/AudioView;->access$7(Lcom/layar/ui/AudioView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layar/ui/AudioView;->post(Ljava/lang/Runnable;)Z

    .line 57
    iget-object v0, p0, Lcom/layar/ui/AudioView$2;->this$0:Lcom/layar/ui/AudioView;

    invoke-static {v0}, Lcom/layar/ui/AudioView;->access$5(Lcom/layar/ui/AudioView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
