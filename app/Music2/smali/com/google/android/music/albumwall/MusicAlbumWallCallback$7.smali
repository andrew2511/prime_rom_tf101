.class Lcom/google/android/music/albumwall/MusicAlbumWallCallback$7;
.super Ljava/lang/Object;
.source "MusicAlbumWallCallback.java"

# interfaces
.implements Lcom/google/android/music/albumwall/AlbumWallCallback$IntegerReply;


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
    .line 1336
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$7;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iput-object p2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$7;->val$state:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reply(I)V
    .locals 1
    .parameter "n"

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$7;->val$state:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    iput p1, v0, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileItemCount:I

    .line 1339
    return-void
.end method
