.class Lcom/google/android/youtube/app/tablet/MyChannelController$2;
.super Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;
.source "MyChannelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/tablet/MyChannelController;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/tablet/MyChannelController;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V
    .locals 11
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter
    .parameter
    .parameter
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 177
    .local p6, x4:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    .local p7, x5:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;>;"
    .local p8, x6:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$2;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    return-void
.end method


# virtual methods
.method protected onVideoClick(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)V
    .locals 3
    .parameter "view"
    .parameter "video"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$2;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController;->navigation:Lcom/google/android/youtube/app/Navigation;

    iget-object v1, p2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/app/Navigation;->toWatchFavorite(Ljava/lang/String;Landroid/net/Uri;)V

    .line 181
    return-void
.end method
