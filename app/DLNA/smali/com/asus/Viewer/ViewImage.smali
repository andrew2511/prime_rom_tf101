.class public Lcom/asus/Viewer/ViewImage;
.super Landroid/app/Activity;
.source "ViewImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/Viewer/ViewImage$RenderListAdapter;,
        Lcom/asus/Viewer/ViewImage$MyGestureListener;
    }
.end annotation


# static fields
.field private static final ACTION_DOWN:I = 0x31

.field private static final ACTION_HIDE:I = 0x30

.field private static final INTENT_KEY_ITEMNAME_LIST:Ljava/lang/String; = "ItemNameList"

.field private static final INTENT_KEY_ITEM_LIST:Ljava/lang/String; = "ItemList"

.field private static final INTENT_KEY_ITEM_NOWPOS:Ljava/lang/String; = "ItemNowPOS"

.field private static final INTENT_KEY_RENDER_LIST:Ljava/lang/String; = "RenderList"

.field private static final INTENT_KEY_RENDER_NOWPOS:Ljava/lang/String; = "RenderNowPOS"

.field private static final INTENT_KEY_SOURCE_NAME:Ljava/lang/String; = "SourceName"

.field private static final MODE_HIDE:I = 0x32

.field private static final MODE_NORMAL:I = 0x1

.field private static final MODE_SHOW_HIGH:I = 0x34

.field private static final MODE_SHOW_LOW:I = 0x33

.field private static final MODE_SLIDESHOW:I = 0x2

.field public static final MSG_HIDE_PANEL:I = 0x33

.field public static final MSG_SHOW_PANEL:I = 0x32

.field public static final Menu_POSITION_GALLERY_SETTING:I = 0x2

.field public static final Menu_POSITION_SLIDESHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ViewImage"

.field private static final sDefaultTimeout:I = 0xbb8

.field private static final sOrderAdjacents:[I

.field private static final sOrderSlideshow:[I


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private currentID:I

.field private mAlertRenderList:Landroid/app/AlertDialog;

.field mAllImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimating:Z

.field private mAnimationIndex:I

.field private mCache:Lcom/asus/Viewer/BitmapCache;

.field private mContext:Landroid/content/Context;

.field private mCurrentPosition:I

.field private mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

.field private mDLNAImageGetterCurrent:I

.field private final mDismissOnScreenControlRunner:Ljava/lang/Runnable;

.field private mDone:Z

.field private mFullScreenInNormalMode:Z

.field mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Lcom/asus/Viewer/GetterHandler;

.field private mHeight:I

.field private mImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mItemNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSlideShowImage:I

.field private mLoadPosition:I

.field private mMode:I

.field private mNextChangePositionTime:J

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPanel:Landroid/view/View;

.field private mPanelRegion:Landroid/view/View;

.field private mPaused:Z

.field private mPlayToText:Landroid/widget/TextView;

.field private final mRandom:Ljava/util/Random;

.field private mRenderAdapter:Lcom/asus/Viewer/ViewImage$RenderListAdapter;

.field private mRenderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderPosition:I

.field private mSavedUri:Landroid/net/Uri;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScreenWidth:I

.field private mScrollX:I

.field private mScrollindicator:Landroid/widget/ImageView;

.field private mServerText:Landroid/widget/TextView;

.field private mShowfull:Z

.field private mSlideShowImageCurrent:I

.field private final mSlideShowImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

.field private mSlideShowInAnimation:[Landroid/view/animation/Animation;

.field private mSlideShowInterval:I

.field private mSlideShowOutAnimation:[Landroid/view/animation/Animation;

.field private mTitleText:Landroid/widget/TextView;

.field private mViewImageLayout:Lcom/asus/Viewer/ViewImageLayout;

.field private mWidth:I

.field private previousID:I

.field private progressDialog:Landroid/app/ProgressDialog;

.field private showMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/asus/Viewer/ViewImage;->sOrderAdjacents:[I

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Lcom/asus/Viewer/ViewImage;->sOrderSlideshow:[I

    return-void

    .line 83
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    iput-boolean v4, p0, Lcom/asus/Viewer/ViewImage;->mPaused:Z

    .line 78
    iput-boolean v3, p0, Lcom/asus/Viewer/ViewImage;->mAnimating:Z

    .line 79
    const/16 v0, 0x34

    iput v0, p0, Lcom/asus/Viewer/ViewImage;->showMode:I

    .line 86
    new-instance v0, Lcom/asus/Viewer/GetterHandler;

    invoke-direct {v0}, Lcom/asus/Viewer/GetterHandler;-><init>()V

    iput-object v0, p0, Lcom/asus/Viewer/ViewImage;->mHandler:Lcom/asus/Viewer/GetterHandler;

    .line 87
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/asus/Viewer/ViewImage;->mRandom:Ljava/util/Random;

    .line 90
    iput v4, p0, Lcom/asus/Viewer/ViewImage;->mMode:I

    .line 102
    iput v3, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    .line 111
    iput v3, p0, Lcom/asus/Viewer/ViewImage;->mSlideShowImageCurrent:I

    .line 112
    new-array v0, v6, [Lcom/asus/Viewer/ImageViewTouchBase;

    iput-object v0, p0, Lcom/asus/Viewer/ViewImage;->mSlideShowImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    .line 118
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/asus/Viewer/ImageViewTouchBase;

    iput-object v0, p0, Lcom/asus/Viewer/ViewImage;->mImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    .line 125
    iput v3, p0, Lcom/asus/Viewer/ViewImage;->mScrollX:I

    .line 128
    iput-boolean v4, p0, Lcom/asus/Viewer/ViewImage;->mDone:Z

    .line 129
    iput v3, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetterCurrent:I

    .line 130
    new-array v0, v6, [Lcom/asus/Viewer/DLNAImageGetter;

    iput-object v0, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    .line 132
    iput-boolean v4, p0, Lcom/asus/Viewer/ViewImage;->mShowfull:Z

    .line 136
    iput v3, p0, Lcom/asus/Viewer/ViewImage;->previousID:I

    .line 137
    iput v3, p0, Lcom/asus/Viewer/ViewImage;->currentID:I

    .line 138
    iput v3, p0, Lcom/asus/Viewer/ViewImage;->mLoadPosition:I

    .line 139
    iput-object v5, p0, Lcom/asus/Viewer/ViewImage;->mServerText:Landroid/widget/TextView;

    .line 140
    iput-object v5, p0, Lcom/asus/Viewer/ViewImage;->mPlayToText:Landroid/widget/TextView;

    .line 141
    iput-object v5, p0, Lcom/asus/Viewer/ViewImage;->mTitleText:Landroid/widget/TextView;

    .line 156
    iput v3, p0, Lcom/asus/Viewer/ViewImage;->mRenderPosition:I

    .line 160
    new-instance v0, Lcom/asus/Viewer/ViewImage$1;

    invoke-direct {v0, p0}, Lcom/asus/Viewer/ViewImage$1;-><init>(Lcom/asus/Viewer/ViewImage;)V

    iput-object v0, p0, Lcom/asus/Viewer/ViewImage;->mDismissOnScreenControlRunner:Ljava/lang/Runnable;

    .line 754
    new-instance v0, Lcom/asus/Viewer/ViewImage$10;

    invoke-direct {v0, p0}, Lcom/asus/Viewer/ViewImage$10;-><init>(Lcom/asus/Viewer/ViewImage;)V

    iput-object v0, p0, Lcom/asus/Viewer/ViewImage;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1125
    return-void
.end method

.method static synthetic access$000(Lcom/asus/Viewer/ViewImage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/asus/Viewer/ViewImage;->hide(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/asus/Viewer/ViewImage;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mScrollindicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/asus/Viewer/ViewImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/asus/Viewer/ViewImage;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$1100(Lcom/asus/Viewer/ViewImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$1102(Lcom/asus/Viewer/ViewImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$1104(Lcom/asus/Viewer/ViewImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$1106(Lcom/asus/Viewer/ViewImage;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$1200(Lcom/asus/Viewer/ViewImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/asus/Viewer/ViewImage;->mPaused:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/asus/Viewer/ViewImage;)[Lcom/asus/Viewer/ImageViewTouchBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/asus/Viewer/ViewImage;)Lcom/asus/Viewer/BitmapCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mCache:Lcom/asus/Viewer/BitmapCache;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/asus/Viewer/ViewImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/asus/Viewer/ViewImage;->mDone:Z

    return p1
.end method

.method static synthetic access$1600()[I
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/asus/Viewer/ViewImage;->sOrderAdjacents:[I

    return-object v0
.end method

.method static synthetic access$1700(Lcom/asus/Viewer/ViewImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/asus/Viewer/ViewImage;->mShowfull:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/asus/Viewer/ViewImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/asus/Viewer/ViewImage;->mShowfull:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/asus/Viewer/ViewImage;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/asus/Viewer/ViewImage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/asus/Viewer/ViewImage;->moveNextOrPrevious(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/asus/Viewer/ViewImage;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/asus/Viewer/ViewImage;)Lcom/asus/Viewer/ViewImage$RenderListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mRenderAdapter:Lcom/asus/Viewer/ViewImage$RenderListAdapter;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/asus/Viewer/ViewImage;Lcom/asus/Viewer/ViewImage$RenderListAdapter;)Lcom/asus/Viewer/ViewImage$RenderListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/asus/Viewer/ViewImage;->mRenderAdapter:Lcom/asus/Viewer/ViewImage$RenderListAdapter;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/asus/Viewer/ViewImage;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/asus/Viewer/ViewImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/asus/Viewer/ViewImage;->mRenderPosition:I

    return p1
.end method

.method static synthetic access$2300(Lcom/asus/Viewer/ViewImage;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mAlertRenderList:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/asus/Viewer/ViewImage;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/asus/Viewer/ViewImage;->mAlertRenderList:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2400()[I
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/asus/Viewer/ViewImage;->sOrderSlideshow:[I

    return-object v0
.end method

.method static synthetic access$2500(Lcom/asus/Viewer/ViewImage;)[Lcom/asus/Viewer/ImageViewTouchBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mSlideShowImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/asus/Viewer/ViewImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/asus/Viewer/ViewImage;->mSlideShowImageCurrent:I

    return v0
.end method

.method static synthetic access$2602(Lcom/asus/Viewer/ViewImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/asus/Viewer/ViewImage;->mSlideShowImageCurrent:I

    return p1
.end method

.method static synthetic access$2604(Lcom/asus/Viewer/ViewImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/asus/Viewer/ViewImage;->mSlideShowImageCurrent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/asus/Viewer/ViewImage;->mSlideShowImageCurrent:I

    return v0
.end method

.method static synthetic access$2700(Lcom/asus/Viewer/ViewImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/asus/Viewer/ViewImage;->mAnimationIndex:I

    return v0
.end method

.method static synthetic access$2800(Lcom/asus/Viewer/ViewImage;)[Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mSlideShowInAnimation:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/asus/Viewer/ViewImage;)Ljava/util/Random;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/asus/Viewer/ViewImage;)[Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mSlideShowOutAnimation:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$302(Lcom/asus/Viewer/ViewImage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/asus/Viewer/ViewImage;->mAnimating:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/asus/Viewer/ViewImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/asus/Viewer/ViewImage;->mLastSlideShowImage:I

    return v0
.end method

.method static synthetic access$3200(Lcom/asus/Viewer/ViewImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/asus/Viewer/ViewImage;->mSlideShowInterval:I

    return v0
.end method

.method static synthetic access$3300(Lcom/asus/Viewer/ViewImage;IJZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/asus/Viewer/ViewImage;->loadNextImage(IJZ)V

    return-void
.end method

.method static synthetic access$3400(Lcom/asus/Viewer/ViewImage;)Lcom/asus/Viewer/GetterHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mHandler:Lcom/asus/Viewer/GetterHandler;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/asus/Viewer/ViewImage;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mRenderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/asus/Viewer/ViewImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/asus/Viewer/ViewImage;->showMode:I

    return v0
.end method

.method static synthetic access$402(Lcom/asus/Viewer/ViewImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/asus/Viewer/ViewImage;->showMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/asus/Viewer/ViewImage;)Lcom/asus/Viewer/ViewImageLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mViewImageLayout:Lcom/asus/Viewer/ViewImageLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/asus/Viewer/ViewImage;)Landroid/view/ScaleGestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$800(Lcom/asus/Viewer/ViewImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/asus/Viewer/ViewImage;->mMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/asus/Viewer/ViewImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/asus/Viewer/ViewImage;->mScrollX:I

    return v0
.end method

.method static synthetic access$902(Lcom/asus/Viewer/ViewImage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/asus/Viewer/ViewImage;->mScrollX:I

    return p1
.end method

.method static synthetic access$912(Lcom/asus/Viewer/ViewImage;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iget v0, p0, Lcom/asus/Viewer/ViewImage;->mScrollX:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/asus/Viewer/ViewImage;->mScrollX:I

    return v0
.end method

.method private buildImageListFromUri(Landroid/net/Uri;)Ljava/util/ArrayList;
    .locals 1
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1011
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1012
    .local v0, imageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1013
    return-object v0
.end method

.method private clearImageViews()V
    .locals 4

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    .local v0, arr$:[Lcom/asus/Viewer/ImageViewTouchBase;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 1119
    .local v2, iv:Lcom/asus/Viewer/ImageViewTouchBase;
    invoke-virtual {v2}, Lcom/asus/Viewer/ImageViewTouchBase;->clear()V

    .line 1118
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1121
    .end local v2           #iv:Lcom/asus/Viewer/ImageViewTouchBase;
    :cond_0
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mSlideShowImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 1122
    .restart local v2       #iv:Lcom/asus/Viewer/ImageViewTouchBase;
    invoke-virtual {v2}, Lcom/asus/Viewer/ImageViewTouchBase;->clear()V

    .line 1121
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1124
    .end local v2           #iv:Lcom/asus/Viewer/ImageViewTouchBase;
    :cond_1
    return-void
.end method

.method private getCurrentUri()Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1032
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage;->mAllImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v3

    .line 1035
    :goto_0
    return-object v1

    .line 1033
    :cond_0
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage;->mAllImages:Ljava/util/ArrayList;

    iget v2, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1034
    .local v0, uri:Landroid/net/Uri;
    if-nez v0, :cond_1

    move-object v1, v3

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 1035
    goto :goto_0
.end method

.method private hide(I)V
    .locals 11
    .parameter "action"

    .prologue
    const/16 v10, 0x34

    const/16 v9, 0x33

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 166
    iget-boolean v4, p0, Lcom/asus/Viewer/ViewImage;->mAnimating:Z

    if-eqz v4, :cond_1

    .line 242
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 169
    .restart local p0
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 196
    :pswitch_0
    iget v4, p0, Lcom/asus/Viewer/ViewImage;->showMode:I

    if-eq v4, v9, :cond_2

    iget v4, p0, Lcom/asus/Viewer/ViewImage;->showMode:I

    if-ne v4, v10, :cond_0

    .line 197
    :cond_2
    iput-boolean v7, p0, Lcom/asus/Viewer/ViewImage;->mAnimating:Z

    .line 198
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    invoke-direct {v1, v4, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 199
    .local v1, hide:Landroid/view/animation/Animation;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 201
    iget v4, p0, Lcom/asus/Viewer/ViewImage;->showMode:I

    if-ne v4, v10, :cond_3

    .line 202
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Lcom/asus/Viewer/ViewImage;->mPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v6, v6, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 203
    .local v2, moveDown:Landroid/view/animation/Animation;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 204
    invoke-virtual {v2, v7}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 205
    const v4, 0x10a0004

    invoke-virtual {v2, p0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 206
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 207
    .local v0, aset:Landroid/view/animation/AnimationSet;
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 208
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 209
    new-instance v4, Lcom/asus/Viewer/ViewImage$3;

    invoke-direct {v4, p0}, Lcom/asus/Viewer/ViewImage$3;-><init>(Lcom/asus/Viewer/ViewImage;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 222
    iget-object v4, p0, Lcom/asus/Viewer/ViewImage;->mPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 171
    .end local v0           #aset:Landroid/view/animation/AnimationSet;
    .end local v1           #hide:Landroid/view/animation/Animation;
    .end local v2           #moveDown:Landroid/view/animation/Animation;
    .restart local p0
    :pswitch_1
    iget v4, p0, Lcom/asus/Viewer/ViewImage;->showMode:I

    if-ne v4, v10, :cond_0

    .line 172
    iput-boolean v7, p0, Lcom/asus/Viewer/ViewImage;->mAnimating:Z

    .line 173
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget-object v4, p0, Lcom/asus/Viewer/ViewImage;->mPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v6, v6, v6, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 174
    .restart local v2       #moveDown:Landroid/view/animation/Animation;
    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 175
    invoke-virtual {v2, v7}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 176
    const v4, 0x10a0004

    invoke-virtual {v2, p0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 177
    new-instance v4, Lcom/asus/Viewer/ViewImage$2;

    invoke-direct {v4, p0}, Lcom/asus/Viewer/ViewImage$2;-><init>(Lcom/asus/Viewer/ViewImage;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 187
    iget-object v4, p0, Lcom/asus/Viewer/ViewImage;->mPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 188
    iget-object v4, p0, Lcom/asus/Viewer/ViewImage;->mHandler:Lcom/asus/Viewer/GetterHandler;

    iget-object v5, p0, Lcom/asus/Viewer/ViewImage;->mDismissOnScreenControlRunner:Ljava/lang/Runnable;

    invoke-virtual {v4, v9, v8, v8, v5}, Lcom/asus/Viewer/GetterHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 189
    .local v3, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/asus/Viewer/ViewImage;->mHandler:Lcom/asus/Viewer/GetterHandler;

    invoke-virtual {v4, v9}, Lcom/asus/Viewer/GetterHandler;->removeMessages(I)V

    .line 190
    iget-object v4, p0, Lcom/asus/Viewer/ViewImage;->mHandler:Lcom/asus/Viewer/GetterHandler;

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v3, v5, v6}, Lcom/asus/Viewer/GetterHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 224
    .end local v2           #moveDown:Landroid/view/animation/Animation;
    .end local v3           #msg:Landroid/os/Message;
    .restart local v1       #hide:Landroid/view/animation/Animation;
    :cond_3
    new-instance v4, Lcom/asus/Viewer/ViewImage$4;

    invoke-direct {v4, p0}, Lcom/asus/Viewer/ViewImage$4;-><init>(Lcom/asus/Viewer/ViewImage;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 235
    iget-object v4, p0, Lcom/asus/Viewer/ViewImage;->mPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1017
    if-nez p1, :cond_0

    move v1, v2

    .line 1028
    :goto_0
    return v1

    .line 1018
    :cond_0
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage;->mItemList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/asus/Viewer/ViewImage;->buildImageListFromUri(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/asus/Viewer/ViewImage;->mAllImages:Ljava/util/ArrayList;

    .line 1022
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage;->mAllImages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1023
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    move v1, v2

    .line 1024
    goto :goto_0

    .line 1018
    .end local v0           #index:I
    :cond_1
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage;->mItemList:Ljava/util/ArrayList;

    goto :goto_1

    .line 1026
    .restart local v0       #index:I
    :cond_2
    iput v0, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    .line 1027
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage;->mAllImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/asus/Viewer/ViewImage;->mLastSlideShowImage:I

    move v1, v3

    .line 1028
    goto :goto_0
.end method

.method private loadNextImage(IJZ)V
    .locals 14
    .parameter "requestedPos"
    .parameter "delay"
    .parameter "firstCall"

    .prologue
    .line 906
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage;->mTitleText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/asus/Viewer/ViewImage;->mItemNameList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 907
    iget v1, p0, Lcom/asus/Viewer/ViewImage;->currentID:I

    iput v1, p0, Lcom/asus/Viewer/ViewImage;->previousID:I

    .line 908
    :goto_0
    iget v1, p0, Lcom/asus/Viewer/ViewImage;->currentID:I

    iget v2, p0, Lcom/asus/Viewer/ViewImage;->previousID:I

    if-ne v1, v2, :cond_0

    .line 909
    new-instance v13, Ljava/util/Random;

    iget-object v1, p0, Lcom/asus/Viewer/ViewImage;->mRandom:Ljava/util/Random;

    const v2, 0x3b9ac9ff

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-long v6, v1

    invoke-direct {v13, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 910
    .local v13, generator:Ljava/util/Random;
    const v1, 0x3b9ac9ff

    invoke-virtual {v13, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, p0, Lcom/asus/Viewer/ViewImage;->currentID:I

    goto :goto_0

    .line 913
    .end local v13           #generator:Ljava/util/Random;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v2, v6, p2

    .line 915
    .local v2, targetDisplayTime:J
    new-instance v0, Lcom/asus/Viewer/ViewImage$11;

    move-object v1, p0

    move v4, p1

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/asus/Viewer/ViewImage$11;-><init>(Lcom/asus/Viewer/ViewImage;JIZ)V

    .line 999
    .local v0, cb:Lcom/asus/Viewer/DLNAImageGetterCallback;
    move v5, p1

    .line 1000
    .local v5, pos:I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/asus/Viewer/ViewImage;->mDone:Z

    .line 1001
    iget v1, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetterCurrent:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetterCurrent:I

    iget-object v2, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    .end local v2           #targetDisplayTime:J
    array-length v2, v2

    if-ne v1, v2, :cond_1

    .line 1003
    const/4 v1, 0x0

    iput v1, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetterCurrent:I

    .line 1005
    :cond_1
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    iget v2, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetterCurrent:I

    new-instance v4, Lcom/asus/Viewer/DLNAImageGetter;

    iget-object v7, p0, Lcom/asus/Viewer/ViewImage;->mAllImages:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/asus/Viewer/ViewImage;->mHandler:Lcom/asus/Viewer/GetterHandler;

    iget v9, p0, Lcom/asus/Viewer/ViewImage;->mWidth:I

    iget v10, p0, Lcom/asus/Viewer/ViewImage;->mHeight:I

    iget-object v11, p0, Lcom/asus/Viewer/ViewImage;->mContext:Landroid/content/Context;

    iget v12, p0, Lcom/asus/Viewer/ViewImage;->currentID:I

    move-object v6, v0

    invoke-direct/range {v4 .. v12}, Lcom/asus/Viewer/DLNAImageGetter;-><init>(ILcom/asus/Viewer/DLNAImageGetterCallback;Ljava/util/ArrayList;Lcom/asus/Viewer/GetterHandler;IILandroid/content/Context;I)V

    aput-object v4, v1, v2

    .line 1007
    return-void
.end method

.method private makeInAnimation(I)Landroid/view/animation/Animation;
    .locals 1
    .parameter "id"

    .prologue
    .line 839
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 840
    .local v0, inAnimation:Landroid/view/animation/Animation;
    return-object v0
.end method

.method private makeOutAnimation(I)Landroid/view/animation/Animation;
    .locals 1
    .parameter "id"

    .prologue
    .line 844
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 845
    .local v0, outAnimation:Landroid/view/animation/Animation;
    return-object v0
.end method

.method private moveNextOrPrevious(I)V
    .locals 2
    .parameter "delta"

    .prologue
    .line 826
    iget v1, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    add-int v0, v1, p1

    .line 827
    .local v0, nextImagePos:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/asus/Viewer/ViewImage;->mAllImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 828
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/asus/Viewer/ViewImage;->setImage(IZ)V

    .line 830
    :cond_0
    return-void
.end method

.method private setupOnScreenControls(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "rootView"
    .parameter "ownerView"

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/asus/Viewer/ViewImage;->setupOnTouchListeners(Landroid/view/View;)V

    .line 349
    return-void
.end method

.method private setupOnTouchListeners(Landroid/view/View;)V
    .locals 3
    .parameter "rootView"

    .prologue
    .line 352
    new-instance v0, Lcom/asus/Viewer/ViewImage$MyGestureListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/asus/Viewer/ViewImage$MyGestureListener;-><init>(Lcom/asus/Viewer/ViewImage;Lcom/asus/Viewer/ViewImage$1;)V

    .line 353
    .local v0, myGestureListener:Lcom/asus/Viewer/ViewImage$MyGestureListener;
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p0, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/asus/Viewer/ViewImage;->mGestureDetector:Landroid/view/GestureDetector;

    .line 354
    new-instance v2, Landroid/view/ScaleGestureDetector;

    invoke-direct {v2, p0, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/asus/Viewer/ViewImage;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 360
    new-instance v1, Lcom/asus/Viewer/ViewImage$7;

    invoke-direct {v1, p0}, Lcom/asus/Viewer/ViewImage$7;-><init>(Lcom/asus/Viewer/ViewImage;)V

    .line 390
    .local v1, rootListener:Landroid/view/View$OnTouchListener;
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 391
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 1109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1110
    .local v0, i:Landroid/content/Intent;
    const-string v1, "RenderNowPOS"

    iget v2, p0, Lcom/asus/Viewer/ViewImage;->mRenderPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1111
    const-string v1, "ItemNowPOS"

    iget v2, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1112
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/asus/Viewer/ViewImage;->setResult(ILandroid/content/Intent;)V

    .line 1113
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1114
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 833
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 834
    invoke-virtual {p0}, Lcom/asus/Viewer/ViewImage;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/asus/Viewer/ViewImage;->mScreenWidth:I

    .line 835
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mViewImageLayout:Lcom/asus/Viewer/ViewImageLayout;

    iget v1, p0, Lcom/asus/Viewer/ViewImage;->mScreenWidth:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/asus/Viewer/ViewImageLayout;->scrollTo(II)V

    .line 836
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "instanceState"

    .prologue
    .line 624
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 626
    const/16 v16, 0x34

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/Viewer/ViewImage;->showMode:I

    .line 627
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/asus/Viewer/ViewImage;->mAnimating:Z

    .line 629
    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->setDefaultKeyMode(I)V

    .line 630
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->requestWindowFeature(I)Z

    .line 631
    const v16, 0x7f03000d

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->setContentView(I)V

    .line 633
    const v16, 0x7f08003c

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/asus/Viewer/ViewImageLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/Viewer/ViewImage;->mViewImageLayout:Lcom/asus/Viewer/ViewImageLayout;

    .line 634
    const v16, 0x7f08002d

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/Viewer/ViewImage;->mPanel:Landroid/view/View;

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mPanel:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 637
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    const/16 v16, 0x3

    move v0, v7

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    move-object/from16 v16, v0

    new-instance v17, Lcom/asus/Viewer/ImageViewTouchBase;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/asus/Viewer/ImageViewTouchBase;-><init>(Landroid/content/Context;)V

    aput-object v17, v16, v7

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mViewImageLayout:Lcom/asus/Viewer/ViewImageLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    invoke-virtual/range {v16 .. v17}, Lcom/asus/Viewer/ViewImageLayout;->addScreen(Lcom/asus/Viewer/ImageViewTouchBase;)V

    .line 637
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 644
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/asus/Viewer/ImageViewTouchBase;->setFocusable(Z)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget-object v16, v16, v17

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/asus/Viewer/ImageViewTouchBase;->setFocusable(Z)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget-object v16, v16, v17

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/asus/Viewer/ImageViewTouchBase;->setFocusable(Z)V

    .line 647
    invoke-virtual/range {p0 .. p0}, Lcom/asus/Viewer/ViewImage;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/Display;->getWidth()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/Viewer/ViewImage;->mScreenWidth:I

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mViewImageLayout:Lcom/asus/Viewer/ViewImageLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/Viewer/ViewImage;->mScreenWidth:I

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Lcom/asus/Viewer/ViewImageLayout;->scrollTo(II)V

    .line 651
    new-instance v16, Lcom/asus/Viewer/BitmapCache;

    const/16 v17, 0x3

    invoke-direct/range {v16 .. v17}, Lcom/asus/Viewer/BitmapCache;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/Viewer/ViewImage;->mCache:Lcom/asus/Viewer/BitmapCache;

    .line 652
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/Viewer/ViewImage;->mAnimationIndex:I

    .line 654
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Landroid/view/animation/Animation;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x7f040006

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/asus/Viewer/ViewImage;->makeInAnimation(I)Landroid/view/animation/Animation;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const v18, 0x7f040002

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/asus/Viewer/ViewImage;->makeInAnimation(I)Landroid/view/animation/Animation;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const v18, 0x7f040003

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/asus/Viewer/ViewImage;->makeInAnimation(I)Landroid/view/animation/Animation;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/Viewer/ViewImage;->mSlideShowInAnimation:[Landroid/view/animation/Animation;

    .line 660
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Landroid/view/animation/Animation;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x7f040007

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/asus/Viewer/ViewImage;->makeOutAnimation(I)Landroid/view/animation/Animation;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const v18, 0x7f040004

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/asus/Viewer/ViewImage;->makeOutAnimation(I)Landroid/view/animation/Animation;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const v18, 0x7f040005

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/asus/Viewer/ViewImage;->makeOutAnimation(I)Landroid/view/animation/Animation;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/Viewer/ViewImage;->mSlideShowOutAnimation:[Landroid/view/animation/Animation;

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mSlideShowImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const v18, 0x7f08003a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/asus/Viewer/ImageViewTouchBase;

    aput-object p1, v16, v17

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mSlideShowImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    const v18, 0x7f08003b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/asus/Viewer/ImageViewTouchBase;

    aput-object p1, v16, v17

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mSlideShowImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    move-object v3, v0

    .local v3, arr$:[Lcom/asus/Viewer/ImageViewTouchBase;
    array-length v10, v3

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v10, :cond_1

    aget-object v15, v3, v8

    .line 671
    .local v15, v:Lcom/asus/Viewer/ImageViewTouchBase;
    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lcom/asus/Viewer/ImageViewTouchBase;->setVisibility(I)V

    .line 670
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 675
    .end local v15           #v:Lcom/asus/Viewer/ImageViewTouchBase;
    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/Viewer/ViewImage;->mItemList:Ljava/util/ArrayList;

    .line 678
    :try_start_0
    new-instance v9, Ljava/io/InputStreamReader;

    const-string v16, "for_photo_video_player"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v16

    const-string v17, "ISO-8859-1"

    move-object v0, v9

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 679
    .local v9, in:Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 682
    .local v4, br:Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    .local v14, strTemp:Ljava/lang/String;
    if-eqz v14, :cond_4

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    .line 691
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v9           #in:Ljava/io/InputStreamReader;
    .end local v14           #strTemp:Ljava/lang/String;
    :catch_0
    move-exception v16

    move-object/from16 v6, v16

    .line 692
    .local v6, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 700
    .end local v6           #e:Ljava/io/UnsupportedEncodingException;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/asus/Viewer/ViewImage;->getIntent()Landroid/content/Intent;

    move-result-object v16

    const-string v17, "RenderList"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/Viewer/ViewImage;->mRenderList:Ljava/util/ArrayList;

    .line 701
    invoke-virtual/range {p0 .. p0}, Lcom/asus/Viewer/ViewImage;->getIntent()Landroid/content/Intent;

    move-result-object v16

    const-string v17, "ItemNameList"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/Viewer/ViewImage;->mItemNameList:Ljava/util/ArrayList;

    .line 703
    invoke-virtual/range {p0 .. p0}, Lcom/asus/Viewer/ViewImage;->getIntent()Landroid/content/Intent;

    move-result-object v16

    const-string v17, "SourceName"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 704
    .local v12, mSourceName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/asus/Viewer/ViewImage;->getIntent()Landroid/content/Intent;

    move-result-object v16

    const-string v17, "ItemNowPOS"

    const/16 v18, -0x1

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 706
    .local v11, mItemNowPOS:I
    const/16 v16, -0x1

    move v0, v11

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    .line 707
    const/4 v13, 0x0

    .line 708
    .local v13, message:I
    const v13, 0x7f070036

    .line 709
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/asus/Viewer/ViewImage;->finish()V

    .line 713
    .end local v13           #message:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mItemList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/Viewer/ViewImage;->mSavedUri:Landroid/net/Uri;

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/asus/Viewer/ViewImage;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x400

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->addFlags(I)V

    .line 717
    const v16, 0x7f080038

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/asus/Viewer/ViewImage;->setupOnScreenControls(Landroid/view/View;Landroid/view/View;)V

    .line 719
    new-instance v16, Landroid/app/ProgressDialog;

    invoke-virtual/range {p0 .. p0}, Lcom/asus/Viewer/ViewImage;->getWindow()Landroid/view/Window;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/Viewer/ViewImage;->progressDialog:Landroid/app/ProgressDialog;

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v16, v0

    const v17, 0x7f070035

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v16, v0

    new-instance v17, Lcom/asus/Viewer/ViewImage$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/asus/Viewer/ViewImage$9;-><init>(Lcom/asus/Viewer/ViewImage;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->progressDialog:Landroid/app/ProgressDialog;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/ProgressDialog;->hide()V

    .line 732
    :cond_3
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 733
    .local v5, dm:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/asus/Viewer/ViewImage;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 734
    move-object v0, v5

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/Viewer/ViewImage;->mWidth:I

    .line 735
    move-object v0, v5

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/Viewer/ViewImage;->mHeight:I

    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/asus/Viewer/ViewImage;->getBaseContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/Viewer/ViewImage;->mContext:Landroid/content/Context;

    .line 737
    const v16, 0x7f08002a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/Viewer/ViewImage;->mServerText:Landroid/widget/TextView;

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mServerText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f070010

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ": "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    const v16, 0x7f08002c

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/Viewer/ViewImage;->mPlayToText:Landroid/widget/TextView;

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mPlayToText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f070003

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ": "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mRenderList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    const v16, 0x7f08002b

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/Viewer/ViewImage;->mTitleText:Landroid/widget/TextView;

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mTitleText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mItemNameList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    const v16, 0x7f08002e

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    const v16, 0x7f080011

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    const v16, 0x7f080035

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    const v16, 0x7f080015

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    const v16, 0x7f080007

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/Viewer/ViewImage;->mScrollindicator:Landroid/widget/ImageView;

    .line 748
    const v16, 0x7f080029

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/Viewer/ViewImage;->mPanelRegion:Landroid/view/View;

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mPanelRegion:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/Viewer/ViewImage;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    return-void

    .line 687
    .end local v5           #dm:Landroid/util/DisplayMetrics;
    .end local v11           #mItemNowPOS:I
    .end local v12           #mSourceName:Ljava/lang/String;
    .restart local v4       #br:Ljava/io/BufferedReader;
    .restart local v9       #in:Ljava/io/InputStreamReader;
    .restart local v14       #strTemp:Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 688
    const/4 v4, 0x0

    .line 689
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 690
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 693
    .end local v4           #br:Ljava/io/BufferedReader;
    .end local v9           #in:Ljava/io/InputStreamReader;
    .end local v14           #strTemp:Ljava/lang/String;
    :catch_1
    move-exception v16

    move-object/from16 v6, v16

    .line 694
    .local v6, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 695
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v16

    goto/16 :goto_3
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 307
    iput-object v1, p0, Lcom/asus/Viewer/ViewImage;->progressDialog:Landroid/app/ProgressDialog;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 311
    iput-object v1, p0, Lcom/asus/Viewer/ViewImage;->alertDialog:Landroid/app/AlertDialog;

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mAlertRenderList:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mAlertRenderList:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 315
    iput-object v1, p0, Lcom/asus/Viewer/ViewImage;->mAlertRenderList:Landroid/app/AlertDialog;

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mAllImages:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 318
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mAllImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 319
    iput-object v1, p0, Lcom/asus/Viewer/ViewImage;->mAllImages:Ljava/util/ArrayList;

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 322
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 323
    iput-object v1, p0, Lcom/asus/Viewer/ViewImage;->mItemList:Ljava/util/ArrayList;

    .line 325
    :cond_4
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mRenderList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 326
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mRenderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 327
    iput-object v1, p0, Lcom/asus/Viewer/ViewImage;->mRenderList:Ljava/util/ArrayList;

    .line 329
    :cond_5
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mItemNameList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 330
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mItemNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 331
    iput-object v1, p0, Lcom/asus/Viewer/ViewImage;->mItemNameList:Ljava/util/ArrayList;

    .line 334
    :cond_6
    iput-object v1, p0, Lcom/asus/Viewer/ViewImage;->mSlideShowInAnimation:[Landroid/view/animation/Animation;

    .line 335
    iput-object v1, p0, Lcom/asus/Viewer/ViewImage;->mSlideShowOutAnimation:[Landroid/view/animation/Animation;

    .line 336
    iput-object v1, p0, Lcom/asus/Viewer/ViewImage;->mSavedUri:Landroid/net/Uri;

    .line 337
    iput-object v1, p0, Lcom/asus/Viewer/ViewImage;->mRenderAdapter:Lcom/asus/Viewer/ViewImage$RenderListAdapter;

    .line 338
    iput-object v1, p0, Lcom/asus/Viewer/ViewImage;->mCache:Lcom/asus/Viewer/BitmapCache;

    .line 339
    iput-object v1, p0, Lcom/asus/Viewer/ViewImage;->mGestureDetector:Landroid/view/GestureDetector;

    .line 340
    iput-object v1, p0, Lcom/asus/Viewer/ViewImage;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 341
    iput-object v1, p0, Lcom/asus/Viewer/ViewImage;->mContext:Landroid/content/Context;

    .line 342
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 343
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 345
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v7, 0x1f4

    const/16 v4, 0x55

    const/high16 v3, 0x3f80

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1179
    iget-boolean v1, p0, Lcom/asus/Viewer/ViewImage;->mPaused:Z

    if-eqz v1, :cond_0

    move v1, v6

    .line 1232
    :goto_0
    return v1

    .line 1180
    :cond_0
    iget v1, p0, Lcom/asus/Viewer/ViewImage;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 1181
    if-eq p1, v4, :cond_1

    move v1, v5

    .line 1182
    goto :goto_0

    .line 1185
    :cond_1
    invoke-virtual {p0, v5}, Lcom/asus/Viewer/ViewImage;->setMode(I)V

    move v1, v5

    .line 1186
    goto :goto_0

    .line 1189
    :cond_2
    const/16 v1, 0x58

    if-eq p1, v1, :cond_3

    if-eq p1, v4, :cond_3

    const/16 v1, 0x57

    if-eq p1, v1, :cond_3

    .line 1193
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1198
    :cond_3
    const/4 v0, -0x2

    .line 1199
    .local v0, nextImagePos:I
    packed-switch p1, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    move v1, v5

    .line 1232
    goto :goto_0

    .line 1201
    :pswitch_1
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage;->mImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/asus/Viewer/ImageViewTouchBase;->getScale()F

    move-result v1

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/asus/Viewer/ViewImage;->mNextChangePositionTime:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    .line 1203
    iget v1, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    sub-int v0, v1, v5

    .line 1204
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    add-long/2addr v1, v7

    iput-wide v1, p0, Lcom/asus/Viewer/ViewImage;->mNextChangePositionTime:J

    .line 1205
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/asus/Viewer/ViewImage;->mAllImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1207
    invoke-virtual {p0, v5}, Lcom/asus/Viewer/ViewImage;->setMode(I)V

    .line 1208
    invoke-virtual {p0, v0, v6}, Lcom/asus/Viewer/ViewImage;->setImage(IZ)V

    goto :goto_1

    .line 1214
    :pswitch_2
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage;->mImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/asus/Viewer/ImageViewTouchBase;->getScale()F

    move-result v1

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/asus/Viewer/ViewImage;->mNextChangePositionTime:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    .line 1216
    iget v1, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    add-int/lit8 v0, v1, 0x1

    .line 1217
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    add-long/2addr v1, v7

    iput-wide v1, p0, Lcom/asus/Viewer/ViewImage;->mNextChangePositionTime:J

    .line 1218
    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/asus/Viewer/ViewImage;->mAllImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1220
    invoke-virtual {p0, v5}, Lcom/asus/Viewer/ViewImage;->setMode(I)V

    .line 1221
    invoke-virtual {p0, v0, v6}, Lcom/asus/Viewer/ViewImage;->setImage(IZ)V

    goto :goto_1

    .line 1227
    :pswitch_3
    invoke-virtual {p0}, Lcom/asus/Viewer/ViewImage;->playSlideShow()V

    goto :goto_1

    .line 1199
    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1040
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1041
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1045
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1047
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/asus/Viewer/ViewImage;->mPaused:Z

    .line 1049
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage;->mSavedUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/asus/Viewer/ViewImage;->init(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1050
    invoke-virtual {p0}, Lcom/asus/Viewer/ViewImage;->finish()V

    .line 1070
    :goto_0
    return-void

    .line 1057
    :cond_0
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage;->mAllImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1058
    .local v0, count:I
    if-nez v0, :cond_1

    .line 1059
    invoke-virtual {p0}, Lcom/asus/Viewer/ViewImage;->finish()V

    goto :goto_0

    .line 1061
    :cond_1
    iget v1, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    if-gt v0, v1, :cond_2

    .line 1062
    sub-int v1, v0, v4

    iput v1, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    .line 1065
    :cond_2
    iget v1, p0, Lcom/asus/Viewer/ViewImage;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1066
    iget v1, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/asus/Viewer/ViewImage;->loadNextImage(IJZ)V

    goto :goto_0

    .line 1068
    :cond_3
    iget v1, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    invoke-virtual {p0, v1, v4}, Lcom/asus/Viewer/ViewImage;->setImage(IZ)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1075
    invoke-virtual {p0, v1}, Lcom/asus/Viewer/ViewImage;->setMode(I)V

    .line 1076
    iput-boolean v1, p0, Lcom/asus/Viewer/ViewImage;->mPaused:Z

    .line 1081
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/asus/Viewer/DLNAImageGetter;->cancelCurrent()V

    .line 1083
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    aput-object v3, v0, v2

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/asus/Viewer/DLNAImageGetter;->cancelCurrent()V

    .line 1087
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    aput-object v3, v0, v1

    .line 1089
    :cond_1
    iput-boolean v1, p0, Lcom/asus/Viewer/ViewImage;->mDone:Z

    .line 1090
    iput-boolean v1, p0, Lcom/asus/Viewer/ViewImage;->mShowfull:Z

    .line 1093
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mHandler:Lcom/asus/Viewer/GetterHandler;

    invoke-virtual {v0}, Lcom/asus/Viewer/GetterHandler;->removeAllGetterCallbacks()V

    .line 1095
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mAllImages:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1096
    invoke-direct {p0}, Lcom/asus/Viewer/ViewImage;->getCurrentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/Viewer/ViewImage;->mSavedUri:Landroid/net/Uri;

    .line 1099
    :cond_2
    invoke-direct {p0}, Lcom/asus/Viewer/ViewImage;->clearImageViews()V

    .line 1101
    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lcom/asus/Viewer/ViewImage;->hide(I)V

    .line 1102
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mCache:Lcom/asus/Viewer/BitmapCache;

    invoke-virtual {v0}, Lcom/asus/Viewer/BitmapCache;->clear()V

    .line 1103
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "template"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/asus/Viewer/ViewImage;->previousID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1104
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "template"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/asus/Viewer/ViewImage;->currentID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1105
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1106
    return-void
.end method

.method public playSlideShow()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1164
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/asus/Viewer/ViewImage;->setMode(I)V

    .line 1165
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/asus/Viewer/DLNAImageGetter;->cancelCurrent()V

    .line 1167
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    aput-object v2, v0, v1

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    .line 1170
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/asus/Viewer/DLNAImageGetter;->cancelCurrent()V

    .line 1171
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    aput-object v2, v0, v3

    .line 1173
    :cond_1
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mCache:Lcom/asus/Viewer/BitmapCache;

    invoke-virtual {v0}, Lcom/asus/Viewer/BitmapCache;->clear()V

    .line 1174
    iput-boolean v3, p0, Lcom/asus/Viewer/ViewImage;->mDone:Z

    .line 1175
    iget v0, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/asus/Viewer/ViewImage;->loadNextImage(IJZ)V

    .line 1176
    return-void
.end method

.method setImage(IZ)V
    .locals 13
    .parameter "pos"
    .parameter "showControls"

    .prologue
    const v7, 0x3b9ac9ff

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 483
    iget-boolean v0, p0, Lcom/asus/Viewer/ViewImage;->mShowfull:Z

    if-nez v0, :cond_0

    .line 484
    iget v0, p0, Lcom/asus/Viewer/ViewImage;->mLoadPosition:I

    iput v0, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    .line 620
    :goto_0
    return-void

    .line 488
    :cond_0
    iput p1, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    .line 489
    iput p1, p0, Lcom/asus/Viewer/ViewImage;->mLoadPosition:I

    .line 490
    iput-boolean v5, p0, Lcom/asus/Viewer/ViewImage;->mShowfull:Z

    .line 492
    iget-object v1, p0, Lcom/asus/Viewer/ViewImage;->mTitleText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mItemNameList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget v0, p0, Lcom/asus/Viewer/ViewImage;->currentID:I

    iput v0, p0, Lcom/asus/Viewer/ViewImage;->previousID:I

    .line 495
    :goto_1
    iget v0, p0, Lcom/asus/Viewer/ViewImage;->currentID:I

    iget v1, p0, Lcom/asus/Viewer/ViewImage;->previousID:I

    if-ne v0, v1, :cond_1

    .line 496
    new-instance v10, Ljava/util/Random;

    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-direct {v10, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 497
    .local v10, generator:Ljava/util/Random;
    invoke-virtual {v10, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/asus/Viewer/ViewImage;->currentID:I

    goto :goto_1

    .line 502
    .end local v10           #generator:Ljava/util/Random;
    :cond_1
    iget-boolean v0, p0, Lcom/asus/Viewer/ViewImage;->mDone:Z

    if-nez v0, :cond_9

    .line 503
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    iget v1, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetterCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/asus/Viewer/DLNAImageGetter;->cancelCurrent()V

    .line 504
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 505
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 511
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/asus/Viewer/ImageViewTouchBase;->clear()V

    .line 512
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/asus/Viewer/ImageViewTouchBase;->clear()V

    .line 513
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/asus/Viewer/ImageViewTouchBase;->clear()V

    .line 516
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mCache:Lcom/asus/Viewer/BitmapCache;

    invoke-virtual {v0, p1}, Lcom/asus/Viewer/BitmapCache;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 517
    .local v9, b:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 518
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    aget-object v0, v0, v4

    invoke-virtual {v0, v9, v4}, Lcom/asus/Viewer/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 520
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    .line 521
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 523
    :cond_3
    if-eqz p2, :cond_4

    iget v0, p0, Lcom/asus/Viewer/ViewImage;->showMode:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_4

    .line 524
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0, v5}, Lcom/asus/Viewer/ViewImage;->show(IZ)V

    .line 526
    :cond_4
    iput-boolean v4, p0, Lcom/asus/Viewer/ViewImage;->mShowfull:Z

    .line 539
    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mCache:Lcom/asus/Viewer/BitmapCache;

    sub-int v1, p1, v4

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/BitmapCache;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 540
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 541
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    aget-object v0, v0, v5

    invoke-virtual {v0, v9, v4}, Lcom/asus/Viewer/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 544
    :cond_6
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mCache:Lcom/asus/Viewer/BitmapCache;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/asus/Viewer/BitmapCache;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 545
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 546
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    aget-object v0, v0, v6

    invoke-virtual {v0, v9, v4}, Lcom/asus/Viewer/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 550
    :cond_7
    const/4 v9, 0x0

    .line 552
    new-instance v2, Lcom/asus/Viewer/ViewImage$8;

    invoke-direct {v2, p0, p2}, Lcom/asus/Viewer/ViewImage$8;-><init>(Lcom/asus/Viewer/ViewImage;Z)V

    .line 614
    .local v2, cb:Lcom/asus/Viewer/DLNAImageGetterCallback;
    iget v0, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetterCurrent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetterCurrent:I

    iget-object v1, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    array-length v1, v1

    if-ne v0, v1, :cond_8

    .line 616
    iput v5, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetterCurrent:I

    .line 618
    :cond_8
    iget-object v11, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    iget v12, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetterCurrent:I

    new-instance v0, Lcom/asus/Viewer/DLNAImageGetter;

    iget-object v3, p0, Lcom/asus/Viewer/ViewImage;->mAllImages:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/asus/Viewer/ViewImage;->mHandler:Lcom/asus/Viewer/GetterHandler;

    iget v5, p0, Lcom/asus/Viewer/ViewImage;->mWidth:I

    iget v6, p0, Lcom/asus/Viewer/ViewImage;->mHeight:I

    iget-object v7, p0, Lcom/asus/Viewer/ViewImage;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/asus/Viewer/ViewImage;->currentID:I

    move v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/asus/Viewer/DLNAImageGetter;-><init>(ILcom/asus/Viewer/DLNAImageGetterCallback;Ljava/util/ArrayList;Lcom/asus/Viewer/GetterHandler;IILandroid/content/Context;I)V

    aput-object v0, v11, v12

    goto/16 :goto_0

    .line 509
    .end local v2           #cb:Lcom/asus/Viewer/DLNAImageGetterCallback;
    .end local v9           #b:Landroid/graphics/Bitmap;
    :cond_9
    iput-boolean v5, p0, Lcom/asus/Viewer/ViewImage;->mDone:Z

    goto/16 :goto_2

    .line 530
    .restart local v9       #b:Landroid/graphics/Bitmap;
    :cond_a
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_5

    .line 531
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 532
    iget v0, p0, Lcom/asus/Viewer/ViewImage;->showMode:I

    const/16 v1, 0x33

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/asus/Viewer/ViewImage;->showMode:I

    const/16 v1, 0x34

    if-ne v0, v1, :cond_5

    .line 533
    :cond_b
    const v0, 0x36ee80

    invoke-virtual {p0, v0, v4}, Lcom/asus/Viewer/ViewImage;->show(IZ)V

    goto :goto_3
.end method

.method setMode(I)V
    .locals 13
    .parameter "mode"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x400

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 849
    iget v7, p0, Lcom/asus/Viewer/ViewImage;->mMode:I

    if-ne v7, p1, :cond_0

    .line 902
    :goto_0
    return-void

    .line 852
    :cond_0
    const v7, 0x7f080039

    invoke-virtual {p0, v7}, Lcom/asus/Viewer/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 853
    .local v5, slideshowPanel:Landroid/view/View;
    const v7, 0x7f08003c

    invoke-virtual {p0, v7}, Lcom/asus/Viewer/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 855
    .local v4, normalPanel:Landroid/view/View;
    invoke-virtual {p0}, Lcom/asus/Viewer/ViewImage;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 856
    .local v6, win:Landroid/view/Window;
    iput p1, p0, Lcom/asus/Viewer/ViewImage;->mMode:I

    .line 858
    iget-object v7, p0, Lcom/asus/Viewer/ViewImage;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v7, :cond_1

    .line 859
    iget-object v7, p0, Lcom/asus/Viewer/ViewImage;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->hide()V

    .line 861
    :cond_1
    iget-object v7, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    aget-object v7, v7, v9

    if-eqz v7, :cond_2

    .line 862
    iget-object v7, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/asus/Viewer/DLNAImageGetter;->cancelCurrent()V

    .line 863
    iget-object v7, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    aput-object v12, v7, v9

    .line 865
    :cond_2
    iget-object v7, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    aget-object v7, v7, v8

    if-eqz v7, :cond_3

    .line 866
    iget-object v7, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/asus/Viewer/DLNAImageGetter;->cancelCurrent()V

    .line 867
    iget-object v7, p0, Lcom/asus/Viewer/ViewImage;->mDLNAImageGetter:[Lcom/asus/Viewer/DLNAImageGetter;

    aput-object v12, v7, v8

    .line 870
    :cond_3
    const/4 v7, 0x2

    if-ne p1, v7, :cond_4

    .line 871
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 872
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 874
    const/16 v7, 0x480

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 876
    iget-object v7, p0, Lcom/asus/Viewer/ViewImage;->mImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/asus/Viewer/ImageViewTouchBase;->clear()V

    .line 877
    const/16 v7, 0x30

    invoke-direct {p0, v7}, Lcom/asus/Viewer/ViewImage;->hide(I)V

    .line 878
    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->requestLayout()V

    .line 880
    iput v9, p0, Lcom/asus/Viewer/ViewImage;->mAnimationIndex:I

    .line 881
    const/16 v7, 0xbb8

    iput v7, p0, Lcom/asus/Viewer/ViewImage;->mSlideShowInterval:I

    goto :goto_0

    .line 883
    :cond_4
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 884
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 886
    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 887
    iget-boolean v7, p0, Lcom/asus/Viewer/ViewImage;->mFullScreenInNormalMode:Z

    if-eqz v7, :cond_5

    .line 888
    invoke-virtual {v6, v11}, Landroid/view/Window;->addFlags(I)V

    .line 893
    :goto_1
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage;->mSlideShowImageViews:[Lcom/asus/Viewer/ImageViewTouchBase;

    .local v0, arr$:[Lcom/asus/Viewer/ImageViewTouchBase;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v3, :cond_6

    aget-object v2, v0, v1

    .line 894
    .local v2, ivt:Lcom/asus/Viewer/ImageViewTouchBase;
    invoke-virtual {v2}, Lcom/asus/Viewer/ImageViewTouchBase;->clear()V

    .line 893
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 890
    .end local v0           #arr$:[Lcom/asus/Viewer/ImageViewTouchBase;
    .end local v1           #i$:I
    .end local v2           #ivt:Lcom/asus/Viewer/ImageViewTouchBase;
    .end local v3           #len$:I
    :cond_5
    invoke-virtual {v6, v11}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    .line 898
    .restart local v0       #arr$:[Lcom/asus/Viewer/ImageViewTouchBase;
    .restart local v1       #i$:I
    .restart local v3       #len$:I
    :cond_6
    iput-boolean v8, p0, Lcom/asus/Viewer/ViewImage;->mDone:Z

    .line 899
    iput-boolean v8, p0, Lcom/asus/Viewer/ViewImage;->mShowfull:Z

    .line 900
    iget v7, p0, Lcom/asus/Viewer/ViewImage;->mCurrentPosition:I

    invoke-virtual {p0, v7, v8}, Lcom/asus/Viewer/ViewImage;->setImage(IZ)V

    goto/16 :goto_0
.end method

.method public show(IZ)V
    .locals 10
    .parameter "timeout"
    .parameter "keep"

    .prologue
    const-wide/16 v8, 0x1f4

    const/16 v7, 0x33

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 247
    iget-boolean v2, p0, Lcom/asus/Viewer/ViewImage;->mAnimating:Z

    if-eqz v2, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    if-nez p2, :cond_2

    .line 251
    iget v2, p0, Lcom/asus/Viewer/ViewImage;->showMode:I

    packed-switch v2, :pswitch_data_0

    .line 295
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/asus/Viewer/ViewImage;->mHandler:Lcom/asus/Viewer/GetterHandler;

    iget-object v3, p0, Lcom/asus/Viewer/ViewImage;->mDismissOnScreenControlRunner:Ljava/lang/Runnable;

    invoke-virtual {v2, v7, v4, v4, v3}, Lcom/asus/Viewer/GetterHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 296
    .local v1, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    .line 297
    iget-object v2, p0, Lcom/asus/Viewer/ViewImage;->mHandler:Lcom/asus/Viewer/GetterHandler;

    invoke-virtual {v2, v7}, Lcom/asus/Viewer/GetterHandler;->removeMessages(I)V

    .line 298
    iget-object v2, p0, Lcom/asus/Viewer/ViewImage;->mHandler:Lcom/asus/Viewer/GetterHandler;

    int-to-long v3, p1

    invoke-virtual {v2, v1, v3, v4}, Lcom/asus/Viewer/GetterHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 253
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_0
    iget-object v2, p0, Lcom/asus/Viewer/ViewImage;->mPanel:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v2, p0, Lcom/asus/Viewer/ViewImage;->mScrollindicator:Landroid/widget/ImageView;

    const v3, 0x7f02001c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    iput-boolean v6, p0, Lcom/asus/Viewer/ViewImage;->mAnimating:Z

    .line 256
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/asus/Viewer/ViewImage;->mPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v5, v5, v2, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 257
    .local v0, moveUp:Landroid/view/animation/Animation;
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 258
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 259
    const v2, 0x10a0004

    invoke-virtual {v0, p0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 260
    new-instance v2, Lcom/asus/Viewer/ViewImage$5;

    invoke-direct {v2, p0}, Lcom/asus/Viewer/ViewImage$5;-><init>(Lcom/asus/Viewer/ViewImage;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 268
    iget-object v2, p0, Lcom/asus/Viewer/ViewImage;->mPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 272
    .end local v0           #moveUp:Landroid/view/animation/Animation;
    :pswitch_1
    iget-object v2, p0, Lcom/asus/Viewer/ViewImage;->mPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 273
    iget-object v2, p0, Lcom/asus/Viewer/ViewImage;->mPanel:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v2, p0, Lcom/asus/Viewer/ViewImage;->mViewImageLayout:Lcom/asus/Viewer/ViewImageLayout;

    invoke-virtual {v2}, Lcom/asus/Viewer/ViewImageLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 275
    iget-object v2, p0, Lcom/asus/Viewer/ViewImage;->mScrollindicator:Landroid/widget/ImageView;

    const v3, 0x7f02001d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    iput-boolean v6, p0, Lcom/asus/Viewer/ViewImage;->mAnimating:Z

    .line 277
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    invoke-direct {v0, v5, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 279
    .restart local v0       #moveUp:Landroid/view/animation/Animation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 281
    new-instance v2, Lcom/asus/Viewer/ViewImage$6;

    invoke-direct {v2, p0}, Lcom/asus/Viewer/ViewImage$6;-><init>(Lcom/asus/Viewer/ViewImage;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 289
    iget-object v2, p0, Lcom/asus/Viewer/ViewImage;->mPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 251
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
