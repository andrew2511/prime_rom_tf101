.class Lcom/asus/DLNA/MusicPlaybackService$2;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 220
    iput-object p1, p0, Lcom/asus/DLNA/MusicPlaybackService$2;->this$0:Lcom/asus/DLNA/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 222
    const-string v0, "MusicPlaybackService"

    const-string v1, ">> playbackErrorListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService$2;->this$0:Lcom/asus/DLNA/MusicPlaybackService;

    invoke-virtual {v0}, Lcom/asus/DLNA/MusicPlaybackService;->stop()V

    .line 224
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService$2;->this$0:Lcom/asus/DLNA/MusicPlaybackService;

    invoke-static {v0}, Lcom/asus/DLNA/MusicPlaybackService;->access$000(Lcom/asus/DLNA/MusicPlaybackService;)V

    .line 225
    iget-object v0, p0, Lcom/asus/DLNA/MusicPlaybackService$2;->this$0:Lcom/asus/DLNA/MusicPlaybackService;

    invoke-static {v0}, Lcom/asus/DLNA/MusicPlaybackService;->access$100(Lcom/asus/DLNA/MusicPlaybackService;)V

    .line 227
    const/4 v0, 0x0

    return v0
.end method
