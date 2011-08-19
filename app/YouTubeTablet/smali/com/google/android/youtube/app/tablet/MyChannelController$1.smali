.class Lcom/google/android/youtube/app/tablet/MyChannelController$1;
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

.field final synthetic val$uploads:Lcom/google/android/youtube/core/ui/PagedGridView;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/tablet/MyChannelController;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/ui/PagedGridView;)V
    .locals 13
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
    .parameter

    .prologue
    .line 145
    .local p6, x4:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    .local p7, x5:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;>;"
    .local p8, x6:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$1;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    move-object/from16 v0, p12

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/MyChannelController$1;->val$uploads:Lcom/google/android/youtube/core/ui/PagedGridView;

    move-object v2, p0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v2 .. v12}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    return-void
.end method


# virtual methods
.method protected onVideoClick(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)V
    .locals 1
    .parameter "view"
    .parameter "video"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$1;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/MyChannelController;->access$100(Lcom/google/android/youtube/app/tablet/MyChannelController;)Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$1;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/MyChannelController;->access$100(Lcom/google/android/youtube/app/tablet/MyChannelController;)Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->selectVideo(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->onVideoClick(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)V

    goto :goto_0
.end method

.method protected onVideoLongClick(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)Z
    .locals 2
    .parameter "view"
    .parameter "video"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$1;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/MyChannelController;->access$100(Lcom/google/android/youtube/app/tablet/MyChannelController;)Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$1;->val$uploads:Lcom/google/android/youtube/core/ui/PagedGridView;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$1;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    invoke-static {v1}, Lcom/google/android/youtube/app/tablet/MyChannelController;->access$100(Lcom/google/android/youtube/app/tablet/MyChannelController;)Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedGridView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController$1;->this$0:Lcom/google/android/youtube/app/tablet/MyChannelController;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/MyChannelController;->access$100(Lcom/google/android/youtube/app/tablet/MyChannelController;)Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->selectVideo(Landroid/view/View;Lcom/google/android/youtube/core/model/Video;)V

    .line 162
    const/4 v0, 0x1

    return v0
.end method
