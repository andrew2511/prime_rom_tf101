.class public Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;
.super Lcom/google/android/finsky/fragments/TableLayoutViewBinder;
.source "DetailsTrailerViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/TableLayoutViewBinder",
        "<",
        "Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;",
        ">;"
    }
.end annotation


# instance fields
.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mColumns:I

.field private mMovieTrailers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;I)V
    .locals 2
    .parameter "view"
    .parameter "doc"
    .parameter "columns"

    .prologue
    .line 49
    const v0, 0x7f090022

    const v1, 0x7f0b005b

    invoke-super {p0, p1, p2, v0, v1}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;II)V

    .line 51
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getMovieTrailers()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;->mMovieTrailers:Ljava/util/List;

    .line 52
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;->mMovieTrailers:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;->mMovieTrailers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iput p3, p0, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;->mColumns:I

    .line 60
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;->populateTable()V

    goto :goto_0
.end method

.method protected getCellCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;->mMovieTrailers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getData(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;
    .locals 1
    .parameter "position"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;->mMovieTrailers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;

    return-object p0
.end method

.method protected bridge synthetic getData(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;->getData(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;

    move-result-object v0

    return-object v0
.end method

.method protected getTableCellLayoutId()I
    .locals 1

    .prologue
    .line 127
    const v0, 0x7f040047

    return v0
.end method

.method protected getTableColumnCount()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;->mColumns:I

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;)V
    .locals 0
    .parameter "context"
    .parameter "api"
    .parameter "navManager"
    .parameter "bitmapLoader"

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->init(Landroid/content/Context;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 45
    iput-object p4, p0, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 46
    return-void
.end method

.method protected setupTableCell(Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;Landroid/view/ViewGroup;)V
    .locals 7
    .parameter "data"
    .parameter "view"

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 98
    :cond_0
    const v4, 0x7f0900ac

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 99
    .local v3, titleView:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const v4, 0x7f0900ad

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    .local v0, durationView:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->getDuration()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, thumbnailUrl:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 108
    const v4, 0x7f0900aa

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 109
    .local v2, thumbnailView:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    new-instance v5, Lcom/google/android/finsky/layout/ThumbnailListener;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Lcom/google/android/finsky/layout/ThumbnailListener;-><init>(Landroid/widget/ImageView;Z)V

    invoke-virtual {v4, v1, v2, v5}, Lcom/google/android/finsky/utils/BitmapLoader;->getOrBindImmediately(Ljava/lang/String;Landroid/widget/ImageView;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 114
    .end local v2           #thumbnailView:Landroid/widget/ImageView;
    :cond_1
    new-instance v4, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder$1;

    invoke-direct {v4, p0, p1}, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder$1;-><init>(Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;)V

    invoke-virtual {p2, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected bridge synthetic setupTableCell(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    check-cast p1, Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/fragments/DetailsTrailerViewBinder;->setupTableCell(Lcom/google/android/finsky/remoting/protos/DeviceDoc$Trailer;Landroid/view/ViewGroup;)V

    return-void
.end method
