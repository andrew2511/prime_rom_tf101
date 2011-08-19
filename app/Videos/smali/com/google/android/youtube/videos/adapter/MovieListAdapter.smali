.class public Lcom/google/android/youtube/videos/adapter/MovieListAdapter;
.super Lcom/google/android/youtube/core/adapter/ArrayListAdapter;
.source "MovieListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;
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


# static fields
.field private static final CALENDAR:Ljava/util/Calendar;


# instance fields
.field private final context:Landroid/content/Context;

.field private final creditsColor:I

.field private final inflater:Landroid/view/LayoutInflater;

.field private final itemLayout:I

.field private final labelColor:I

.field private final missingPoster:Landroid/graphics/Bitmap;

.field private final posters:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->CALENDAR:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "itemLayout"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;-><init>()V

    .line 53
    const-string v0, "context may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iput-object p1, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->context:Landroid/content/Context;

    .line 55
    iput p2, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->itemLayout:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->labelColor:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->creditsColor:I

    .line 58
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->posters:Ljava/util/Map;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020018

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->missingPoster:Landroid/graphics/Bitmap;

    .line 61
    return-void
.end method

.method private coloredString(Ljava/lang/String;I)Landroid/text/Spanned;
    .locals 2
    .parameter "s"
    .parameter "color"

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<font color=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private showCreditsIfAvailable(Lcom/google/android/youtube/core/model/Video$Movie;Ljava/lang/String;ILandroid/widget/TextView;)V
    .locals 7
    .parameter "movie"
    .parameter "creditsKey"
    .parameter "labelStringId"
    .parameter "view"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 138
    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video$Movie;->credits:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 139
    .local v0, credits:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :goto_0
    return-void

    .line 142
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->labelColor:I

    invoke-direct {p0, v2, v3}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->coloredString(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/CharSequence;

    const-string v3, ", "

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->creditsColor:I

    invoke-direct {p0, v3, v4}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->coloredString(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {p4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->posters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 73
    invoke-super {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->clear()V

    .line 74
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 92
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/youtube/core/model/Video;

    .line 94
    .local v12, video:Lcom/google/android/youtube/core/model/Video;
    if-nez p2, :cond_3

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->itemLayout:I

    move v14, v0

    const/4 v15, 0x0

    move-object v0, v13

    move v1, v14

    move-object/from16 v2, p3

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 96
    new-instance v7, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;

    move-object v0, v7

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;-><init>(Landroid/view/View;)V

    .line 97
    .local v7, holder:Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;
    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 102
    :goto_0
    invoke-static {v7}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->access$000(Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;)Landroid/widget/TextView;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 103
    sget-object v13, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->CALENDAR:Ljava/util/Calendar;

    iget-object v14, v12, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v14, v14, Lcom/google/android/youtube/core/model/Video$Movie;->releaseDate:Ljava/util/Date;

    invoke-virtual {v13, v14}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->context:Landroid/content/Context;

    move-object v13, v0

    const v14, 0x7f0c0068

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object v0, v12

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->CALENDAR:Ljava/util/Calendar;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 106
    .local v11, titleWithReleaseYear:Ljava/lang/String;
    invoke-static {v7}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->access$000(Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .end local v11           #titleWithReleaseYear:Ljava/lang/String;
    :cond_0
    iget-object v13, v12, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v13, v13, Lcom/google/android/youtube/core/model/Video$Movie;->posterUri:Landroid/net/Uri;

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->missingPoster:Landroid/graphics/Bitmap;

    move-object v13, v0

    move-object v9, v13

    .line 111
    .end local p1
    .local v9, poster:Landroid/graphics/Bitmap;
    :goto_1
    iget-object v13, v7, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->poster:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->missingPoster:Landroid/graphics/Bitmap;

    move-object v14, v0

    if-ne v9, v14, :cond_5

    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_2
    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 112
    iget-object v13, v7, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->poster:Landroid/widget/ImageView;

    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    invoke-static {v7}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->access$100(Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;)Landroid/widget/TextView;

    move-result-object v13

    if-eqz v13, :cond_1

    .line 115
    iget-object v13, v12, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v13, v13, Lcom/google/android/youtube/core/model/Video$Movie;->genres:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 116
    invoke-static {v7}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->access$100(Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;)Landroid/widget/TextView;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    :cond_1
    :goto_3
    invoke-static {v7}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->access$200(Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;)Landroid/widget/TextView;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 130
    iget-object v13, v12, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    const-string v14, "Actor"

    const v15, 0x7f0c0063

    invoke-static {v7}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->access$200(Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;)Landroid/widget/TextView;

    move-result-object v16

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move v3, v15

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->showCreditsIfAvailable(Lcom/google/android/youtube/core/model/Video$Movie;Ljava/lang/String;ILandroid/widget/TextView;)V

    .line 132
    :cond_2
    return-object p2

    .line 99
    .end local v7           #holder:Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;
    .end local v9           #poster:Landroid/graphics/Bitmap;
    .restart local p1
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;

    .restart local v7       #holder:Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;
    goto/16 :goto_0

    .line 109
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->posters:Ljava/util/Map;

    move-object v13, v0

    iget-object v14, v12, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v14, v14, Lcom/google/android/youtube/core/model/Video$Movie;->posterUri:Landroid/net/Uri;

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/graphics/Bitmap;

    move-object/from16 v9, p1

    goto :goto_1

    .line 111
    .restart local v9       #poster:Landroid/graphics/Bitmap;
    :cond_5
    sget-object v14, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_2

    .line 118
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    iget-object v13, v12, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v13, v13, Lcom/google/android/youtube/core/model/Video$Movie;->genres:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .local v6, genreStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v13, v12, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v13, v13, Lcom/google/android/youtube/core/model/Video$Movie;->genres:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/core/model/Video$Genre;

    .line 120
    .local v5, genre:Lcom/google/android/youtube/core/model/Video$Genre;
    invoke-interface {v5}, Lcom/google/android/youtube/core/model/Video$Genre;->stringId()I

    move-result v10

    .line 121
    .local v10, stringId:I
    const/4 v13, -0x1

    if-eq v10, v13, :cond_7

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->context:Landroid/content/Context;

    move-object v13, v0

    invoke-virtual {v13, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 125
    .end local v5           #genre:Lcom/google/android/youtube/core/model/Video$Genre;
    .end local v10           #stringId:I
    :cond_8
    invoke-static {v7}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->access$100(Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;)Landroid/widget/TextView;

    move-result-object v13

    const-string v14, ", "

    invoke-static {v14, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-static {v7}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->access$100(Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;)Landroid/widget/TextView;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method protected internalAdd(Lcom/google/android/youtube/core/model/Video;)V
    .locals 3
    .parameter "video"

    .prologue
    .line 65
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->posters:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video$Movie;->posterUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->internalAdd(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method protected bridge synthetic internalAdd(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Lcom/google/android/youtube/core/model/Video;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->internalAdd(Lcom/google/android/youtube/core/model/Video;)V

    return-void
.end method

.method public setPosterArt(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "posterUri"
    .parameter "poster"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->posters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->posters:Ljava/util/Map;

    if-eqz p2, :cond_1

    move-object v1, p2

    :goto_0
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->notifyDataSetChanged()V

    .line 89
    :cond_0
    return-void

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->missingPoster:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
