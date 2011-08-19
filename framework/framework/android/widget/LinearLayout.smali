.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x30
                to = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x50
                to = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x70
                to = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x77
                to = "FILL"
            .end subannotation
        }
    .end annotation
.end field

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 148
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 106
    const/16 v0, 0x33

    iput v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 156
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput-boolean v4, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 92
    iput v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 100
    iput v5, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 106
    const/16 v3, 0x33

    iput v3, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 158
    sget-object v3, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 161
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 162
    .local v2, index:I
    if-ltz v2, :cond_1f

    .line 163
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 166
    :cond_1f
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 167
    if-ltz v2, :cond_28

    .line 168
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 171
    :cond_28
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 172
    .local v1, baselineAligned:Z
    if-nez v1, :cond_32

    .line 173
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 176
    :cond_32
    const/4 v3, 0x4

    const/high16 v4, -0x4080

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 178
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 181
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 183
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 185
    const/16 v3, 0x8

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 187
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    return-void
.end method

.method private forceUniformHeight(II)V
    .registers 12
    .parameter "count"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 1224
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1226
    .local v4, uniformMeasureSpec:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_c
    if-ge v6, p1, :cond_38

    .line 1227
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1228
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_35

    .line 1229
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1231
    .local v7, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_35

    .line 1234
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1235
    .local v8, oldWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    .line 1238
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1239
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1226
    .end local v7           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #oldWidth:I
    :cond_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 1243
    .end local v1           #child:Landroid/view/View;
    :cond_38
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 12
    .parameter "count"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 818
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v4, 0x4000

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 820
    .local v2, uniformMeasureSpec:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_c
    if-ge v6, p1, :cond_38

    .line 821
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 822
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_35

    .line 823
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 825
    .local v7, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_35

    .line 828
    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 829
    .local v8, oldHeight:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 832
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 833
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 820
    .end local v7           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #oldHeight:I
    :cond_35
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 837
    .end local v1           #child:Landroid/view/View;
    :cond_38
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 8
    .parameter "child"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1542
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1543
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 1644
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 285
    iget v9, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v9, v9, 0x1

    if-ne v9, v11, :cond_33

    move v6, v11

    .line 287
    .local v6, showDividerBeginning:Z
    :goto_9
    iget v9, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v9, v9, 0x2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_35

    move v8, v11

    .line 289
    .local v8, showDividerMiddle:Z
    :goto_11
    iget v9, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v9, v9, 0x4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_37

    move v7, v11

    .line 292
    .local v7, showDividerEnd:Z
    :goto_19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v1

    .line 293
    .local v1, count:I
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v4

    .line 294
    .local v4, left:I
    const/4 v2, 0x1

    .line 295
    .local v2, firstVisible:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_23
    if-ge v3, v1, :cond_67

    .line 296
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 298
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_39

    .line 299
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v9

    add-int/2addr v4, v9

    .line 295
    :cond_30
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #firstVisible:Z
    .end local v3           #i:I
    .end local v4           #left:I
    .end local v6           #showDividerBeginning:Z
    .end local v7           #showDividerEnd:Z
    .end local v8           #showDividerMiddle:Z
    :cond_33
    move v6, v12

    .line 285
    goto :goto_9

    .restart local v6       #showDividerBeginning:Z
    :cond_35
    move v8, v12

    .line 287
    goto :goto_11

    .restart local v8       #showDividerMiddle:Z
    :cond_37
    move v7, v12

    .line 289
    goto :goto_19

    .line 300
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #count:I
    .restart local v2       #firstVisible:Z
    .restart local v3       #i:I
    .restart local v4       #left:I
    .restart local v7       #showDividerEnd:Z
    :cond_39
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_30

    .line 301
    if-eqz v2, :cond_5e

    .line 302
    const/4 v2, 0x0

    .line 303
    if-eqz v6, :cond_4c

    .line 304
    invoke-virtual {p0, p1, v4}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 305
    iget v9, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v4, v9

    .line 312
    :cond_4c
    :goto_4c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 313
    .local v5, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v9, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    goto :goto_30

    .line 307
    .end local v5           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_5e
    if-eqz v8, :cond_4c

    .line 308
    invoke-virtual {p0, p1, v4}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 309
    iget v9, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v4, v9

    goto :goto_4c

    .line 317
    .end local v0           #child:Landroid/view/View;
    :cond_67
    if-eqz v7, :cond_6c

    .line 318
    invoke-virtual {p0, p1, v4}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 320
    :cond_6c
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 15
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 247
    iget v9, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v9, v9, 0x1

    if-ne v9, v11, :cond_33

    move v5, v11

    .line 249
    .local v5, showDividerBeginning:Z
    :goto_9
    iget v9, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v9, v9, 0x2

    const/4 v10, 0x2

    if-ne v9, v10, :cond_35

    move v7, v11

    .line 251
    .local v7, showDividerMiddle:Z
    :goto_11
    iget v9, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v9, v9, 0x4

    const/4 v10, 0x4

    if-ne v9, v10, :cond_37

    move v6, v11

    .line 254
    .local v6, showDividerEnd:Z
    :goto_19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v1

    .line 255
    .local v1, count:I
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v8

    .line 256
    .local v8, top:I
    const/4 v2, 0x1

    .line 257
    .local v2, firstVisible:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_23
    if-ge v3, v1, :cond_67

    .line 258
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 260
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_39

    .line 261
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v9

    add-int/2addr v8, v9

    .line 257
    :cond_30
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #firstVisible:Z
    .end local v3           #i:I
    .end local v5           #showDividerBeginning:Z
    .end local v6           #showDividerEnd:Z
    .end local v7           #showDividerMiddle:Z
    .end local v8           #top:I
    :cond_33
    move v5, v12

    .line 247
    goto :goto_9

    .restart local v5       #showDividerBeginning:Z
    :cond_35
    move v7, v12

    .line 249
    goto :goto_11

    .restart local v7       #showDividerMiddle:Z
    :cond_37
    move v6, v12

    .line 251
    goto :goto_19

    .line 262
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #count:I
    .restart local v2       #firstVisible:Z
    .restart local v3       #i:I
    .restart local v6       #showDividerEnd:Z
    .restart local v8       #top:I
    :cond_39
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_30

    .line 263
    if-eqz v2, :cond_5e

    .line 264
    const/4 v2, 0x0

    .line 265
    if-eqz v5, :cond_4c

    .line 266
    invoke-virtual {p0, p1, v8}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 267
    iget v9, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v8, v9

    .line 274
    :cond_4c
    :goto_4c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 275
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v9, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    goto :goto_30

    .line 269
    .end local v4           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_5e
    if-eqz v7, :cond_4c

    .line 270
    invoke-virtual {p0, p1, v8}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 271
    iget v9, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v8, v9

    goto :goto_4c

    .line 279
    .end local v0           #child:Landroid/view/View;
    :cond_67
    if-eqz v6, :cond_6c

    .line 280
    invoke-virtual {p0, p1, v8}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 282
    :cond_6c
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7
    .parameter "canvas"
    .parameter "top"

    .prologue
    .line 323
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 325
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 326
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8
    .parameter "canvas"
    .parameter "left"

    .prologue
    .line 329
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 331
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 332
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    .prologue
    const/4 v2, -0x2

    .line 1627
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_b

    .line 1628
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1632
    :goto_a
    return-object v0

    .line 1629
    :cond_b
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 1630
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_a

    .line 1632
    :cond_17
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 1614
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3
    .parameter "p"

    .prologue
    .line 1637
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .registers 9

    .prologue
    const/4 v7, -0x1

    .line 387
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v5, :cond_a

    .line 388
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v5

    .line 435
    :goto_9
    return v5

    .line 391
    :cond_a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    iget v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gt v5, v6, :cond_1a

    .line 392
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 396
    :cond_1a
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 397
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 399
    .local v1, childBaseline:I
    if-ne v1, v7, :cond_34

    .line 400
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-nez v5, :cond_2c

    move v5, v7

    .line 402
    goto :goto_9

    .line 406
    :cond_2c
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 416
    :cond_34
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 418
    .local v2, childTop:I
    iget v5, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_46

    .line 419
    iget v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v4, v5, 0x70

    .line 420
    .local v4, majorGravity:I
    const/16 v5, 0x30

    if-eq v4, v5, :cond_46

    .line 421
    sparse-switch v4, :sswitch_data_70

    .line 434
    .end local v4           #majorGravity:I
    :cond_46
    :goto_46
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 435
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    goto :goto_9

    .line 423
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4       #majorGravity:I
    :sswitch_51
    iget v5, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v6, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v2, v5, v6

    .line 424
    goto :goto_46

    .line 427
    :sswitch_5e
    iget v5, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v6, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_46

    .line 421
    :sswitch_data_70
    .sparse-switch
        0x10 -> :sswitch_5e
        0x50 -> :sswitch_51
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .registers 2

    .prologue
    .line 444
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 4
    .parameter "child"
    .parameter "index"

    .prologue
    .line 1254
    const/4 v0, 0x0

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 3
    .parameter "child"

    .prologue
    .line 1296
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 3
    .parameter "child"

    .prologue
    .line 1308
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 1565
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .registers 2

    .prologue
    .line 209
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .registers 3
    .parameter "index"

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .registers 2

    .prologue
    .line 485
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .registers 2

    .prologue
    .line 496
    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method public isBaselineAligned()Z
    .registers 2

    .prologue
    .line 341
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .registers 2

    .prologue
    .line 367
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal()V
    .registers 27

    .prologue
    .line 1425
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move/from16 v24, v0

    .line 1428
    .local v24, paddingTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v12, v0

    .line 1431
    .local v12, childLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mBottom:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTop:I

    move v4, v0

    sub-int v17, v3, v4

    .line 1432
    .local v17, height:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v3, v0

    sub-int v11, v17, v3

    .line 1435
    .local v11, childBottom:I
    sub-int v3, v17, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v4, v0

    sub-int v13, v3, v4

    .line 1437
    .local v13, childSpace:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v14

    .line 1439
    .local v14, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    and-int/lit8 v20, v3, 0x7

    .line 1440
    .local v20, majorGravity:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    and-int/lit8 v23, v3, 0x70

    .line 1442
    .local v23, minorGravity:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    move v9, v0

    .line 1444
    .local v9, baselineAligned:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v21, v0

    .line 1445
    .local v21, maxAscent:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v22, v0

    .line 1447
    .local v22, maxDescent:[I
    const/4 v3, 0x3

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_53

    .line 1448
    sparse-switch v20, :sswitch_data_16a

    .line 1461
    :cond_53
    :goto_53
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mShowDividers:I

    move v3, v0

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_bb

    const/4 v3, 0x1

    move/from16 v25, v3

    .line 1464
    .local v25, showDividerMiddle:Z
    :goto_60
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mShowDividers:I

    move v3, v0

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_70

    .line 1465
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    move v3, v0

    add-int/2addr v12, v3

    .line 1468
    :cond_70
    const/16 v18, 0x0

    .local v18, i:I
    :goto_72
    move/from16 v0, v18

    move v1, v14

    if-ge v0, v1, :cond_169

    .line 1469
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1471
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_bf

    .line 1472
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v3

    add-int/2addr v12, v3

    .line 1468
    :cond_8a
    :goto_8a
    add-int/lit8 v18, v18, 0x1

    goto :goto_72

    .line 1452
    .end local v4           #child:Landroid/view/View;
    .end local v18           #i:I
    .end local v25           #showDividerMiddle:Z
    :sswitch_8d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mRight:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mLeft:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v0

    sub-int v12, v3, v4

    .line 1453
    goto :goto_53

    .line 1456
    :sswitch_a6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mRight:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mLeft:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v0

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v12, v3

    goto :goto_53

    .line 1461
    :cond_bb
    const/4 v3, 0x0

    move/from16 v25, v3

    goto :goto_60

    .line 1473
    .restart local v4       #child:Landroid/view/View;
    .restart local v18       #i:I
    .restart local v25       #showDividerMiddle:Z
    :cond_bf
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_8a

    .line 1474
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1475
    .local v7, childWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1476
    .local v8, childHeight:I
    const/4 v10, -0x1

    .line 1478
    .local v10, childBaseline:I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 1481
    .local v19, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v9, :cond_e4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_e4

    .line 1482
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v10

    .line 1485
    :cond_e4
    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move/from16 v16, v0

    .line 1486
    .local v16, gravity:I
    if-gez v16, :cond_ee

    .line 1487
    move/from16 v16, v23

    .line 1490
    :cond_ee
    and-int/lit8 v3, v16, 0x70

    sparse-switch v3, :sswitch_data_174

    .line 1522
    move/from16 v6, v24

    .line 1526
    .local v6, childTop:I
    :cond_f5
    :goto_f5
    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v3, v0

    add-int/2addr v12, v3

    .line 1527
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int v5, v12, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1529
    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v3, v0

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v12, v3

    .line 1532
    if-eqz v25, :cond_120

    .line 1533
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    move v3, v0

    add-int/2addr v12, v3

    .line 1536
    :cond_120
    move-object/from16 v0, p0

    move-object v1, v4

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int v18, v18, v3

    goto/16 :goto_8a

    .line 1492
    .end local v6           #childTop:I
    :sswitch_12d
    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v3, v0

    add-int v6, v24, v3

    .line 1493
    .restart local v6       #childTop:I
    const/4 v3, -0x1

    if-eq v10, v3, :cond_f5

    .line 1494
    const/4 v3, 0x1

    aget v3, v21, v3

    sub-int/2addr v3, v10

    add-int/2addr v6, v3

    goto :goto_f5

    .line 1510
    .end local v6           #childTop:I
    :sswitch_13d
    sub-int v3, v13, v8

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, v24

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v5, v0

    add-int/2addr v3, v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v5, v0

    sub-int v6, v3, v5

    .line 1512
    .restart local v6       #childTop:I
    goto :goto_f5

    .line 1515
    .end local v6           #childTop:I
    :sswitch_151
    sub-int v3, v11, v8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v5, v0

    sub-int v6, v3, v5

    .line 1516
    .restart local v6       #childTop:I
    const/4 v3, -0x1

    if-eq v10, v3, :cond_f5

    .line 1517
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v15, v3, v10

    .line 1518
    .local v15, descent:I
    const/4 v3, 0x2

    aget v3, v22, v3

    sub-int/2addr v3, v15

    sub-int/2addr v6, v3

    .line 1519
    goto :goto_f5

    .line 1539
    .end local v4           #child:Landroid/view/View;
    .end local v6           #childTop:I
    .end local v7           #childWidth:I
    .end local v8           #childHeight:I
    .end local v10           #childBaseline:I
    .end local v15           #descent:I
    .end local v16           #gravity:I
    .end local v19           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_169
    return-void

    .line 1448
    :sswitch_data_16a
    .sparse-switch
        0x1 -> :sswitch_a6
        0x5 -> :sswitch_8d
    .end sparse-switch

    .line 1490
    :sswitch_data_174
    .sparse-switch
        0x10 -> :sswitch_13d
        0x30 -> :sswitch_12d
        0x50 -> :sswitch_151
    .end sparse-switch
.end method

.method layoutVertical()V
    .registers 22

    .prologue
    .line 1329
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move/from16 v18, v0

    .line 1331
    .local v18, paddingLeft:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v11, v0

    .line 1335
    .local v11, childTop:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mRight:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mLeft:I

    move v4, v0

    sub-int v20, v3, v4

    .line 1336
    .local v20, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v3, v0

    sub-int v9, v20, v3

    .line 1339
    .local v9, childRight:I
    sub-int v3, v20, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v4, v0

    sub-int v10, v3, v4

    .line 1341
    .local v10, childSpace:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v12

    .line 1343
    .local v12, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    and-int/lit8 v16, v3, 0x70

    .line 1344
    .local v16, majorGravity:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    and-int/lit8 v17, v3, 0x7

    .line 1346
    .local v17, minorGravity:I
    const/16 v3, 0x30

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_43

    .line 1347
    sparse-switch v16, :sswitch_data_118

    .line 1361
    :cond_43
    :goto_43
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mShowDividers:I

    move v3, v0

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a5

    const/4 v3, 0x1

    move/from16 v19, v3

    .line 1364
    .local v19, showDividerMiddle:Z
    :goto_50
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mShowDividers:I

    move v3, v0

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_60

    .line 1365
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    move v3, v0

    add-int/2addr v11, v3

    .line 1368
    :cond_60
    const/4 v14, 0x0

    .local v14, i:I
    :goto_61
    if-ge v14, v12, :cond_116

    .line 1369
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1370
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_a9

    .line 1371
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v3

    add-int/2addr v11, v3

    .line 1368
    :cond_74
    :goto_74
    add-int/lit8 v14, v14, 0x1

    goto :goto_61

    .line 1351
    .end local v4           #child:Landroid/view/View;
    .end local v14           #i:I
    .end local v19           #showDividerMiddle:Z
    :sswitch_77
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mBottom:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTop:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v4, v0

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v0

    sub-int v11, v3, v4

    .line 1352
    goto :goto_43

    .line 1355
    :sswitch_90
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mBottom:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTop:I

    move v4, v0

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v4, v0

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v11, v3

    goto :goto_43

    .line 1361
    :cond_a5
    const/4 v3, 0x0

    move/from16 v19, v3

    goto :goto_50

    .line 1372
    .restart local v4       #child:Landroid/view/View;
    .restart local v14       #i:I
    .restart local v19       #showDividerMiddle:Z
    :cond_a9
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_74

    .line 1373
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1374
    .local v7, childWidth:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1376
    .local v8, childHeight:I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 1379
    .local v15, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v13, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1380
    .local v13, gravity:I
    if-gez v13, :cond_c5

    .line 1381
    move/from16 v13, v17

    .line 1384
    :cond_c5
    and-int/lit8 v3, v13, 0x7

    packed-switch v3, :pswitch_data_122

    .line 1398
    :pswitch_ca
    move/from16 v5, v18

    .line 1402
    .local v5, childLeft:I
    :goto_cc
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v3

    .line 1403
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v3

    add-int v6, v11, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1405
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v5

    .end local v5           #childLeft:I
    add-int/2addr v3, v5

    add-int/2addr v11, v3

    .line 1407
    if-eqz v19, :cond_f1

    .line 1408
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    move v3, v0

    add-int/2addr v11, v3

    .line 1411
    :cond_f1
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v14, v3

    goto/16 :goto_74

    .line 1386
    :pswitch_fc
    iget v3, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v5, v18, v3

    .line 1387
    .restart local v5       #childLeft:I
    goto :goto_cc

    .line 1390
    .end local v5           #childLeft:I
    :pswitch_101
    sub-int v3, v10, v7

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, v18

    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v5

    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v5, v3, v5

    .line 1392
    .restart local v5       #childLeft:I
    goto :goto_cc

    .line 1395
    .end local v5           #childLeft:I
    :pswitch_10f
    sub-int v3, v9, v7

    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v5, v3, v5

    .line 1396
    .restart local v5       #childLeft:I
    goto :goto_cc

    .line 1414
    .end local v4           #child:Landroid/view/View;
    .end local v5           #childLeft:I
    .end local v7           #childWidth:I
    .end local v8           #childHeight:I
    .end local v13           #gravity:I
    .end local v15           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_116
    return-void

    .line 1347
    nop

    :sswitch_data_118
    .sparse-switch
        0x10 -> :sswitch_90
        0x50 -> :sswitch_77
    .end sparse-switch

    .line 1384
    :pswitch_data_122
    .packed-switch 0x1
        :pswitch_101
        :pswitch_ca
        :pswitch_fc
        :pswitch_ca
        :pswitch_10f
    .end packed-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13
    .parameter "child"
    .parameter "childIndex"
    .parameter "widthMeasureSpec"
    .parameter "totalWidth"
    .parameter "heightMeasureSpec"
    .parameter "totalHeight"

    .prologue
    .line 1284
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1286
    return-void
.end method

.method measureHorizontal(II)V
    .registers 52
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 851
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 852
    const/16 v36, 0x0

    .line 853
    .local v36, maxHeight:I
    const/16 v18, 0x0

    .line 854
    .local v18, childState:I
    const/4 v11, 0x0

    .line 855
    .local v11, alternativeMaxHeight:I
    const/16 v45, 0x0

    .line 856
    .local v45, weightedMaxHeight:I
    const/4 v10, 0x1

    .line 857
    .local v10, allFillParent:Z
    const/16 v42, 0x0

    .line 859
    .local v42, totalWeight:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v20

    .line 861
    .local v20, count:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v46

    .line 862
    .local v46, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v26

    .line 864
    .local v26, heightMode:I
    const/16 v32, 0x0

    .line 866
    .local v32, matchHeight:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object v3, v0

    if-eqz v3, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object v3, v0

    if-nez v3, :cond_3c

    .line 867
    :cond_2c
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 868
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 871
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v34, v0

    .line 872
    .local v34, maxAscent:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v35, v0

    .line 874
    .local v35, maxDescent:[I
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v34, v6

    aput v7, v34, v5

    aput v7, v34, v4

    aput v7, v34, v3

    .line 875
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v35, v6

    aput v7, v35, v5

    aput v7, v35, v4

    aput v7, v35, v3

    .line 877
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    move v13, v0

    .line 878
    .local v13, baselineAligned:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v43, v0

    .line 880
    .local v43, useLargestChild:Z
    const/high16 v3, 0x4000

    move/from16 v0, v46

    move v1, v3

    if-ne v0, v1, :cond_b9

    const/4 v3, 0x1

    move/from16 v28, v3

    .line 882
    .local v28, isExactly:Z
    :goto_77
    const/high16 v29, -0x8000

    .line 885
    .local v29, largestChildWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mShowDividers:I

    move v3, v0

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_bd

    const/4 v3, 0x1

    move/from16 v39, v3

    .line 887
    .local v39, showDividerBeginning:Z
    :goto_86
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mShowDividers:I

    move v3, v0

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c1

    const/4 v3, 0x1

    move/from16 v40, v3

    .line 891
    .local v40, showDividerMiddle:Z
    :goto_93
    const/16 v23, 0x1

    .line 892
    .local v23, firstVisible:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_96
    move v0, v5

    move/from16 v1, v20

    if-ge v0, v1, :cond_2bb

    .line 893
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 895
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_c5

    .line 896
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 892
    :goto_b6
    add-int/lit8 v5, v5, 0x1

    goto :goto_96

    .line 880
    .end local v5           #i:I
    .end local v23           #firstVisible:Z
    .end local v28           #isExactly:Z
    .end local v29           #largestChildWidth:I
    .end local v39           #showDividerBeginning:Z
    .end local v40           #showDividerMiddle:Z
    :cond_b9
    const/4 v3, 0x0

    move/from16 v28, v3

    goto :goto_77

    .line 885
    .restart local v28       #isExactly:Z
    .restart local v29       #largestChildWidth:I
    :cond_bd
    const/4 v3, 0x0

    move/from16 v39, v3

    goto :goto_86

    .line 887
    .restart local v39       #showDividerBeginning:Z
    :cond_c1
    const/4 v3, 0x0

    move/from16 v40, v3

    goto :goto_93

    .line 900
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #i:I
    .restart local v23       #firstVisible:Z
    .restart local v40       #showDividerMiddle:Z
    :cond_c5
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_d7

    .line 901
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 902
    goto :goto_b6

    .line 905
    :cond_d7
    if-eqz v23, :cond_1cf

    .line 906
    const/16 v23, 0x0

    .line 907
    if-eqz v39, :cond_ed

    .line 908
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    move v6, v0

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 914
    :cond_ed
    :goto_ed
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    .line 917
    .local v30, lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    add-float v42, v42, v3

    .line 919
    const/high16 v3, 0x4000

    move/from16 v0, v46

    move v1, v3

    if-ne v0, v1, :cond_204

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    if-nez v3, :cond_204

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_204

    .line 923
    if-eqz v28, :cond_1e3

    .line 924
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v7, v0

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 936
    :goto_12a
    if-eqz v13, :cond_13a

    .line 937
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 938
    .local v24, freeSpec:I
    move-object v0, v4

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 979
    .end local v24           #freeSpec:I
    :cond_13a
    :goto_13a
    const/16 v33, 0x0

    .line 980
    .local v33, matchHeightLocally:Z
    const/high16 v3, 0x4000

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_14f

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_14f

    .line 984
    const/16 v32, 0x1

    .line 985
    const/16 v33, 0x1

    .line 988
    :cond_14f
    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v3, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int v31, v3, v6

    .line 989
    .local v31, margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v31

    .line 990
    .local v16, childHeight:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v18

    move v1, v3

    invoke-static {v0, v1}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v18

    .line 992
    if-eqz v13, :cond_19b

    .line 993
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 994
    .local v14, childBaseline:I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_19b

    .line 997
    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v3, v0

    if-gez v3, :cond_29f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    :goto_181
    and-int/lit8 v25, v3, 0x70

    .line 999
    .local v25, gravity:I
    shr-int/lit8 v3, v25, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v27, v3, 0x1

    .line 1002
    .local v27, index:I
    aget v3, v34, v27

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v34, v27

    .line 1003
    aget v3, v35, v27

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v35, v27

    .line 1007
    .end local v14           #childBaseline:I
    .end local v25           #gravity:I
    .end local v27           #index:I
    :cond_19b
    move/from16 v0, v36

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1009
    if-eqz v10, :cond_2a6

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2a6

    const/4 v3, 0x1

    move v10, v3

    .line 1010
    :goto_1af
    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2ae

    .line 1015
    if-eqz v33, :cond_2aa

    move/from16 v3, v31

    :goto_1bd
    move/from16 v0, v45

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v45

    .line 1022
    :goto_1c4
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_b6

    .line 910
    .end local v16           #childHeight:I
    .end local v30           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v31           #margin:I
    .end local v33           #matchHeightLocally:Z
    :cond_1cf
    if-eqz v40, :cond_ed

    .line 911
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    move v6, v0

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_ed

    .line 926
    .restart local v30       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1e3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v41, v0

    .line 927
    .local v41, totalLength:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v3, v0

    add-int v3, v3, v41

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move/from16 v0, v41

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_12a

    .line 941
    .end local v41           #totalLength:I
    :cond_204
    const/high16 v37, -0x8000

    .line 943
    .local v37, oldWidth:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    if-nez v3, :cond_21f

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_21f

    .line 948
    const/16 v37, 0x0

    .line 949
    const/4 v3, -0x2

    move v0, v3

    move-object/from16 v1, v30

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 956
    :cond_21f
    const/4 v3, 0x0

    cmpl-float v3, v42, v3

    if-nez v3, :cond_273

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move v7, v3

    :goto_22a
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 960
    const/high16 v3, -0x8000

    move/from16 v0, v37

    move v1, v3

    if-eq v0, v1, :cond_241

    .line 961
    move/from16 v0, v37

    move-object/from16 v1, v30

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 964
    :cond_241
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 965
    .local v19, childWidth:I
    if-eqz v28, :cond_276

    .line 966
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    add-int v6, v6, v19

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 974
    :goto_267
    if-eqz v43, :cond_13a

    .line 975
    move/from16 v0, v19

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v29

    goto/16 :goto_13a

    .line 956
    .end local v19           #childWidth:I
    :cond_273
    const/4 v3, 0x0

    move v7, v3

    goto :goto_22a

    .line 969
    .restart local v19       #childWidth:I
    :cond_276
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v41, v0

    .line 970
    .restart local v41       #totalLength:I
    add-int v3, v41, v19

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v41

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_267

    .line 997
    .end local v19           #childWidth:I
    .end local v37           #oldWidth:I
    .end local v41           #totalLength:I
    .restart local v14       #childBaseline:I
    .restart local v16       #childHeight:I
    .restart local v31       #margin:I
    .restart local v33       #matchHeightLocally:Z
    :cond_29f
    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v3, v0

    goto/16 :goto_181

    .line 1009
    .end local v14           #childBaseline:I
    :cond_2a6
    const/4 v3, 0x0

    move v10, v3

    goto/16 :goto_1af

    :cond_2aa
    move/from16 v3, v16

    .line 1015
    goto/16 :goto_1bd

    .line 1018
    :cond_2ae
    if-eqz v33, :cond_2b8

    move/from16 v3, v31

    :goto_2b2
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto/16 :goto_1c4

    :cond_2b8
    move/from16 v3, v16

    goto :goto_2b2

    .line 1025
    .end local v4           #child:Landroid/view/View;
    .end local v16           #childHeight:I
    .end local v30           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v31           #margin:I
    .end local v33           #matchHeightLocally:Z
    :cond_2bb
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    if-lez v3, :cond_2dc

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mShowDividers:I

    move v3, v0

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2dc

    .line 1026
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    move v4, v0

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1031
    :cond_2dc
    const/4 v3, 0x1

    aget v3, v34, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2f4

    const/4 v3, 0x0

    aget v3, v34, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2f4

    const/4 v3, 0x2

    aget v3, v34, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2f4

    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_32d

    .line 1035
    :cond_2f4
    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v4, 0x0

    aget v4, v34, v4

    const/4 v5, 0x1

    aget v5, v34, v5

    .end local v5           #i:I
    const/4 v6, 0x2

    aget v6, v34, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1038
    .local v12, ascent:I
    const/4 v3, 0x3

    aget v3, v35, v3

    const/4 v4, 0x0

    aget v4, v35, v4

    const/4 v5, 0x1

    aget v5, v35, v5

    const/4 v6, 0x2

    aget v6, v35, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1041
    .local v22, descent:I
    add-int v3, v12, v22

    move/from16 v0, v36

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1044
    .end local v12           #ascent:I
    .end local v22           #descent:I
    :cond_32d
    if-eqz v43, :cond_3c4

    const/high16 v3, -0x8000

    move/from16 v0, v46

    move v1, v3

    if-ne v0, v1, :cond_3c4

    .line 1045
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1047
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_33d
    move v0, v5

    move/from16 v1, v20

    if-ge v0, v1, :cond_3c4

    .line 1048
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1050
    .restart local v4       #child:Landroid/view/View;
    if-nez v4, :cond_360

    .line 1051
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1047
    :goto_35d
    add-int/lit8 v5, v5, 0x1

    goto :goto_33d

    .line 1055
    .restart local v4       #child:Landroid/view/View;
    :cond_360
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_372

    .line 1056
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 1057
    goto :goto_35d

    .line 1060
    :cond_372
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    .line 1062
    .restart local v30       #lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v28, :cond_39b

    .line 1063
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    add-int v6, v6, v29

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v4, v6

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_35d

    .line 1066
    .restart local v4       #child:Landroid/view/View;
    :cond_39b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v41, v0

    .line 1067
    .restart local v41       #totalLength:I
    add-int v3, v41, v29

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move/from16 v0, v41

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_35d

    .line 1074
    .end local v5           #i:I
    .end local v30           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v41           #totalLength:I
    :cond_3c4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v5, v0

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1076
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v47, v0

    .line 1079
    .local v47, widthSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v47

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v47

    .line 1082
    const/4 v3, 0x0

    move/from16 v0, v47

    move/from16 v1, p1

    move v2, v3

    invoke-static {v0, v1, v2}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v48

    .line 1083
    .local v48, widthSizeAndState:I
    const v3, 0xffffff

    and-int v47, v48, v3

    .line 1087
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    sub-int v21, v47, v3

    .line 1088
    .local v21, delta:I
    if-eqz v21, :cond_66a

    const/4 v3, 0x0

    cmpl-float v3, v42, v3

    if-lez v3, :cond_66a

    .line 1089
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_455

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move v3, v0

    move/from16 v44, v3

    .line 1091
    .local v44, weightSum:F
    :goto_419
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v34, v6

    aput v7, v34, v5

    aput v7, v34, v4

    aput v7, v34, v3

    .line 1092
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, -0x1

    aput v7, v35, v6

    aput v7, v35, v5

    aput v7, v35, v4

    aput v7, v35, v3

    .line 1093
    const/16 v36, -0x1

    .line 1095
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1097
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_43c
    move v0, v5

    move/from16 v1, v20

    if-ge v0, v1, :cond_5bc

    .line 1098
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1100
    .restart local v4       #child:Landroid/view/View;
    if-eqz v4, :cond_452

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_458

    .line 1097
    .end local v4           #child:Landroid/view/View;
    :cond_452
    :goto_452
    add-int/lit8 v5, v5, 0x1

    goto :goto_43c

    .end local v5           #i:I
    .end local v44           #weightSum:F
    :cond_455
    move/from16 v44, v42

    .line 1089
    goto :goto_419

    .line 1104
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #i:I
    .restart local v44       #weightSum:F
    :cond_458
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout$LayoutParams;

    .line 1107
    .restart local v30       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v15, v0

    .line 1108
    .local v15, childExtra:F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_4d1

    .line 1110
    move/from16 v0, v21

    int-to-float v0, v0

    move v3, v0

    mul-float/2addr v3, v15

    div-float v3, v3, v44

    move v0, v3

    float-to-int v0, v0

    move/from16 v38, v0

    .line 1111
    .local v38, share:I
    sub-float v44, v44, v15

    .line 1112
    sub-int v21, v21, v38

    .line 1114
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v6, v0

    move/from16 v0, p2

    move v1, v3

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v17

    .line 1121
    .local v17, childHeightMeasureSpec:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    if-nez v3, :cond_4a9

    const/high16 v3, 0x4000

    move/from16 v0, v46

    move v1, v3

    if-eq v0, v1, :cond_567

    .line 1124
    :cond_4a9
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v19, v3, v38

    .line 1125
    .restart local v19       #childWidth:I
    if-gez v19, :cond_4b3

    .line 1126
    const/16 v19, 0x0

    .line 1129
    :cond_4b3
    const/high16 v3, 0x4000

    move/from16 v0, v19

    move v1, v3

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, v4

    move v1, v3

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1140
    .end local v19           #childWidth:I
    :goto_4c3
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    const/high16 v6, -0x100

    and-int/2addr v3, v6

    move/from16 v0, v18

    move v1, v3

    invoke-static {v0, v1}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v18

    .line 1144
    .end local v17           #childHeightMeasureSpec:I
    .end local v38           #share:I
    :cond_4d1
    if-eqz v28, :cond_57c

    .line 1145
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v7, v0

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1153
    :goto_4f6
    const/high16 v3, 0x4000

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_5aa

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_5aa

    const/4 v3, 0x1

    move/from16 v33, v3

    .line 1156
    .restart local v33       #matchHeightLocally:Z
    :goto_508
    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v3, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int v31, v3, v6

    .line 1157
    .restart local v31       #margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v31

    .line 1158
    .restart local v16       #childHeight:I
    move/from16 v0, v36

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1159
    if-eqz v33, :cond_5af

    move/from16 v3, v31

    :goto_526
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1162
    if-eqz v10, :cond_5b3

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_5b3

    const/4 v3, 0x1

    move v10, v3

    .line 1164
    :goto_536
    if-eqz v13, :cond_452

    .line 1165
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 1166
    .restart local v14       #childBaseline:I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_452

    .line 1168
    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v3, v0

    if-gez v3, :cond_5b6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mGravity:I

    move v3, v0

    :goto_54b
    and-int/lit8 v25, v3, 0x70

    .line 1170
    .restart local v25       #gravity:I
    shr-int/lit8 v3, v25, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v27, v3, 0x1

    .line 1173
    .restart local v27       #index:I
    aget v3, v34, v27

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v34, v27

    .line 1174
    aget v3, v35, v27

    sub-int v4, v16, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .end local v4           #child:Landroid/view/View;
    move-result v3

    aput v3, v35, v27

    goto/16 :goto_452

    .line 1134
    .end local v14           #childBaseline:I
    .end local v16           #childHeight:I
    .end local v25           #gravity:I
    .end local v27           #index:I
    .end local v31           #margin:I
    .end local v33           #matchHeightLocally:Z
    .restart local v4       #child:Landroid/view/View;
    .restart local v17       #childHeightMeasureSpec:I
    .restart local v38       #share:I
    :cond_567
    if-lez v38, :cond_57a

    move/from16 v3, v38

    :goto_56b
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, v4

    move v1, v3

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_4c3

    :cond_57a
    const/4 v3, 0x0

    goto :goto_56b

    .line 1148
    .end local v17           #childHeightMeasureSpec:I
    .end local v38           #share:I
    :cond_57c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v41, v0

    .line 1149
    .restart local v41       #totalLength:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v3, v3, v41

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v41

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_4f6

    .line 1153
    .end local v41           #totalLength:I
    :cond_5aa
    const/4 v3, 0x0

    move/from16 v33, v3

    goto/16 :goto_508

    .restart local v16       #childHeight:I
    .restart local v31       #margin:I
    .restart local v33       #matchHeightLocally:Z
    :cond_5af
    move/from16 v3, v16

    .line 1159
    goto/16 :goto_526

    .line 1162
    :cond_5b3
    const/4 v3, 0x0

    move v10, v3

    goto :goto_536

    .line 1168
    .restart local v14       #childBaseline:I
    :cond_5b6
    move-object/from16 v0, v30

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move v3, v0

    goto :goto_54b

    .line 1181
    .end local v4           #child:Landroid/view/View;
    .end local v14           #childBaseline:I
    .end local v15           #childExtra:F
    .end local v16           #childHeight:I
    .end local v30           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v31           #margin:I
    .end local v33           #matchHeightLocally:Z
    :cond_5bc
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v5, v0

    .end local v5           #i:I
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1186
    const/4 v3, 0x1

    aget v3, v34, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5ea

    const/4 v3, 0x0

    aget v3, v34, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5ea

    const/4 v3, 0x2

    aget v3, v34, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5ea

    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_623

    .line 1190
    :cond_5ea
    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v4, 0x0

    aget v4, v34, v4

    const/4 v5, 0x1

    aget v5, v34, v5

    const/4 v6, 0x2

    aget v6, v34, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1193
    .restart local v12       #ascent:I
    const/4 v3, 0x3

    aget v3, v35, v3

    const/4 v4, 0x0

    aget v4, v35, v4

    const/4 v5, 0x1

    aget v5, v35, v5

    const/4 v6, 0x2

    aget v6, v35, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1196
    .restart local v22       #descent:I
    add-int v3, v12, v22

    move/from16 v0, v36

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1202
    .end local v12           #ascent:I
    .end local v22           #descent:I
    .end local v44           #weightSum:F
    :cond_623
    :goto_623
    if-nez v10, :cond_62e

    const/high16 v3, 0x4000

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_62e

    .line 1203
    move/from16 v36, v11

    .line 1206
    :cond_62e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v4, v0

    add-int/2addr v3, v4

    add-int v36, v36, v3

    .line 1209
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v36

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    .line 1211
    const/high16 v3, -0x100

    and-int v3, v3, v18

    or-int v3, v3, v48

    shl-int/lit8 v4, v18, 0x10

    move/from16 v0, v36

    move/from16 v1, p2

    move v2, v4

    invoke-static {v0, v1, v2}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 1215
    if-eqz v32, :cond_669

    .line 1216
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    .line 1218
    :cond_669
    return-void

    .line 1199
    :cond_66a
    move v0, v11

    move/from16 v1, v45

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_623
.end method

.method measureNullChild(I)I
    .registers 3
    .parameter "childIndex"

    .prologue
    .line 1265
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .registers 43
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 537
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 538
    const/16 v28, 0x0

    .line 539
    .local v28, maxWidth:I
    const/4 v15, 0x0

    .line 540
    .local v15, childState:I
    const/4 v11, 0x0

    .line 541
    .local v11, alternativeMaxWidth:I
    const/16 v38, 0x0

    .line 542
    .local v38, weightedMaxWidth:I
    const/4 v10, 0x1

    .line 543
    .local v10, allFillParent:Z
    const/16 v35, 0x0

    .line 545
    .local v35, totalWeight:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v17

    .line 547
    .local v17, count:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v39

    .line 548
    .local v39, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    .line 550
    .local v20, heightMode:I
    const/16 v26, 0x0

    .line 552
    .local v26, matchWidth:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    move v12, v0

    .line 553
    .local v12, baselineChildIndex:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v36, v0

    .line 555
    .local v36, useLargestChild:Z
    const/high16 v23, -0x8000

    .line 558
    .local v23, largestChildHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mShowDividers:I

    move v3, v0

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6a

    const/4 v3, 0x1

    move/from16 v32, v3

    .line 560
    .local v32, showDividerBeginning:Z
    :goto_37
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mShowDividers:I

    move v3, v0

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6e

    const/4 v3, 0x1

    move/from16 v33, v3

    .line 564
    .local v33, showDividerMiddle:Z
    :goto_44
    const/16 v19, 0x1

    .line 565
    .local v19, firstVisible:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_47
    move v0, v5

    move/from16 v1, v17

    if-ge v0, v1, :cond_1fd

    .line 566
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 568
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_72

    .line 569
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 565
    :goto_67
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 558
    .end local v5           #i:I
    .end local v19           #firstVisible:Z
    .end local v32           #showDividerBeginning:Z
    .end local v33           #showDividerMiddle:Z
    :cond_6a
    const/4 v3, 0x0

    move/from16 v32, v3

    goto :goto_37

    .line 560
    .restart local v32       #showDividerBeginning:Z
    :cond_6e
    const/4 v3, 0x0

    move/from16 v33, v3

    goto :goto_44

    .line 573
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #i:I
    .restart local v19       #firstVisible:Z
    .restart local v33       #showDividerMiddle:Z
    :cond_72
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_84

    .line 574
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 575
    goto :goto_67

    .line 578
    :cond_84
    if-eqz v19, :cond_102

    .line 579
    const/16 v19, 0x0

    .line 580
    if-eqz v32, :cond_9a

    .line 581
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    move v6, v0

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 587
    :cond_9a
    :goto_9a
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout$LayoutParams;

    .line 589
    .local v24, lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    add-float v35, v35, v3

    .line 591
    const/high16 v3, 0x4000

    move/from16 v0, v20

    move v1, v3

    if-ne v0, v1, :cond_115

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    if-nez v3, :cond_115

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_115

    .line 595
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v34, v0

    .line 596
    .local v34, totalLength:I
    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v3, v0

    add-int v3, v3, v34

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move/from16 v0, v34

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 635
    :cond_de
    :goto_de
    if-ltz v12, :cond_ee

    add-int/lit8 v3, v5, 0x1

    if-ne v12, v3, :cond_ee

    .line 636
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 642
    :cond_ee
    if-ge v5, v12, :cond_18c

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_18c

    .line 643
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    .end local v4           #child:Landroid/view/View;
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 583
    .end local v24           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v34           #totalLength:I
    .restart local v4       #child:Landroid/view/View;
    :cond_102
    if-eqz v33, :cond_9a

    .line 584
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    move v6, v0

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_9a

    .line 598
    .restart local v24       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_115
    const/high16 v30, -0x8000

    .line 600
    .local v30, oldHeight:I
    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    if-nez v3, :cond_130

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_130

    .line 605
    const/16 v30, 0x0

    .line 606
    const/4 v3, -0x2

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 613
    :cond_130
    const/4 v7, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v35, v3

    if-nez v3, :cond_189

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move v9, v3

    :goto_13c
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 617
    const/high16 v3, -0x8000

    move/from16 v0, v30

    move v1, v3

    if-eq v0, v1, :cond_152

    .line 618
    move/from16 v0, v30

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 621
    :cond_152
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 622
    .local v14, childHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v34, v0

    .line 623
    .restart local v34       #totalLength:I
    add-int v3, v34, v14

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v34

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 626
    if-eqz v36, :cond_de

    .line 627
    move v0, v14

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    goto/16 :goto_de

    .line 613
    .end local v14           #childHeight:I
    .end local v34           #totalLength:I
    :cond_189
    const/4 v3, 0x0

    move v9, v3

    goto :goto_13c

    .line 649
    .end local v30           #oldHeight:I
    .restart local v34       #totalLength:I
    :cond_18c
    const/16 v27, 0x0

    .line 650
    .local v27, matchWidthLocally:Z
    const/high16 v3, 0x4000

    move/from16 v0, v39

    move v1, v3

    if-eq v0, v1, :cond_1a1

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1a1

    .line 655
    const/16 v26, 0x1

    .line 656
    const/16 v27, 0x1

    .line 659
    :cond_1a1
    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v3, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int v25, v3, v6

    .line 660
    .local v25, margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v29, v3, v25

    .line 661
    .local v29, measuredWidth:I
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 662
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v15, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v15

    .line 664
    if-eqz v10, :cond_1eb

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1eb

    const/4 v3, 0x1

    move v10, v3

    .line 665
    :goto_1cb
    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v3, v0

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1f1

    .line 670
    if-eqz v27, :cond_1ee

    move/from16 v3, v25

    :goto_1d9
    move/from16 v0, v38

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v38

    .line 677
    :goto_1e0
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_67

    .line 664
    :cond_1eb
    const/4 v3, 0x0

    move v10, v3

    goto :goto_1cb

    :cond_1ee
    move/from16 v3, v29

    .line 670
    goto :goto_1d9

    .line 673
    :cond_1f1
    if-eqz v27, :cond_1fa

    move/from16 v3, v25

    :goto_1f5
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1e0

    :cond_1fa
    move/from16 v3, v29

    goto :goto_1f5

    .line 680
    .end local v4           #child:Landroid/view/View;
    .end local v24           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v25           #margin:I
    .end local v27           #matchWidthLocally:Z
    .end local v29           #measuredWidth:I
    .end local v34           #totalLength:I
    :cond_1fd
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    if-lez v3, :cond_21e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mShowDividers:I

    move v3, v0

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_21e

    .line 681
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    move v4, v0

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 684
    :cond_21e
    if-eqz v36, :cond_292

    const/high16 v3, -0x8000

    move/from16 v0, v20

    move v1, v3

    if-ne v0, v1, :cond_292

    .line 685
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 687
    const/4 v5, 0x0

    :goto_22e
    move v0, v5

    move/from16 v1, v17

    if-ge v0, v1, :cond_292

    .line 688
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 690
    .restart local v4       #child:Landroid/view/View;
    if-nez v4, :cond_251

    .line 691
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 687
    :goto_24e
    add-int/lit8 v5, v5, 0x1

    goto :goto_22e

    .line 695
    .restart local v4       #child:Landroid/view/View;
    :cond_251
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_263

    .line 696
    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 697
    goto :goto_24e

    .line 700
    :cond_263
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout$LayoutParams;

    .line 703
    .restart local v24       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v34, v0

    .line 704
    .restart local v34       #totalLength:I
    add-int v3, v34, v23

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move/from16 v0, v34

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_24e

    .line 710
    .end local v24           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v34           #totalLength:I
    :cond_292
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v5, v0

    .end local v5           #i:I
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 712
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v21, v0

    .line 715
    .local v21, heightSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 718
    const/4 v3, 0x0

    move/from16 v0, v21

    move/from16 v1, p2

    move v2, v3

    invoke-static {v0, v1, v2}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v22

    .line 719
    .local v22, heightSizeAndState:I
    const v3, 0xffffff

    and-int v21, v22, v3

    .line 723
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    sub-int v18, v21, v3

    .line 724
    .local v18, delta:I
    if-eqz v18, :cond_458

    const/4 v3, 0x0

    cmpl-float v3, v35, v3

    if-lez v3, :cond_458

    .line 725
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_305

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move v3, v0

    move/from16 v37, v3

    .line 727
    .local v37, weightSum:F
    :goto_2e7
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 729
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2ee
    move v0, v5

    move/from16 v1, v17

    if-ge v0, v1, :cond_402

    .line 730
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 732
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_308

    .line 729
    .end local v4           #child:Landroid/view/View;
    :goto_302
    add-int/lit8 v5, v5, 0x1

    goto :goto_2ee

    .end local v5           #i:I
    .end local v37           #weightSum:F
    :cond_305
    move/from16 v37, v35

    .line 725
    goto :goto_2e7

    .line 736
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #i:I
    .restart local v37       #weightSum:F
    :cond_308
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/widget/LinearLayout$LayoutParams;

    .line 738
    .restart local v24       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v13, v0

    .line 739
    .local v13, childExtra:F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_379

    .line 741
    move/from16 v0, v18

    int-to-float v0, v0

    move v3, v0

    mul-float/2addr v3, v13

    div-float v3, v3, v37

    move v0, v3

    float-to-int v0, v0

    move/from16 v31, v0

    .line 742
    .local v31, share:I
    sub-float v37, v37, v13

    .line 743
    sub-int v18, v18, v31

    .line 745
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v6, v0

    move/from16 v0, p1

    move v1, v3

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v16

    .line 751
    .local v16, childWidthMeasureSpec:I
    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move v3, v0

    if-nez v3, :cond_359

    const/high16 v3, 0x4000

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_3e3

    .line 754
    :cond_359
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v14, v3, v31

    .line 755
    .restart local v14       #childHeight:I
    if-gez v14, :cond_362

    .line 756
    const/4 v14, 0x0

    .line 759
    :cond_362
    const/high16 v3, 0x4000

    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, v4

    move/from16 v1, v16

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 770
    .end local v14           #childHeight:I
    :goto_36f
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    and-int/lit16 v3, v3, -0x100

    invoke-static {v15, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v15

    .line 774
    .end local v16           #childWidthMeasureSpec:I
    .end local v31           #share:I
    :cond_379
    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move v3, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    move v6, v0

    add-int v25, v3, v6

    .line 775
    .restart local v25       #margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v29, v3, v25

    .line 776
    .restart local v29       #measuredWidth:I
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 778
    const/high16 v3, 0x4000

    move/from16 v0, v39

    move v1, v3

    if-eq v0, v1, :cond_3f8

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_3f8

    const/4 v3, 0x1

    move/from16 v27, v3

    .line 781
    .restart local v27       #matchWidthLocally:Z
    :goto_3a1
    if-eqz v27, :cond_3fc

    move/from16 v3, v25

    :goto_3a5
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 784
    if-eqz v10, :cond_3ff

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_3ff

    const/4 v3, 0x1

    move v10, v3

    .line 786
    :goto_3b5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v34, v0

    .line 787
    .restart local v34       #totalLength:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, v34

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move v6, v0

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move/from16 v0, v34

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_302

    .line 764
    .end local v25           #margin:I
    .end local v27           #matchWidthLocally:Z
    .end local v29           #measuredWidth:I
    .end local v34           #totalLength:I
    .restart local v4       #child:Landroid/view/View;
    .restart local v16       #childWidthMeasureSpec:I
    .restart local v31       #share:I
    :cond_3e3
    if-lez v31, :cond_3f6

    move/from16 v3, v31

    :goto_3e7
    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move-object v0, v4

    move/from16 v1, v16

    move v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto/16 :goto_36f

    :cond_3f6
    const/4 v3, 0x0

    goto :goto_3e7

    .line 778
    .end local v16           #childWidthMeasureSpec:I
    .end local v31           #share:I
    .restart local v25       #margin:I
    .restart local v29       #measuredWidth:I
    :cond_3f8
    const/4 v3, 0x0

    move/from16 v27, v3

    goto :goto_3a1

    .restart local v27       #matchWidthLocally:Z
    :cond_3fc
    move/from16 v3, v29

    .line 781
    goto :goto_3a5

    .line 784
    :cond_3ff
    const/4 v3, 0x0

    move v10, v3

    goto :goto_3b5

    .line 792
    .end local v4           #child:Landroid/view/View;
    .end local v13           #childExtra:F
    .end local v24           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v25           #margin:I
    .end local v27           #matchWidthLocally:Z
    .end local v29           #measuredWidth:I
    :cond_402
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    move v5, v0

    .end local v5           #i:I
    add-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 799
    .end local v37           #weightSum:F
    :goto_418
    if-nez v10, :cond_423

    const/high16 v3, 0x4000

    move/from16 v0, v39

    move v1, v3

    if-eq v0, v1, :cond_423

    .line 800
    move/from16 v28, v11

    .line 803
    :cond_423
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    move v4, v0

    add-int/2addr v3, v4

    add-int v28, v28, v3

    .line 806
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v28

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    .line 808
    move/from16 v0, v28

    move/from16 v1, p1

    move v2, v15

    invoke-static {v0, v1, v2}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 811
    if-eqz v26, :cond_457

    .line 812
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    .line 814
    :cond_457
    return-void

    .line 795
    :cond_458
    move v0, v11

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_418
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 235
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    .line 244
    :goto_4
    return-void

    .line 239
    :cond_5
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 240
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_4

    .line 242
    :cond_e
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1313
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1314
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->layoutVertical()V

    .line 1318
    :goto_8
    return-void

    .line 1316
    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->layoutHorizontal()V

    goto :goto_8
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 518
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 519
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    .line 523
    :goto_8
    return-void

    .line 521
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    goto :goto_8
.end method

.method public setBaselineAligned(Z)V
    .registers 2
    .parameter "baselineAligned"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 355
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 356
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .registers 5
    .parameter "i"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 455
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_2b

    .line 456
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_2b
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 460
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "divider"

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_6

    .line 231
    :goto_5
    return-void

    .line 221
    :cond_6
    iput-object p1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 222
    if-eqz p1, :cond_20

    .line 223
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 224
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    .line 229
    :goto_16
    if-nez p1, :cond_25

    const/4 v0, 0x1

    :goto_19
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 230
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_5

    .line 226
    :cond_20
    iput v1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 227
    iput v1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    goto :goto_16

    :cond_25
    move v0, v1

    .line 229
    goto :goto_19
.end method

.method public setGravity(I)V
    .registers 3
    .parameter "gravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1580
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_15

    .line 1581
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_a

    .line 1582
    or-int/lit8 p1, p1, 0x3

    .line 1585
    :cond_a
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_10

    .line 1586
    or-int/lit8 p1, p1, 0x30

    .line 1589
    :cond_10
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1590
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1592
    :cond_15
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 4
    .parameter "horizontalGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1596
    and-int/lit8 v0, p1, 0x7

    .line 1597
    .local v0, gravity:I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v0, :cond_12

    .line 1598
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x8

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1599
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1601
    :cond_12
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .registers 2
    .parameter "enabled"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 382
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 383
    return-void
.end method

.method public setOrientation(I)V
    .registers 3
    .parameter "orientation"

    .prologue
    .line 1553
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_9

    .line 1554
    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 1555
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1557
    :cond_9
    return-void
.end method

.method public setShowDividers(I)V
    .registers 3
    .parameter "showDividers"

    .prologue
    .line 198
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-eq p1, v0, :cond_7

    .line 199
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 201
    :cond_7
    iput p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 202
    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 4
    .parameter "verticalGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1605
    and-int/lit8 v0, p1, 0x70

    .line 1606
    .local v0, gravity:I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_12

    .line 1607
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1608
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1610
    :cond_12
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3
    .parameter "weightSum"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 513
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 514
    return-void
.end method
