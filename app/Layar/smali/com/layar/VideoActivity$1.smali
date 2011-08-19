.class Lcom/layar/VideoActivity$1;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/VideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/VideoActivity;


# direct methods
.method constructor <init>(Lcom/layar/VideoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/VideoActivity$1;->this$0:Lcom/layar/VideoActivity;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/layar/VideoActivity$1;->this$0:Lcom/layar/VideoActivity;

    iget-object v0, v0, Lcom/layar/VideoActivity;->videoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 35
    iget-object v0, p0, Lcom/layar/VideoActivity$1;->this$0:Lcom/layar/VideoActivity;

    invoke-virtual {v0}, Lcom/layar/VideoActivity;->finish()V

    .line 36
    return-void
.end method
