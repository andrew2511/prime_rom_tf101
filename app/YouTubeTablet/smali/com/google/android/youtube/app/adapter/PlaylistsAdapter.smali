.class public Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;
.super Lcom/google/android/youtube/core/adapter/ArrayListAdapter;
.source "PlaylistsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/adapter/ArrayListAdapter",
        "<",
        "Lcom/google/android/youtube/core/model/Playlist;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemToolbar:Lcom/google/android/youtube/app/ui/ToolbarHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/app/ui/ToolbarHelper",
            "<",
            "Lcom/google/android/youtube/core/model/Playlist;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutInflater:Landroid/view/LayoutInflater;

.field private final missingThumbnail:Landroid/graphics/Bitmap;

.field private final res:Landroid/content/res/Resources;

.field private final stackPlaceholder:Landroid/graphics/Bitmap;

.field private final thumbnails:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;-><init>(Landroid/content/Context;Lcom/google/android/youtube/app/ui/ToolbarHelper;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/app/ui/ToolbarHelper;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/youtube/app/ui/ToolbarHelper",
            "<",
            "Lcom/google/android/youtube/core/model/Playlist;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, itemToolbar:Lcom/google/android/youtube/app/ui/ToolbarHelper;,"Lcom/google/android/youtube/app/ui/ToolbarHelper<Lcom/google/android/youtube/core/model/Playlist;>;"
    invoke-direct {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;-><init>()V

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->res:Landroid/content/res/Resources;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->thumbnails:Ljava/util/Map;

    .line 48
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->itemToolbar:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    .line 49
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->res:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/StackBitmapBlender;->generatePlaceholder(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->stackPlaceholder:Landroid/graphics/Bitmap;

    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->res:Landroid/content/res/Resources;

    const v1, 0x7f020058

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->missingThumbnail:Landroid/graphics/Bitmap;

    .line 53
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->thumbnails:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 69
    invoke-super {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->clear()V

    .line 70
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Playlist;

    .line 75
    .local v1, playlist:Lcom/google/android/youtube/core/model/Playlist;
    if-nez p2, :cond_0

    .line 76
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04001f

    invoke-virtual {v3, v4, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 77
    new-instance v0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;

    invoke-direct {v0, p2}, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 78
    .local v0, holder:Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    .end local v0           #holder:Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;

    .line 81
    .restart local v0       #holder:Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;
    iget-object v3, v0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/google/android/youtube/core/model/Playlist;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v3, v0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;->size:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 84
    iget-object v3, v0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;->size:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->res:Landroid/content/res/Resources;

    const v5, 0x7f0e0009

    iget v6, v1, Lcom/google/android/youtube/core/model/Playlist;->size:I

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, v1, Lcom/google/android/youtube/core/model/Playlist;->size:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :cond_1
    iget-object v3, v0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 89
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->thumbnails:Ljava/util/Map;

    iget-object v4, v1, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 90
    .local v2, thumb:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_2

    .line 91
    iget-object v3, v0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->missingThumbnail:Landroid/graphics/Bitmap;

    if-ne v2, v4, :cond_4

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 93
    iget-object v3, v0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 97
    .end local v2           #thumb:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->itemToolbar:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    if-eqz v3, :cond_3

    .line 98
    iget-object v3, v0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;->more:Landroid/widget/ImageView;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 99
    iget-object v3, v0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;->more:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v3, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->itemToolbar:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    iget-object v4, v0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter$ViewHolder;->more:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v1}, Lcom/google/android/youtube/app/ui/ToolbarHelper;->attachToView(Landroid/view/View;Ljava/lang/Object;)V

    .line 103
    :cond_3
    return-object p2

    .line 91
    .restart local v2       #thumb:Landroid/graphics/Bitmap;
    :cond_4
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method

.method protected internalAdd(Lcom/google/android/youtube/core/model/Playlist;)V
    .locals 3
    .parameter "playlist"

    .prologue
    .line 61
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->thumbnails:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Playlist;->contentUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->stackPlaceholder:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->internalAdd(Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method protected bridge synthetic internalAdd(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    check-cast p1, Lcom/google/android/youtube/core/model/Playlist;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->internalAdd(Lcom/google/android/youtube/core/model/Playlist;)V

    return-void
.end method

.method public setThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "playlistUri"
    .parameter "thumbnail"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->thumbnails:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->thumbnails:Ljava/util/Map;

    if-eqz p2, :cond_1

    move-object v1, p2

    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->notifyDataSetChanged()V

    .line 111
    :cond_0
    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->missingThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
