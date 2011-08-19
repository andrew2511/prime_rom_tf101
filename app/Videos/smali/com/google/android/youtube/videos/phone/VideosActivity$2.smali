.class Lcom/google/android/youtube/videos/phone/VideosActivity$2;
.super Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;
.source "VideosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/phone/VideosActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/phone/VideosActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/phone/VideosActivity;Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/videos/adapter/MovieListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V
    .locals 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter
    .parameter

    .prologue
    .line 137
    .local p5, x3:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    .local p6, x4:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/google/android/youtube/videos/phone/VideosActivity$2;->this$0:Lcom/google/android/youtube/videos/phone/VideosActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/videos/adapter/MovieListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    return-void
.end method


# virtual methods
.method protected onNoEntries()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/VideosActivity$2;->this$0:Lcom/google/android/youtube/videos/phone/VideosActivity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/phone/VideosActivity$2;->this$0:Lcom/google/android/youtube/videos/phone/VideosActivity;

    invoke-static {v1}, Lcom/google/android/youtube/videos/phone/VideosActivity;->access$100(Lcom/google/android/youtube/videos/phone/VideosActivity;)Lcom/google/android/youtube/core/ui/PagedGridView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/phone/VideosActivity;->access$200(Lcom/google/android/youtube/videos/phone/VideosActivity;Landroid/view/View;)V

    .line 142
    return-void
.end method
