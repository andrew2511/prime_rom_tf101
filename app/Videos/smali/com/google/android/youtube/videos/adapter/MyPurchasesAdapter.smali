.class public Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;
.super Lcom/google/android/youtube/core/adapter/ArrayListAdapter;
.source "MyPurchasesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$1;,
        Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;,
        Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$AdapterDataSetObserver;,
        Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/adapter/ArrayListAdapter",
        "<",
        "Lcom/google/android/youtube/core/model/Purchase;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final dataSetObserver:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$AdapterDataSetObserver;

.field private final layoutHeight:I

.field private final movieAdapter:Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

.field private offlineManagement:Z

.field private final posterHeight:I

.field private final posterWidth:I

.field private final res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "itemLayout"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;-><init>()V

    .line 51
    new-instance v0, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    invoke-direct {v0, p1, p2}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->movieAdapter:Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    .line 52
    new-instance v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$AdapterDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$AdapterDataSetObserver;-><init>(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->dataSetObserver:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$AdapterDataSetObserver;

    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->movieAdapter:Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    iget-object v1, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->dataSetObserver:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->layoutHeight:I

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->posterWidth:I

    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->posterHeight:I

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->dataMap:Ljava/util/Map;

    .line 62
    return-void
.end method

.method private compare(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/Purchase;)I
    .locals 3
    .parameter "p1"
    .parameter "p2"

    .prologue
    .line 132
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 133
    .local v0, now:Ljava/util/Date;
    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isExpired(Lcom/google/android/youtube/core/model/Purchase;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2, v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isExpired(Lcom/google/android/youtube/core/model/Purchase;Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    const/4 v1, 0x1

    .line 139
    :goto_0
    return v1

    .line 136
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isExpired(Lcom/google/android/youtube/core/model/Purchase;Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p2, v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isExpired(Lcom/google/android/youtube/core/model/Purchase;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const/4 v1, -0x1

    goto :goto_0

    .line 139
    :cond_1
    iget-object v1, p2, Lcom/google/android/youtube/core/model/Purchase;->purchaseDate:Ljava/util/Date;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Purchase;->purchaseDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    goto :goto_0
.end method

.method private dataFor(Ljava/lang/String;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;
    .locals 2
    .parameter "videoId"

    .prologue
    .line 283
    iget-object v1, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->dataMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;

    .line 284
    .local v0, result:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;
    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;

    .end local v0           #result:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;
    invoke-direct {v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;-><init>()V

    .line 286
    .restart local v0       #result:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;
    iget-object v1, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->dataMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_0
    return-object v0
.end method

.method private getStatusText(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;I)Ljava/lang/String;
    .locals 5
    .parameter "status"
    .parameter "progress"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 250
    if-nez p1, :cond_0

    move-object v0, v3

    .line 265
    :goto_0
    return-object v0

    .line 253
    :cond_0
    sget-object v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$1;->$SwitchMap$com$google$android$youtube$videos$adapter$MyPurchasesAdapter$DownloadStatus:[I

    invoke-virtual {p1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v0, v3

    .line 265
    goto :goto_0

    .line 255
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    const v1, 0x7f0c001e

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 257
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    const v1, 0x7f0c001f

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 259
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    const v1, 0x7f0c0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 261
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    const v1, 0x7f0c0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 263
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    const v1, 0x7f0c0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isExpired(Lcom/google/android/youtube/core/model/Purchase;Ljava/util/Date;)Z
    .locals 3
    .parameter "purchase"
    .parameter "now"

    .prologue
    .line 156
    iget-object v2, p1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    .line 157
    .local v1, videoId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->dataFor(Ljava/lang/String;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;

    move-result-object v0

    .line 158
    .local v0, data:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;
    invoke-virtual {p1, p2}, Lcom/google/android/youtube/core/model/Purchase;->isExpired(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->expirationDate:Ljava/util/Date;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->expirationDate:Ljava/util/Date;

    invoke-virtual {p2, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->clear()V

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->dataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->movieAdapter:Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->clear()V

    .line 92
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 197
    iget-object v8, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->movieAdapter:Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    invoke-virtual {v8, p1, p2, p3}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 198
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 199
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v9, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->layoutHeight:I

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 202
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;

    .line 203
    .local v3, holder:Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;
    iget-object v8, v3, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->poster:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v9, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->posterWidth:I

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 204
    iget-object v8, v3, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->poster:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    iget v9, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->posterHeight:I

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/core/model/Purchase;

    .line 207
    .local v5, purchase:Lcom/google/android/youtube/core/model/Purchase;
    iget-object v8, v5, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v7, v8, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    .line 208
    .local v7, videoId:Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->dataFor(Ljava/lang/String;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;

    move-result-object v0

    .line 210
    .local v0, data:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;
    iget-object v8, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->expirationDate:Ljava/util/Date;

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->expirationDate:Ljava/util/Date;

    move-object v1, v8

    .line 214
    .local v1, expirationDate:Ljava/util/Date;
    :goto_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 215
    .local v4, now:Ljava/util/Date;
    invoke-virtual {v5, v4}, Lcom/google/android/youtube/core/model/Purchase;->isExpired(Ljava/util/Date;)Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz v1, :cond_4

    invoke-virtual {v4, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_1
    const/4 v8, 0x1

    move v2, v8

    .line 218
    .local v2, expired:Z
    :goto_1
    if-eqz v2, :cond_5

    .line 219
    iget-object v8, v3, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->expires:Landroid/widget/TextView;

    const v9, 0x7f0c0025

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 220
    iget-object v8, v3, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->expires:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    const v10, 0x7f0a0001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    iget-object v8, v3, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->expires:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    :cond_2
    :goto_2
    iget-object v8, v3, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->poster:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    const/16 v9, 0x3f

    :goto_3
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 238
    iget-object v8, v3, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->downloadStatus:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    const/16 v9, 0x8

    :goto_4
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v8, v3, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->downloadStatus:Landroid/widget/TextView;

    iget-object v9, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->downloadStatus:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    iget v10, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->downloadProgress:I

    invoke-direct {p0, v9, v10}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getStatusText(Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v8, v3, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->offline:Lcom/google/android/youtube/core/ui/CheckedImageView;

    iget-boolean v9, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->offlineManagement:Z

    if-eqz v9, :cond_9

    if-nez v2, :cond_9

    const/4 v9, 0x0

    :goto_5
    invoke-virtual {v8, v9}, Lcom/google/android/youtube/core/ui/CheckedImageView;->setVisibility(I)V

    .line 244
    iget-object v8, v3, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->offline:Lcom/google/android/youtube/core/ui/CheckedImageView;

    iget-boolean v9, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->offlinePin:Z

    invoke-virtual {v8, v9}, Lcom/google/android/youtube/core/ui/CheckedImageView;->setChecked(Z)V

    .line 246
    return-object p2

    .line 210
    .end local v1           #expirationDate:Ljava/util/Date;
    .end local v2           #expired:Z
    .end local v4           #now:Ljava/util/Date;
    :cond_3
    iget-object v8, v5, Lcom/google/android/youtube/core/model/Purchase;->expirationDate:Ljava/util/Date;

    move-object v1, v8

    goto :goto_0

    .line 215
    .restart local v1       #expirationDate:Ljava/util/Date;
    .restart local v4       #now:Ljava/util/Date;
    :cond_4
    const/4 v8, 0x0

    move v2, v8

    goto :goto_1

    .line 223
    .restart local v2       #expired:Z
    :cond_5
    iget-object v8, v3, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->expires:Landroid/widget/TextView;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    if-eqz v1, :cond_2

    .line 225
    invoke-static {v1, v4}, Lcom/google/android/youtube/videos/utils/ExpirationUtil;->getRemainingDays(Ljava/util/Date;Ljava/util/Date;)I

    move-result v6

    .line 226
    .local v6, remainingDays:I
    const/16 v8, 0x3c

    if-gt v6, v8, :cond_2

    .line 227
    iget-object v8, v3, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->expires:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    invoke-static {v1, v4, v9}, Lcom/google/android/youtube/videos/utils/ExpirationUtil;->getTimeToExpirationString(Ljava/util/Date;Ljava/util/Date;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v8, v3, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->expires:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->res:Landroid/content/res/Resources;

    mul-int/lit8 v10, v6, 0x18

    const/16 v11, 0x18

    if-ge v10, v11, :cond_6

    const v10, 0x7f0a000b

    :goto_6
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    iget-object v8, v3, Lcom/google/android/youtube/videos/adapter/MovieListAdapter$MovieViewHolder;->expires:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 229
    :cond_6
    const v10, 0x7f0a0001

    goto :goto_6

    .line 236
    .end local v6           #remainingDays:I
    :cond_7
    const/16 v9, 0xff

    goto :goto_3

    .line 238
    :cond_8
    const/4 v9, 0x0

    goto :goto_4

    .line 243
    :cond_9
    const/4 v9, 0x4

    goto :goto_5
.end method

.method protected internalAdd(Lcom/google/android/youtube/core/model/Purchase;)V
    .locals 6
    .parameter "purchase"

    .prologue
    .line 66
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v3, p1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v3, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    .line 68
    .local v2, videoId:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->dataFor(Ljava/lang/String;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;

    move-result-object v0

    .line 69
    .local v0, data:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;
    iget v3, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->index:I

    if-ltz v3, :cond_2

    .line 71
    iget v3, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->index:I

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Purchase;

    .line 72
    .local v1, previous:Lcom/google/android/youtube/core/model/Purchase;
    iget-object v3, p1, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/google/android/youtube/core/model/Purchase;->purchaseDate:Ljava/util/Date;

    iget-object v4, v1, Lcom/google/android/youtube/core/model/Purchase;->purchaseDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    :cond_0
    iget v3, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->index:I

    invoke-super {p0, v3, p1}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->internalSet(ILjava/lang/Object;)V

    .line 77
    iget-object v3, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->movieAdapter:Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    iget v4, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->index:I

    iget-object v5, p1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->internalSet(ILjava/lang/Object;)V

    .line 85
    .end local v1           #previous:Lcom/google/android/youtube/core/model/Purchase;
    :cond_1
    :goto_0
    return-void

    .line 80
    :cond_2
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->internalAdd(Ljava/lang/Object;)V

    .line 81
    iget-object v3, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->movieAdapter:Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    iget-object v4, p1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->internalAdd(Lcom/google/android/youtube/core/model/Video;)V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->index:I

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic internalAdd(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, Lcom/google/android/youtube/core/model/Purchase;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->internalAdd(Lcom/google/android/youtube/core/model/Purchase;)V

    return-void
.end method

.method public isExpired(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Purchase;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isExpired(Lcom/google/android/youtube/core/model/Purchase;Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public isOfflineManagement()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->offlineManagement:Z

    return v0
.end method

.method public setOfflineManagement(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->offlineManagement:Z

    .line 189
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->notifyDataSetChanged()V

    .line 190
    return-void
.end method

.method public setPinState(Ljava/lang/String;ZLcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;ILjava/util/Date;)V
    .locals 6
    .parameter "videoId"
    .parameter "pinned"
    .parameter "status"
    .parameter "progress"
    .parameter "expirationDate"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->dataFor(Ljava/lang/String;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;

    move-result-object v1

    .line 166
    .local v1, data:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;
    iget-object v3, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->expirationDate:Ljava/util/Date;

    if-nez v3, :cond_0

    if-nez p5, :cond_1

    :cond_0
    iget-object v3, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->expirationDate:Ljava/util/Date;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->expirationDate:Ljava/util/Date;

    invoke-virtual {v3, p5}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_1
    move v2, v5

    .line 168
    .local v2, expirationDateChanged:Z
    :goto_0
    iget-boolean v3, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->offlinePin:Z

    if-ne v3, p2, :cond_2

    iget-object v3, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->downloadStatus:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    if-ne v3, p3, :cond_2

    iget v3, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->downloadProgress:I

    if-ne v3, p4, :cond_2

    if-eqz v2, :cond_5

    :cond_2
    move v0, v5

    .line 173
    .local v0, changed:Z
    :goto_1
    if-eqz v0, :cond_3

    .line 174
    iput-boolean p2, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->offlinePin:Z

    .line 175
    iput-object p3, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->downloadStatus:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    .line 176
    iput p4, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->downloadProgress:I

    .line 177
    iput-object p5, v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->expirationDate:Ljava/util/Date;

    .line 178
    if-eqz v2, :cond_6

    .line 180
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->sort()V

    .line 185
    :cond_3
    :goto_2
    return-void

    .end local v0           #changed:Z
    .end local v2           #expirationDateChanged:Z
    :cond_4
    move v2, v4

    .line 166
    goto :goto_0

    .restart local v2       #expirationDateChanged:Z
    :cond_5
    move v0, v4

    .line 168
    goto :goto_1

    .line 182
    .restart local v0       #changed:Z
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method public setPosterArt(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "posterUri"
    .parameter "poster"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->movieAdapter:Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->setPosterArt(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 144
    return-void
.end method

.method public sort()V
    .locals 7

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 123
    :cond_0
    return-void

    .line 108
    :cond_1
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 109
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/model/Purchase;

    .line 110
    .local v2, purchase:Lcom/google/android/youtube/core/model/Purchase;
    iget-object v4, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->movieAdapter:Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    invoke-virtual {v4, v0}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/model/Video;

    .line 112
    .local v3, video:Lcom/google/android/youtube/core/model/Video;
    const/4 v4, 0x1

    sub-int v1, v0, v4

    .local v1, j:I
    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/model/Purchase;

    invoke-direct {p0, v4, v2}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->compare(Lcom/google/android/youtube/core/model/Purchase;Lcom/google/android/youtube/core/model/Purchase;)I

    move-result v4

    if-lez v4, :cond_2

    .line 113
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->internalSet(ILjava/lang/Object;)V

    .line 114
    iget-object v4, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->movieAdapter:Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->movieAdapter:Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    invoke-virtual {v6, v1}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->internalSet(ILjava/lang/Object;)V

    .line 112
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 116
    :cond_2
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4, v2}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->internalSet(ILjava/lang/Object;)V

    .line 117
    iget-object v4, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->movieAdapter:Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5, v3}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->internalSet(ILjava/lang/Object;)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v1           #j:I
    .end local v2           #purchase:Lcom/google/android/youtube/core/model/Purchase;
    .end local v3           #video:Lcom/google/android/youtube/core/model/Video;
    :cond_3
    iget-object v4, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->movieAdapter:Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    invoke-virtual {v4}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->notifyDataSetChanged()V

    .line 120
    const/4 v0, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->movieAdapter:Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    invoke-virtual {v4}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 121
    iget-object v4, p0, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->movieAdapter:Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    invoke-virtual {v4, v0}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/model/Video;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->dataFor(Ljava/lang/String;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;

    move-result-object v4

    iput v0, v4, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DataHolder;->index:I

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
