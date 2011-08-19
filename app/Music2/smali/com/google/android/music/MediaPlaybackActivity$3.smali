.class Lcom/google/android/music/MediaPlaybackActivity$3;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/google/android/music/menu/MusicMenu$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcom/google/android/music/MediaPlaybackActivity;->closeMusicMenu()V

    .line 669
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$3;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-static {v0, p1}, Lcom/google/android/music/MediaPlaybackActivity;->access$300(Lcom/google/android/music/MediaPlaybackActivity;Lcom/google/android/music/menu/MusicMenuItem;)Z

    move-result v0

    return v0
.end method
