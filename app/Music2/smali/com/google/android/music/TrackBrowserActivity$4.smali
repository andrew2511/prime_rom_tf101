.class Lcom/google/android/music/TrackBrowserActivity$4;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TrackBrowserActivity;->updateHeaderImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public bm:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;Landroid/content/Context;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$4;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    iput-object p2, p0, Lcom/google/android/music/TrackBrowserActivity$4;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/google/android/music/TrackBrowserActivity$4;->val$width:I

    iput p4, p0, Lcom/google/android/music/TrackBrowserActivity$4;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$4;->bm:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 4

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$4;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v0}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$4;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/music/TrackBrowserActivity$4;->val$width:I

    iget v3, p0, Lcom/google/android/music/TrackBrowserActivity$4;->val$height:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/medialist/SongList;->getImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity$4;->bm:Landroid/graphics/Bitmap;

    .line 471
    return-void
.end method

.method public taskCompleted()V
    .locals 3

    .prologue
    .line 474
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$4;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$1200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$4;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$1300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$4;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$1300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0f000c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 478
    .local v0, iv:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 479
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$4;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 483
    .end local v0           #iv:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method
