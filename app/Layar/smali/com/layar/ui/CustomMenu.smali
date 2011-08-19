.class public Lcom/layar/ui/CustomMenu;
.super Landroid/widget/LinearLayout;
.source "CustomMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/CustomMenu$CustomMenuItem;,
        Lcom/layar/ui/CustomMenu$CustomMenuListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Layar.CustomMenu"


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/ui/CustomMenu$CustomMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/layar/ui/CustomMenu$CustomMenuListener;

.field private mLandscapeLayout:Landroid/widget/LinearLayout;

.field private mPortraitLayout:[Landroid/widget/LinearLayout;

.field private needsRebuild:Z

.field private rotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/ui/CustomMenu;->needsRebuild:Z

    .line 42
    iput-object v1, p0, Lcom/layar/ui/CustomMenu;->mPortraitLayout:[Landroid/widget/LinearLayout;

    .line 43
    iput-object v1, p0, Lcom/layar/ui/CustomMenu;->mLandscapeLayout:Landroid/widget/LinearLayout;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/layar/ui/CustomMenu;->rotation:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/ui/CustomMenu;->items:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/layar/ui/CustomMenu;)Lcom/layar/ui/CustomMenu$CustomMenuListener;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/layar/ui/CustomMenu;->listener:Lcom/layar/ui/CustomMenu$CustomMenuListener;

    return-object v0
.end method

.method private constructLandscapeMenu()V
    .locals 8

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/layar/ui/CustomMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 127
    .local v2, row:Landroid/widget/LinearLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/high16 v7, 0x3f80

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v4, p0, Lcom/layar/ui/CustomMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 129
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 134
    iput-object v2, p0, Lcom/layar/ui/CustomMenu;->mLandscapeLayout:Landroid/widget/LinearLayout;

    .line 135
    return-void

    .line 130
    :cond_0
    if-lez v1, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/layar/ui/CustomMenu;->getVerticalSeparator()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    :cond_1
    invoke-direct {p0, v1}, Lcom/layar/ui/CustomMenu;->getItem(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private constructMenu()V
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lcom/layar/ui/CustomMenu;->rotation:I

    .line 119
    .local v0, fakeRotation:I
    const/4 v1, -0x1

    iput v1, p0, Lcom/layar/ui/CustomMenu;->rotation:I

    .line 120
    invoke-virtual {p0, v0}, Lcom/layar/ui/CustomMenu;->setRotation(I)V

    .line 121
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/layar/ui/CustomMenu;->needsRebuild:Z

    .line 122
    return-void
.end method

.method private constructPortraitMenu()V
    .locals 12

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/layar/ui/CustomMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 139
    .local v0, context:Landroid/content/Context;
    iget-object v8, p0, Lcom/layar/ui/CustomMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, 0x1

    new-array v5, v8, [Landroid/widget/LinearLayout;

    .line 140
    .local v5, rows:[Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/layar/ui/CustomMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 141
    .local v6, size:I
    move v7, v6

    .line 142
    .local v7, to:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, v5

    if-lt v2, v8, :cond_0

    .line 154
    iput-object v5, p0, Lcom/layar/ui/CustomMenu;->mPortraitLayout:[Landroid/widget/LinearLayout;

    .line 155
    return-void

    .line 143
    :cond_0
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 144
    .local v4, row:Landroid/widget/LinearLayout;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/high16 v11, 0x3f80

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    aput-object v4, v5, v2

    .line 146
    const/4 v8, 0x3

    sub-int v8, v7, v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 147
    .local v1, from:I
    move v3, v1

    .local v3, j:I
    :goto_1
    if-lt v3, v7, :cond_1

    .line 152
    add-int/lit8 v7, v7, -0x3

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_1
    sub-int v8, v3, v1

    if-lez v8, :cond_2

    .line 149
    invoke-direct {p0}, Lcom/layar/ui/CustomMenu;->getVerticalSeparator()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    :cond_2
    invoke-direct {p0, v3}, Lcom/layar/ui/CustomMenu;->getItem(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getHorizontalSeparator()Landroid/view/View;
    .locals 4

    .prologue
    .line 165
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/layar/ui/CustomMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, separator:Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    const v1, 0x7f020088

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 168
    return-object v0
.end method

.method private getItem(I)Landroid/view/View;
    .locals 13
    .parameter "i"

    .prologue
    const/high16 v12, 0x4240

    const/4 v11, -0x2

    const/4 v10, 0x1

    .line 172
    iget-object v7, p0, Lcom/layar/ui/CustomMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/layar/ui/CustomMenu$CustomMenuItem;

    .line 173
    .local v3, item:Lcom/layar/ui/CustomMenu$CustomMenuItem;
    iget v2, v3, Lcom/layar/ui/CustomMenu$CustomMenuItem;->id:I

    .line 174
    .local v2, id:I
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/layar/ui/CustomMenu;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 175
    .local v5, layout:Landroid/widget/LinearLayout;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/high16 v9, 0x3f80

    invoke-direct {v7, v8, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 177
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 178
    const v7, 0x7f0200ce

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 179
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 180
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 181
    new-instance v7, Lcom/layar/ui/CustomMenu$1;

    invoke-direct {v7, p0, v2}, Lcom/layar/ui/CustomMenu$1;-><init>(Lcom/layar/ui/CustomMenu;I)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    invoke-virtual {p0}, Lcom/layar/ui/CustomMenu;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v0, v7, Landroid/util/DisplayMetrics;->density:F

    .line 189
    .local v0, density:F
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    mul-float v7, v12, v0

    float-to-int v7, v7

    mul-float v8, v12, v0

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 191
    .local v6, params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/layar/ui/CustomMenu;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 192
    .local v1, icon:Landroid/widget/ImageView;
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 193
    iget v7, v3, Lcom/layar/ui/CustomMenu$CustomMenuItem;->icon:I

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/layar/ui/CustomMenu;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 196
    .local v4, label:Landroid/widget/TextView;
    iget-object v7, v3, Lcom/layar/ui/CustomMenu$CustomMenuItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 199
    const/high16 v7, -0x100

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 201
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    return-object v5
.end method

.method private getVerticalSeparator()Landroid/view/View;
    .locals 4

    .prologue
    .line 158
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/layar/ui/CustomMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 159
    .local v0, separator:Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 161
    return-object v0
.end method

.method private needsRebuild()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/ui/CustomMenu;->needsRebuild:Z

    .line 103
    iput-object v1, p0, Lcom/layar/ui/CustomMenu;->mPortraitLayout:[Landroid/widget/LinearLayout;

    .line 104
    iput-object v1, p0, Lcom/layar/ui/CustomMenu;->mLandscapeLayout:Landroid/widget/LinearLayout;

    .line 105
    return-void
.end method


# virtual methods
.method public addItem(Lcom/layar/ui/CustomMenu$CustomMenuItem;)V
    .locals 1
    .parameter "item"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/layar/ui/CustomMenu;->needsRebuild()V

    .line 84
    iget-object v0, p0, Lcom/layar/ui/CustomMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public clearMenu()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/layar/ui/CustomMenu;->needsRebuild()V

    .line 89
    iget-object v0, p0, Lcom/layar/ui/CustomMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 90
    return-void
.end method

.method public hideMenu()V
    .locals 1

    .prologue
    .line 114
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/layar/ui/CustomMenu;->setVisibility(I)V

    .line 115
    return-void
.end method

.method public isCreated()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/layar/ui/CustomMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public replaceIcon(II)V
    .locals 3
    .parameter "menuId"
    .parameter "iconResId"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/layar/ui/CustomMenu;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    return-void

    .line 93
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/ui/CustomMenu$CustomMenuItem;

    .line 94
    .local v0, item:Lcom/layar/ui/CustomMenu$CustomMenuItem;
    iget v2, v0, Lcom/layar/ui/CustomMenu$CustomMenuItem;->id:I

    if-ne v2, p1, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/layar/ui/CustomMenu;->needsRebuild()V

    .line 96
    iput p2, v0, Lcom/layar/ui/CustomMenu$CustomMenuItem;->icon:I

    goto :goto_0
.end method

.method public setListener(Lcom/layar/ui/CustomMenu$CustomMenuListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/layar/ui/CustomMenu;->listener:Lcom/layar/ui/CustomMenu$CustomMenuListener;

    .line 53
    return-void
.end method

.method public setRotation(I)V
    .locals 3
    .parameter "rotation"

    .prologue
    .line 56
    iget v2, p0, Lcom/layar/ui/CustomMenu;->rotation:I

    if-ne v2, p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iput p1, p0, Lcom/layar/ui/CustomMenu;->rotation:I

    .line 60
    invoke-virtual {p0}, Lcom/layar/ui/CustomMenu;->removeAllViews()V

    .line 61
    if-eqz p1, :cond_2

    .line 62
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 63
    :cond_2
    iget-object v2, p0, Lcom/layar/ui/CustomMenu;->mPortraitLayout:[Landroid/widget/LinearLayout;

    if-nez v2, :cond_3

    .line 64
    invoke-direct {p0}, Lcom/layar/ui/CustomMenu;->constructPortraitMenu()V

    .line 65
    :cond_3
    iget-object v2, p0, Lcom/layar/ui/CustomMenu;->mPortraitLayout:[Landroid/widget/LinearLayout;

    array-length v1, v2

    .line 66
    .local v1, rowsCount:I
    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 67
    iget-object v2, p0, Lcom/layar/ui/CustomMenu;->mPortraitLayout:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/layar/ui/CustomMenu;->addView(Landroid/view/View;)V

    .line 68
    if-lez v0, :cond_4

    .line 69
    invoke-direct {p0}, Lcom/layar/ui/CustomMenu;->getHorizontalSeparator()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/layar/ui/CustomMenu;->addView(Landroid/view/View;)V

    .line 66
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 72
    .end local v0           #i:I
    .end local v1           #rowsCount:I
    :cond_5
    iget-object v2, p0, Lcom/layar/ui/CustomMenu;->mLandscapeLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_6

    .line 73
    invoke-direct {p0}, Lcom/layar/ui/CustomMenu;->constructLandscapeMenu()V

    .line 74
    :cond_6
    iget-object v2, p0, Lcom/layar/ui/CustomMenu;->mLandscapeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/layar/ui/CustomMenu;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/layar/ui/CustomMenu;->needsRebuild:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/layar/ui/CustomMenu;->constructMenu()V

    .line 110
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/layar/ui/CustomMenu;->setVisibility(I)V

    .line 111
    return-void
.end method
