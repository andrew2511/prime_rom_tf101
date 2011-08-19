.class Lcom/google/android/youtube/app/tablet/HomeController$1;
.super Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;
.source "HomeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/app/tablet/HomeController;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/tablet/HomeController;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/tablet/HomeController;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V
    .locals 10
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

    .prologue
    .line 77
    .local p6, x4:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    .local p7, x5:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;>;"
    .local p8, x6:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/HomeController$1;->this$0:Lcom/google/android/youtube/app/tablet/HomeController;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    return-void
.end method


# virtual methods
.method protected onEntries(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .locals 2
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, entries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Video;>;"
    const/4 v1, 0x0

    .line 84
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->onEntries(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/google/android/youtube/app/tablet/HomeController$1;->onScroll(Lcom/google/android/youtube/core/ui/PagedView;III)V

    .line 86
    return-void
.end method

.method protected showError(Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "msg"
    .parameter "canRetry"
    .parameter "isEmpty"

    .prologue
    .line 91
    if-eqz p3, :cond_0

    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->showError(Ljava/lang/String;ZZ)V

    .line 96
    :cond_0
    return-void
.end method
