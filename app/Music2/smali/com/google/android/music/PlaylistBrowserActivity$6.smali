.class Lcom/google/android/music/PlaylistBrowserActivity$6;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/PlaylistBrowserActivity;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/PlaylistBrowserActivity;

.field final synthetic val$scrollState:I


# direct methods
.method constructor <init>(Lcom/google/android/music/PlaylistBrowserActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 893
    iput-object p1, p0, Lcom/google/android/music/PlaylistBrowserActivity$6;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    iput p2, p0, Lcom/google/android/music/PlaylistBrowserActivity$6;->val$scrollState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 897
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$6;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/PlaylistBrowserActivity;->access$300(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$6;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/PlaylistBrowserActivity;->access$900(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/RepresentativeAlbumChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 898
    iget v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$6;->val$scrollState:I

    if-nez v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$6;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/PlaylistBrowserActivity;->access$900(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/RepresentativeAlbumChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$6;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$300(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->getRepresentativeAlbumId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/music/RepresentativeAlbumChangeListener;->setRepresentativeAlbum(JZ)V

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$6;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/PlaylistBrowserActivity;->access$900(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/RepresentativeAlbumChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/music/RepresentativeAlbumChangeListener;->cancelBackgroundChange()V

    goto :goto_0
.end method
