.class public Lcom/layar/ui/smarttab/SmartTabWidget;
.super Landroid/widget/LinearLayout;
.source "SmartTabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/smarttab/SmartTabWidget$OnTabSelectionChanged;,
        Lcom/layar/ui/smarttab/SmartTabWidget$TabClickListener;
    }
.end annotation


# instance fields
.field private mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

.field private mBottomRightStrip:Landroid/graphics/drawable/Drawable;

.field private mSelectedTab:I

.field private mSelectionChangedListener:Lcom/layar/ui/smarttab/SmartTabWidget$OnTabSelectionChanged;

.field private mStripMoved:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/layar/ui/smarttab/SmartTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    const v0, 0x1010083

    invoke-direct {p0, p1, p2, v0}, Lcom/layar/ui/smarttab/SmartTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput v2, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mSelectedTab:I

    .line 63
    invoke-direct {p0}, Lcom/layar/ui/smarttab/SmartTabWidget;->initTabWidget()V

    .line 68
    :try_start_0
    const-string v2, "com.android.internal.R$styleable"

    .line 67
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 68
    const-string v3, "TabWidget"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    check-cast v1, [I

    .line 70
    .local v1, styleable:[I
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #styleable:[I
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/layar/ui/smarttab/SmartTabWidget;)Lcom/layar/ui/smarttab/SmartTabWidget$OnTabSelectionChanged;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mSelectionChangedListener:Lcom/layar/ui/smarttab/SmartTabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method private initTabWidget()V
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/layar/ui/smarttab/SmartTabWidget;->setOrientation(I)V

    .line 85
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    const v1, 0x7f02012f

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 87
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    const v1, 0x7f020131

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/layar/ui/smarttab/SmartTabWidget;->setFocusable(Z)V

    .line 92
    invoke-virtual {p0, p0}, Lcom/layar/ui/smarttab/SmartTabWidget;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 93
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 5
    .parameter "child"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 225
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 227
    const/4 v1, -0x2

    const/high16 v2, 0x3f80

    .line 225
    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 228
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 229
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    .end local v0           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 234
    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 236
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 240
    new-instance v1, Lcom/layar/ui/smarttab/SmartTabWidget$TabClickListener;

    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabWidget;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v4

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/layar/ui/smarttab/SmartTabWidget$TabClickListener;-><init>(Lcom/layar/ui/smarttab/SmartTabWidget;ILcom/layar/ui/smarttab/SmartTabWidget$TabClickListener;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 242
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 97
    iget v0, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/layar/ui/smarttab/SmartTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabWidget;->invalidate()V

    .line 101
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    .line 102
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 106
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 108
    iget v3, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v3}, Lcom/layar/ui/smarttab/SmartTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 110
    .local v2, selectedChild:Landroid/view/View;
    iget-object v3, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 111
    iget-object v3, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 113
    iget-boolean v3, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mStripMoved:Z

    if-eqz v3, :cond_0

    .line 114
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 115
    .local v1, selBounds:Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 116
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 117
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabWidget;->getHeight()I

    move-result v0

    .line 118
    .local v0, myHeight:I
    iget-object v3, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    .line 119
    iget v4, v1, Landroid/graphics/Rect;->left:I

    .line 120
    iget-object v5, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    .line 119
    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 121
    iget-object v5, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v0, v5

    .line 122
    iget v6, v1, Landroid/graphics/Rect;->left:I

    .line 118
    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 124
    iget-object v3, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    .line 125
    iget v4, v1, Landroid/graphics/Rect;->right:I

    .line 126
    iget-object v5, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v5, v0, v5

    .line 127
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabWidget;->getWidth()I

    move-result v6

    .line 128
    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v7, v8

    .line 127
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 124
    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    iput-boolean v9, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mStripMoved:Z

    .line 134
    .end local v0           #myHeight:I
    .end local v1           #selBounds:Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 135
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 136
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 137
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 139
    iget-object v3, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mBottomLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 140
    iget-object v3, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mBottomRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 141
    return-void
.end method

.method public focusCurrentTab(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 200
    iget v0, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mSelectedTab:I

    .line 203
    .local v0, oldTab:I
    invoke-virtual {p0, p1}, Lcom/layar/ui/smarttab/SmartTabWidget;->setCurrentTab(I)V

    .line 206
    if-eq v0, p1, :cond_0

    .line 207
    invoke-virtual {p0, p1}, Lcom/layar/ui/smarttab/SmartTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 209
    :cond_0
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mSelectedTab:I

    return v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 252
    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_1

    .line 253
    iget v1, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v1}, Lcom/layar/ui/smarttab/SmartTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    if-eqz p2, :cond_0

    .line 258
    const/4 v0, 0x0

    .line 259
    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabWidget;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 260
    invoke-virtual {p0, v0}, Lcom/layar/ui/smarttab/SmartTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_2

    .line 261
    invoke-virtual {p0, v0}, Lcom/layar/ui/smarttab/SmartTabWidget;->setCurrentTab(I)V

    .line 262
    iget-object v1, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mSelectionChangedListener:Lcom/layar/ui/smarttab/SmartTabWidget$OnTabSelectionChanged;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/layar/ui/smarttab/SmartTabWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    goto :goto_0

    .line 265
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mStripMoved:Z

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 81
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x1

    .line 171
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabWidget;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget v0, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/layar/ui/smarttab/SmartTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 176
    iput p1, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mSelectedTab:I

    .line 177
    iget v0, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Lcom/layar/ui/smarttab/SmartTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 178
    iput-boolean v2, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mStripMoved:Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/layar/ui/smarttab/SmartTabWidget;->getChildCount()I

    move-result v1

    .line 216
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 220
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0, v2}, Lcom/layar/ui/smarttab/SmartTabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 218
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method setTabSelectionListener(Lcom/layar/ui/smarttab/SmartTabWidget$OnTabSelectionChanged;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 248
    iput-object p1, p0, Lcom/layar/ui/smarttab/SmartTabWidget;->mSelectionChangedListener:Lcom/layar/ui/smarttab/SmartTabWidget$OnTabSelectionChanged;

    .line 249
    return-void
.end method
