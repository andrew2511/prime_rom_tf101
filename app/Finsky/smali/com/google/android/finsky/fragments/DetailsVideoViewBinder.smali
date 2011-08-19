.class public Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;
.super Lcom/google/android/finsky/fragments/TableLayoutViewBinder;
.source "DetailsVideoViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/TableLayoutViewBinder",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mColumns:I

.field private mVideoPreviews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Doc$Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
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
    .line 35
    const v0, 0x7f090022

    const v1, 0x7f0b005a

    invoke-super {p0, p1, p2, v0, v1}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;II)V

    .line 37
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->hasVideos()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;->mVideoPreviews:Ljava/util/List;

    .line 38
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;->mVideoPreviews:Ljava/util/List;

    if-nez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    :goto_1
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iput p3, p0, Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;->mColumns:I

    .line 46
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;->populateTable()V

    goto :goto_1
.end method

.method protected getCellCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;->mVideoPreviews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic getData(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;->getData(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getData(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;->mVideoPreviews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTableCellLayoutId()I
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f040047

    return v0
.end method

.method protected getTableColumnCount()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;->mColumns:I

    return v0
.end method

.method protected bridge synthetic setupTableCell(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;->setupTableCell(Ljava/lang/String;Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected setupTableCell(Ljava/lang/String;Landroid/view/ViewGroup;)V
    .locals 1
    .parameter "data"
    .parameter "view"

    .prologue
    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 87
    :cond_0
    new-instance v0, Lcom/google/android/finsky/fragments/DetailsVideoViewBinder$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/finsky/fragments/DetailsVideoViewBinder$1;-><init>(Lcom/google/android/finsky/fragments/DetailsVideoViewBinder;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
