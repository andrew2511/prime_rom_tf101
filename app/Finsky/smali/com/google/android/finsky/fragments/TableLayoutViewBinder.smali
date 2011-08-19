.class public abstract Lcom/google/android/finsky/fragments/TableLayoutViewBinder;
.super Lcom/google/android/finsky/fragments/DetailsViewBinder;
.source "TableLayoutViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/finsky/fragments/DetailsViewBinder;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    .local p0, this:Lcom/google/android/finsky/fragments/TableLayoutViewBinder;,"Lcom/google/android/finsky/fragments/TableLayoutViewBinder<TT;>;"
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DetailsViewBinder;-><init>()V

    return-void
.end method


# virtual methods
.method protected addCellToRow(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter
    .parameter "tableRow"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lcom/google/android/finsky/fragments/TableLayoutViewBinder;,"Lcom/google/android/finsky/fragments/TableLayoutViewBinder<TT;>;"
    .local p1, data:Ljava/lang/Object;,"TT;"
    iget-object v1, p0, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->getTableCellLayoutId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 51
    .local v0, cell:Landroid/view/ViewGroup;
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->setupTableCell(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method protected finishRowWithEmptyCells(Landroid/view/ViewGroup;)V
    .locals 7
    .parameter "tableRow"

    .prologue
    .line 62
    .local p0, this:Lcom/google/android/finsky/fragments/TableLayoutViewBinder;,"Lcom/google/android/finsky/fragments/TableLayoutViewBinder<TT;>;"
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 63
    .local v0, childViewsCount:I
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->getTableColumnCount()I

    move-result v4

    sub-int v1, v4, v0

    .line 64
    .local v1, emptyViewsNeededCount:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 65
    iget-object v4, p0, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->getTableCellLayoutId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 67
    .local v2, itemView:Landroid/view/ViewGroup;
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 68
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    .end local v2           #itemView:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method protected abstract getCellCount()I
.end method

.method protected abstract getData(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method protected abstract getTableCellLayoutId()I
.end method

.method protected abstract getTableColumnCount()I
.end method

.method protected getTableLayoutId()I
    .locals 1

    .prologue
    .line 76
    .local p0, this:Lcom/google/android/finsky/fragments/TableLayoutViewBinder;,"Lcom/google/android/finsky/fragments/TableLayoutViewBinder<TT;>;"
    const v0, 0x7f090046

    return v0
.end method

.method protected populateTable()V
    .locals 7

    .prologue
    .line 22
    .local p0, this:Lcom/google/android/finsky/fragments/TableLayoutViewBinder;,"Lcom/google/android/finsky/fragments/TableLayoutViewBinder<TT;>;"
    iget-object v5, p0, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->mLayout:Landroid/view/View;

    const v6, 0x7f090046

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableLayout;

    .line 23
    .local v3, tableLayout:Landroid/widget/TableLayout;
    invoke-virtual {v3}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 28
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->getCellCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 29
    new-instance v4, Landroid/widget/TableRow;

    iget-object v5, p0, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 30
    .local v4, tableRow:Landroid/widget/TableRow;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->getTableColumnCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    add-int v5, v1, v2

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->getCellCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 31
    add-int v5, v1, v2

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->getData(I)Ljava/lang/Object;

    move-result-object v0

    .line 32
    .local v0, data:Ljava/lang/Object;,"TT;"
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0, v0, v4}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->addCellToRow(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 30
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 36
    .end local v0           #data:Ljava/lang/Object;,"TT;"
    :cond_1
    invoke-virtual {p0, v4}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->finishRowWithEmptyCells(Landroid/view/ViewGroup;)V

    .line 37
    invoke-virtual {v3, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 28
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/TableLayoutViewBinder;->getTableColumnCount()I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_0

    .line 39
    .end local v2           #j:I
    .end local v4           #tableRow:Landroid/widget/TableRow;
    :cond_2
    return-void
.end method

.method protected abstract setupTableCell(Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation
.end method
