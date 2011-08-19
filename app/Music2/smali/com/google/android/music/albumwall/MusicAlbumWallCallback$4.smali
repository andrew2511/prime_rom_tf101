.class Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;
.super Ljava/lang/Object;
.source "MusicAlbumWallCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onPileLongPressed(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

.field final synthetic val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iput-object p2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    iput p3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->val$x:F

    iput p4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->val$pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    check-cast v0, Lcom/google/android/music/albumwall/MusicPile;

    .line 1009
    .local v0, musicItem:Lcom/google/android/music/albumwall/MusicPile;
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    iget v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->val$x:F

    iget v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;->val$y:F

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$800(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicPile;FF)V

    .line 1010
    return-void
.end method
