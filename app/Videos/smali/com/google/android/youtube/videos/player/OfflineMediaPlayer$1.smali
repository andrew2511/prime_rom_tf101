.class Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$1;
.super Ljava/lang/Object;
.source "OfflineMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->onPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$1;->this$0:Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$1;->this$0:Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;

    invoke-static {v0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->access$100(Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$1;->this$0:Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;

    invoke-static {v0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->access$200(Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;)V

    .line 158
    return-void
.end method
