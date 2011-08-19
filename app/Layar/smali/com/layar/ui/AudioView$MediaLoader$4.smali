.class Lcom/layar/ui/AudioView$MediaLoader$4;
.super Ljava/lang/Object;
.source "AudioView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/AudioView$MediaLoader;->onProgressUpdate([Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/ui/AudioView$MediaLoader;


# direct methods
.method constructor <init>(Lcom/layar/ui/AudioView$MediaLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/AudioView$MediaLoader$4;->this$1:Lcom/layar/ui/AudioView$MediaLoader;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/layar/ui/AudioView$MediaLoader$4;->this$1:Lcom/layar/ui/AudioView$MediaLoader;

    invoke-static {v0}, Lcom/layar/ui/AudioView$MediaLoader;->access$2(Lcom/layar/ui/AudioView$MediaLoader;)Lcom/layar/ui/AudioView;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/ui/AudioView;->access$5(Lcom/layar/ui/AudioView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02006d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 173
    iget-object v0, p0, Lcom/layar/ui/AudioView$MediaLoader$4;->this$1:Lcom/layar/ui/AudioView$MediaLoader;

    invoke-static {v0}, Lcom/layar/ui/AudioView$MediaLoader;->access$2(Lcom/layar/ui/AudioView$MediaLoader;)Lcom/layar/ui/AudioView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/ui/AudioView;->stop()V

    .line 174
    return-void
.end method
