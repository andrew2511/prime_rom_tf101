.class public Lcom/android/browser/BreadCrumbView;
.super Landroid/widget/LinearLayout;
.source "BreadCrumbView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BreadCrumbView$Crumb;,
        Lcom/android/browser/BreadCrumbView$Controller;
    }
.end annotation


# instance fields
.field private mBackButton:Landroid/widget/ImageButton;

.field private mController:Lcom/android/browser/BreadCrumbView$Controller;

.field private mCrumbs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/browser/BreadCrumbView$Crumb;",
            ">;"
        }
    .end annotation
.end field

.field private mDividerPadding:F

.field private mMaxVisible:I

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mUseBackButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BreadCrumbView;->mMaxVisible:I

    .line 80
    invoke-direct {p0, p1}, Lcom/android/browser/BreadCrumbView;->init(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BreadCrumbView;->mMaxVisible:I

    .line 72
    invoke-direct {p0, p1}, Lcom/android/browser/BreadCrumbView;->init(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BreadCrumbView;->mMaxVisible:I

    .line 63
    invoke-direct {p0, p1}, Lcom/android/browser/BreadCrumbView;->init(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BreadCrumbView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/BreadCrumbView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/BreadCrumbView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addBackButton()V
    .locals 6

    .prologue
    .line 164
    new-instance v2, Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/browser/BreadCrumbView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    .line 165
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    const v3, 0x7f020024

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 166
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 167
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101030e

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 169
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 170
    .local v1, resid:I
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 171
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 175
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/browser/BreadCrumbView;->addView(Landroid/view/View;I)V

    .line 176
    return-void
.end method

.method private addSeparator()V
    .locals 2

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/browser/BreadCrumbView;->makeDividerView()Landroid/widget/ImageView;

    move-result-object v0

    .line 190
    .local v0, sep:Landroid/view/View;
    invoke-direct {p0}, Lcom/android/browser/BreadCrumbView;->makeDividerLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    invoke-virtual {p0, v0}, Lcom/android/browser/BreadCrumbView;->addView(Landroid/view/View;)V

    .line 192
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 84
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/BreadCrumbView;->mUseBackButton:Z

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    .line 86
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x9c

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BreadCrumbView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    const/high16 v1, 0x4140

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/browser/BreadCrumbView;->mDividerPadding:F

    .line 90
    invoke-direct {p0}, Lcom/android/browser/BreadCrumbView;->addBackButton()V

    .line 91
    return-void
.end method

.method private makeDividerLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 202
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 204
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/android/browser/BreadCrumbView;->mDividerPadding:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 205
    iget v1, p0, Lcom/android/browser/BreadCrumbView;->mDividerPadding:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 206
    return-object v0
.end method

.method private makeDividerView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/browser/BreadCrumbView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 196
    .local v0, result:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/browser/BreadCrumbView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 198
    return-object v0
.end method

.method private pop(Z)V
    .locals 4
    .parameter "notify"

    .prologue
    const/4 v3, 0x1

    .line 210
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 211
    .local v0, n:I
    if-lez v0, :cond_3

    .line 212
    invoke-direct {p0}, Lcom/android/browser/BreadCrumbView;->removeLastView()V

    .line 213
    iget-boolean v2, p0, Lcom/android/browser/BreadCrumbView;->mUseBackButton:Z

    if-eqz v2, :cond_0

    if-le v0, v3, :cond_1

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/BreadCrumbView;->removeLastView()V

    .line 217
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    sub-int v3, v0, v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 218
    iget-boolean v2, p0, Lcom/android/browser/BreadCrumbView;->mUseBackButton:Z

    if-eqz v2, :cond_2

    .line 219
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getTopCrumb()Lcom/android/browser/BreadCrumbView$Crumb;

    move-result-object v1

    .line 220
    .local v1, top:Lcom/android/browser/BreadCrumbView$Crumb;
    if-eqz v1, :cond_4

    iget-boolean v2, v1, Lcom/android/browser/BreadCrumbView$Crumb;->canGoBack:Z

    if-eqz v2, :cond_4

    .line 221
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 226
    .end local v1           #top:Lcom/android/browser/BreadCrumbView$Crumb;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/browser/BreadCrumbView;->updateVisible()V

    .line 227
    if-eqz p1, :cond_3

    .line 228
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->notifyController()V

    .line 231
    :cond_3
    return-void

    .line 223
    .restart local v1       #top:Lcom/android/browser/BreadCrumbView$Crumb;
    :cond_4
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private pushCrumb(Lcom/android/browser/BreadCrumbView$Crumb;)V
    .locals 1
    .parameter "crumb"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/android/browser/BreadCrumbView;->addSeparator()V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p1, Lcom/android/browser/BreadCrumbView$Crumb;->crumbView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/browser/BreadCrumbView;->addView(Landroid/view/View;)V

    .line 184
    invoke-direct {p0}, Lcom/android/browser/BreadCrumbView;->updateVisible()V

    .line 185
    iget-object v0, p1, Lcom/android/browser/BreadCrumbView$Crumb;->crumbView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    return-void
.end method

.method private removeLastView()V
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getChildCount()I

    move-result v0

    .line 276
    .local v0, ix:I
    if-lez v0, :cond_0

    .line 277
    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/browser/BreadCrumbView;->removeViewAt(I)V

    .line 279
    :cond_0
    return-void
.end method

.method private updateVisible()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 235
    const/4 v2, 0x1

    .line 236
    .local v2, childIndex:I
    iget v7, p0, Lcom/android/browser/BreadCrumbView;->mMaxVisible:I

    if-ltz v7, :cond_2

    .line 237
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->size()I

    move-result v7

    iget v8, p0, Lcom/android/browser/BreadCrumbView;->mMaxVisible:I

    sub-int v6, v7, v8

    .line 238
    .local v6, invisibleCrumbs:I
    if-lez v6, :cond_1

    .line 239
    const/4 v4, 0x0

    .line 240
    .local v4, crumbIndex:I
    :goto_0
    if-ge v4, v6, :cond_1

    .line 242
    invoke-virtual {p0, v2}, Lcom/android/browser/BreadCrumbView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 243
    add-int/lit8 v2, v2, 0x1

    .line 246
    invoke-virtual {p0, v2}, Lcom/android/browser/BreadCrumbView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 247
    invoke-virtual {p0, v2}, Lcom/android/browser/BreadCrumbView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 249
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 251
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 255
    .end local v4           #crumbIndex:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getChildCount()I

    move-result v1

    .line 256
    .local v1, childCount:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 257
    invoke-virtual {p0, v2}, Lcom/android/browser/BreadCrumbView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 261
    .end local v1           #childCount:I
    .end local v6           #invisibleCrumbs:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getChildCount()I

    move-result v3

    .line 262
    .local v3, count:I
    move v5, v2

    .local v5, i:I
    :goto_2
    if-ge v5, v3, :cond_3

    .line 263
    invoke-virtual {p0, v5}, Lcom/android/browser/BreadCrumbView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 262
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 266
    .end local v3           #count:I
    .end local v5           #i:I
    :cond_3
    iget-boolean v7, p0, Lcom/android/browser/BreadCrumbView;->mUseBackButton:Z

    if-eqz v7, :cond_6

    .line 267
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getTopCrumb()Lcom/android/browser/BreadCrumbView$Crumb;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getTopCrumb()Lcom/android/browser/BreadCrumbView$Crumb;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/browser/BreadCrumbView$Crumb;->canGoBack:Z

    move v0, v7

    .line 268
    .local v0, canGoBack:Z
    :goto_3
    iget-object v7, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    move v8, v9

    :goto_4
    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 272
    .end local v0           #canGoBack:Z
    :goto_5
    return-void

    :cond_4
    move v0, v9

    .line 267
    goto :goto_3

    .restart local v0       #canGoBack:Z
    :cond_5
    move v8, v10

    .line 268
    goto :goto_4

    .line 270
    .end local v0           #canGoBack:Z
    :cond_6
    iget-object v7, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_5
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/browser/BreadCrumbView;->pop(Z)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/browser/BreadCrumbView;->pop(Z)V

    .line 132
    return-void
.end method

.method public getBaseline()I
    .locals 2

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getChildCount()I

    move-result v0

    .line 305
    .local v0, ix:I
    if-lez v0, :cond_0

    .line 308
    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/android/browser/BreadCrumbView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 310
    :goto_0
    return v1

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result v1

    goto :goto_0
.end method

.method getTopCrumb()Lcom/android/browser/BreadCrumbView$Crumb;
    .locals 4

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, crumb:Lcom/android/browser/BreadCrumbView$Crumb;
    iget-object v1, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #crumb:Lcom/android/browser/BreadCrumbView$Crumb;
    check-cast v0, Lcom/android/browser/BreadCrumbView$Crumb;

    .line 286
    .restart local v0       #crumb:Lcom/android/browser/BreadCrumbView$Crumb;
    :cond_0
    return-object v0
.end method

.method public getTopData()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getTopCrumb()Lcom/android/browser/BreadCrumbView$Crumb;

    move-result-object v0

    .line 117
    .local v0, c:Lcom/android/browser/BreadCrumbView$Crumb;
    if-eqz v0, :cond_0

    .line 118
    iget-object v1, v0, Lcom/android/browser/BreadCrumbView$Crumb;->data:Ljava/lang/Object;

    .line 120
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTopLevel()I
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public notifyController()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mController:Lcom/android/browser/BreadCrumbView$Controller;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mController:Lcom/android/browser/BreadCrumbView$Controller;

    iget-object v1, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getTopCrumb()Lcom/android/browser/BreadCrumbView$Crumb;

    move-result-object v2

    iget-object v2, v2, Lcom/android/browser/BreadCrumbView$Crumb;->data:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/android/browser/BreadCrumbView$Controller;->onTop(ILjava/lang/Object;)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mController:Lcom/android/browser/BreadCrumbView$Controller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/browser/BreadCrumbView$Controller;->onTop(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mBackButton:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->popView()V

    .line 293
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->notifyController()V

    .line 301
    :goto_0
    return-void

    .line 296
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getTopCrumb()Lcom/android/browser/BreadCrumbView$Crumb;

    move-result-object v0

    iget-object v0, v0, Lcom/android/browser/BreadCrumbView$Crumb;->crumbView:Landroid/view/View;

    if-eq p1, v0, :cond_1

    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/browser/BreadCrumbView;->pop(Z)V

    goto :goto_1

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->notifyController()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 315
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 316
    iget-object v2, p0, Lcom/android/browser/BreadCrumbView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 317
    .local v0, height:I
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getMeasuredHeight()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 320
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 321
    .local v1, mode:I
    sparse-switch v1, :sswitch_data_0

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BreadCrumbView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/android/browser/BreadCrumbView;->setMeasuredDimension(II)V

    .line 334
    .end local v1           #mode:I
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 323
    .restart local v1       #mode:I
    :sswitch_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-ge v2, v0, :cond_0

    goto :goto_0

    .line 321
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public popView()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/browser/BreadCrumbView;->pop(Z)V

    .line 161
    return-void
.end method

.method public pushView(Ljava/lang/String;Ljava/lang/Object;)Landroid/view/View;
    .locals 1
    .parameter "name"
    .parameter "data"

    .prologue
    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/browser/BreadCrumbView;->pushView(Ljava/lang/String;ZLjava/lang/Object;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public pushView(Ljava/lang/String;ZLjava/lang/Object;)Landroid/view/View;
    .locals 2
    .parameter "name"
    .parameter "canGoBack"
    .parameter "data"

    .prologue
    .line 149
    new-instance v0, Lcom/android/browser/BreadCrumbView$Crumb;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/browser/BreadCrumbView$Crumb;-><init>(Lcom/android/browser/BreadCrumbView;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 150
    .local v0, crumb:Lcom/android/browser/BreadCrumbView$Crumb;
    invoke-direct {p0, v0}, Lcom/android/browser/BreadCrumbView;->pushCrumb(Lcom/android/browser/BreadCrumbView$Crumb;)V

    .line 151
    iget-object v1, v0, Lcom/android/browser/BreadCrumbView$Crumb;->crumbView:Landroid/view/View;

    return-object v1
.end method

.method public setController(Lcom/android/browser/BreadCrumbView$Controller;)V
    .locals 0
    .parameter "ctl"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/browser/BreadCrumbView;->mController:Lcom/android/browser/BreadCrumbView$Controller;

    .line 100
    return-void
.end method

.method public setMaxVisible(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/browser/BreadCrumbView;->mMaxVisible:I

    .line 108
    invoke-direct {p0}, Lcom/android/browser/BreadCrumbView;->updateVisible()V

    .line 109
    return-void
.end method

.method public setUseBackButton(Z)V
    .locals 0
    .parameter "useflag"

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/browser/BreadCrumbView;->mUseBackButton:Z

    .line 95
    invoke-direct {p0}, Lcom/android/browser/BreadCrumbView;->updateVisible()V

    .line 96
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/browser/BreadCrumbView;->mCrumbs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
