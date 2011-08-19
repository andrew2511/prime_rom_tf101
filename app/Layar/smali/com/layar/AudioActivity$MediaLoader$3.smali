.class Lcom/layar/AudioActivity$MediaLoader$3;
.super Ljava/lang/Object;
.source "AudioActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/AudioActivity$MediaLoader;->onProgressUpdate([Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/AudioActivity$MediaLoader;


# direct methods
.method constructor <init>(Lcom/layar/AudioActivity$MediaLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/AudioActivity$MediaLoader$3;->this$1:Lcom/layar/AudioActivity$MediaLoader;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/layar/AudioActivity$MediaLoader$3;->this$1:Lcom/layar/AudioActivity$MediaLoader;

    invoke-static {v0}, Lcom/layar/AudioActivity$MediaLoader;->access$3(Lcom/layar/AudioActivity$MediaLoader;)Lcom/layar/AudioActivity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    div-int/lit8 v1, v1, 0x64

    mul-int/2addr v1, p2

    invoke-static {v0, v1}, Lcom/layar/AudioActivity;->access$6(Lcom/layar/AudioActivity;I)V

    .line 156
    return-void
.end method
