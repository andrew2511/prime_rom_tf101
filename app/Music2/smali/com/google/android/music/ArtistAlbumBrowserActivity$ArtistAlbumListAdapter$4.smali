.class Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$4;
.super Ljava/lang/Object;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->onStreamabilityChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1388
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$4;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$4;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->notifyDataSetChanged()V

    .line 1391
    return-void
.end method
