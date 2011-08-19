.class public Lcom/google/android/youtube/app/adapter/VideoListAdapter;
.super Lcom/google/android/youtube/core/adapter/ArrayListAdapter;
.source "VideoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/adapter/ArrayListAdapter",
        "<",
        "Lcom/google/android/youtube/core/model/Video;",
        ">;"
    }
.end annotation


# instance fields
.field private final inflater:Landroid/view/LayoutInflater;

.field private final itemToolbar:Lcom/google/android/youtube/app/ui/ToolbarHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/app/ui/ToolbarHelper",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;"
        }
    .end annotation
.end field

.field private final missingThumbnail:Landroid/graphics/Bitmap;

.field private final musicVideos:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private promoFor3dShown:Z

.field private promoForMusicShown:Z

.field private final promoHelper:Lcom/google/android/youtube/app/ui/PromoHelper;

.field private final resources:Landroid/content/res/Resources;

.field final thumbnails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final videoSources:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;Lcom/google/android/youtube/app/ui/ToolbarHelper;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/youtube/app/ui/ToolbarHelper",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, videoSources:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p3, itemToolbar:Lcom/google/android/youtube/app/ui/ToolbarHelper;,"Lcom/google/android/youtube/app/ui/ToolbarHelper<Lcom/google/android/youtube/core/model/Video;>;"
    invoke-direct {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;-><init>()V

    .line 88
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->resources:Landroid/content/res/Resources;

    .line 91
    new-instance v0, Lcom/google/android/youtube/app/ui/PromoHelper;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/app/ui/PromoHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->promoHelper:Lcom/google/android/youtube/app/ui/PromoHelper;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->thumbnails:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->musicVideos:Ljava/util/HashSet;

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->resources:Landroid/content/res/Resources;

    const v1, 0x7f020058

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->missingThumbnail:Landroid/graphics/Bitmap;

    .line 96
    iput-object p2, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->videoSources:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    iput-object p3, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->itemToolbar:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    .line 98
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/google/android/youtube/app/adapter/VideoListAdapter;
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 57
    const-string v0, "context may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    invoke-direct {v0, p0, v1, v1}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;-><init>(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;Lcom/google/android/youtube/app/ui/ToolbarHelper;)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Lcom/google/android/youtube/app/adapter/VideoListAdapter;
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/youtube/app/adapter/VideoListAdapter;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, videoSources:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v0, "context may not be null"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "videoSources may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;-><init>(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;Lcom/google/android/youtube/app/ui/ToolbarHelper;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->thumbnails:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 110
    invoke-super {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->clear()V

    .line 111
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 138
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/youtube/core/model/Video;

    .line 140
    .local v10, video:Lcom/google/android/youtube/core/model/Video;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->musicVideos:Ljava/util/HashSet;

    move-object v11, v0

    iget-object v12, v10, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 141
    .local v6, isMusicVideo:Z
    if-nez p2, :cond_d

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object v11, v0

    const v12, 0x7f040032

    const/4 v13, 0x0

    move-object v0, v11

    move v1, v12

    move-object/from16 v2, p3

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 143
    new-instance v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 144
    .local v5, holder:Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;
    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 149
    :goto_0
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    if-eqz v11, :cond_0

    .line 150
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v12, v10, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_0
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->author:Landroid/widget/TextView;

    if-eqz v11, :cond_1

    .line 153
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->author:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->resources:Landroid/content/res/Resources;

    move-object v12, v0

    const v13, 0x7f0d00bc

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-object v15, v10, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_1
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->recent:Landroid/widget/TextView;

    if-eqz v11, :cond_2

    .line 157
    iget-object v11, v10, Lcom/google/android/youtube/core/model/Video;->publishedDate:Ljava/util/Date;

    invoke-static {v11}, Lcom/google/android/youtube/core/utils/Util;->isRecent(Ljava/util/Date;)Z

    move-result v7

    .line 158
    .local v7, isRecent:Z
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->recent:Landroid/widget/TextView;

    if-eqz v7, :cond_e

    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    .end local v7           #isRecent:Z
    :cond_2
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->detail:Landroid/widget/TextView;

    if-eqz v11, :cond_3

    .line 162
    iget-object v11, v10, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v12, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v11, v12, :cond_12

    .line 163
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->detail:Landroid/widget/TextView;

    sget-object v12, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->videoSources:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v11, v0

    if-eqz v11, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->videoSources:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v11, v0

    iget-object v12, v10, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/Integer;

    move-object/from16 v8, p1

    .line 165
    .local v8, sourceId:Ljava/lang/Integer;
    :goto_2
    if-eqz v8, :cond_10

    .line 166
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->detail:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->resources:Landroid/content/res/Resources;

    move-object v12, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .end local v8           #sourceId:Ljava/lang/Integer;
    :cond_3
    :goto_3
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->unplayableOverlay:Landroid/widget/ImageView;

    if-eqz v11, :cond_4

    .line 179
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->unplayableOverlay:Landroid/widget/ImageView;

    iget-object v12, v10, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v13, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v12, v13, :cond_13

    const/4 v12, 0x0

    :goto_4
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    :cond_4
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    if-eqz v11, :cond_6

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->thumbnails:Ljava/util/HashMap;

    move-object v11, v0

    iget-object v12, v10, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 185
    .local v9, thumbnail:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->missingThumbnail:Landroid/graphics/Bitmap;

    move-object v11, v0

    if-ne v9, v11, :cond_14

    iget-object v11, v10, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v12, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v11, v12, :cond_14

    .line 187
    const/4 v9, 0x0

    .line 192
    :cond_5
    :goto_5
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->missingThumbnail:Landroid/graphics/Bitmap;

    move-object v12, v0

    if-ne v9, v12, :cond_15

    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_6
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 194
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 197
    .end local v9           #thumbnail:Landroid/graphics/Bitmap;
    :cond_6
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    if-eqz v11, :cond_7

    .line 198
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    iget v12, v10, Lcom/google/android/youtube/core/model/Video;->duration:I

    invoke-static {v12}, Lcom/google/android/youtube/core/utils/Util;->secondsToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    :cond_7
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->cc:Landroid/widget/TextView;

    if-eqz v11, :cond_8

    .line 202
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->cc:Landroid/widget/TextView;

    iget-object v12, v10, Lcom/google/android/youtube/core/model/Video;->captionTracksUri:Landroid/net/Uri;

    if-eqz v12, :cond_16

    const/4 v12, 0x0

    :goto_7
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    :cond_8
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->hd:Landroid/widget/TextView;

    if-eqz v11, :cond_9

    .line 205
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->hd:Landroid/widget/TextView;

    iget-object v12, v10, Lcom/google/android/youtube/core/model/Video;->streamUri720p:Landroid/net/Uri;

    if-eqz v12, :cond_17

    const/4 v12, 0x0

    :goto_8
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    :cond_9
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->more:Landroid/widget/ImageView;

    if-eqz v11, :cond_a

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->itemToolbar:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    move-object v11, v0

    if-eqz v11, :cond_18

    .line 210
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->more:Landroid/widget/ImageView;

    const v12, 0x7f02007a

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->more:Landroid/widget/ImageView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 212
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->more:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->itemToolbar:Lcom/google/android/youtube/app/ui/ToolbarHelper;

    move-object v11, v0

    iget-object v12, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->more:Landroid/widget/ImageView;

    invoke-virtual {v11, v12, v10}, Lcom/google/android/youtube/app/ui/ToolbarHelper;->attachToView(Landroid/view/View;Ljava/lang/Object;)V

    .line 219
    :cond_a
    :goto_9
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->badgeMusic:Landroid/widget/ImageView;

    if-eqz v11, :cond_b

    .line 220
    if-eqz v6, :cond_19

    .line 221
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->badgeMusic:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 222
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->badgeMusic:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->promoForMusicShown:Z

    move v11, v0

    if-nez v11, :cond_b

    .line 224
    const/4 v11, 0x1

    move v0, v11

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->promoForMusicShown:Z

    .line 231
    :cond_b
    :goto_a
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->badge3d:Landroid/widget/ImageView;

    if-eqz v11, :cond_c

    .line 232
    iget-boolean v11, v10, Lcom/google/android/youtube/core/model/Video;->is3d:Z

    if-eqz v11, :cond_1a

    .line 233
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->badge3d:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 234
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->badge3d:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->promoFor3dShown:Z

    move v11, v0

    if-nez v11, :cond_c

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->promoHelper:Lcom/google/android/youtube/app/ui/PromoHelper;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/android/youtube/app/ui/PromoHelper;->maybeShow3dPromo()V

    .line 237
    const/4 v11, 0x1

    move v0, v11

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->promoFor3dShown:Z

    .line 244
    :cond_c
    :goto_b
    return-object p2

    .line 146
    .end local v5           #holder:Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;
    .restart local p1
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;

    .restart local v5       #holder:Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 158
    .restart local v7       #isRecent:Z
    :cond_e
    const/16 v12, 0x8

    goto/16 :goto_1

    .line 164
    .end local v7           #isRecent:Z
    :cond_f
    const/4 v11, 0x0

    move-object v8, v11

    goto/16 :goto_2

    .line 168
    .end local p1
    .restart local v8       #sourceId:Ljava/lang/Integer;
    :cond_10
    iget-object v11, v10, Lcom/google/android/youtube/core/model/Video;->publishedDate:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->resources:Landroid/content/res/Resources;

    move-object v12, v0

    invoke-static {v11, v12}, Lcom/google/android/youtube/app/utils/TimeUtil;->getTimeAgoString(Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, age:Ljava/lang/String;
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->detail:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->resources:Landroid/content/res/Resources;

    move-object v12, v0

    const v13, 0x7f0d00bd

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    if-eqz v4, :cond_11

    move-object/from16 v16, v4

    :goto_c
    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object v0, v10

    iget v0, v0, Lcom/google/android/youtube/core/model/Video;->viewCount:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_11
    const-string v16, ""

    goto :goto_c

    .line 173
    .end local v4           #age:Ljava/lang/String;
    .end local v8           #sourceId:Ljava/lang/Integer;
    .restart local p1
    :cond_12
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->detail:Landroid/widget/TextView;

    sget-object v12, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 174
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->detail:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->resources:Landroid/content/res/Resources;

    move-object v12, v0

    iget-object v13, v10, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    iget v13, v13, Lcom/google/android/youtube/core/model/Video$State;->explanationId:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 179
    .end local p1
    :cond_13
    const/16 v12, 0x8

    goto/16 :goto_4

    .line 188
    .restart local v9       #thumbnail:Landroid/graphics/Bitmap;
    :cond_14
    iget-object v11, v10, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    if-nez v11, :cond_5

    iget-object v11, v10, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v12, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v11, v12, :cond_5

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->missingThumbnail:Landroid/graphics/Bitmap;

    move-object v9, v0

    goto/16 :goto_5

    .line 192
    :cond_15
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto/16 :goto_6

    .line 202
    .end local v9           #thumbnail:Landroid/graphics/Bitmap;
    :cond_16
    const/16 v12, 0x8

    goto/16 :goto_7

    .line 205
    :cond_17
    const/16 v12, 0x8

    goto/16 :goto_8

    .line 215
    :cond_18
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->more:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9

    .line 227
    :cond_19
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->badgeMusic:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    .line 240
    :cond_1a
    iget-object v11, v5, Lcom/google/android/youtube/app/adapter/VideoListAdapter$ViewHolder;->badge3d:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b
.end method

.method protected internalAdd(Lcom/google/android/youtube/core/model/Video;)V
    .locals 3
    .parameter "video"

    .prologue
    .line 102
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->thumbnails:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->thumbnailUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->internalAdd(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method protected bridge synthetic internalAdd(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Lcom/google/android/youtube/core/model/Video;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->internalAdd(Lcom/google/android/youtube/core/model/Video;)V

    return-void
.end method

.method public setIsMusicVideo(Ljava/lang/String;)V
    .locals 1
    .parameter "videoId"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->musicVideos:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->notifyDataSetChanged()V

    .line 135
    :cond_0
    return-void
.end method

.method public setThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "thumbnailUri"
    .parameter "thumbnail"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->thumbnails:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->thumbnails:Ljava/util/HashMap;

    if-eqz p2, :cond_1

    move-object v1, p2

    :goto_0
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-virtual {p0}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->notifyDataSetChanged()V

    .line 126
    :cond_0
    return-void

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->missingThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
