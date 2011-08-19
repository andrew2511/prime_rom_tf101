.class public Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;
.super Lcom/google/android/finsky/fragments/TableLayoutViewBinder;
.source "DetailsCastCrewViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/TableLayoutViewBinder",
        "<",
        "Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;",
        ">;"
    }
.end annotation


# instance fields
.field private mCreditsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;)V
    .locals 2
    .parameter "view"
    .parameter "doc"

    .prologue
    .line 36
    const v0, 0x7f090022

    const v1, 0x7f0b005e

    invoke-super {p0, p1, p2, v0, v1}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->bind(Landroid/view/View;Lcom/google/android/finsky/api/model/Document;II)V

    .line 38
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getCreditsList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;->mCreditsList:Ljava/util/List;

    .line 39
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;->mCreditsList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;->mCreditsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;->mLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;->mLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;->populateTable()V

    goto :goto_0
.end method

.method protected getCellCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;->mCreditsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getData(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;
    .locals 1
    .parameter "position"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;->mCreditsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;

    return-object p0
.end method

.method protected bridge synthetic getData(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;->getData(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;

    move-result-object v0

    return-object v0
.end method

.method protected getTableCellLayoutId()I
    .locals 1

    .prologue
    .line 114
    const v0, 0x7f040009

    return v0
.end method

.method protected getTableColumnCount()I
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x4

    return v0
.end method

.method protected populateTable()V
    .locals 6

    .prologue
    .line 76
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;->mLayout:Landroid/view/View;

    const v5, 0x7f090046

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    .line 77
    .local v2, tableLayout:Landroid/widget/TableLayout;
    invoke-virtual {v2}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 83
    new-instance v3, Landroid/widget/TableRow;

    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 84
    .local v3, tableRow:Landroid/widget/TableRow;
    iget-object v4, p0, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;->mCreditsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;

    .line 85
    .local v0, credit:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;
    invoke-virtual {p0, v0, v3}, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;->addCellToRow(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 87
    .end local v0           #credit:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;->finishRowWithEmptyCells(Landroid/view/ViewGroup;)V

    .line 88
    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method protected setupTableCell(Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;Landroid/view/ViewGroup;)V
    .locals 10
    .parameter "data"
    .parameter "view"

    .prologue
    .line 96
    if-nez p1, :cond_1

    .line 110
    :cond_0
    return-void

    .line 99
    :cond_1
    const v7, 0x7f090018

    invoke-virtual {p2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 100
    .local v6, titleView:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->getCredit()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    move-object v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v4, v0

    .line 103
    .local v4, namesLayoutView:Landroid/widget/LinearLayout;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->getNameList()Ljava/util/List;

    move-result-object v1

    .line 104
    .local v1, allNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 105
    .local v3, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040008

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 107
    .local v5, singleNameView:Landroid/widget/TextView;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected bridge synthetic setupTableCell(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    check-cast p1, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/finsky/fragments/DetailsCastCrewViewBinder;->setupTableCell(Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;Landroid/view/ViewGroup;)V

    return-void
.end method
