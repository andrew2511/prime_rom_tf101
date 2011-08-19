.class Lcom/google/android/music/albumwall/MusicAlbumWallCallback$10;
.super Landroid/database/ContentObserver;
.source "MusicAlbumWallCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getTopLevelCursor()Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1531
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$10;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 1535
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$10;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1600(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V

    .line 1536
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$10;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1700(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1537
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$10;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1800(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$10;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/AppState;->asyncCheckForMusic(Landroid/content/Context;)V

    .line 1539
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$10;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1900(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallView;->getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    move-result-object v0

    .line 1540
    .local v0, state:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$10;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v1, v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->updateState(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 1541
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$10;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1900(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 1542
    return-void
.end method
