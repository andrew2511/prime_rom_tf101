.class Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView$1;
.super Landroid/content/BroadcastReceiver;
.source "NowPlayingAlbumArtImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;


# direct methods
.method constructor <init>(Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView$1;->this$0:Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView$1;->this$0:Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;

    invoke-static {v0}, Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;->access$000(Lcom/google/android/music/widgets/NowPlayingAlbumArtImageView;)V

    .line 67
    return-void
.end method
