.class Lcom/google/android/youtube/app/tablet/MyChannelController$4;
.super Ljava/lang/Object;
.source "MyChannelController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/tablet/MyChannelController;->setPlaylistClickListener(Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

.field final synthetic val$adapter:Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/tablet/MyChannelController;Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$4;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    iput-object p2, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$4;->val$adapter:Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$4;->val$adapter:Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;

    invoke-virtual {v0, p3}, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/youtube/core/model/Playlist;

    .line 358
    .local v7, playlist:Lcom/google/android/youtube/core/model/Playlist;
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$4;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController;->navigation:Lcom/google/android/youtube/app/Navigation;

    iget-object v1, v7, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    iget-object v2, v7, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    iget-object v3, v7, Lcom/google/android/youtube/core/model/Playlist;->summary:Ljava/lang/String;

    iget-object v4, v7, Lcom/google/android/youtube/core/model/Playlist;->author:Ljava/lang/String;

    iget v5, v7, Lcom/google/android/youtube/core/model/Playlist;->size:I

    const/4 v6, 0x1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/youtube/app/Navigation;->toPlaylist(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 360
    return-void
.end method
