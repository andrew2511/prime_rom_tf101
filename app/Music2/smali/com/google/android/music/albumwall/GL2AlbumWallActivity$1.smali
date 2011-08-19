.class Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;
.super Ljava/lang/Object;
.source "GL2AlbumWallActivity.java"

# interfaces
.implements Lcom/google/android/music/CreatePlaylist$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

.field final synthetic val$songList:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/GL2AlbumWallActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;->this$0:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    iput-object p2, p0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;->val$songList:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaylistCreated(JLjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "name"

    .prologue
    .line 275
    new-instance v0, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1$1;-><init>(Lcom/google/android/music/albumwall/GL2AlbumWallActivity$1;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 291
    return-void
.end method
