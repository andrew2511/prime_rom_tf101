.class Lcom/google/android/music/albumwall/MusicAlbumWallCallback$8;
.super Ljava/lang/Object;
.source "MusicAlbumWallCallback.java"

# interfaces
.implements Lcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->updateState(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

.field final synthetic val$state:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1354
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$8;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iput-object p2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$8;->val$state:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reply(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$8;->val$state:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iput-object p1, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 1357
    return-void
.end method
