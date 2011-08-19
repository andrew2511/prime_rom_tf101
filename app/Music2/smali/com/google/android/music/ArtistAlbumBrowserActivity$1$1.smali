.class Lcom/google/android/music/ArtistAlbumBrowserActivity$1$1;
.super Ljava/lang/Object;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/ArtistAlbumBrowserActivity$1;->onBottomBarChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$1;


# direct methods
.method constructor <init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$1$1;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailableSpaceChanged(JJZ)V
    .locals 1
    .parameter "totalSpace"
    .parameter "freeSpace"
    .parameter "availabilityTransition"

    .prologue
    .line 239
    if-eqz p5, :cond_0

    .line 240
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$1$1;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$1;

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$1;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-virtual {v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->onArtistChanged()V

    .line 242
    :cond_0
    return-void
.end method
