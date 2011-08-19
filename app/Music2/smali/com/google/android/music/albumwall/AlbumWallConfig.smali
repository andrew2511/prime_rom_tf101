.class public Lcom/google/android/music/albumwall/AlbumWallConfig;
.super Ljava/lang/Object;
.source "AlbumWallConfig.java"


# static fields
.field public static final LABEL_ITEM:I = 0x1

.field public static final LABEL_ITEM_EXPANDED:I = 0x3

.field public static final LABEL_PILE:I = 0x0

.field public static final LABEL_PILE_EXPANDED:I = 0x2

.field private static final SCROLL_BAR_MODE:I = 0x2

.field public static final STYLE_HOLOGRAPHIC:I = 0x1

.field public static final STYLE_PHONE:I

.field private static final sBackgroundColorId:[I

.field private static final sLabelFontOpacityId:[I

.field private static final sLabelFontSizeId:[I

.field private static final sLabelMaxLinesId:[I

.field private static final sLabelMultiLineId:[I

.field private static final sLabelSecondaryFontOpacityId:[I

.field private static final sLabelSecondaryFontSizeId:[I

.field private static final sLabelTertiaryFontOpacityId:[I

.field private static final sLabelTertiaryFontSizeId:[I


# instance fields
.field private mAlbumLoading:Landroid/graphics/Bitmap;

.field private mBannerHeight:F

.field private mBannerLabelMaxWidth:F

.field private mBetweenGridPadding:F

.field private mCellHeight:F

.field private mCellWidth:F

.field private mCloseButtonResourceId:I

.field private mClusterBetweenGridPadding:F

.field private mClusterCellHeight:F

.field private mClusterCellWidth:F

.field private mClusterExpandLabelVertical:Z

.field private mClusterExpandedLabelHeight:F

.field private mClusterExpandedLabelWidth:F

.field private mClusterGridPaddingHeight:F

.field private mClusterGridPaddingWidth:F

.field private mClusterImageHeight:F

.field private mClusterImageWidth:F

.field private mClusterLabelHeight:F

.field private mClusterLabelMargin:F

.field private mClusterLabelWidth:F

.field private mClusterSingleImageHeight:F

.field private mClusterSingleImageWidth:F

.field private mClusters:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultBackgroundDrawableId:I

.field private mExpandLabelVertical:Z

.field private mGridMarginH:F

.field private mGridMarginW:F

.field private mGridPaddingHeight:F

.field private mGridPaddingWidth:F

.field private mGridScrollOverlayFollowsThumb:Z

.field private mHighlightColor:[F

.field private mHorizontalScrolling:Z

.field private mImageHeight:F

.field private mImageWidth:F

.field private mIsExpandedClusterLabelHorizontal:Z

.field private mLabelConfig:[Lcom/google/android/music/utils/LabelMaker$Config;

.field private mLabelHeight:F

.field private mLabelHighlightMarginX:F

.field private mLabelHighlightMarginY:F

.field private mLabelLoading:Landroid/graphics/Bitmap;

.field private mLabelMargin:F

.field private mLabelMarkHeight:F

.field private mLabelMarkOffsetX:F

.field private mLabelMarkOffsetY:F

.field private mLabelMarkWidth:F

.field private mLabelWidth:F

.field private mLabelXMargin:I

.field private mMaxClosedPileCount:I

.field private mMaxOutstandingAlbumTextureRequests:I

.field private mMaxOverScrollX:F

.field private mMaxOverScrollY:F

.field private mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

.field private mScrollBarMode:I

.field private mScrollBarOverlayHeight:F

.field private mScrollBarOverlayId:I

.field private mScrollBarOverlayWidth:F

.field private mScrollBarThumbId:I

.field private mScrollBarTrackId:I

.field private mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

.field private mShowLabelMark:Z

.field private mShowSongCount:Z

.field private mStyle:I

.field private mTopMargin:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 97
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelMultiLineId:[I

    .line 104
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelFontSizeId:[I

    .line 111
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelFontOpacityId:[I

    .line 118
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelSecondaryFontSizeId:[I

    .line 125
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelTertiaryFontSizeId:[I

    .line 132
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelSecondaryFontOpacityId:[I

    .line 139
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelTertiaryFontOpacityId:[I

    .line 146
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelMaxLinesId:[I

    .line 153
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallConfig;->sBackgroundColorId:[I

    return-void

    .line 97
    nop

    :array_0
    .array-data 0x4
        0x8t 0x0t 0x8t 0x7ft
        0x9t 0x0t 0x8t 0x7ft
        0xat 0x0t 0x8t 0x7ft
        0xbt 0x0t 0x8t 0x7ft
    .end array-data

    .line 104
    :array_1
    .array-data 0x4
        0x32t 0x0t 0xat 0x7ft
        0x33t 0x0t 0xat 0x7ft
        0x34t 0x0t 0xat 0x7ft
        0x35t 0x0t 0xat 0x7ft
    .end array-data

    .line 111
    :array_2
    .array-data 0x4
        0x2t 0x0t 0x9t 0x7ft
        0x7t 0x0t 0x9t 0x7ft
        0xct 0x0t 0x9t 0x7ft
        0x11t 0x0t 0x9t 0x7ft
    .end array-data

    .line 118
    :array_3
    .array-data 0x4
        0x36t 0x0t 0xat 0x7ft
        0x37t 0x0t 0xat 0x7ft
        0x38t 0x0t 0xat 0x7ft
        0x39t 0x0t 0xat 0x7ft
    .end array-data

    .line 125
    :array_4
    .array-data 0x4
        0x3at 0x0t 0xat 0x7ft
        0x3bt 0x0t 0xat 0x7ft
        0x3ct 0x0t 0xat 0x7ft
        0x3dt 0x0t 0xat 0x7ft
    .end array-data

    .line 132
    :array_5
    .array-data 0x4
        0x3t 0x0t 0x9t 0x7ft
        0x8t 0x0t 0x9t 0x7ft
        0xdt 0x0t 0x9t 0x7ft
        0x12t 0x0t 0x9t 0x7ft
    .end array-data

    .line 139
    :array_6
    .array-data 0x4
        0x4t 0x0t 0x9t 0x7ft
        0x9t 0x0t 0x9t 0x7ft
        0xet 0x0t 0x9t 0x7ft
        0x13t 0x0t 0x9t 0x7ft
    .end array-data

    .line 146
    :array_7
    .array-data 0x4
        0x5t 0x0t 0x9t 0x7ft
        0xat 0x0t 0x9t 0x7ft
        0xft 0x0t 0x9t 0x7ft
        0x14t 0x0t 0x9t 0x7ft
    .end array-data

    .line 153
    :array_8
    .array-data 0x4
        0x6t 0x0t 0x9t 0x7ft
        0xbt 0x0t 0x9t 0x7ft
        0x10t 0x0t 0x9t 0x7ft
        0x15t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 7
    .parameter "context"
    .parameter "isClusters"

    .prologue
    const/high16 v6, 0x4220

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x41a0

    const/high16 v2, 0x4280

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusters:Z

    .line 27
    iput v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mTopMargin:F

    .line 28
    const/high16 v1, 0x4170

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridMarginW:F

    .line 29
    const/high16 v1, 0x4170

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridMarginH:F

    .line 31
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCellWidth:F

    .line 32
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCellHeight:F

    .line 33
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mImageWidth:F

    .line 34
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mImageHeight:F

    .line 35
    const/high16 v1, 0x42f0

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelWidth:F

    .line 36
    iput v6, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHeight:F

    .line 37
    iput v6, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMargin:F

    .line 38
    const/high16 v1, 0x4080

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHighlightMarginX:F

    .line 39
    const/high16 v1, 0x4080

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHighlightMarginY:F

    .line 40
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridPaddingWidth:F

    .line 41
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridPaddingHeight:F

    .line 42
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBetweenGridPadding:F

    .line 44
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterCellWidth:F

    .line 45
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterCellHeight:F

    .line 46
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterImageWidth:F

    .line 47
    iput v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterImageHeight:F

    .line 48
    const/high16 v1, 0x42aa

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterSingleImageWidth:F

    .line 49
    const/high16 v1, 0x42aa

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterSingleImageHeight:F

    .line 50
    const/high16 v1, 0x42f0

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelWidth:F

    .line 51
    iput v6, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelHeight:F

    .line 52
    iput v6, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelMargin:F

    .line 53
    const/high16 v1, 0x42f0

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandedLabelWidth:F

    .line 54
    iput v6, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandedLabelHeight:F

    .line 55
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterGridPaddingWidth:F

    .line 56
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterGridPaddingHeight:F

    .line 57
    iput v3, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterBetweenGridPadding:F

    .line 59
    iput v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOverScrollX:F

    .line 60
    iput v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOverScrollY:F

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHorizontalScrolling:Z

    .line 63
    iput-boolean v4, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridScrollOverlayFollowsThumb:Z

    .line 64
    iput-boolean v4, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mExpandLabelVertical:Z

    .line 65
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandLabelVertical:Z

    .line 67
    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHighlightColor:[F

    .line 68
    const/16 v1, 0xa

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOutstandingAlbumTextureRequests:I

    .line 71
    iput v4, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarMode:I

    .line 72
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxClosedPileCount:I

    .line 83
    const/high16 v1, 0x4380

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBannerLabelMaxWidth:F

    .line 84
    const/high16 v1, 0x4240

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBannerHeight:F

    .line 85
    const/16 v1, 0xf

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelXMargin:I

    .line 160
    iput-boolean v4, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mIsExpandedClusterLabelHorizontal:Z

    .line 161
    iput-boolean v4, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mShowLabelMark:Z

    .line 162
    iput v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMarkOffsetX:F

    .line 163
    iput v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMarkOffsetY:F

    .line 165
    const/high16 v1, 0x4210

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMarkWidth:F

    .line 166
    const/high16 v1, 0x4210

    iput v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMarkHeight:F

    .line 168
    iput-boolean v4, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mShowSongCount:Z

    .line 173
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/android/music/utils/LabelMaker$Config;

    iput-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelConfig:[Lcom/google/android/music/utils/LabelMaker$Config;

    .line 178
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mContext:Landroid/content/Context;

    .line 179
    invoke-virtual {p0, p2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setIsClusters(Z)V

    .line 181
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelConfig:[Lcom/google/android/music/utils/LabelMaker$Config;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelConfig:[Lcom/google/android/music/utils/LabelMaker$Config;

    new-instance v2, Lcom/google/android/music/utils/LabelMaker$Config;

    invoke-direct {v2}, Lcom/google/android/music/utils/LabelMaker$Config;-><init>()V

    aput-object v2, v1, v0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    return-void

    .line 67
    :array_0
    .array-data 0x4
        0x9at 0x99t 0x19t 0x3ft
        0x9at 0x99t 0x19t 0x3ft
        0x9at 0x99t 0x19t 0x3ft
        0x9at 0x99t 0x19t 0x3ft
    .end array-data
.end method

.method private isExpanded(I)Z
    .locals 1
    .parameter "labelType"

    .prologue
    .line 793
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPile(I)Z
    .locals 1
    .parameter "labelType"

    .prologue
    .line 789
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLabelConfig(Lcom/google/android/music/utils/LabelMaker$Config;I)V
    .locals 10
    .parameter "labelConfig"
    .parameter "labelType"

    .prologue
    const/4 v9, 0x1

    const v8, 0x3b808081

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 804
    iget-object v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 806
    .local v3, resources:Landroid/content/res/Resources;
    invoke-direct {p0, p2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isPile(I)Z

    move-result v2

    .line 807
    .local v2, isPile:Z
    if-ne p2, v6, :cond_0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getBannerLabelMaxWidth()F

    move-result v5

    move v4, v5

    .line 809
    .local v4, w:F
    :goto_0
    if-ne p2, v6, :cond_2

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getBannerHeight()F

    move-result v5

    move v1, v5

    .line 811
    .local v1, h:F
    :goto_1
    const v0, 0x3b808081

    .line 813
    .local v0, OPACITY_SCALE:F
    const/4 v5, 0x4

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    .line 814
    if-ne p2, v6, :cond_4

    move v5, v7

    :goto_2
    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->overflowMode:I

    .line 816
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sBackgroundColorId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->backgroundColor:I

    .line 817
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 818
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelMultiLineId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->multiLine:Z

    .line 819
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelFontSizeId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->fontSize:F

    .line 820
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelFontOpacityId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->a:F

    .line 821
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelSecondaryFontSizeId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryFontSize:F

    .line 822
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelSecondaryFontOpacityId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryOpacity:F

    .line 823
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelTertiaryFontSizeId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryFontSize:F

    .line 824
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelTertiaryFontOpacityId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->tertiaryOpacity:F

    .line 825
    iput-boolean v9, p1, Lcom/google/android/music/utils/LabelMaker$Config;->bold:Z

    .line 826
    float-to-int v5, v4

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    .line 827
    float-to-int v5, v1

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->height:I

    .line 828
    float-to-int v5, v4

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->clipWidth:I

    .line 829
    iput-boolean v7, p1, Lcom/google/android/music/utils/LabelMaker$Config;->shadow:Z

    .line 830
    iput v7, p1, Lcom/google/android/music/utils/LabelMaker$Config;->shadowRadius:I

    .line 831
    const/4 v5, 0x5

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->yalignment:I

    .line 832
    iput v9, p1, Lcom/google/android/music/utils/LabelMaker$Config;->xalignment:I

    .line 833
    if-ne p2, v6, :cond_5

    iget v5, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelXMargin:I

    :goto_3
    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->xmargin:I

    .line 834
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallConfig;->sLabelMaxLinesId:[I

    aget v5, v5, p2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p1, Lcom/google/android/music/utils/LabelMaker$Config;->maxLines:I

    .line 835
    return-void

    .line 807
    .end local v0           #OPACITY_SCALE:F
    .end local v1           #h:F
    .end local v4           #w:F
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterLabelWidth()F

    move-result v5

    move v4, v5

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelWidth()F

    move-result v5

    move v4, v5

    goto/16 :goto_0

    .line 809
    .restart local v4       #w:F
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterLabelHeight()F

    move-result v5

    move v1, v5

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelHeight()F

    move-result v5

    move v1, v5

    goto/16 :goto_1

    .restart local v0       #OPACITY_SCALE:F
    .restart local v1       #h:F
    :cond_4
    move v5, v6

    .line 814
    goto/16 :goto_2

    :cond_5
    move v5, v7

    .line 833
    goto :goto_3
.end method

.method private updateLabelConfigs()V
    .locals 3

    .prologue
    .line 797
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelConfig:[Lcom/google/android/music/utils/LabelMaker$Config;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 798
    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelConfig:[Lcom/google/android/music/utils/LabelMaker$Config;

    aget-object v0, v2, v1

    .line 799
    .local v0, config:Lcom/google/android/music/utils/LabelMaker$Config;
    invoke-direct {p0, v0, v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->updateLabelConfig(Lcom/google/android/music/utils/LabelMaker$Config;I)V

    .line 797
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 801
    .end local v0           #config:Lcom/google/android/music/utils/LabelMaker$Config;
    :cond_0
    return-void
.end method


# virtual methods
.method public final getAlbumLoading()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mAlbumLoading:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBannerHeight()F
    .locals 1

    .prologue
    .line 773
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBannerHeight:F

    return v0
.end method

.method public getBannerLabelMaxWidth()F
    .locals 1

    .prologue
    .line 765
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBannerLabelMaxWidth:F

    return v0
.end method

.method public final getBetweenGridPadding()F
    .locals 1

    .prologue
    .line 449
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBetweenGridPadding:F

    return v0
.end method

.method public final getCellHeight()F
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCellHeight:F

    return v0
.end method

.method public final getCellWidth()F
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCellWidth:F

    return v0
.end method

.method public final getCloseButtonResourceId()I
    .locals 1

    .prologue
    .line 682
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCloseButtonResourceId:I

    return v0
.end method

.method public final getClusterBetweenGridPadding()F
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterBetweenGridPadding:F

    return v0
.end method

.method public final getClusterCellHeight()F
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterCellHeight:F

    return v0
.end method

.method public final getClusterCellWidth()F
    .locals 1

    .prologue
    .line 457
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterCellWidth:F

    return v0
.end method

.method public final getClusterExpandedLabelHeight()F
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandedLabelHeight:F

    return v0
.end method

.method public final getClusterExpandedLabelWidth()F
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandedLabelWidth:F

    return v0
.end method

.method public final getClusterGridPaddingHeight()F
    .locals 1

    .prologue
    .line 553
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterGridPaddingHeight:F

    return v0
.end method

.method public final getClusterGridPaddingWidth()F
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterGridPaddingWidth:F

    return v0
.end method

.method public final getClusterImageHeight()F
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterImageHeight:F

    return v0
.end method

.method public final getClusterImageWidth()F
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterImageWidth:F

    return v0
.end method

.method public final getClusterLabelHeight()F
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelHeight:F

    return v0
.end method

.method public final getClusterLabelMargin()F
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelMargin:F

    return v0
.end method

.method public final getClusterLabelWidth()F
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelWidth:F

    return v0
.end method

.method public final getClusterSingleImageHeight()F
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterSingleImageHeight:F

    return v0
.end method

.method public final getClusterSingleImageWidth()F
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterSingleImageWidth:F

    return v0
.end method

.method public getDefaultBackgroundDrawableId()I
    .locals 1

    .prologue
    .line 706
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mDefaultBackgroundDrawableId:I

    return v0
.end method

.method public final getGridMarginH()F
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridMarginH:F

    return v0
.end method

.method public final getGridMarginW()F
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridMarginW:F

    return v0
.end method

.method public final getGridPaddingHeight()F
    .locals 1

    .prologue
    .line 441
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridPaddingHeight:F

    return v0
.end method

.method public final getGridPaddingWidth()F
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridPaddingWidth:F

    return v0
.end method

.method public final getHighlightColor()[F
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHighlightColor:[F

    return-object v0
.end method

.method public final getImageHeight()F
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mImageHeight:F

    return v0
.end method

.method public final getImageWidth()F
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mImageWidth:F

    return v0
.end method

.method public getIsExpandedClusterLabelHorizontal()Z
    .locals 1

    .prologue
    .line 719
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mIsExpandedClusterLabelHorizontal:Z

    return v0
.end method

.method public getLabelConfig(I)Lcom/google/android/music/utils/LabelMaker$Config;
    .locals 1
    .parameter "type"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelConfig:[Lcom/google/android/music/utils/LabelMaker$Config;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getLabelHeight()F
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHeight:F

    return v0
.end method

.method public final getLabelHighlightMarginX()F
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHighlightMarginX:F

    return v0
.end method

.method public final getLabelHighlightMarginY()F
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHighlightMarginY:F

    return v0
.end method

.method public final getLabelLoading()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelLoading:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getLabelMargin()F
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMargin:F

    return v0
.end method

.method public getLabelMarkHeight()F
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMarkHeight:F

    return v0
.end method

.method public getLabelMarkOffsetX()F
    .locals 1

    .prologue
    .line 736
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMarkOffsetX:F

    return v0
.end method

.method public getLabelMarkOffsetY()F
    .locals 1

    .prologue
    .line 744
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMarkOffsetY:F

    return v0
.end method

.method public getLabelMarkWidth()F
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMarkWidth:F

    return v0
.end method

.method public final getLabelWidth()F
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelWidth:F

    return v0
.end method

.method public getLabelXMargin()I
    .locals 1

    .prologue
    .line 781
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelXMargin:I

    return v0
.end method

.method public final getMaxClosedPileCount()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxClosedPileCount:I

    return v0
.end method

.method public final getMaxOutstandingAlbumTextureRequests()I
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOutstandingAlbumTextureRequests:I

    return v0
.end method

.method public final getMaxOverScrollX()F
    .locals 1

    .prologue
    .line 569
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOverScrollX:F

    return v0
.end method

.method public final getMaxOverScrollY()F
    .locals 1

    .prologue
    .line 577
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOverScrollY:F

    return v0
.end method

.method public getPressedItemFrame()Lcom/google/android/opengl/glview/NinePatch;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    return-object v0
.end method

.method public final getScrollBarMode()I
    .locals 1

    .prologue
    .line 636
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarMode:I

    return v0
.end method

.method public final getScrollBarOverlayHeight()F
    .locals 1

    .prologue
    .line 694
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarOverlayHeight:F

    return v0
.end method

.method public final getScrollBarOverlayId()I
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarOverlayId:I

    return v0
.end method

.method public final getScrollBarOverlayWidth()F
    .locals 1

    .prologue
    .line 686
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarOverlayWidth:F

    return v0
.end method

.method public final getScrollBarThumbId()I
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarThumbId:I

    return v0
.end method

.method public final getScrollBarTrackId()I
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarTrackId:I

    return v0
.end method

.method public final getScrollOverlayFollowsThumb()Z
    .locals 1

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridScrollOverlayFollowsThumb:Z

    return v0
.end method

.method public getSelectedItemFrame()Lcom/google/android/opengl/glview/NinePatch;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    return-object v0
.end method

.method public getShowLabelMark()Z
    .locals 1

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mShowLabelMark:Z

    return v0
.end method

.method public getShowSongCount()Z
    .locals 1

    .prologue
    .line 753
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mShowSongCount:Z

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 761
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mStyle:I

    return v0
.end method

.method public final getTopMargin()F
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mTopMargin:F

    return v0
.end method

.method public final isClusterExpandedLabelVertical()Z
    .locals 1

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandLabelVertical:Z

    return v0
.end method

.method public final isClusters()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusters:Z

    return v0
.end method

.method public final isExpandedLabelVertical()Z
    .locals 1

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mExpandLabelVertical:Z

    return v0
.end method

.method public final isHorizontalScrolling()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHorizontalScrolling:Z

    return v0
.end method

.method public final setAlbumLoading(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mAlbumLoading:Landroid/graphics/Bitmap;

    .line 338
    return-void
.end method

.method public setBannerHeight(F)V
    .locals 0
    .parameter "bannerHeight"

    .prologue
    .line 777
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBannerHeight:F

    .line 778
    return-void
.end method

.method public setBannerLabelMaxWidth(F)V
    .locals 0
    .parameter "bannerLabelMaxWidth"

    .prologue
    .line 769
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBannerLabelMaxWidth:F

    .line 770
    return-void
.end method

.method public final setBetweenGridPadding(F)V
    .locals 0
    .parameter "betweenGridPadding"

    .prologue
    .line 453
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mBetweenGridPadding:F

    .line 454
    return-void
.end method

.method public final setCellHeight(F)V
    .locals 0
    .parameter "cellHeight"

    .prologue
    .line 373
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCellHeight:F

    .line 374
    return-void
.end method

.method public final setCellWidth(F)V
    .locals 0
    .parameter "cellWidth"

    .prologue
    .line 365
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCellWidth:F

    .line 366
    return-void
.end method

.method public final setCloseButtonResourceId(I)V
    .locals 0
    .parameter "closeButtonResourceId"

    .prologue
    .line 678
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mCloseButtonResourceId:I

    .line 679
    return-void
.end method

.method public final setClusterBetweenGridPadding(F)V
    .locals 0
    .parameter "clusterBetweenGridPadding"

    .prologue
    .line 565
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterBetweenGridPadding:F

    .line 566
    return-void
.end method

.method public final setClusterCellHeight(F)V
    .locals 0
    .parameter "clusterCellHeight"

    .prologue
    .line 469
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterCellHeight:F

    .line 470
    return-void
.end method

.method public final setClusterCellWidth(F)V
    .locals 0
    .parameter "clusterCellWidth"

    .prologue
    .line 461
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterCellWidth:F

    .line 462
    return-void
.end method

.method public final setClusterExpandedLabelHeight(F)V
    .locals 0
    .parameter "clusterExpandedLabelHeight"

    .prologue
    .line 541
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandedLabelHeight:F

    .line 542
    return-void
.end method

.method public final setClusterExpandedLabelWidth(F)V
    .locals 0
    .parameter "clusterExpandedLabelWidth"

    .prologue
    .line 533
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandedLabelWidth:F

    .line 534
    return-void
.end method

.method public final setClusterGridPaddingHeight(F)V
    .locals 0
    .parameter "clusterGridPaddingHeight"

    .prologue
    .line 557
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterGridPaddingHeight:F

    .line 558
    return-void
.end method

.method public final setClusterGridPaddingWidth(F)V
    .locals 0
    .parameter "clusterGridPaddingWidth"

    .prologue
    .line 549
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterGridPaddingWidth:F

    .line 550
    return-void
.end method

.method public final setClusterImageHeight(F)V
    .locals 0
    .parameter "clusterImageHeight"

    .prologue
    .line 485
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterImageHeight:F

    .line 486
    return-void
.end method

.method public final setClusterImageWidth(F)V
    .locals 0
    .parameter "clusterImageWidth"

    .prologue
    .line 477
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterImageWidth:F

    .line 478
    return-void
.end method

.method public final setClusterLabelHeight(F)V
    .locals 0
    .parameter "clusterLabelHeight"

    .prologue
    .line 517
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelHeight:F

    .line 518
    return-void
.end method

.method public final setClusterLabelMargin(F)V
    .locals 0
    .parameter "clusterLabelMargin"

    .prologue
    .line 525
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelMargin:F

    .line 526
    return-void
.end method

.method public final setClusterLabelWidth(F)V
    .locals 0
    .parameter "clusterLabelWidth"

    .prologue
    .line 509
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterLabelWidth:F

    .line 510
    return-void
.end method

.method public final setClusterSingleImageHeight(F)V
    .locals 0
    .parameter "clusterSingleImageHeight"

    .prologue
    .line 493
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterSingleImageHeight:F

    .line 494
    return-void
.end method

.method public final setClusterSingleImageWidth(F)V
    .locals 0
    .parameter "clusterSingleImageWidth"

    .prologue
    .line 501
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterSingleImageWidth:F

    .line 502
    return-void
.end method

.method public setDefaultBackgroundDrawableId(I)V
    .locals 0
    .parameter "defaultBackgroundDrawableId"

    .prologue
    .line 702
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mDefaultBackgroundDrawableId:I

    .line 703
    return-void
.end method

.method public final setGridMarginH(F)V
    .locals 0
    .parameter "gridMarginH"

    .prologue
    .line 333
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridMarginH:F

    .line 334
    return-void
.end method

.method public final setGridMarginW(F)V
    .locals 0
    .parameter "gridMarginW"

    .prologue
    .line 325
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridMarginW:F

    .line 326
    return-void
.end method

.method public final setGridPaddingHeight(F)V
    .locals 0
    .parameter "gridPaddingHeight"

    .prologue
    .line 445
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridPaddingHeight:F

    .line 446
    return-void
.end method

.method public final setGridPaddingWidth(F)V
    .locals 0
    .parameter "gridPaddingWidth"

    .prologue
    .line 437
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridPaddingWidth:F

    .line 438
    return-void
.end method

.method public final setHighlightColor(FFFF)V
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHighlightColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 622
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHighlightColor:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 623
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHighlightColor:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 624
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHighlightColor:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 625
    return-void
.end method

.method public final setImageHeight(F)V
    .locals 0
    .parameter "imageHeight"

    .prologue
    .line 389
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mImageHeight:F

    .line 390
    return-void
.end method

.method public final setImageWidth(F)V
    .locals 0
    .parameter "imageWidth"

    .prologue
    .line 381
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mImageWidth:F

    .line 382
    return-void
.end method

.method public final setIsClusterExpandedLabelVertical(Z)V
    .locals 0
    .parameter "isClusterExpandedLabelVertical"

    .prologue
    .line 597
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusterExpandLabelVertical:Z

    .line 598
    return-void
.end method

.method public final setIsClusters(Z)V
    .locals 0
    .parameter "isClusters"

    .prologue
    .line 357
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mClusters:Z

    .line 358
    return-void
.end method

.method public setIsExpandedClusterLabelHorizontal(Z)V
    .locals 0
    .parameter "isExpandedClusterLabelHorizontal"

    .prologue
    .line 715
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mIsExpandedClusterLabelHorizontal:Z

    .line 716
    return-void
.end method

.method public final setIsExpandedLabelVertical(Z)V
    .locals 0
    .parameter "isExpandedLabelVertical"

    .prologue
    .line 589
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mExpandLabelVertical:Z

    .line 590
    return-void
.end method

.method public final setIsHorizontalScrolling(Z)V
    .locals 0
    .parameter "isHorizontalScrolling"

    .prologue
    .line 605
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mHorizontalScrolling:Z

    .line 606
    return-void
.end method

.method public final setLabelHeight(F)V
    .locals 0
    .parameter "labelHeight"

    .prologue
    .line 405
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHeight:F

    .line 406
    return-void
.end method

.method public final setLabelHighlightMarginX(F)V
    .locals 0
    .parameter "labelHighlightMarginX"

    .prologue
    .line 421
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHighlightMarginX:F

    .line 422
    return-void
.end method

.method public final setLabelHighlightMarginY(F)V
    .locals 0
    .parameter "labelHighlightMarginY"

    .prologue
    .line 429
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelHighlightMarginY:F

    .line 430
    return-void
.end method

.method public final setLabelLoading(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelLoading:Landroid/graphics/Bitmap;

    .line 346
    return-void
.end method

.method public final setLabelMargin(F)V
    .locals 0
    .parameter "labelMargin"

    .prologue
    .line 413
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMargin:F

    .line 414
    return-void
.end method

.method public setLabelMarkOffsetX(F)V
    .locals 0
    .parameter "offsetX"

    .prologue
    .line 732
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMarkOffsetX:F

    .line 733
    return-void
.end method

.method public setLabelMarkOffsetY(F)V
    .locals 0
    .parameter "offsetY"

    .prologue
    .line 740
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMarkOffsetY:F

    .line 741
    return-void
.end method

.method public setLabelMarkWidth(F)V
    .locals 0
    .parameter "markWidth"

    .prologue
    .line 301
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMarkWidth:F

    .line 302
    return-void
.end method

.method public final setLabelWidth(F)V
    .locals 0
    .parameter "labelWidth"

    .prologue
    .line 397
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelWidth:F

    .line 398
    return-void
.end method

.method public setLabelXMargin(I)V
    .locals 0
    .parameter "labelXMargin"

    .prologue
    .line 785
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelXMargin:I

    .line 786
    return-void
.end method

.method public final setMaxClosedPileCount(I)V
    .locals 0
    .parameter "maxClosedPileCount"

    .prologue
    .line 648
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxClosedPileCount:I

    .line 649
    return-void
.end method

.method public final setMaxOutstandingAlbumTextureRequests(I)V
    .locals 0
    .parameter "maxOutstandingAlbumTextureRequests"

    .prologue
    .line 632
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOutstandingAlbumTextureRequests:I

    .line 633
    return-void
.end method

.method public final setMaxOverScrollX(F)V
    .locals 0
    .parameter "maxOverScrollX"

    .prologue
    .line 573
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOverScrollX:F

    .line 574
    return-void
.end method

.method public final setMaxOverScrollY(F)V
    .locals 0
    .parameter "maxOverScrollY"

    .prologue
    .line 581
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mMaxOverScrollY:F

    .line 582
    return-void
.end method

.method public setPressedItemFrame(Lcom/google/android/opengl/glview/NinePatch;)V
    .locals 1
    .parameter "pressedItemFrame"

    .prologue
    .line 849
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/NinePatch;->freeOpenGlResources()V

    .line 852
    :cond_0
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mPressedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    .line 853
    return-void
.end method

.method public final setScrollBarMode(I)V
    .locals 0
    .parameter "scrollBarMode"

    .prologue
    .line 640
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarMode:I

    .line 641
    return-void
.end method

.method public final setScrollBarOverlayHeight(F)V
    .locals 0
    .parameter "scrollBarOverlayHeight"

    .prologue
    .line 698
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarOverlayHeight:F

    .line 699
    return-void
.end method

.method public final setScrollBarOverlayId(I)V
    .locals 0
    .parameter "scrollBarOverlayId"

    .prologue
    .line 674
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarOverlayId:I

    .line 675
    return-void
.end method

.method public final setScrollBarOverlayWidth(F)V
    .locals 0
    .parameter "scrollBarOverlayWidth"

    .prologue
    .line 690
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarOverlayWidth:F

    .line 691
    return-void
.end method

.method public final setScrollBarThumbId(I)V
    .locals 0
    .parameter "scrollBarThumbId"

    .prologue
    .line 652
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarThumbId:I

    .line 653
    return-void
.end method

.method public final setScrollBarTrackId(I)V
    .locals 0
    .parameter "scrollBarTrackId"

    .prologue
    .line 661
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mScrollBarTrackId:I

    .line 662
    return-void
.end method

.method public final setScrollOverlayFollowsThumb(Z)V
    .locals 0
    .parameter "gridScrollOverlayFollowsThumb"

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mGridScrollOverlayFollowsThumb:Z

    .line 614
    return-void
.end method

.method public setSelectedItemFrame(Lcom/google/android/opengl/glview/NinePatch;)V
    .locals 1
    .parameter "selectedItemFrame"

    .prologue
    .line 838
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/NinePatch;->freeOpenGlResources()V

    .line 841
    :cond_0
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mSelectedItemFrame:Lcom/google/android/opengl/glview/NinePatch;

    .line 842
    return-void
.end method

.method public setShowMenuMark(Z)V
    .locals 0
    .parameter "showMenuMark"

    .prologue
    .line 724
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mShowLabelMark:Z

    .line 725
    return-void
.end method

.method public setShowSongCount(Z)V
    .locals 0
    .parameter "showSongCount"

    .prologue
    .line 749
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mShowSongCount:Z

    .line 750
    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 757
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mStyle:I

    .line 758
    return-void
.end method

.method public final setTopMargin(F)V
    .locals 0
    .parameter "topMargin"

    .prologue
    .line 317
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mTopMargin:F

    .line 318
    return-void
.end method

.method public setmLabelMarkHeight(F)V
    .locals 0
    .parameter "markHeight"

    .prologue
    .line 309
    iput p1, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mLabelMarkHeight:F

    .line 310
    return-void
.end method

.method public updateAlbumWallConfig()V
    .locals 14

    .prologue
    const v3, 0x7f0a001b

    const v13, 0x7f0201c9

    const/4 v12, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 191
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 192
    .local v9, resources:Landroid/content/res/Resources;
    const v0, 0x7f0a0009

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setTopMargin(F)V

    .line 193
    const v0, 0x7f0a002c

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setGridMarginW(F)V

    .line 194
    const v0, 0x7f0a002d

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setGridMarginH(F)V

    .line 195
    const v0, 0x7f0a0014

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 196
    .local v11, w:I
    const v0, 0x7f0a0015

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 197
    .local v8, h:I
    const v0, 0x7f0a0012

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setCellWidth(F)V

    .line 198
    const v0, 0x7f0a0013

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setCellHeight(F)V

    .line 199
    int-to-float v0, v11

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setImageWidth(F)V

    .line 200
    int-to-float v0, v8

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setImageHeight(F)V

    .line 201
    const v0, 0x7f0a0016

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLabelWidth(F)V

    .line 202
    const v0, 0x7f0a0017

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLabelHeight(F)V

    .line 203
    const v0, 0x7f0a0018

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLabelMargin(F)V

    .line 204
    const v0, 0x7f0a0019

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLabelHighlightMarginX(F)V

    .line 205
    const v0, 0x7f0a001a

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLabelHighlightMarginY(F)V

    .line 206
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setGridPaddingWidth(F)V

    .line 207
    const v0, 0x7f0a001c

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setGridPaddingHeight(F)V

    .line 208
    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setBetweenGridPadding(F)V

    .line 210
    const v0, 0x7f0a001d

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterCellWidth(F)V

    .line 211
    const v0, 0x7f0a001e

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterCellHeight(F)V

    .line 212
    const v0, 0x7f0a0021

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterImageWidth(F)V

    .line 213
    const v0, 0x7f0a0022

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterImageHeight(F)V

    .line 214
    const v0, 0x7f0a001f

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterSingleImageWidth(F)V

    .line 215
    const v0, 0x7f0a0020

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterSingleImageHeight(F)V

    .line 216
    const v0, 0x7f0a0023

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterLabelWidth(F)V

    .line 217
    const v0, 0x7f0a0024

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterLabelHeight(F)V

    .line 218
    const v0, 0x7f0a0025

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterExpandedLabelWidth(F)V

    .line 219
    const v0, 0x7f0a0026

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterExpandedLabelHeight(F)V

    .line 220
    const v0, 0x7f0a0027

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterLabelMargin(F)V

    .line 221
    const v0, 0x7f0a0028

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterGridPaddingWidth(F)V

    .line 222
    const v0, 0x7f0a0029

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterGridPaddingHeight(F)V

    .line 223
    const v0, 0x7f0a0028

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setClusterBetweenGridPadding(F)V

    .line 225
    const v0, 0x7f0a0030

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setBannerLabelMaxWidth(F)V

    .line 226
    const v0, 0x7f0a0031

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setBannerHeight(F)V

    .line 227
    const v0, 0x7f0a002a

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setMaxOverScrollX(F)V

    .line 228
    const v0, 0x7f0a002b

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setMaxOverScrollY(F)V

    .line 230
    const v0, 0x7f080001

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setIsHorizontalScrolling(Z)V

    .line 231
    const v0, 0x7f080002

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollOverlayFollowsThumb(Z)V

    .line 232
    const v0, 0x7f080004

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setIsExpandedLabelVertical(Z)V

    .line 233
    const v0, 0x7f080005

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setIsClusterExpandedLabelVertical(Z)V

    .line 234
    const v0, 0x7f090016

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setMaxOutstandingAlbumTextureRequests(I)V

    .line 237
    const v0, 0x7f080006

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setShowSongCount(Z)V

    .line 238
    const v0, 0x7f080007

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setShowMenuMark(Z)V

    .line 239
    const v0, 0x7f0a003e

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLabelMarkOffsetX(F)V

    .line 240
    const v0, 0x7f0a003f

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLabelMarkOffsetY(F)V

    .line 242
    const v0, 0x7f020042

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setCloseButtonResourceId(I)V

    .line 244
    const/4 v6, 0x0

    .line 246
    .local v6, bitmap:Landroid/graphics/Bitmap;
    const v0, 0x7f020136

    :try_start_0
    invoke-static {v9, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 251
    :goto_0
    invoke-static {v6, v11, v8, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 252
    invoke-virtual {p0, v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setAlbumLoading(Landroid/graphics/Bitmap;)V

    .line 253
    new-array v0, v2, [I

    aput v1, v0, v1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 254
    invoke-virtual {p0, v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setLabelLoading(Landroid/graphics/Bitmap;)V

    .line 257
    invoke-virtual {p0, v12}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarMode(I)V

    .line 258
    packed-switch v12, :pswitch_data_0

    .line 281
    :goto_1
    :pswitch_0
    const v0, 0x7f020134

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setDefaultBackgroundDrawableId(I)V

    .line 283
    const v0, 0x7f09001b

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 284
    .local v10, style:I
    invoke-virtual {p0, v10}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setStyle(I)V

    .line 286
    const v0, 0x7f080003

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setIsExpandedClusterLabelHorizontal(Z)V

    .line 287
    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->updateLabelConfigs()V

    .line 289
    new-instance v0, Lcom/google/android/opengl/glview/NinePatch;

    const v1, 0x7f02000a

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, v9, v1, v2}, Lcom/google/android/opengl/glview/NinePatch;-><init>(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setSelectedItemFrame(Lcom/google/android/opengl/glview/NinePatch;)V

    .line 292
    new-instance v0, Lcom/google/android/opengl/glview/NinePatch;

    const v1, 0x7f020008

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, v9, v1, v2}, Lcom/google/android/opengl/glview/NinePatch;-><init>(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setPressedItemFrame(Lcom/google/android/opengl/glview/NinePatch;)V

    .line 294
    return-void

    .line 247
    .end local v10           #style:I
    :catch_0
    move-exception v7

    .line 248
    .local v7, e:Ljava/lang/OutOfMemoryError;
    invoke-static {v7, v11, v8}, Lcom/google/android/music/utils/AlbumArtUtils;->reportAndRethrow(Ljava/lang/OutOfMemoryError;II)V

    goto :goto_0

    .line 262
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :pswitch_1
    const v0, 0x7f0200f4

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarThumbId(I)V

    .line 263
    invoke-virtual {p0, v13}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarOverlayId(I)V

    .line 264
    const v0, 0x7f0a002e

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarOverlayWidth(F)V

    .line 265
    const v0, 0x7f0a002f

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarOverlayHeight(F)V

    goto :goto_1

    .line 268
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const v0, 0x7f020126

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarThumbId(I)V

    .line 270
    invoke-virtual {p0, v13}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarOverlayId(I)V

    .line 275
    :goto_2
    const v0, 0x7f02012a

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarTrackId(I)V

    .line 276
    const v0, 0x7f0a002e

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarOverlayWidth(F)V

    .line 277
    const v0, 0x7f0a002f

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarOverlayHeight(F)V

    goto/16 :goto_1

    .line 272
    :cond_0
    const v0, 0x7f020125

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarThumbId(I)V

    .line 273
    const v0, 0x7f020122

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->setScrollBarOverlayId(I)V

    goto :goto_2

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
