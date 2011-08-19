.class public Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LocalVideosAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/youtube/videos/LocalVideo;",
        ">;"
    }
.end annotation


# instance fields
.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final thumbnails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/youtube/videos/LocalVideo;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    const v0, 0x7f040003

    const v1, 0x7f08000a

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;->thumbnails:Ljava/util/Map;

    .line 35
    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/videos/LocalVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/videos/LocalVideo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/videos/LocalVideo;

    .line 39
    .local v1, localVideo:Lcom/google/android/youtube/videos/LocalVideo;
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 41
    .end local v1           #localVideo:Lcom/google/android/youtube/videos/LocalVideo;
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;->thumbnails:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 54
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 55
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/videos/LocalVideo;

    .line 61
    .local v1, video:Lcom/google/android/youtube/videos/LocalVideo;
    if-nez p2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040003

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 63
    new-instance v0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter$ViewHolder;

    invoke-direct {v0, p2}, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 64
    .local v0, holder:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    :goto_0
    iget-object v2, v0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/google/android/youtube/videos/LocalVideo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, v0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    iget v3, v1, Lcom/google/android/youtube/videos/LocalVideo;->duration:I

    if-lez v3, :cond_1

    iget v3, v1, Lcom/google/android/youtube/videos/LocalVideo;->duration:I

    invoke-static {v3}, Lcom/google/android/youtube/core/utils/Util;->secondsToString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, v0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter$ViewHolder;->detail:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/google/android/youtube/videos/LocalVideo;->date:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v2, v0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;->thumbnails:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 74
    return-object p2

    .line 66
    .end local v0           #holder:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter$ViewHolder;
    .restart local p0
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter$ViewHolder;
    goto :goto_0

    .line 70
    :cond_1
    const-string v3, ""

    goto :goto_1
.end method

.method public setThumbnail(Lcom/google/android/youtube/videos/LocalVideo;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "video"
    .parameter "thumbnail"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;->thumbnails:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/adapter/LocalVideosAdapter;->notifyDataSetChanged()V

    .line 49
    return-void
.end method
