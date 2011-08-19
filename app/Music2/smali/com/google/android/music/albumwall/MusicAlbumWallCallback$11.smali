.class Lcom/google/android/music/albumwall/MusicAlbumWallCallback$11;
.super Landroid/database/ContentObserver;
.source "MusicAlbumWallCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getCursor(Lcom/google/android/music/albumwall/MusicPile;)Landroid/database/Cursor;
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
    .line 1600
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$11;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 1604
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$11;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$2000(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V

    .line 1605
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$11;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1700(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1606
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$11;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$400(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1607
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$11;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1800(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$11;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/AppState;->asyncCheckForPlaylists(Landroid/content/Context;)V

    .line 1612
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$11;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1900(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallView;->getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    move-result-object v0

    .line 1613
    .local v0, state:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$11;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v1, v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->updateState(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 1614
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$11;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1900(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 1615
    return-void

    .line 1609
    .end local v0           #state:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$11;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1800(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$11;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/AppState;->asyncCheckForMusic(Landroid/content/Context;)V

    goto :goto_0
.end method
