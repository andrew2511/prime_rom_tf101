.class public Lcom/newspaperdirect/pressreader/android/TOCView;
.super Landroid/app/Activity;
.source "TOCView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/TOCView$ContentsViewAdapter;,
        Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;,
        Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderTask;,
        Lcom/newspaperdirect/pressreader/android/TOCView$ImagesLoaderThread;,
        Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;
    }
.end annotation


# static fields
.field private static final STATE_CURRENT_ISSUE_KEY:Ljava/lang/String; = "current_issue_id"


# instance fields
.field private mContentsModeBtn:Landroid/widget/Button;

.field private mContentsView:Landroid/widget/ListView;

.field private volatile mImageLoaderManager:Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;

.field private mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

.field private mItemsPerRow:I

.field private mPagesModeBtn:Landroid/widget/Button;

.field private mPagesView:Landroid/widget/ListView;

.field private mSwitcher:Landroid/widget/ViewSwitcher;

.field private mThumbnailWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/TOCView;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    return-object v0
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/TOCView;)I
    .locals 1
    .parameter

    .prologue
    .line 62
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mItemsPerRow:I

    return v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/TOCView;)Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mImageLoaderManager:Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;

    return-object v0
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/TOCView;[F)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/TOCView;->getBackgroundDrawable([F)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/TOCView;)I
    .locals 1
    .parameter

    .prologue
    .line 61
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mThumbnailWidth:I

    return v0
.end method

.method private calculateWidths()V
    .locals 9

    .prologue
    const/16 v8, 0xa0

    const/4 v7, 0x3

    const/16 v6, 0xf0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 161
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/TOCView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 162
    .local v1, screenWidth:I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 163
    .local v2, twidths:[I
    iput v4, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mItemsPerRow:I

    :goto_0
    iget v3, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mItemsPerRow:I

    if-le v3, v7, :cond_4

    .line 167
    :cond_0
    aget v3, v2, v5

    if-ne v3, v6, :cond_1

    aput v8, v2, v5

    .line 168
    :cond_1
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-le v0, v7, :cond_5

    .line 172
    :cond_2
    aget v3, v2, v4

    if-ne v3, v6, :cond_3

    aput v8, v2, v4

    .line 173
    :cond_3
    aget v3, v2, v5

    aget v4, v2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mThumbnailWidth:I

    .line 174
    return-void

    .line 164
    .end local v0           #i:I
    :cond_4
    iget v3, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mItemsPerRow:I

    div-int v3, v1, v3

    div-int/lit8 v3, v3, 0x2

    aput v3, v2, v5

    .line 165
    aget v3, v2, v5

    if-le v3, v6, :cond_0

    .line 163
    iget v3, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mItemsPerRow:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mItemsPerRow:I

    goto :goto_0

    .line 169
    .restart local v0       #i:I
    :cond_5
    div-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    aput v3, v2, v4

    .line 170
    aget v3, v2, v4

    if-le v3, v6, :cond_2

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getBackgroundDrawable([F)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "corners"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 197
    const/16 v2, 0x8

    new-array v1, v2, [F

    aget v2, p1, v3

    aput v2, v1, v3

    aget v2, p1, v3

    aput v2, v1, v4

    aget v2, p1, v4

    aput v2, v1, v5

    aget v2, p1, v4

    aput v2, v1, v6

    const/4 v2, 0x4

    aget v3, p1, v5

    aput v3, v1, v2

    const/4 v2, 0x5

    aget v3, p1, v5

    aput v3, v1, v2

    const/4 v2, 0x6

    aget v3, p1, v6

    aput v3, v1, v2

    const/4 v2, 0x7

    aget v3, p1, v6

    aput v3, v1, v2

    .line 198
    .local v1, rr:[F
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v2, v1, v7, v7}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 199
    .local v0, result:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    return-object v0
.end method

.method private setToolbarBackgrounds()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    const v5, 0x3dcccccd

    .line 177
    const/4 v3, 0x3

    new-array v1, v3, [Landroid/graphics/drawable/Drawable;

    .line 178
    .local v1, layers:[Landroid/graphics/drawable/Drawable;
    const/16 v3, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    .line 179
    .local v2, rr:[F
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v2, v4, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 180
    .local v0, drawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v3, Lcom/newspaperdirect/pressreader/android/TOCView$2;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/TOCView$2;-><init>(Lcom/newspaperdirect/pressreader/android/TOCView;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    .line 186
    const/4 v3, 0x0

    aput-object v0, v1, v3

    .line 187
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v5, v6, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v3, v2, v4, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 188
    .restart local v0       #drawable:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const v4, -0xd0d0e

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    const/4 v3, 0x1

    aput-object v0, v1, v3

    .line 190
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/ShapeDrawable;
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v5, v5, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {v3, v2, v4, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 191
    .restart local v0       #drawable:Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const v4, -0x6c6c6d

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    const/4 v3, 0x2

    aput-object v0, v1, v3

    .line 193
    const v3, 0x7f0c0091

    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/TOCView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 194
    return-void

    .line 178
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x80t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public onBackBtnClicked(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/TOCView;->setResult(I)V

    .line 219
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/TOCView;->finish()V

    .line 220
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 145
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/TOCView;->calculateWidths()V

    .line 152
    return-void
.end method

.method public onContentsModeBtnClicked(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mContentsModeBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mPagesModeBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 213
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mContentsModeBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 214
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->init(Landroid/content/Context;)V

    .line 70
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->init(Landroid/content/Context;)Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    .line 71
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->create(Landroid/content/Context;)V

    .line 72
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/HandlerHolder;->init()V

    .line 73
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCurrent()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v1

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 74
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    if-nez v1, :cond_2

    .line 75
    const-string v1, "current_issue_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, issue:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->findItem(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v1

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    if-nez v1, :cond_1

    .line 78
    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/TOCView;->setResult(I)V

    .line 79
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/TOCView;->finish()V

    .line 108
    .end local v0           #issue:Ljava/lang/String;
    :goto_0
    return-void

    .line 82
    .restart local v0       #issue:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->setAsCurrent()V

    .line 84
    .end local v0           #issue:Ljava/lang/String;
    :cond_2
    const v1, 0x7f030023

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/TOCView;->setContentView(I)V

    .line 85
    const v1, 0x7f0c0096

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/TOCView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mPagesModeBtn:Landroid/widget/Button;

    .line 86
    const v1, 0x7f0c0097

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/TOCView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mContentsModeBtn:Landroid/widget/Button;

    .line 87
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mPagesModeBtn:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 88
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mContentsModeBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 89
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/TOCView;->setToolbarBackgrounds()V

    .line 90
    const v1, 0x7f0c0092

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/TOCView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 91
    const v1, 0x7f0c0093

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/TOCView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mPagesView:Landroid/widget/ListView;

    .line 92
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mPagesView:Landroid/widget/ListView;

    new-instance v2, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/TOCView;Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    const v1, 0x7f0c0094

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/TOCView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mContentsView:Landroid/widget/ListView;

    .line 101
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mContentsView:Landroid/widget/ListView;

    new-instance v2, Lcom/newspaperdirect/pressreader/android/TOCView$ContentsViewAdapter;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/TOCView$ContentsViewAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/TOCView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mContentsView:Landroid/widget/ListView;

    new-instance v2, Lcom/newspaperdirect/pressreader/android/TOCView$1;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/TOCView$1;-><init>(Lcom/newspaperdirect/pressreader/android/TOCView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public onPagesModeBtnClicked(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mPagesModeBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mPagesModeBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 206
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mContentsModeBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 207
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 139
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mImageLoaderManager:Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->stop()V

    .line 140
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 113
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/TOCView;->setResult(I)V

    .line 115
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/TOCView;->finish()V

    .line 134
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkFilesConsistency()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/TOCView;->setResult(I)V

    .line 120
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/TOCView;->finish()V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mImageLoaderManager:Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;

    if-nez v0, :cond_2

    new-instance v0, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;-><init>(Lcom/newspaperdirect/pressreader/android/TOCView;)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mImageLoaderManager:Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;

    .line 125
    :goto_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasSmartLayout()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mPagesModeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mContentsModeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    :goto_2
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/TOCView;->calculateWidths()V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mImageLoaderManager:Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/TOCView$ImageLoaderManager;->start()V

    goto :goto_1

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mPagesModeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mContentsModeBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    const-string v0, "current_issue_id"

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView;->mItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method
