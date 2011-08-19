.class public Lcom/google/android/voicesearch/actioneditor/ColumnListView;
.super Landroid/widget/ListView;
.source "ColumnListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/high16 v10, -0x8000

    .line 37
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ColumnListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 39
    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ColumnListView;->getMeasuredWidth()I

    move-result v3

    .line 51
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 52
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 54
    if-eq v5, v10, :cond_2

    if-nez v5, :cond_a

    :cond_2
    move v3, v8

    move-object v6, v2

    move v2, v8

    .line 56
    :goto_1
    if-ge v2, v1, :cond_9

    .line 58
    invoke-interface {v0, v2, v6, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 59
    invoke-virtual {v6, p1, p2}, Landroid/view/View;->measure(II)V

    .line 60
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 61
    if-le v7, v3, :cond_3

    move v3, v7

    .line 65
    :cond_3
    if-ne v5, v10, :cond_5

    if-ne v3, v4, :cond_5

    move v2, v3

    move-object v3, v6

    .line 73
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/ColumnListView;->getMeasuredHeight()I

    move-result v4

    .line 74
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 75
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 77
    if-eq v6, v10, :cond_4

    if-nez v6, :cond_8

    .line 80
    :cond_4
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move v7, v8

    move v11, v8

    move-object v8, v3

    move v3, v11

    .line 81
    :goto_3
    if-ge v3, v1, :cond_7

    .line 83
    invoke-interface {v0, v3, v8, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 84
    invoke-virtual {v8, v4, p2}, Landroid/view/View;->measure(II)V

    .line 85
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 88
    add-int/2addr v7, v9

    .line 89
    if-ne v6, v10, :cond_6

    if-lt v7, v5, :cond_6

    move v0, v5

    .line 96
    :goto_4
    invoke-virtual {p0, v2, v0}, Lcom/google/android/voicesearch/actioneditor/ColumnListView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 56
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 81
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    move v0, v7

    goto :goto_4

    :cond_8
    move v0, v4

    goto :goto_4

    :cond_9
    move v2, v3

    move-object v3, v6

    goto :goto_2

    :cond_a
    move v11, v3

    move-object v3, v2

    move v2, v11

    goto :goto_2
.end method
