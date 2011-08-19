.class public Lcom/asus/reader/ui/CategoryListView;
.super Landroid/widget/ExpandableListView;
.source "CategoryListView.java"


# instance fields
.field private mCategoryAdapter:Landroid/widget/BaseExpandableListAdapter;

.field private mCategoryPosition:I

.field private mFocusedChild:I

.field private mFocusedGroup:I

.field private mSubCategoryPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .line 25
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 14
    iput v0, p0, Lcom/asus/reader/ui/CategoryListView;->mCategoryPosition:I

    .line 15
    iput v0, p0, Lcom/asus/reader/ui/CategoryListView;->mSubCategoryPosition:I

    .line 16
    iput v0, p0, Lcom/asus/reader/ui/CategoryListView;->mFocusedGroup:I

    .line 17
    iput v0, p0, Lcom/asus/reader/ui/CategoryListView;->mFocusedChild:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput v0, p0, Lcom/asus/reader/ui/CategoryListView;->mCategoryPosition:I

    .line 15
    iput v0, p0, Lcom/asus/reader/ui/CategoryListView;->mSubCategoryPosition:I

    .line 16
    iput v0, p0, Lcom/asus/reader/ui/CategoryListView;->mFocusedGroup:I

    .line 17
    iput v0, p0, Lcom/asus/reader/ui/CategoryListView;->mFocusedChild:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, -0x1

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    iput v0, p0, Lcom/asus/reader/ui/CategoryListView;->mCategoryPosition:I

    .line 15
    iput v0, p0, Lcom/asus/reader/ui/CategoryListView;->mSubCategoryPosition:I

    .line 16
    iput v0, p0, Lcom/asus/reader/ui/CategoryListView;->mFocusedGroup:I

    .line 17
    iput v0, p0, Lcom/asus/reader/ui/CategoryListView;->mFocusedChild:I

    .line 34
    return-void
.end method


# virtual methods
.method public drawCategoryBackground()V
    .locals 4

    .prologue
    .line 121
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/asus/reader/ui/CategoryListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 122
    invoke-virtual {p0, v1}, Lcom/asus/reader/ui/CategoryListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/ui/CategoryItem;

    .line 124
    .local v0, cateitem:Lcom/asus/reader/ui/CategoryItem;
    invoke-virtual {v0}, Lcom/asus/reader/ui/CategoryItem;->getPosition()I

    move-result v2

    iget v3, p0, Lcom/asus/reader/ui/CategoryListView;->mCategoryPosition:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/asus/reader/ui/CategoryItem;->getSubPosition()I

    move-result v2

    iget v3, p0, Lcom/asus/reader/ui/CategoryListView;->mSubCategoryPosition:I

    if-ne v2, v3, :cond_0

    .line 125
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/asus/reader/ui/CategoryItem;->reSetStates(I)V

    .line 121
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {v0}, Lcom/asus/reader/ui/CategoryItem;->getPosition()I

    move-result v2

    iget v3, p0, Lcom/asus/reader/ui/CategoryListView;->mFocusedGroup:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/asus/reader/ui/CategoryItem;->getSubPosition()I

    move-result v2

    iget v3, p0, Lcom/asus/reader/ui/CategoryListView;->mFocusedChild:I

    if-ne v2, v3, :cond_1

    .line 127
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/asus/reader/ui/CategoryItem;->reSetStates(I)V

    goto :goto_1

    .line 129
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/asus/reader/ui/CategoryItem;->reSetStates(I)V

    goto :goto_1

    .line 131
    .end local v0           #cateitem:Lcom/asus/reader/ui/CategoryItem;
    :cond_2
    return-void
.end method

.method public getChildPosition()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/asus/reader/ui/CategoryListView;->mSubCategoryPosition:I

    return v0
.end method

.method public getGroupPosition()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/asus/reader/ui/CategoryListView;->mCategoryPosition:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/asus/reader/ui/CategoryListView;->mCategoryAdapter:Landroid/widget/BaseExpandableListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/asus/reader/ui/CategoryListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/asus/reader/ui/CategoryListView;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/asus/reader/ui/CategoryListView;->mCategoryAdapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 54
    :cond_0
    invoke-super {p0}, Landroid/widget/ExpandableListView;->layoutChildren()V

    .line 55
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v0, -0x1

    .line 59
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ExpandableListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 60
    if-nez p1, :cond_0

    .line 61
    iput v0, p0, Lcom/asus/reader/ui/CategoryListView;->mFocusedGroup:I

    .line 62
    iput v0, p0, Lcom/asus/reader/ui/CategoryListView;->mFocusedChild:I

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/asus/reader/ui/CategoryListView;->drawCategoryBackground()V

    .line 67
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/asus/reader/ui/CategoryListView;->relocatFocus()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 38
    invoke-super {p0, p1, p2}, Landroid/widget/ExpandableListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 39
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/asus/reader/ui/CategoryListView;->relocatFocus()V

    .line 40
    invoke-virtual {p0}, Lcom/asus/reader/ui/CategoryListView;->drawCategoryBackground()V

    .line 41
    return v0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 5
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ExpandableListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    .line 72
    .local v0, click:Z
    invoke-virtual {p0}, Lcom/asus/reader/ui/CategoryListView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/asus/reader/ui/CategoryListView;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/asus/reader/ui/CategoryListView;->measure(II)V

    .line 73
    invoke-virtual {p0}, Lcom/asus/reader/ui/CategoryListView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/asus/reader/ui/CategoryListView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/asus/reader/ui/CategoryListView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/asus/reader/ui/CategoryListView;->getBottom()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/asus/reader/ui/CategoryListView;->layout(IIII)V

    .line 74
    invoke-virtual {p0}, Lcom/asus/reader/ui/CategoryListView;->relocatFocus()V

    .line 75
    invoke-virtual {p0}, Lcom/asus/reader/ui/CategoryListView;->drawCategoryBackground()V

    .line 76
    return v0
.end method

.method public relocatFocus()V
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/asus/reader/ui/CategoryListView;->getSelectedPosition()J

    move-result-wide v0

    .line 107
    .local v0, position:J
    invoke-static {v0, v1}, Lcom/asus/reader/ui/CategoryListView;->getPackedPositionGroup(J)I

    move-result v2

    iput v2, p0, Lcom/asus/reader/ui/CategoryListView;->mFocusedGroup:I

    .line 108
    invoke-static {v0, v1}, Lcom/asus/reader/ui/CategoryListView;->getPackedPositionChild(J)I

    move-result v2

    iput v2, p0, Lcom/asus/reader/ui/CategoryListView;->mFocusedChild:I

    .line 109
    return-void
.end method

.method public setAdapter(Landroid/widget/BaseExpandableListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/asus/reader/ui/CategoryListView;->mCategoryAdapter:Landroid/widget/BaseExpandableListAdapter;

    .line 46
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 47
    return-void
.end method

.method public setCategoryPosition(II)V
    .locals 0
    .parameter "category"
    .parameter "subcategory"

    .prologue
    .line 80
    iput p1, p0, Lcom/asus/reader/ui/CategoryListView;->mCategoryPosition:I

    .line 81
    iput p2, p0, Lcom/asus/reader/ui/CategoryListView;->mSubCategoryPosition:I

    .line 82
    return-void
.end method

.method public setFocus(II)V
    .locals 0
    .parameter "group"
    .parameter "child"

    .prologue
    .line 93
    iput p1, p0, Lcom/asus/reader/ui/CategoryListView;->mFocusedGroup:I

    .line 94
    iput p2, p0, Lcom/asus/reader/ui/CategoryListView;->mFocusedChild:I

    .line 95
    return-void
.end method

.method public setState(Lcom/asus/reader/ui/CategoryItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/asus/reader/ui/CategoryItem;->getPosition()I

    move-result v0

    iget v1, p0, Lcom/asus/reader/ui/CategoryListView;->mCategoryPosition:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/asus/reader/ui/CategoryItem;->getSubPosition()I

    move-result v0

    iget v1, p0, Lcom/asus/reader/ui/CategoryListView;->mSubCategoryPosition:I

    if-ne v0, v1, :cond_0

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/asus/reader/ui/CategoryItem;->setState(I)V

    .line 118
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/asus/reader/ui/CategoryItem;->getPosition()I

    move-result v0

    iget v1, p0, Lcom/asus/reader/ui/CategoryListView;->mFocusedGroup:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/asus/reader/ui/CategoryItem;->getSubPosition()I

    move-result v0

    iget v1, p0, Lcom/asus/reader/ui/CategoryListView;->mFocusedChild:I

    if-ne v0, v1, :cond_1

    .line 115
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/asus/reader/ui/CategoryItem;->setState(I)V

    goto :goto_0

    .line 117
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/asus/reader/ui/CategoryItem;->setState(I)V

    goto :goto_0
.end method
