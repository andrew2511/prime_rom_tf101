.class Lcom/asus/DLNA/MusicPlaybackService$3;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/MusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DLNA/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/MusicPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/asus/DLNA/MusicPlaybackService$3;->this$0:Lcom/asus/DLNA/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    const-string v1, "music.playback.prepared"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/asus/DLNA/MusicPlaybackService$3;->this$0:Lcom/asus/DLNA/MusicPlaybackService;

    invoke-virtual {v1, v0}, Lcom/asus/DLNA/MusicPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 240
    return-void
.end method
