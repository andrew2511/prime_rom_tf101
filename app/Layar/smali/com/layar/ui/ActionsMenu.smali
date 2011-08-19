.class public Lcom/layar/ui/ActionsMenu;
.super Landroid/widget/LinearLayout;
.source "ActionsMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/ActionsMenu$ActionsMenuListener;
    }
.end annotation


# static fields
.field private static final MAX_ITEMS:I = 0x6

.field private static final TYPE_LEFT:I = 0x7f02002d

.field private static final TYPE_LEFT_RIGHT:I = 0x7f020030

.field private static final TYPE_NORMAL:I = 0x7f020033

.field private static final TYPE_RIGHT:I = 0x7f020036


# instance fields
.field private final MENU_HEIGHT:I

.field private final MENU_ICON_PADDING:I

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/layar/ui/ActionsMenu$ActionsMenuListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object p1, p0, Lcom/layar/ui/ActionsMenu;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 43
    .local v0, density:F
    const/high16 v1, 0x4228

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/layar/ui/ActionsMenu;->MENU_HEIGHT:I

    .line 44
    const/high16 v1, 0x4080

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/layar/ui/ActionsMenu;->MENU_ICON_PADDING:I

    .line 46
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/layar/ui/ActionsMenu;->setOrientation(I)V

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/layar/ui/ActionsMenu;)Lcom/layar/ui/ActionsMenu$ActionsMenuListener;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/layar/ui/ActionsMenu;->mListener:Lcom/layar/ui/ActionsMenu$ActionsMenuListener;

    return-object v0
.end method

.method private getHorizontalSeparator()Landroid/view/View;
    .locals 4

    .prologue
    .line 156
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/layar/ui/ActionsMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, separator:Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    const v1, 0x7f020088

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 159
    return-object v0
.end method

.method private getVerticalSeparator()Landroid/view/View;
    .locals 4

    .prologue
    .line 149
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/layar/ui/ActionsMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, separator:Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 152
    return-object v0
.end method

.method private getView(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;I)Landroid/view/View;
    .locals 10
    .parameter "item"
    .parameter "layer"
    .parameter "type"

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3f80

    const/4 v7, -0x2

    .line 163
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/layar/ui/ActionsMenu;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 164
    .local v2, layout:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/layar/ui/ActionsMenu;->MENU_HEIGHT:I

    invoke-direct {v3, v9, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 166
    invoke-virtual {v2, p3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 167
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 168
    new-instance v3, Lcom/layar/ui/ActionsMenu$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/layar/ui/ActionsMenu$1;-><init>(Lcom/layar/ui/ActionsMenu;Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    new-instance v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/layar/ui/ActionsMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 177
    .local v0, icon:Landroid/widget/ImageView;
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 178
    sget-object v3, Lcom/layar/data/PoiAction;->ICONS:[I

    iget v4, p1, Lcom/layar/data/PoiAction;->activityType:I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    iget v3, p0, Lcom/layar/ui/ActionsMenu;->MENU_ICON_PADDING:I

    iget v4, p0, Lcom/layar/ui/ActionsMenu;->MENU_ICON_PADDING:I

    iget v5, p0, Lcom/layar/ui/ActionsMenu;->MENU_ICON_PADDING:I

    iget v6, p0, Lcom/layar/ui/ActionsMenu;->MENU_ICON_PADDING:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 181
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/layar/ui/ActionsMenu;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 182
    .local v1, label:Landroid/widget/TextView;
    iget-object v3, p1, Lcom/layar/data/PoiAction;->label:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    const/high16 v3, -0x100

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 185
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 186
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 188
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    return-object v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/layar/ui/ActionsMenu;->removeAllViews()V

    .line 55
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/layar/ui/ActionsMenu;->setVisibility(I)V

    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/layar/core/ARRenderer;->BIW_MENU_RAWS_NUMBER:I

    .line 57
    return-void
.end method

.method public constructMenu(Lcom/layar/data/BasePOI;Lcom/layar/data/layer/Layer20;Z)V
    .locals 24
    .parameter "poi"
    .parameter "layer"
    .parameter "addInfoAcrtion"

    .prologue
    .line 60
    invoke-virtual/range {p0 .. p0}, Lcom/layar/ui/ActionsMenu;->removeAllViews()V

    .line 62
    if-nez p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    if-eqz p3, :cond_3

    const/16 v21, 0x0

    move/from16 v9, v21

    .line 66
    .local v9, infoWasAdded:Z
    :goto_1
    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/layar/data/layer/Layer20;->showTakeMeThere:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    :cond_2
    const/16 v21, 0x1

    .line 67
    :goto_2
    if-eqz p3, :cond_5

    const/16 v22, 0x1

    .line 66
    :goto_3
    add-int v14, v21, v22

    .line 68
    .local v14, more:I
    const/4 v13, 0x0

    .line 69
    .local v13, less:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/layar/data/BasePOI;->actions:[Lcom/layar/data/PoiAction;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/layar/data/BasePOI;->actions:[Lcom/layar/data/PoiAction;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v15, v21

    .line 70
    .local v15, poiActionsCount:I
    :goto_4
    const/4 v8, 0x0

    .local v8, i:I
    :goto_5
    if-lt v8, v15, :cond_7

    .line 76
    add-int v21, v15, v14

    sub-int v6, v21, v13

    .line 78
    .local v6, count:I
    if-eqz v6, :cond_0

    .line 81
    const/16 v21, 0x1

    sub-int v21, v6, v21

    div-int/lit8 v21, v21, 0x3

    add-int/lit8 v21, v21, 0x1

    const/16 v22, 0x2

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    .line 82
    .local v17, rows:[Landroid/widget/LinearLayout;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    sput v21, Lcom/layar/core/ARRenderer;->BIW_MENU_RAWS_NUMBER:I

    .line 83
    const/16 v21, 0x3

    move v0, v6

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 84
    .local v19, to:I
    const/16 v18, 0x0

    .line 87
    .local v18, skip:I
    const/4 v8, 0x0

    :goto_6
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move v0, v8

    move/from16 v1, v21

    if-lt v0, v1, :cond_9

    .line 140
    const/4 v11, 0x0

    .local v11, k:I
    :goto_7
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move v0, v11

    move/from16 v1, v21

    if-lt v0, v1, :cond_1a

    .line 145
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/layar/ui/ActionsMenu;->setVisibility(I)V

    goto :goto_0

    .line 65
    .end local v6           #count:I
    .end local v8           #i:I
    .end local v9           #infoWasAdded:Z
    .end local v11           #k:I
    .end local v13           #less:I
    .end local v14           #more:I
    .end local v15           #poiActionsCount:I
    .end local v17           #rows:[Landroid/widget/LinearLayout;
    .end local v18           #skip:I
    .end local v19           #to:I
    :cond_3
    const/16 v21, 0x1

    move/from16 v9, v21

    goto :goto_1

    .line 66
    .restart local v9       #infoWasAdded:Z
    :cond_4
    const/16 v21, 0x0

    goto :goto_2

    .line 67
    :cond_5
    const/16 v22, 0x0

    goto :goto_3

    .line 69
    .restart local v13       #less:I
    .restart local v14       #more:I
    :cond_6
    const/16 v21, 0x0

    move/from16 v15, v21

    goto :goto_4

    .line 71
    .restart local v8       #i:I
    .restart local v15       #poiActionsCount:I
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/layar/data/BasePOI;->actions:[Lcom/layar/data/PoiAction;

    move-object/from16 v21, v0

    aget-object v4, v21, v8

    .line 72
    .local v4, action:Lcom/layar/data/PoiAction;
    move-object v0, v4

    iget-boolean v0, v0, Lcom/layar/data/PoiAction;->autoTriggerOnly:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v0, p1

    iget v0, v0, Lcom/layar/data/BasePOI;->geodistance:I

    move/from16 v21, v0

    move-object v0, v4

    iget v0, v0, Lcom/layar/data/PoiAction;->autoTriggerRange:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 73
    add-int/lit8 v13, v13, 0x1

    .line 70
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 88
    .end local v4           #action:Lcom/layar/data/PoiAction;
    .restart local v6       #count:I
    .restart local v17       #rows:[Landroid/widget/LinearLayout;
    .restart local v18       #skip:I
    .restart local v19       #to:I
    :cond_9
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move/from16 v0, v21

    move v1, v8

    if-ne v0, v1, :cond_a

    const/16 v21, 0x1

    move/from16 v12, v21

    .line 89
    .local v12, lastRow:Z
    :goto_8
    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/ui/ActionsMenu;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 90
    .local v16, row:Landroid/widget/LinearLayout;
    new-instance v21, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x2

    invoke-direct/range {v21 .. v23}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    aput-object v16, v17, v8

    .line 92
    const/16 v21, 0x3

    sub-int v21, v19, v21

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 93
    .local v7, from:I
    move v10, v7

    .local v10, j:I
    :goto_9
    move v0, v10

    move/from16 v1, v19

    if-lt v0, v1, :cond_b

    .line 137
    :goto_a
    add-int/lit8 v19, v19, 0x3

    .line 87
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    .line 88
    .end local v7           #from:I
    .end local v10           #j:I
    .end local v12           #lastRow:Z
    .end local v16           #row:Landroid/widget/LinearLayout;
    :cond_a
    const/16 v21, 0x0

    move/from16 v12, v21

    goto :goto_8

    .line 94
    .restart local v7       #from:I
    .restart local v10       #j:I
    .restart local v12       #lastRow:Z
    .restart local v16       #row:Landroid/widget/LinearLayout;
    :cond_b
    sub-int v21, v10, v7

    if-lez v21, :cond_c

    .line 95
    invoke-direct/range {p0 .. p0}, Lcom/layar/ui/ActionsMenu;->getVerticalSeparator()Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    :cond_c
    const v20, 0x7f020033

    .line 98
    .local v20, type:I
    if-eqz v12, :cond_e

    .line 99
    const/16 v21, 0x1

    move v0, v6

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    const/16 v21, 0x1

    sub-int v21, v19, v21

    move v0, v7

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 100
    :cond_d
    const v20, 0x7f020030

    .line 107
    :cond_e
    :goto_b
    const/16 v21, 0x5

    move v0, v10

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    const/16 v21, 0x1

    sub-int v21, v6, v21

    move v0, v10

    move/from16 v1, v21

    if-ge v0, v1, :cond_11

    .line 108
    invoke-static {}, Lcom/layar/data/PoiAction;->getMoreAction()Lcom/layar/data/PoiAction;

    move-result-object v4

    .line 109
    .restart local v4       #action:Lcom/layar/data/PoiAction;
    const v21, 0x7f02002d

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p2

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/layar/ui/ActionsMenu;->getView(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_a

    .line 101
    .end local v4           #action:Lcom/layar/data/PoiAction;
    :cond_f
    if-ne v10, v7, :cond_10

    .line 102
    const v20, 0x7f020036

    goto :goto_b

    .line 103
    :cond_10
    const/16 v21, 0x1

    sub-int v21, v19, v21

    move v0, v10

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 104
    const v20, 0x7f02002d

    goto :goto_b

    .line 112
    :cond_11
    sub-int v21, v15, v13

    move v0, v10

    move/from16 v1, v21

    if-ge v0, v1, :cond_16

    .line 113
    const/4 v4, 0x0

    .line 114
    .restart local v4       #action:Lcom/layar/data/PoiAction;
    const/4 v5, 0x1

    .line 116
    .local v5, actionAvailable:Z
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/layar/data/BasePOI;->actions:[Lcom/layar/data/PoiAction;

    move-object/from16 v21, v0

    add-int v22, v10, v18

    aget-object v4, v21, v22

    .line 117
    move-object v0, v4

    iget-boolean v0, v0, Lcom/layar/data/PoiAction;->autoTriggerOnly:Z

    move/from16 v21, v0

    if-eqz v21, :cond_15

    .line 118
    move-object/from16 v0, p1

    iget v0, v0, Lcom/layar/data/BasePOI;->geodistance:I

    move/from16 v21, v0

    move-object v0, v4

    iget v0, v0, Lcom/layar/data/PoiAction;->autoTriggerRange:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_15

    const/16 v21, 0x0

    move/from16 v5, v21

    .line 119
    :goto_c
    if-nez v5, :cond_13

    .line 120
    add-int/lit8 v18, v18, 0x1

    .line 115
    :cond_13
    if-eqz v5, :cond_12

    .line 122
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p2

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/layar/ui/ActionsMenu;->getView(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    .end local v4           #action:Lcom/layar/data/PoiAction;
    .end local v5           #actionAvailable:Z
    :cond_14
    :goto_d
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_9

    .line 118
    .restart local v4       #action:Lcom/layar/data/PoiAction;
    .restart local v5       #actionAvailable:Z
    :cond_15
    const/16 v21, 0x1

    move/from16 v5, v21

    goto :goto_c

    .line 124
    .end local v4           #action:Lcom/layar/data/PoiAction;
    .end local v5           #actionAvailable:Z
    :cond_16
    if-nez v9, :cond_17

    .line 125
    invoke-static {}, Lcom/layar/data/PoiAction;->getInfoAction()Lcom/layar/data/PoiAction;

    move-result-object v4

    .line 126
    .restart local v4       #action:Lcom/layar/data/PoiAction;
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p2

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/layar/ui/ActionsMenu;->getView(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    const/4 v9, 0x1

    goto :goto_d

    .line 129
    .end local v4           #action:Lcom/layar/data/PoiAction;
    :cond_17
    if-eqz p2, :cond_18

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/layar/data/layer/Layer20;->showTakeMeThere:Z

    move/from16 v21, v0

    if-eqz v21, :cond_14

    .line 130
    :cond_18
    invoke-static {}, Lcom/layar/data/PoiAction;->getGetThereAction()Lcom/layar/data/PoiAction;

    move-result-object v4

    .line 132
    .restart local v4       #action:Lcom/layar/data/PoiAction;
    if-ne v10, v7, :cond_19

    const v21, 0x7f020030

    .line 131
    :goto_e
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p2

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/layar/ui/ActionsMenu;->getView(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_a

    .line 132
    :cond_19
    const v21, 0x7f02002d

    goto :goto_e

    .line 141
    .end local v4           #action:Lcom/layar/data/PoiAction;
    .end local v7           #from:I
    .end local v10           #j:I
    .end local v12           #lastRow:Z
    .end local v16           #row:Landroid/widget/LinearLayout;
    .end local v20           #type:I
    .restart local v11       #k:I
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/layar/ui/ActionsMenu;->getHorizontalSeparator()Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/layar/ui/ActionsMenu;->addView(Landroid/view/View;)V

    .line 142
    aget-object v21, v17, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/layar/ui/ActionsMenu;->addView(Landroid/view/View;)V

    .line 140
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7
.end method

.method public setListener(Lcom/layar/ui/ActionsMenu$ActionsMenuListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/layar/ui/ActionsMenu;->mListener:Lcom/layar/ui/ActionsMenu$ActionsMenuListener;

    .line 51
    return-void
.end method
