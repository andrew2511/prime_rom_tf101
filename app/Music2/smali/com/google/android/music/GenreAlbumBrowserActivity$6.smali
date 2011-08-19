.class Lcom/google/android/music/GenreAlbumBrowserActivity$6;
.super Ljava/lang/Object;
.source "GenreAlbumBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/GenreAlbumBrowserActivity;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

.field final synthetic val$scrollState:I


# direct methods
.method constructor <init>(Lcom/google/android/music/GenreAlbumBrowserActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$6;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    iput p2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$6;->val$scrollState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$6;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$700(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1278
    iget v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$6;->val$scrollState:I

    if-nez v0, :cond_1

    .line 1279
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$6;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$800(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/RepresentativeAlbumChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$6;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$700(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getRepresentativeAlbumId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/music/RepresentativeAlbumChangeListener;->setRepresentativeAlbum(JZ)V

    .line 1285
    :cond_0
    :goto_0
    return-void

    .line 1282
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$6;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$800(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/RepresentativeAlbumChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/music/RepresentativeAlbumChangeListener;->cancelBackgroundChange()V

    goto :goto_0
.end method
