.class public Lcom/google/android/music/menu/MusicListMenuView;
.super Landroid/widget/LinearLayout;
.source "MusicListMenuView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicListMenuView"


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mHasStaleChildren:Z

.field private mMenu:Lcom/google/android/music/menu/MusicListMenu;

.field private mSubView:Landroid/widget/LinearLayout;

.field private mSubViewScrollContainer:Landroid/widget/ScrollView;

.field private mTitleView:Landroid/widget/TextView;

.field private mUseDividers:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    .local v0, resource:Landroid/content/res/Resources;
    iput-boolean v3, p0, Lcom/google/android/music/menu/MusicListMenuView;->mHasStaleChildren:Z

    .line 45
    iput-boolean v4, p0, Lcom/google/android/music/menu/MusicListMenuView;->mUseDividers:Z

    .line 46
    const v1, 0x7f0201b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/menu/MusicListMenuView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 47
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenuView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/google/android/music/menu/MusicListMenuView;->mDividerHeight:I

    .line 53
    iget v1, p0, Lcom/google/android/music/menu/MusicListMenuView;->mDividerHeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 54
    iput v3, p0, Lcom/google/android/music/menu/MusicListMenuView;->mDividerHeight:I

    .line 58
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/android/music/menu/MusicListMenuView;->setWillNotDraw(Z)V

    .line 61
    invoke-virtual {p0, v3}, Lcom/google/android/music/menu/MusicListMenuView;->setFocusableInTouchMode(Z)V

    .line 63
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/music/menu/MusicListMenuView;->setDescendantFocusability(I)V

    .line 64
    return-void
.end method

.method private addItemView(Lcom/google/android/music/menu/MusicListMenuItemView;)V
    .locals 4
    .parameter "itemView"

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicListMenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    const-string v1, "MusicListMenuView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The itemView already has a parent, need to remove this parent. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicListMenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 130
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicListMenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 131
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 140
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenuView;->mSubView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string v1, "MusicListMenuView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to add an itemView since its parent is not a ViewGroup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateChildren()V
    .locals 6

    .prologue
    .line 106
    iget-object v5, p0, Lcom/google/android/music/menu/MusicListMenuView;->mMenu:Lcom/google/android/music/menu/MusicListMenu;

    invoke-virtual {v5}, Lcom/google/android/music/menu/MusicListMenu;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 107
    .local v1, itemsToShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/menu/MusicMenuItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 110
    .local v3, numItems:I
    iget-object v5, p0, Lcom/google/android/music/menu/MusicListMenuView;->mSubView:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 113
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 114
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/menu/MusicListMenuItem;

    .line 115
    .local v2, menuItem:Lcom/google/android/music/menu/MusicListMenuItem;
    invoke-virtual {v2, p0}, Lcom/google/android/music/menu/MusicListMenuItem;->getItemView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/menu/MusicListMenuItemView;

    .line 116
    .local v4, view:Lcom/google/android/music/menu/MusicListMenuItemView;
    iget-object v5, p0, Lcom/google/android/music/menu/MusicListMenuView;->mMenu:Lcom/google/android/music/menu/MusicListMenu;

    invoke-virtual {v4, v5}, Lcom/google/android/music/menu/MusicListMenuItemView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 117
    invoke-direct {p0, v4}, Lcom/google/android/music/menu/MusicListMenuView;->addItemView(Lcom/google/android/music/menu/MusicListMenuItemView;)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v2           #menuItem:Lcom/google/android/music/menu/MusicListMenuItem;
    .end local v4           #view:Lcom/google/android/music/menu/MusicListMenuItemView;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearChildren()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mSubView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 68
    return-void
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/google/android/music/menu/MusicListMenu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/music/menu/MusicListMenuView;->mMenu:Lcom/google/android/music/menu/MusicListMenu;

    .line 101
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicListMenu;->getHeader()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuView;->setHeader(Ljava/lang/CharSequence;)V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mHasStaleChildren:Z

    .line 103
    return-void
.end method

.method markStaleChildren()V
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mHasStaleChildren:Z

    if-nez v0, :cond_0

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mHasStaleChildren:Z

    .line 163
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 145
    iget-boolean v4, p0, Lcom/google/android/music/menu/MusicListMenuView;->mUseDividers:Z

    if-eqz v4, :cond_0

    .line 146
    iget-object v4, p0, Lcom/google/android/music/menu/MusicListMenuView;->mSubViewScrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    .line 147
    .local v3, scrolledBy:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/google/android/music/menu/MusicListMenuView;->mSubView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 148
    iget-object v4, p0, Lcom/google/android/music/menu/MusicListMenuView;->mSubView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 151
    .local v0, child:Landroid/view/View;
    new-instance v2, Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenuView;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, p0, Lcom/google/android/music/menu/MusicListMenuView;->mDividerHeight:I

    add-int/2addr v7, v8

    sub-int/2addr v7, v3

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 153
    .local v2, rect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/google/android/music/menu/MusicListMenuView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 154
    iget-object v4, p0, Lcom/google/android/music/menu/MusicListMenuView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    .end local v2           #rect:Landroid/graphics/Rect;
    .end local v3           #scrolledBy:I
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 80
    const v0, 0x7f0f0057

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mSubView:Landroid/widget/LinearLayout;

    .line 81
    const v0, 0x7f0f0056

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mSubViewScrollContainer:Landroid/widget/ScrollView;

    .line 82
    const/high16 v0, 0x7f0f

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mTitleView:Landroid/widget/TextView;

    .line 83
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mHasStaleChildren:Z

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mHasStaleChildren:Z

    .line 171
    invoke-direct {p0}, Lcom/google/android/music/menu/MusicListMenuView;->updateChildren()V

    .line 173
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 174
    return-void
.end method

.method public setHeader(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_0
    return-void
.end method

.method public setUseDividers(Z)V
    .locals 0
    .parameter "useDividers"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/google/android/music/menu/MusicListMenuView;->mUseDividers:Z

    .line 76
    return-void
.end method

.method public useDividers()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenuView;->mUseDividers:Z

    return v0
.end method
