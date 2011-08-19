.class Lcom/layar/ui/AudioView$MediaLoader$3;
.super Ljava/lang/Object;
.source "AudioView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    iput-object p1, p0, Lcom/layar/ui/AudioView$MediaLoader$3;->this$1:Lcom/layar/ui/AudioView$MediaLoader;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/layar/ui/AudioView$MediaLoader$3;->this$1:Lcom/layar/ui/AudioView$MediaLoader;

    invoke-static {v0}, Lcom/layar/ui/AudioView$MediaLoader;->access$2(Lcom/layar/ui/AudioView$MediaLoader;)Lcom/layar/ui/AudioView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    mul-int/2addr v1, p2

    invoke-static {v0, v1}, Lcom/layar/ui/AudioView;->access$4(Lcom/layar/ui/AudioView;I)V

    .line 166
    return-void
.end method
