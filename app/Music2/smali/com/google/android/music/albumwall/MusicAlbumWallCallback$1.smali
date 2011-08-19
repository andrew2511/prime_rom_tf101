.class Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;
.super Ljava/lang/Object;
.source "MusicAlbumWallCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onItemLabelSelected(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

.field final synthetic val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 907
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iput-object p2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iput p3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;->val$x:F

    iput p4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 909
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;->val$item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    check-cast v0, Lcom/google/android/music/albumwall/MusicItem;

    .line 910
    .local v0, musicItem:Lcom/google/android/music/albumwall/MusicItem;
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isManageMusicMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 911
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-static {v1, v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$500(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicItem;)V

    .line 915
    :goto_0
    return-void

    .line 913
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iget v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;->val$x:F

    iget v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;->val$y:F

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$600(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicItem;FF)V

    goto :goto_0
.end method
