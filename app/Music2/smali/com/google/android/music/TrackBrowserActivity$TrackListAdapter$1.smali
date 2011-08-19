.class Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$1;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1418
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$1;->this$0:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1421
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$1;->this$0:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->access$3000(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/google/android/music/TrackBrowserActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$600(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 1422
    .local v0, position:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1426
    :goto_0
    return-void

    .line 1425
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$1;->this$0:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->access$3000(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/google/android/music/TrackBrowserActivity;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/android/music/TrackBrowserActivity;->onCreateListContextMusicMenu(Landroid/view/View;I)V

    goto :goto_0
.end method
