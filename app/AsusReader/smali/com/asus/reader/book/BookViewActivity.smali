.class public Lcom/asus/reader/book/BookViewActivity;
.super Landroid/app/Activity;
.source "BookViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/asus/reader/book/ReaderDatabase$unMountListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/book/BookViewActivity$25;,
        Lcom/asus/reader/book/BookViewActivity$TtsHelper;,
        Lcom/asus/reader/book/BookViewActivity$SearchListener;,
        Lcom/asus/reader/book/BookViewActivity$ListPosition;,
        Lcom/asus/reader/book/BookViewActivity$PageScanListener;,
        Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;,
        Lcom/asus/reader/book/BookViewActivity$SelectionState;,
        Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;,
        Lcom/asus/reader/book/BookViewActivity$AnimationThread;,
        Lcom/asus/reader/book/BookViewActivity$translateOnGoogle;,
        Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;,
        Lcom/asus/reader/book/BookViewActivity$NonConfigurationInstanceState;,
        Lcom/asus/reader/book/BookViewActivity$SelectionCursor;,
        Lcom/asus/reader/book/BookViewActivity$UpdateState;,
        Lcom/asus/reader/book/BookViewActivity$ScanState;
    }
.end annotation


# static fields
.field public static final DBG:Z

.field private static final LANG_ITEMS:[Lcom/google/api/translate/Language;

.field public static UseGLES20:Z

.field public static isNightMode:Z


# instance fields
.field private AnimFP:F

.field private AnimSY:F

.field private AnimX:F

.field private AnimY:F

.field private Animation:Ljava/lang/Object;

.field private QuickFlipActiveTime:J

.field private QuickFlipLength:I

.field private QuickFlipTime:J

.field private final ReadingWakeLockTime:I

.field private SingleTapFlipActiveTime:J

.field private final SingleTapFlipSize:I

.field private SingleTapFlipTime:J

.field private animationThread:Ljava/lang/Thread;

.field private flipPage:I

.field private isAnimation:Z

.field private mAnimationThreadStop:Z

.field private mAnnotationLocs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAnnotationRects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBeTranslationLang:Lcom/google/api/translate/Language;

.field private mBookFilePath:Ljava/lang/String;

.field private mBookInfo:Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;

.field private mBookLang:Ljava/lang/String;

.field private mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

.field private mBookmarkUpdateHandler:Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;

.field private mBookmarkUpdateThread:Landroid/os/HandlerThread;

.field private mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

.field private mChangingFontSize:Z

.field private mContainBookmark:Z

.field private mContrlPanelHandler:Landroid/os/Handler;

.field private mControlPanel:Landroid/widget/RelativeLayout;

.field private mCurrentBookId:I

.field private mCursorLeftBitmap:Landroid/graphics/Bitmap;

.field private mCursorRightBitmap:Landroid/graphics/Bitmap;

.field private mCustomDrawableView:Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;

.field private mDeleteIndex:I

.field private mDictionary:Lcom/asus/dictionary/Dictionary;

.field private mDictionaryLayout:Landroid/widget/RelativeLayout;

.field private mDistance2Cursor_X:[F

.field private mDistance2Cursor_Y:[F

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mFakeEvent:Landroid/view/MotionEvent;

.field private mFontSizeDownButton:Landroid/widget/ImageButton;

.field private mFontSizeUpButton:Landroid/widget/ImageButton;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHighlightCursor:[Landroid/graphics/RectF;

.field private mHightlightLocs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHightlightRects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsLandscape:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/ui/BookIndexAdapter$BookIndexCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeyHandler:Landroid/os/Handler;

.field private mLastTouchTime:J

.field private mLeftPageNoView:Landroid/widget/TextView;

.field private mLibraryButton:Landroid/widget/ImageButton;

.field private mLongClick_X:I

.field private mLongClick_Y:I

.field private mMenuButton:Lcom/asus/reader/ui/DropDownMenu2;

.field private mMultiTouchDetector:Lcom/asus/reader/ui/MultiTouchDetector;

.field private final mMyDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mNavigatingProgress:Landroid/widget/ProgressBar;

.field private mNavigatingToPage:Z

.field private mNextUpdatePage:I

.field private final mNoteButtonClickListener:Landroid/view/View$OnClickListener;

.field private mNoteEndLoc:Ljava/lang/String;

.field private mNoteStartLoc:Ljava/lang/String;

.field private final mOnRendererChangeListener:Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;

.field private final mOptionBarClickListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

.field private mOptionDialog:Landroid/app/Dialog;

.field private mPageNoPanel:Landroid/widget/RelativeLayout;

.field final mPageScanListener:Lcom/asus/reader/book/BookViewActivity$PageScanListener;

.field private mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

.field private mPreIsLandscape:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReadAllText:Z

.field private mRedRibbon:Landroid/widget/ImageButton;

.field private mRenderer:Lcom/asus/reader/book/PageRenderer;

.field private mRightPageNoView:Landroid/widget/TextView;

.field private mScanProgress:Landroid/widget/ProgressBar;

.field private mScanState:Lcom/asus/reader/book/BookViewActivity$ScanState;

.field private mSearchButton:Landroid/widget/ImageButton;

.field private mSearchEdit:Lcom/asus/reader/ui/SearchEditText;

.field private mSearchProgress:Landroid/widget/ProgressBar;

.field private mSearchText:Ljava/lang/String;

.field public final mSeekBarPanelHandler:Landroid/os/Handler;

.field private mSelectionArea:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/ShapeDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionCursor:[Lcom/asus/reader/book/BookViewActivity$SelectionCursor;

.field private mSelectionMenu:Lcom/asus/reader/ui/SelectionMenuBarWindow;

.field private mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

.field private mSelectionText:Ljava/lang/String;

.field private mTextToSpeechAgent:Lcom/asus/reader/book/TextToSpeechAgent;

.field private mTranslatedText:Ljava/lang/String;

.field private mTranslationLang:I

.field private mTtsHelper:Lcom/asus/reader/book/BookViewActivity$TtsHelper;

.field private mUpdateState:Lcom/asus/reader/book/BookViewActivity$UpdateState;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private nBottom:I

.field private nLHold:I

.field private nLMargin:I

.field private nLeft:I

.field private nRHold:I

.field private nRMargin:I

.field private nRight:I

.field private nTop:I

.field private startX:F

.field private startY:F

.field private touchParameter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 127
    sget-boolean v0, Lcom/asus/reader/ReaderApp;->DBG:Z

    sput-boolean v0, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    .line 129
    sput-boolean v3, Lcom/asus/reader/book/BookViewActivity;->UseGLES20:Z

    .line 233
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/api/translate/Language;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/api/translate/Language;->ENGLISH:Lcom/google/api/translate/Language;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/api/translate/Language;->FRENCH:Lcom/google/api/translate/Language;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/google/api/translate/Language;->JAPANESE:Lcom/google/api/translate/Language;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/api/translate/Language;->CHINESE_TRADITIONAL:Lcom/google/api/translate/Language;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/api/translate/Language;->GERMAN:Lcom/google/api/translate/Language;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/api/translate/Language;->CHINESE_SIMPLIFIED:Lcom/google/api/translate/Language;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/api/translate/Language;->RUSSIAN:Lcom/google/api/translate/Language;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/api/translate/Language;->SPANISH:Lcom/google/api/translate/Language;

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/reader/book/BookViewActivity;->LANG_ITEMS:[Lcom/google/api/translate/Language;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    const/high16 v0, -0x4080

    const/4 v8, 0x2

    const/4 v4, 0x0

    .line 124
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 132
    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->startX:F

    .line 133
    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->startY:F

    .line 134
    iput v4, p0, Lcom/asus/reader/book/BookViewActivity;->flipPage:I

    .line 136
    iput-boolean v4, p0, Lcom/asus/reader/book/BookViewActivity;->touchParameter:Z

    .line 137
    iput-boolean v4, p0, Lcom/asus/reader/book/BookViewActivity;->isAnimation:Z

    .line 138
    iput-wide v2, p0, Lcom/asus/reader/book/BookViewActivity;->QuickFlipActiveTime:J

    .line 139
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/asus/reader/book/BookViewActivity;->QuickFlipTime:J

    .line 140
    iput-wide v2, p0, Lcom/asus/reader/book/BookViewActivity;->SingleTapFlipActiveTime:J

    .line 141
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/asus/reader/book/BookViewActivity;->SingleTapFlipTime:J

    .line 142
    const/16 v0, 0x3c

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->SingleTapFlipSize:I

    .line 143
    const v0, 0x927c0

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->ReadingWakeLockTime:I

    .line 147
    iput-boolean v4, p0, Lcom/asus/reader/book/BookViewActivity;->mAnimationThreadStop:Z

    .line 148
    iput-boolean v4, p0, Lcom/asus/reader/book/BookViewActivity;->mChangingFontSize:Z

    iput-boolean v4, p0, Lcom/asus/reader/book/BookViewActivity;->mNavigatingToPage:Z

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHightlightRects:Ljava/util/HashMap;

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mAnnotationRects:Ljava/util/HashMap;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mItems:Ljava/util/List;

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionArea:Ljava/util/ArrayList;

    .line 262
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    move v6, v5

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mFakeEvent:Landroid/view/MotionEvent;

    .line 266
    iput-boolean v4, p0, Lcom/asus/reader/book/BookViewActivity;->mReadAllText:Z

    .line 269
    sget-object v0, Lcom/asus/reader/book/BookViewActivity$ScanState;->NONE:Lcom/asus/reader/book/BookViewActivity$ScanState;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mScanState:Lcom/asus/reader/book/BookViewActivity$ScanState;

    .line 271
    sget-object v0, Lcom/asus/reader/book/BookViewActivity$UpdateState;->NONE:Lcom/asus/reader/book/BookViewActivity$UpdateState;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mUpdateState:Lcom/asus/reader/book/BookViewActivity$UpdateState;

    .line 507
    new-instance v0, Lcom/asus/reader/book/BookViewActivity$3;

    invoke-direct {v0, p0}, Lcom/asus/reader/book/BookViewActivity$3;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mOnRendererChangeListener:Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;

    .line 658
    new-instance v0, Lcom/asus/reader/book/BookViewActivity$4;

    invoke-direct {v0, p0}, Lcom/asus/reader/book/BookViewActivity$4;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mNoteButtonClickListener:Landroid/view/View$OnClickListener;

    .line 1142
    new-array v0, v8, [Lcom/asus/reader/book/BookViewActivity$SelectionCursor;

    new-instance v1, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;

    invoke-direct {v1, p0}, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;

    invoke-direct {v2, p0}, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionCursor:[Lcom/asus/reader/book/BookViewActivity$SelectionCursor;

    .line 1425
    new-instance v0, Lcom/asus/reader/book/BookViewActivity$9;

    invoke-direct {v0, p0}, Lcom/asus/reader/book/BookViewActivity$9;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mKeyHandler:Landroid/os/Handler;

    .line 1514
    new-instance v0, Lcom/asus/reader/book/BookViewActivity$10;

    invoke-direct {v0, p0}, Lcom/asus/reader/book/BookViewActivity$10;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSeekBarPanelHandler:Landroid/os/Handler;

    .line 1548
    new-instance v0, Lcom/asus/reader/book/BookViewActivity$11;

    invoke-direct {v0, p0}, Lcom/asus/reader/book/BookViewActivity$11;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mContrlPanelHandler:Landroid/os/Handler;

    .line 1879
    new-array v0, v8, [F

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mDistance2Cursor_X:[F

    .line 1880
    new-array v0, v8, [F

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mDistance2Cursor_Y:[F

    .line 2465
    new-array v0, v8, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHighlightCursor:[Landroid/graphics/RectF;

    .line 2466
    sget-object v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;->NONE:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 2582
    new-instance v0, Lcom/asus/reader/book/BookViewActivity$22;

    invoke-direct {v0, p0}, Lcom/asus/reader/book/BookViewActivity$22;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mMyDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 2702
    new-instance v0, Lcom/asus/reader/book/BookViewActivity$23;

    invoke-direct {v0, p0}, Lcom/asus/reader/book/BookViewActivity$23;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mOptionBarClickListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    .line 2975
    new-instance v0, Lcom/asus/reader/book/BookViewActivity$24;

    invoke-direct {v0, p0}, Lcom/asus/reader/book/BookViewActivity$24;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageScanListener:Lcom/asus/reader/book/BookViewActivity$PageScanListener;

    .line 3075
    return-void
.end method

.method private ActivateAnimation(FFFF)V
    .locals 2
    .parameter "FP"
    .parameter "startY"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2282
    iput p1, p0, Lcom/asus/reader/book/BookViewActivity;->AnimFP:F

    iput p2, p0, Lcom/asus/reader/book/BookViewActivity;->AnimSY:F

    iput p3, p0, Lcom/asus/reader/book/BookViewActivity;->AnimX:F

    iput p4, p0, Lcom/asus/reader/book/BookViewActivity;->AnimY:F

    .line 2284
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mFakeEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/asus/reader/book/BookViewActivity;->cancelHighlightSelection(Landroid/view/MotionEvent;Z)V

    .line 2285
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->Animation:Ljava/lang/Object;

    monitor-enter v0

    .line 2286
    :try_start_0
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->Animation:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 2287
    monitor-exit v0

    .line 2288
    return-void

    .line 2287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$1000(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/asus/reader/book/BookViewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->mCurrentBookId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/asus/reader/book/BookViewActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/asus/reader/book/BookViewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/asus/reader/book/BookViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mChangingFontSize:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/asus/reader/book/BookViewActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/asus/reader/book/BookViewActivity;->mChangingFontSize:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/asus/reader/book/BookViewActivity;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mFakeEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/asus/reader/book/BookViewActivity;Landroid/view/MotionEvent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/asus/reader/book/BookViewActivity;->cancelHighlightSelection(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mControlPanel:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/asus/reader/book/BookViewActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/asus/reader/book/BookViewActivity;->isAnimation:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/asus/reader/book/BookViewActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->AnimFP:F

    return v0
.end method

.method static synthetic access$1802(Lcom/asus/reader/book/BookViewActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/asus/reader/book/BookViewActivity;->AnimFP:F

    return p1
.end method

.method static synthetic access$1900(Lcom/asus/reader/book/BookViewActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->AnimSY:F

    return v0
.end method

.method static synthetic access$1902(Lcom/asus/reader/book/BookViewActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/asus/reader/book/BookViewActivity;->AnimSY:F

    return p1
.end method

.method static synthetic access$200(Lcom/asus/reader/book/BookViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mNavigatingToPage:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/asus/reader/book/BookViewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    return v0
.end method

.method static synthetic access$202(Lcom/asus/reader/book/BookViewActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/asus/reader/book/BookViewActivity;->mNavigatingToPage:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/asus/reader/book/BookViewActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->AnimX:F

    return v0
.end method

.method static synthetic access$2102(Lcom/asus/reader/book/BookViewActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/asus/reader/book/BookViewActivity;->AnimX:F

    return p1
.end method

.method static synthetic access$2200(Lcom/asus/reader/book/BookViewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nLeft:I

    return v0
.end method

.method static synthetic access$2300(Lcom/asus/reader/book/BookViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/asus/reader/book/BookViewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nRight:I

    return v0
.end method

.method static synthetic access$2500(Lcom/asus/reader/book/BookViewActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->AnimY:F

    return v0
.end method

.method static synthetic access$2502(Lcom/asus/reader/book/BookViewActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/asus/reader/book/BookViewActivity;->AnimY:F

    return p1
.end method

.method static synthetic access$2600(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->Animation:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/asus/reader/book/BookViewActivity;Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/asus/reader/book/BookViewActivity;->createProgressDialog(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/PageRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mRenderer:Lcom/asus/reader/book/PageRenderer;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/asus/reader/book/BookViewActivity;ID)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/asus/reader/book/BookViewActivity;->setFontSize(ID)V

    return-void
.end method

.method static synthetic access$300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/ui/PageSeekBar2;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/asus/reader/book/BookViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->updateFontButtonStatus()V

    return-void
.end method

.method static synthetic access$3100(Lcom/asus/reader/book/BookViewActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/asus/reader/book/BookViewActivity;->destroyProgressDialog(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mNavigatingProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageNoPanel:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/asus/reader/book/BookViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->forceHideKeyboard()V

    return-void
.end method

.method static synthetic access$3500(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mRedRibbon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/asus/reader/book/BookViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->startTextToSpeech()V

    return-void
.end method

.method static synthetic access$3700(Lcom/asus/reader/book/BookViewActivity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/asus/reader/book/BookViewActivity;->updateSearchListPosition(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/asus/reader/book/BookViewActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/asus/reader/book/BookViewActivity;->refreshAnnotationInPage(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/asus/reader/book/BookViewActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/asus/reader/book/BookViewActivity;->refreshHighlightInPage(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/asus/reader/book/BookViewActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mContrlPanelHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/asus/reader/book/BookViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->refreshBookmarkInPage()V

    return-void
.end method

.method static synthetic access$4100(Lcom/asus/reader/book/BookViewActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/asus/reader/book/BookViewActivity;->setTtsState(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$ScanState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mScanState:Lcom/asus/reader/book/BookViewActivity$ScanState;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$ScanState;)Lcom/asus/reader/book/BookViewActivity$ScanState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity;->mScanState:Lcom/asus/reader/book/BookViewActivity$ScanState;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$SelectionState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$SelectionState;)Lcom/asus/reader/book/BookViewActivity$SelectionState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$UpdateState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->getUpdateState()Lcom/asus/reader/book/BookViewActivity$UpdateState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/asus/reader/book/BookViewActivity;FFI)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/asus/reader/book/BookViewActivity;->isPressOnTheCursor(FFI)I

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionArea:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/asus/reader/book/BookViewActivity;FF)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/asus/reader/book/BookViewActivity;->containsOnHighloght(FF)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/asus/reader/book/BookViewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->mDeleteIndex:I

    return v0
.end method

.method static synthetic access$4802(Lcom/asus/reader/book/BookViewActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/asus/reader/book/BookViewActivity;->mDeleteIndex:I

    return p1
.end method

.method static synthetic access$4900(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHightlightRects:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/asus/reader/book/BookViewActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mKeyHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/asus/reader/book/BookViewActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/asus/reader/book/BookViewActivity;->updateSelectionArea(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mCustomDrawableView:Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/asus/reader/book/BookViewActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->updateSelectionBarStatus()V

    return-void
.end method

.method static synthetic access$5300(Lcom/asus/reader/book/BookViewActivity;FF)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/asus/reader/book/BookViewActivity;->containsOnAnnotation(FF)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mAnnotationRects:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/asus/reader/book/BookViewActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/asus/reader/book/BookViewActivity;->updateShowingPage(I)V

    return-void
.end method

.method static synthetic access$5600(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookLang:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/dictionary/Dictionary;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mDictionary:Lcom/asus/dictionary/Dictionary;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/asus/reader/book/BookViewActivity;ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/asus/reader/book/BookViewActivity;->refreshBoundingArea(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookmarkUpdateHandler:Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/asus/reader/book/BookViewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->mTranslationLang:I

    return v0
.end method

.method static synthetic access$6002(Lcom/asus/reader/book/BookViewActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput p1, p0, Lcom/asus/reader/book/BookViewActivity;->mTranslationLang:I

    return p1
.end method

.method static synthetic access$6100(Lcom/asus/reader/book/BookViewActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/asus/reader/book/BookViewActivity;->setTranslationLang(I)V

    return-void
.end method

.method static synthetic access$6200(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mTranslatedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/asus/reader/book/BookViewActivity;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mOptionDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/asus/reader/book/BookViewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->mNextUpdatePage:I

    return v0
.end method

.method static synthetic access$6500(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookInfo:Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHightlightLocs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/asus/reader/book/BookViewActivity;Ljava/util/ArrayList;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/asus/reader/book/BookViewActivity;->findIndexOnHighlightList(Ljava/util/ArrayList;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6802(Lcom/asus/reader/book/BookViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6900(Lcom/asus/reader/book/BookViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mAnimationThreadStop:Z

    return v0
.end method

.method static synthetic access$700(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$UpdateState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/asus/reader/book/BookViewActivity;->setUpdateState(Lcom/asus/reader/book/BookViewActivity$UpdateState;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/asus/reader/book/BookViewActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nTop:I

    return v0
.end method

.method static synthetic access$7100(Lcom/asus/reader/book/BookViewActivity;)[Landroid/graphics/RectF;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHighlightCursor:[Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/asus/reader/book/BookViewActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mCursorLeftBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/asus/reader/book/BookViewActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mCursorRightBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/asus/reader/book/BookViewActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mAnnotationLocs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/asus/reader/book/BookViewActivity;Ljava/util/ArrayList;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/asus/reader/book/BookViewActivity;->findIndexOnAnnotationList(Ljava/util/ArrayList;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Lcom/asus/reader/book/BookViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7700(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/ui/SearchEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSearchEdit:Lcom/asus/reader/ui/SearchEditText;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/asus/reader/book/BookViewActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/asus/reader/book/BookViewActivity;->enableMenuButtons(Z)V

    return-void
.end method

.method static synthetic access$7900(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mScanProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mNoteStartLoc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSearchProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$802(Lcom/asus/reader/book/BookViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity;->mNoteStartLoc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/asus/reader/book/BookViewActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->isInTheLastPage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mNoteEndLoc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/asus/reader/book/BookViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity;->mNoteEndLoc:Ljava/lang/String;

    return-object p1
.end method

.method private cancelHighlightSelection(Landroid/view/MotionEvent;Z)V
    .locals 4
    .parameter "event"
    .parameter "hideControlMenu"

    .prologue
    const/4 v3, 0x0

    .line 1631
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->forceHideKeyboard()V

    .line 1632
    if-eqz p2, :cond_0

    .line 1633
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mControlPanel:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1634
    :cond_0
    sget-object v0, Lcom/asus/reader/book/BookViewActivity$25;->$SwitchMap$com$asus$reader$book$BookViewActivity$SelectionState:[I

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-virtual {v1}, Lcom/asus/reader/book/BookViewActivity$SelectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1649
    :goto_0
    return-void

    .line 1636
    :pswitch_0
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->updateSelectionBarStatus()V

    goto :goto_0

    .line 1642
    :pswitch_1
    sget-object v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;->NONE:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 1643
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v2, v2, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {p1, v0, v1, v2}, Lcom/asus/reader/book/BookmarkUtility;->handleSelectionEvent(Landroid/view/MotionEvent;IZI)I

    .line 1645
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionArea:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1646
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v0, v0, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-direct {p0, v0, v3, v3}, Lcom/asus/reader/book/BookViewActivity;->refreshBoundingArea(ILjava/lang/String;Ljava/lang/String;)I

    .line 1647
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->updateSelectionBarStatus()V

    goto :goto_0

    .line 1634
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private clearAllAnnoteButtons()V
    .locals 4

    .prologue
    .line 615
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity;->mPageNoPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getTouchables()Ljava/util/ArrayList;

    move-result-object v2

    .line 616
    .local v2, viewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 617
    .local v1, v:Landroid/view/View;
    instance-of v3, v1, Lcom/asus/reader/ui/AnnotationButton;

    if-eqz v3, :cond_0

    .line 618
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity;->mPageNoPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 619
    .end local v1           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private containsOnAnnotation(FF)Ljava/util/List;
    .locals 7
    .parameter "position_X"
    .parameter "position_Y"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2395
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2396
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity;->mAnnotationRects:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2397
    .local v2, key:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity;->mAnnotationRects:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2398
    .local v4, rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    .line 2399
    .local v3, rect:Landroid/graphics/RectF;
    invoke-virtual {v3, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2400
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2403
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #rect:Landroid/graphics/RectF;
    .end local v4           #rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    :cond_2
    return-object v5
.end method

.method private containsOnHighloght(FF)Ljava/util/List;
    .locals 7
    .parameter "position_X"
    .parameter "position_Y"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2377
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2378
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity;->mHightlightRects:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2379
    .local v2, key:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity;->mHightlightRects:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2380
    .local v4, rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    .line 2381
    .local v3, rect:Landroid/graphics/RectF;
    invoke-virtual {v3, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2382
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2385
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Integer;
    .end local v3           #rect:Landroid/graphics/RectF;
    .end local v4           #rects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    :cond_2
    return-object v5
.end method

.method private createProgressDialog(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "title_resid"

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookmarkUpdateHandler:Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;

    new-instance v1, Lcom/asus/reader/book/BookViewActivity$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/asus/reader/book/BookViewActivity$7;-><init>(Lcom/asus/reader/book/BookViewActivity;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1282
    return-void
.end method

.method private deleteBookmark()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2949
    const-string v0, "BookViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete bookmark on this page"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v2, v2, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookInfo:Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;

    invoke-static {p0, v0}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;->getBookmarkList(Landroid/content/Context;Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 2953
    if-eqz v0, :cond_4

    .line 2954
    array-length v1, v0

    move v2, v7

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 2955
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-static {v3}, Lcom/asus/reader/book/BookSurfaceView;->bookmarkToPosDoubletNative(Ljava/lang/String;)D

    move-result-wide v4

    .line 2956
    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-virtual {v6, v4, v5}, Lcom/asus/reader/book/BookSurfaceView;->findPageNoByPositionNative(D)I

    move-result v4

    .line 2957
    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    if-eq v4, v5, :cond_1

    iget-boolean v5, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    add-int/lit8 v5, v5, 0x1

    if-eq v4, v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v8, :cond_3

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    sub-int/2addr v5, v8

    if-ne v4, v5, :cond_3

    :cond_1
    move v4, v8

    .line 2961
    :goto_1
    if-eqz v4, :cond_2

    .line 2962
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity;->mBookInfo:Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;

    invoke-static {p0, v4, v3}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;->deleteBookmark(Landroid/content/Context;Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;Ljava/lang/String;)I

    .line 2963
    const-string v4, "BookViewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete bookmark on postion:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v4, v7

    .line 2957
    goto :goto_1

    .line 2967
    :cond_4
    iput-boolean v7, p0, Lcom/asus/reader/book/BookViewActivity;->mContainBookmark:Z

    .line 2968
    return-void
.end method

.method private destroyProgressDialog(Z)V
    .locals 2
    .parameter "isChangeFontSize"

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookmarkUpdateHandler:Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;

    new-instance v1, Lcom/asus/reader/book/BookViewActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/asus/reader/book/BookViewActivity$8;-><init>(Lcom/asus/reader/book/BookViewActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1294
    return-void
.end method

.method private detectOpenGLES20()Z
    .locals 2

    .prologue
    .line 932
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 934
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    .line 935
    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableMenuButtons(Z)V
    .locals 2
    .parameter

    .prologue
    .line 3002
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 3003
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 3004
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 3005
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 3007
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 3009
    const-string v0, "ro.build.version.release"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3010
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 3011
    :cond_0
    return-void
.end method

.method private findIndexOnAnnotationList(Ljava/util/ArrayList;I)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;I)I"
        }
    .end annotation

    .prologue
    .line 2671
    if-eqz p1, :cond_1

    .line 2672
    const/4 v0, 0x0

    .line 2673
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    .line 2674
    const-string v2, "index"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2675
    if-ne p2, v2, :cond_0

    .line 2681
    :goto_1
    return v0

    .line 2678
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2679
    goto :goto_0

    .line 2681
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findIndexOnHighlightList(Ljava/util/ArrayList;I)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;I)I"
        }
    .end annotation

    .prologue
    .line 2656
    if-eqz p1, :cond_1

    .line 2657
    const/4 v0, 0x0

    .line 2658
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    .line 2659
    const-string v2, "index"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2660
    if-ne p2, v2, :cond_0

    .line 2666
    :goto_1
    return v0

    .line 2663
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2664
    goto :goto_0

    .line 2666
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private forceHideKeyboard()V
    .locals 3

    .prologue
    .line 1652
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1653
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mSearchEdit:Lcom/asus/reader/ui/SearchEditText;

    invoke-virtual {v1}, Lcom/asus/reader/ui/SearchEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1654
    return-void
.end method

.method private getBookLanguage()Ljava/util/Locale;
    .locals 3

    .prologue
    .line 2892
    iget v2, p0, Lcom/asus/reader/book/BookViewActivity;->mCurrentBookId:I

    invoke-static {p0, v2}, Lcom/asus/reader/util/ReaderDatabaseUtils;->getLocaleFromBookId(Landroid/content/Context;I)Ljava/util/Locale;

    move-result-object v1

    .line 2893
    .local v1, locale:Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2894
    .local v0, language:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2895
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private getDefaultTranslationLang()Lcom/google/api/translate/Language;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 1938
    const-string v0, "bookview_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/book/BookViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1939
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1940
    sget-boolean v2, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "BookViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get the Locale:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :cond_0
    const-string v2, "be_translated"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1942
    if-le v0, v5, :cond_1

    .line 1943
    sget-object v1, Lcom/asus/reader/book/BookViewActivity;->LANG_ITEMS:[Lcom/google/api/translate/Language;

    aget-object v0, v1, v0

    .line 1945
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, v1}, Lcom/asus/reader/book/BookViewActivity;->getLanguageByLocale(Ljava/util/Locale;)Lcom/google/api/translate/Language;

    move-result-object v0

    goto :goto_0
.end method

.method private getLanguageByLocale(Ljava/util/Locale;)Lcom/google/api/translate/Language;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1954
    if-eqz p1, :cond_4

    .line 1955
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1956
    sget-object v0, Lcom/google/api/translate/Language;->CHINESE_TRADITIONAL:Lcom/google/api/translate/Language;

    .line 1968
    :goto_0
    return-object v0

    .line 1957
    :cond_0
    sget-object v0, Ljava/util/Locale;->PRC:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1958
    sget-object v0, Lcom/google/api/translate/Language;->CHINESE_SIMPLIFIED:Lcom/google/api/translate/Language;

    goto :goto_0

    .line 1959
    :cond_1
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1960
    sget-object v0, Lcom/google/api/translate/Language;->ENGLISH:Lcom/google/api/translate/Language;

    goto :goto_0

    .line 1961
    :cond_2
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1962
    sget-object v0, Lcom/google/api/translate/Language;->GERMAN:Lcom/google/api/translate/Language;

    goto :goto_0

    .line 1964
    :cond_3
    const-string v0, "BookViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown Locale:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 1965
    goto :goto_0

    :cond_4
    move-object v0, v3

    .line 1968
    goto :goto_0
.end method

.method private getTranslationIndex()I
    .locals 3

    .prologue
    .line 1949
    const-string v0, "bookview_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/book/BookViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1950
    const-string v1, "be_translated"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private declared-synchronized getUpdateState()Lcom/asus/reader/book/BookViewActivity$UpdateState;
    .locals 1

    .prologue
    .line 2461
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mUpdateState:Lcom/asus/reader/book/BookViewActivity$UpdateState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleHighlightTouchEvent2(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 1145
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 1151
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    sget-object v2, Lcom/asus/reader/book/BookViewActivity$SelectionState;->LONGPRESS_SELECTED:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    sget-object v2, Lcom/asus/reader/book/BookViewActivity$SelectionState;->DRAG_SELECTING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    sget-object v2, Lcom/asus/reader/book/BookViewActivity$SelectionState;->AFTER_DRAGGING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    if-ne v1, v2, :cond_2

    .line 1157
    :cond_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    move v0, v10

    .line 1250
    :goto_1
    return v0

    :cond_2
    move v0, v10

    .line 1155
    goto :goto_1

    .line 1159
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1161
    invoke-direct {p0, v1, v2, v0}, Lcom/asus/reader/book/BookViewActivity;->isPressOnTheCursor(FFI)I

    move-result v7

    .line 1162
    if-le v7, v11, :cond_1

    .line 1163
    sget-object v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;->DRAG_SELECTING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 1164
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mDistance2Cursor_X:[F

    aget v0, v0, v7

    add-float/2addr v0, v1

    .line 1165
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mDistance2Cursor_Y:[F

    aget v1, v1, v7

    add-float/2addr v2, v1

    .line 1166
    float-to-double v0, v0

    float-to-double v2, v2

    if-nez v7, :cond_3

    move v4, v10

    :goto_2
    iget-boolean v5, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v6, v6, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/BookmarkUtility;->handleSelectionEvent(DDIZI)I

    move-result v0

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->mNextUpdatePage:I

    .line 1169
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1170
    const-string v1, "BookViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------- First pointer ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionCursor:[Lcom/asus/reader/book/BookViewActivity$SelectionCursor;

    aget-object v1, v1, v7

    iput v0, v1, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;->point_id:I

    .line 1172
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionCursor:[Lcom/asus/reader/book/BookViewActivity$SelectionCursor;

    aget-object v0, v0, v7

    iput v7, v0, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;->bound_index:I

    .line 1173
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v0, v0, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-direct {p0, v0, v12, v12}, Lcom/asus/reader/book/BookViewActivity;->refreshBoundingArea(ILjava/lang/String;Ljava/lang/String;)I

    .line 1174
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->updateSelectionBarStatus()V

    goto :goto_0

    :cond_3
    move v4, v13

    .line 1166
    goto :goto_2

    .line 1178
    :pswitch_2
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->DRAG_SELECTING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    if-ne v0, v1, :cond_1

    .line 1180
    iget-object v7, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionCursor:[Lcom/asus/reader/book/BookViewActivity$SelectionCursor;

    array-length v8, v7

    move v9, v10

    :goto_3
    if-ge v9, v8, :cond_6

    aget-object v4, v7, v9

    .line 1181
    iget v0, v4, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;->bound_index:I

    if-le v0, v11, :cond_4

    .line 1182
    iget v0, v4, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;->point_id:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1183
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mDistance2Cursor_X:[F

    iget v3, v4, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;->bound_index:I

    aget v2, v2, v3

    add-float/2addr v1, v2

    .line 1184
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mDistance2Cursor_Y:[F

    iget v3, v4, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;->bound_index:I

    aget v2, v2, v3

    add-float/2addr v2, v0

    .line 1185
    float-to-double v0, v1

    float-to-double v2, v2

    iget v4, v4, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;->bound_index:I

    if-nez v4, :cond_5

    move v4, v10

    :goto_4
    iget-boolean v5, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v6, v6, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/BookmarkUtility;->handleSelectionEvent(DDIZI)I

    move-result v0

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->mNextUpdatePage:I

    .line 1180
    :cond_4
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_3

    :cond_5
    move v4, v13

    .line 1185
    goto :goto_4

    .line 1190
    :cond_6
    sget-object v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;->DRAG_SELECTING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 1191
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v0, v0, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-direct {p0, v0, v12, v12}, Lcom/asus/reader/book/BookViewActivity;->refreshBoundingArea(ILjava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1195
    :pswitch_3
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    sget-object v2, Lcom/asus/reader/book/BookViewActivity$SelectionState;->DRAG_SELECTING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    sget-object v2, Lcom/asus/reader/book/BookViewActivity$SelectionState;->AFTER_DRAGGING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    if-ne v1, v2, :cond_1

    .line 1196
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    .line 1197
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 1198
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1199
    invoke-direct {p0, v1, v2, v0}, Lcom/asus/reader/book/BookViewActivity;->isPressOnTheCursor(FFI)I

    move-result v8

    .line 1200
    if-le v8, v11, :cond_1

    .line 1201
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mDistance2Cursor_X:[F

    aget v0, v0, v8

    add-float/2addr v0, v1

    .line 1202
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mDistance2Cursor_Y:[F

    aget v1, v1, v8

    add-float/2addr v2, v1

    .line 1203
    float-to-double v0, v0

    float-to-double v2, v2

    if-nez v8, :cond_8

    move v4, v10

    :goto_5
    iget-boolean v5, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v6, v6, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/BookmarkUtility;->handleSelectionEvent(DDIZI)I

    move-result v0

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->mNextUpdatePage:I

    .line 1206
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1207
    const-string v1, "BookViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------- First pointer ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionCursor:[Lcom/asus/reader/book/BookViewActivity$SelectionCursor;

    aget-object v1, v1, v8

    iput v0, v1, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;->point_id:I

    .line 1209
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionCursor:[Lcom/asus/reader/book/BookViewActivity$SelectionCursor;

    aget-object v0, v0, v8

    iput v8, v0, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;->bound_index:I

    .line 1210
    sget-object v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;->DRAG_SELECTING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 1211
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->updateSelectionBarStatus()V

    goto/16 :goto_0

    :cond_8
    move v4, v13

    .line 1203
    goto :goto_5

    .line 1216
    :pswitch_4
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->DRAG_SELECTING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    if-ne v0, v1, :cond_1

    .line 1217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1218
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1220
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionCursor:[Lcom/asus/reader/book/BookViewActivity$SelectionCursor;

    array-length v2, v1

    move v3, v10

    move v4, v10

    :goto_6
    if-ge v3, v2, :cond_b

    aget-object v5, v1, v3

    .line 1221
    iget v6, v5, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;->point_id:I

    if-ne v6, v0, :cond_9

    .line 1222
    iput v11, v5, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;->point_id:I

    .line 1223
    iput v11, v5, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;->bound_index:I

    .line 1226
    :cond_9
    iget v5, v5, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;->bound_index:I

    if-le v5, v11, :cond_a

    .line 1227
    add-int/lit8 v4, v4, 0x1

    .line 1220
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1230
    :cond_b
    if-nez v4, :cond_1

    .line 1231
    sget-object v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;->AFTER_DRAGGING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 1232
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v0, v0, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-direct {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->updateShowingPage(I)V

    .line 1233
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->updateSelectionBarStatus()V

    goto/16 :goto_0

    .line 1238
    :pswitch_5
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->DRAG_SELECTING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    if-ne v0, v1, :cond_1

    .line 1239
    sget-object v0, Lcom/asus/reader/book/BookViewActivity$SelectionState;->AFTER_DRAGGING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    .line 1240
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionCursor:[Lcom/asus/reader/book/BookViewActivity$SelectionCursor;

    array-length v1, v0

    move v2, v10

    :goto_7
    if-ge v2, v1, :cond_c

    aget-object v3, v0, v2

    .line 1241
    iput v11, v3, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;->point_id:I

    .line 1242
    iput v11, v3, Lcom/asus/reader/book/BookViewActivity$SelectionCursor;->bound_index:I

    .line 1240
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1244
    :cond_c
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v0, v0, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-direct {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->updateShowingPage(I)V

    .line 1245
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->updateSelectionBarStatus()V

    goto/16 :goto_0

    .line 1157
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private inserAnnotationButton(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v7, 0x4dd

    const/16 v6, 0x2fd

    const/16 v5, 0xb

    const/16 v4, 0x9

    const/4 v3, -0x2

    .line 622
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 623
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 624
    iget v2, v0, Landroid/graphics/RectF;->right:F

    .line 625
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 626
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 627
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 628
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 629
    iget-boolean v3, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    if-eqz v3, :cond_1

    .line 630
    const/high16 v3, 0x4420

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    .line 631
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 632
    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 633
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 650
    :goto_0
    new-instance v1, Lcom/asus/reader/ui/AnnotationButton;

    invoke-direct {v1, p0, p1, p2}, Lcom/asus/reader/ui/AnnotationButton;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    const v2, 0x7f020145

    invoke-virtual {v1, v2}, Lcom/asus/reader/ui/AnnotationButton;->setBackgroundResource(I)V

    .line 652
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mNoteButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/asus/reader/ui/AnnotationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mPageNoPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 654
    return-void

    .line 635
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 636
    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 637
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 640
    :cond_1
    const/high16 v3, 0x43c8

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    .line 641
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 642
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 643
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 645
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 646
    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 647
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private insertBookmark()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2933
    const-string v0, "BookViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert bookmark on this page"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v2, v2, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 2937
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v0, v0, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v0, v0, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    :goto_0
    invoke-static {v0}, Lcom/asus/reader/book/BookmarkUtility;->getPageLocation(I)Ljava/lang/String;

    move-result-object v0

    .line 2941
    :goto_1
    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->mCurrentBookId:I

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v2, v2, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity;->mBookInfo:Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;

    invoke-static {v1, v2, v3}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;->createPageInfo(IILcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;)Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;

    move-result-object v1

    .line 2942
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-static {v0}, Lcom/asus/reader/book/BookSurfaceView;->bookmarkToPosDoubletNative(Ljava/lang/String;)D

    move-result-wide v2

    .line 2943
    invoke-static {p0, v1, v0, v2, v3}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;->insertBookmark(Landroid/content/Context;Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$PageInfo;Ljava/lang/String;D)V

    .line 2944
    const-string v0, "BookViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insert bookmark on position:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    iput-boolean v5, p0, Lcom/asus/reader/book/BookViewActivity;->mContainBookmark:Z

    .line 2946
    return-void

    .line 2937
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v0, v0, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    sub-int/2addr v0, v5

    goto :goto_0

    .line 2940
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v0, v0, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v0}, Lcom/asus/reader/book/BookmarkUtility;->getPageLocation(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private isInTheLastPage()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2685
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v0, v0, Lcom/asus/reader/book/BookSurfaceView;->mPageCount:I

    .line 2686
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    .line 2687
    const-string v2, "BookViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pageCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    iget-boolean v2, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    if-eqz v2, :cond_4

    .line 2689
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_2

    sub-int v2, v0, v5

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v5

    if-ne v1, v0, :cond_1

    :cond_0
    move v0, v5

    .line 2692
    :goto_0
    return v0

    :cond_1
    move v0, v6

    .line 2689
    goto :goto_0

    :cond_2
    sub-int/2addr v0, v5

    if-ne v1, v0, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_0

    .line 2692
    :cond_4
    sub-int/2addr v0, v5

    if-ne v1, v0, :cond_5

    move v0, v5

    goto :goto_0

    :cond_5
    move v0, v6

    goto :goto_0
.end method

.method private isNetworkConnected()Z
    .locals 1

    .prologue
    .line 2697
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 2698
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2699
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method private isPressOnTheCursor(FFI)I
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1888
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHighlightCursor:[Landroid/graphics/RectF;

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHighlightCursor:[Landroid/graphics/RectF;

    aget-object v0, v0, v4

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 1923
    :goto_0
    return v0

    .line 1901
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHighlightCursor:[Landroid/graphics/RectF;

    aget-object v0, v0, v3

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 1902
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHighlightCursor:[Landroid/graphics/RectF;

    aget-object v0, v0, v3

    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 1903
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHighlightCursor:[Landroid/graphics/RectF;

    aget-object v0, v0, v3

    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 1904
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHighlightCursor:[Landroid/graphics/RectF;

    aget-object v0, v0, v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 1905
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHighlightCursor:[Landroid/graphics/RectF;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1906
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mDistance2Cursor_X:[F

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mHighlightCursor:[Landroid/graphics/RectF;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, p1

    aput v1, v0, v3

    .line 1907
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mDistance2Cursor_Y:[F

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mHighlightCursor:[Landroid/graphics/RectF;

    aget-object v1, v1, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, p2

    aput v1, v0, v3

    .line 1908
    const-string v0, "BookViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "press on the top cursor on point x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1909
    goto :goto_0

    .line 1912
    :cond_2
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHighlightCursor:[Landroid/graphics/RectF;

    aget-object v0, v0, v4

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 1913
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHighlightCursor:[Landroid/graphics/RectF;

    aget-object v0, v0, v4

    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 1914
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHighlightCursor:[Landroid/graphics/RectF;

    aget-object v0, v0, v4

    iget v0, v0, Landroid/graphics/RectF;->right:F

    .line 1915
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHighlightCursor:[Landroid/graphics/RectF;

    aget-object v0, v0, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 1916
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHighlightCursor:[Landroid/graphics/RectF;

    aget-object v0, v0, v4

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1917
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mDistance2Cursor_X:[F

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mHighlightCursor:[Landroid/graphics/RectF;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, p1

    aput v1, v0, v4

    .line 1918
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mDistance2Cursor_Y:[F

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mHighlightCursor:[Landroid/graphics/RectF;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p2

    aput v1, v0, v4

    .line 1919
    const-string v0, "BookViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "press on the bottom cursor on point x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 1920
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 1923
    goto/16 :goto_0
.end method

.method private declared-synchronized reacquireWakeLock()V
    .locals 4

    .prologue
    .line 1333
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 1334
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/BookViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1335
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0xa

    const-string v2, "BookViewActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1336
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1338
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    monitor-exit p0

    return-void

    .line 1333
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private refreshAnnotationInPage(I)V
    .locals 11
    .parameter

    .prologue
    const v4, 0xffff00

    const/4 v3, 0x1

    .line 573
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BookViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resfresh mAnnotationLocs in page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    .line 577
    add-int/lit8 v0, p1, 0x1

    move v1, p1

    .line 584
    :goto_0
    iget-boolean v2, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    if-eqz v2, :cond_3

    .line 585
    invoke-static {v1, v0, v3, v4}, Lcom/asus/reader/book/BookmarkUtility;->getHighlightInPage(IIII)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mAnnotationLocs:Ljava/util/ArrayList;

    .line 591
    :goto_1
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mAnnotationRects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 592
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->clearAllAnnoteButtons()V

    .line 593
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mAnnotationLocs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 594
    const-string v1, "index"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 595
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 596
    const-string v2, "end"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 597
    iget-boolean v2, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v3, v3, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v2, v3, v1, v0}, Lcom/asus/reader/book/BookmarkUtility;->getBoundingBox(ZILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 600
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 601
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 602
    const-string v3, "x1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 603
    const-string v3, "x2"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 604
    const-string v3, "y1"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 605
    const-string v10, "y2"

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 606
    new-instance v10, Landroid/graphics/RectF;

    int-to-float v8, v8

    int-to-float v3, v3

    int-to-float v9, v9

    int-to-float v2, v2

    invoke-direct {v10, v8, v3, v9, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 580
    :cond_2
    sub-int v0, p1, v3

    move v1, v0

    move v0, p1

    .line 581
    goto/16 :goto_0

    .line 587
    :cond_3
    invoke-static {p1, p1, v3, v4}, Lcom/asus/reader/book/BookmarkUtility;->getHighlightInPage(IIII)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mAnnotationLocs:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 608
    :cond_4
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mAnnotationRects:Ljava/util/HashMap;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 610
    invoke-direct {p0, v1, v0, v6}, Lcom/asus/reader/book/BookViewActivity;->inserAnnotationButton(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_2

    .line 612
    :cond_5
    return-void
.end method

.method private refreshBookmarkInPage()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 672
    .line 674
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookInfo:Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;

    invoke-static {p0, v0}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;->getBookmarkList(Landroid/content/Context;Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 675
    if-eqz v0, :cond_7

    .line 676
    array-length v1, v0

    move v2, v8

    move v3, v8

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 677
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-static {v3}, Lcom/asus/reader/book/BookSurfaceView;->bookmarkToPosDoubletNative(Ljava/lang/String;)D

    move-result-wide v4

    .line 678
    iget-object v6, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-virtual {v6, v4, v5}, Lcom/asus/reader/book/BookSurfaceView;->findPageNoByPositionNative(D)I

    move-result v4

    .line 679
    const-string v5, "BookViewActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scan the page in number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with postion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v3, v3, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    if-eq v4, v3, :cond_1

    iget-boolean v3, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v3, v3, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v3, v3, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    add-int/lit8 v3, v3, 0x1

    if-eq v4, v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v3, v3, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v9, :cond_3

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v3, v3, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    sub-int/2addr v3, v9

    if-ne v4, v3, :cond_3

    :cond_1
    move v3, v9

    .line 684
    :goto_1
    if-eqz v3, :cond_4

    move v0, v3

    .line 688
    :goto_2
    iput-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mContainBookmark:Z

    .line 689
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mContrlPanelHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    :goto_3
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 690
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "BookViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish Resfresh Bookmark red ribbon in page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v2, v2, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_2
    return-void

    :cond_3
    move v3, v8

    .line 680
    goto :goto_1

    .line 676
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 689
    :cond_5
    const/4 v0, 0x3

    goto :goto_3

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    move v0, v8

    goto :goto_2
.end method

.method private refreshBoundingArea(ILjava/lang/String;Ljava/lang/String;)I
    .locals 18
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity;->mSelectionArea:Ljava/util/ArrayList;

    move-object v4, v0

    if-nez v4, :cond_0

    .line 2597
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/book/BookViewActivity;->mSelectionArea:Ljava/util/ArrayList;

    .line 2599
    :cond_0
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 2600
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    move v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v0, v4

    move/from16 v1, p1

    move-object v2, v5

    move-object v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/asus/reader/book/BookmarkUtility;->getBoundingBox(ZILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v4, p1

    .line 2605
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity;->mSelectionArea:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2606
    const/4 v5, 0x2

    const/4 v6, 0x2

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    .line 2607
    const/4 v5, 0x0

    .line 2608
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    .line 2609
    const-string v7, "x1"

    move-object/from16 v0, p2

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 2610
    const-string v8, "x2"

    move-object/from16 v0, p2

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 2611
    const-string v9, "y1"

    move-object/from16 v0, p2

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 2612
    const-string v10, "y2"

    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 2613
    if-nez v5, :cond_3

    .line 2614
    const/4 v11, 0x0

    aget-object v11, p1, v11

    const/4 v12, 0x0

    aput v7, v11, v12

    .line 2615
    const/4 v11, 0x0

    aget-object v11, p1, v11

    const/4 v12, 0x1

    aput v9, v11, v12

    .line 2616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity;->mHighlightCursor:[Landroid/graphics/RectF;

    move-object v11, v0

    const/4 v12, 0x0

    new-instance v13, Landroid/graphics/RectF;

    const/4 v14, 0x7

    sub-int v14, v7, v14

    int-to-float v14, v14

    const/4 v15, 0x7

    sub-int v15, v9, v15

    int-to-float v15, v15

    add-int/lit8 v16, v7, 0x7

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-int/lit8 v17, v9, 0x7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v13 .. v17}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v13, v11, v12

    .line 2625
    :cond_1
    :goto_2
    new-instance v11, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v12, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v12}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v11, v12}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 2626
    invoke-virtual {v11, v7, v9, v8, v10}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 2627
    invoke-virtual {v11}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    const v8, -0xffff01

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 2628
    invoke-virtual {v11}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    const/16 v8, 0x32

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity;->mSelectionArea:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2638
    add-int/lit8 v5, v5, 0x1

    .line 2639
    goto/16 :goto_1

    .line 2602
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    move v4, v0

    move v0, v4

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/asus/reader/book/BookmarkUtility;->getBoundingBox(ZILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    move-object/from16 v4, p1

    goto/16 :goto_0

    .line 2618
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ne v5, v11, :cond_1

    .line 2619
    const/4 v11, 0x1

    aget-object v11, p1, v11

    const/4 v12, 0x0

    aput v8, v11, v12

    .line 2620
    const/4 v11, 0x1

    aget-object v11, p1, v11

    const/4 v12, 0x1

    aput v10, v11, v12

    .line 2621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity;->mHighlightCursor:[Landroid/graphics/RectF;

    move-object v11, v0

    const/4 v12, 0x1

    new-instance v13, Landroid/graphics/RectF;

    const/4 v14, 0x7

    sub-int v14, v8, v14

    int-to-float v14, v14

    const/4 v15, 0x7

    sub-int v15, v10, v15

    int-to-float v15, v15

    add-int/lit8 v16, v8, 0x7

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-int/lit8 v17, v10, 0x7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v13 .. v17}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v13, v11, v12

    goto :goto_2

    .line 2640
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity;->mCustomDrawableView:Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;->invalidate()V

    .line 2651
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    return v4
.end method

.method private refreshHighlightInPage(I)V
    .locals 9
    .parameter

    .prologue
    const v4, 0xff00

    const/4 v3, 0x1

    .line 527
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BookViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resfresh mHighlightLocd in page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1

    .line 531
    add-int/lit8 v0, p1, 0x1

    move v1, p1

    .line 538
    :goto_0
    iget-boolean v2, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    if-eqz v2, :cond_2

    .line 539
    invoke-static {v1, v0, v3, v4}, Lcom/asus/reader/book/BookmarkUtility;->getHighlightInPage(IIII)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHightlightLocs:Ljava/util/ArrayList;

    .line 545
    :goto_1
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHightlightRects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 546
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHightlightLocs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 547
    const-string v1, "index"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 548
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 549
    const-string v4, "end"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 550
    iget-boolean v4, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-static {v4, v5, v1, v0}, Lcom/asus/reader/book/BookmarkUtility;->getBoundingBox(ZILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 553
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 554
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 555
    const-string v1, "x1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 556
    const-string v1, "x2"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 557
    const-string v1, "y1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 558
    const-string v8, "y2"

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 559
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v6, v6

    int-to-float v1, v1

    int-to-float v7, v7

    int-to-float v0, v0

    invoke-direct {v8, v6, v1, v7, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 534
    :cond_1
    sub-int v0, p1, v3

    move v1, v0

    move v0, p1

    .line 535
    goto/16 :goto_0

    .line 541
    :cond_2
    invoke-static {p1, p1, v3, v4}, Lcom/asus/reader/book/BookmarkUtility;->getHighlightInPage(IIII)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHightlightLocs:Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 562
    :cond_3
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mHightlightRects:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 564
    :cond_4
    return-void
.end method

.method private refreshTheHighlight(Z)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 698
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookInfo:Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;

    invoke-static {p0, v0}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;->getHighlightList(Landroid/content/Context;Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 700
    if-eqz v0, :cond_2

    .line 701
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v8

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 704
    const/4 v3, 0x3

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 705
    if-eqz p1, :cond_0

    .line 706
    aget-object v2, v0, v8

    aget-object v4, v0, v9

    invoke-static {v2, v4}, Lcom/asus/reader/book/BookmarkUtility;->addHighlight(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 707
    packed-switch v3, :pswitch_data_0

    .line 717
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    aget-object v3, v0, v8

    invoke-static {v3}, Lcom/asus/reader/book/BookSurfaceView;->bookmarkToPosDoubletNative(Ljava/lang/String;)D

    move-result-wide v3

    .line 718
    iget-object v5, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-virtual {v5, v3, v4}, Lcom/asus/reader/book/BookSurfaceView;->findPageNoByPositionNative(D)I

    move-result v5

    .line 720
    new-instance v6, Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v7, "Add hightlight index:"

    :goto_2
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 722
    const-string v7, ", start:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    aget-object v7, v0, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    const-string v7, ", end:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    aget-object v0, v0, v9

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    const-string v0, ", position:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 728
    const-string v0, ", in page:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 730
    const-string v0, "BookViewActivity"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 733
    goto :goto_0

    .line 709
    :pswitch_0
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    const v3, 0xff00

    invoke-static {v2, v3}, Lcom/asus/reader/book/BookSurfaceView;->setHighlightColorNative(II)V

    goto :goto_1

    .line 712
    :pswitch_1
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    const v3, 0xffff00

    invoke-static {v2, v3}, Lcom/asus/reader/book/BookSurfaceView;->setHighlightColorNative(II)V

    goto :goto_1

    .line 720
    :cond_1
    const-string v7, "Update highlight index:"

    goto :goto_2

    .line 735
    :cond_2
    return-void

    .line 707
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setFontSize(ID)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 940
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/PageSeekBar2;->setVisibility(I)V

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageScanListener:Lcom/asus/reader/book/BookViewActivity$PageScanListener;

    invoke-interface {v0}, Lcom/asus/reader/book/BookViewActivity$PageScanListener;->onScanStart()V

    .line 943
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    if-eqz v0, :cond_4

    const-string v0, "Landscape/"

    .line 944
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.asus.reader/cache/bookid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/asus/reader/book/BookViewActivity;->mCurrentBookId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 946
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 947
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 948
    const/4 v0, 0x0

    :cond_1
    move-object v5, v0

    .line 952
    :goto_1
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "BookViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetFontSize filename = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_2
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    int-to-double v1, p1

    move-wide v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/asus/reader/book/BookSurfaceView;->setFontSizeNative(DDLjava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v0, v0, Lcom/asus/reader/book/BookSurfaceView;->mPageCount:I

    sput v0, Lcom/asus/reader/book/PageRenderer;->PAGECOUNT:I

    .line 955
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    if-eqz v0, :cond_3

    .line 956
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageCount:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/PageSeekBar2;->setMax(I)V

    .line 957
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/PageSeekBar2;->setKeyProgressIncrement(I)V

    .line 958
    const-string v0, "BookViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeyProgressIncrement():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    invoke-virtual {v2}, Lcom/asus/reader/ui/PageSeekBar2;->getKeyProgressIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v0, v0, Lcom/asus/reader/book/BookSurfaceView;->mCurrentScanPos:I

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mScanCount:I

    if-lt v0, v1, :cond_3

    .line 961
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/PageSeekBar2;->setProgress(I)V

    .line 962
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/PageSeekBar2;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageScanListener:Lcom/asus/reader/book/BookViewActivity$PageScanListener;

    invoke-interface {v0}, Lcom/asus/reader/book/BookViewActivity$PageScanListener;->onScanFinish()V

    .line 967
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/asus/reader/book/BookViewActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/asus/reader/book/BookViewActivity$6;-><init>(Lcom/asus/reader/book/BookViewActivity;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 975
    return-void

    .line 943
    :cond_4
    const-string v0, "Portrait/"

    goto/16 :goto_0

    .line 949
    :catch_0
    move-exception v1

    .line 950
    const-string v1, "BookViewActivity"

    const-string v2, "cannot access the scanresult file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v0

    goto/16 :goto_1
.end method

.method private setPageNoViewForDayNightMode()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/high16 v1, -0x100

    .line 1323
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->isNightMode:Z

    if-eqz v0, :cond_1

    .line 1324
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getLeftPageNoView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1325
    :cond_0
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getRightPageNoView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1330
    :goto_0
    return-void

    .line 1327
    :cond_1
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getLeftPageNoView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1328
    :cond_2
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getRightPageNoView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setStyleCssForDayNightMode()V
    .locals 1

    .prologue
    .line 1316
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->isNightMode:Z

    if-eqz v0, :cond_0

    .line 1317
    invoke-static {}, Lcom/asus/reader/book/UserStyle;->changeToNightModeUserStyleCSS()V

    .line 1320
    :goto_0
    return-void

    .line 1319
    :cond_0
    invoke-static {}, Lcom/asus/reader/book/UserStyle;->changeToDayModeUserStyleCSS()V

    goto :goto_0
.end method

.method private setTouchParameter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 914
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-virtual {v0}, Lcom/asus/reader/book/BookSurfaceView;->getTop()I

    move-result v0

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->nTop:I

    .line 915
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-virtual {v0}, Lcom/asus/reader/book/BookSurfaceView;->getBottom()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    .line 916
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-virtual {v0}, Lcom/asus/reader/book/BookSurfaceView;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->nLeft:I

    .line 917
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-virtual {v0}, Lcom/asus/reader/book/BookSurfaceView;->getRight()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->nRight:I

    .line 920
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nRight:I

    const/16 v1, 0x3c

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->nRHold:I

    .line 922
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nRHold:I

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->nRMargin:I

    .line 924
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nLeft:I

    add-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->nLHold:I

    .line 926
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nLHold:I

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->nLMargin:I

    .line 927
    const/16 v0, 0x46

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->QuickFlipLength:I

    .line 928
    iput-boolean v2, p0, Lcom/asus/reader/book/BookViewActivity;->touchParameter:Z

    .line 929
    return-void
.end method

.method private setTranslationLang(I)V
    .locals 2
    .parameter

    .prologue
    .line 1930
    const-string v0, "bookview_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/book/BookViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1931
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1932
    const-string v1, "be_translated"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1933
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1934
    return-void
.end method

.method private setTtsState(I)V
    .locals 1
    .parameter

    .prologue
    .line 2907
    const v0, 0x7f0b0023

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageButton;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const v0, 0x7f020011

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2909
    return-void

    .line 2907
    :cond_0
    const v0, 0x7f020012

    goto :goto_0
.end method

.method private declared-synchronized setUpdateState(Lcom/asus/reader/book/BookViewActivity$UpdateState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 2457
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity;->mUpdateState:Lcom/asus/reader/book/BookViewActivity$UpdateState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2458
    monitor-exit p0

    return-void

    .line 2457
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startTextToSpeech()V
    .locals 4

    .prologue
    .line 2871
    const-string v0, "BookViewActivity"

    const-string v1, "startTextToSpeech()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2872
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mTextToSpeechAgent:Lcom/asus/reader/book/TextToSpeechAgent;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v2, v2, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    iget-boolean v3, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/reader/book/TextToSpeechAgent;->displaySetting(Lcom/asus/reader/book/BoundingBoxView;IZ)V

    .line 2874
    sget-object v0, Lcom/asus/reader/book/BookViewActivity$25;->$SwitchMap$com$asus$reader$book$BookViewActivity$SelectionState:[I

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-virtual {v1}, Lcom/asus/reader/book/BookViewActivity$SelectionState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2889
    :goto_0
    return-void

    .line 2876
    :pswitch_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mTextToSpeechAgent:Lcom/asus/reader/book/TextToSpeechAgent;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v2, v2, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    iget-boolean v3, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/reader/book/TextToSpeechAgent;->start(IIZ)V

    goto :goto_0

    .line 2881
    :pswitch_1
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mTextToSpeechAgent:Lcom/asus/reader/book/TextToSpeechAgent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/TextToSpeechAgent;->start(I)V

    goto :goto_0

    .line 2886
    :pswitch_2
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mTextToSpeechAgent:Lcom/asus/reader/book/TextToSpeechAgent;

    const/4 v1, 0x2

    iget v2, p0, Lcom/asus/reader/book/BookViewActivity;->mDeleteIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/asus/reader/book/TextToSpeechAgent;->start(II)V

    goto :goto_0

    .line 2874
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private startToSearch(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 897
    const-string v0, "BookViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to Search with word:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSearchEdit:Lcom/asus/reader/ui/SearchEditText;

    invoke-virtual {v0, p1}, Lcom/asus/reader/ui/SearchEditText;->search(Ljava/lang/String;)V

    .line 899
    return-void
.end method

.method private updateFontButtonStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 978
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v0, v0, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    const/16 v1, 0x24

    if-lt v0, v1, :cond_0

    .line 979
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mFontSizeUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 980
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mFontSizeDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 988
    :goto_0
    return-void

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v0, v0, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    const/16 v1, 0xc

    if-gt v0, v1, :cond_1

    .line 982
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mFontSizeUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 983
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mFontSizeDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 985
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mFontSizeUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 986
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mFontSizeDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateSearchListPosition(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x280

    .line 1607
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSearchEdit:Lcom/asus/reader/ui/SearchEditText;

    invoke-virtual {v0}, Lcom/asus/reader/ui/SearchEditText;->getPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v2

    .line 1608
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1609
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    invoke-static {v0, p1, p2, p3}, Lcom/asus/reader/book/BookmarkUtility;->getBoundingBox(ZILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1610
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 1611
    const-string v1, "x1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1612
    const-string v1, "x2"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 1613
    const-string v1, "y1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1614
    const-string v5, "y2"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 1615
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 1616
    if-ge v4, v6, :cond_0

    .line 1617
    sget-object v0, Lcom/asus/reader/book/BookViewActivity$ListPosition;->LAND_RIGHT:Lcom/asus/reader/book/BookViewActivity$ListPosition;

    iget v0, v0, Lcom/asus/reader/book/BookViewActivity$ListPosition;->x:I

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$ListPosition;->LAND_RIGHT:Lcom/asus/reader/book/BookViewActivity$ListPosition;

    iget v1, v1, Lcom/asus/reader/book/BookViewActivity$ListPosition;->y:I

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1619
    :cond_0
    sget-object v0, Lcom/asus/reader/book/BookViewActivity$ListPosition;->LAND_LEFT:Lcom/asus/reader/book/BookViewActivity$ListPosition;

    iget v0, v0, Lcom/asus/reader/book/BookViewActivity$ListPosition;->x:I

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$ListPosition;->LAND_LEFT:Lcom/asus/reader/book/BookViewActivity$ListPosition;

    iget v1, v1, Lcom/asus/reader/book/BookViewActivity$ListPosition;->y:I

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0

    .line 1621
    :cond_1
    if-ge v1, v6, :cond_2

    .line 1622
    sget-object v0, Lcom/asus/reader/book/BookViewActivity$ListPosition;->PORT_DOWN:Lcom/asus/reader/book/BookViewActivity$ListPosition;

    iget v0, v0, Lcom/asus/reader/book/BookViewActivity$ListPosition;->x:I

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$ListPosition;->PORT_DOWN:Lcom/asus/reader/book/BookViewActivity$ListPosition;

    iget v1, v1, Lcom/asus/reader/book/BookViewActivity$ListPosition;->y:I

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0

    .line 1624
    :cond_2
    sget-object v0, Lcom/asus/reader/book/BookViewActivity$ListPosition;->PORT_UP:Lcom/asus/reader/book/BookViewActivity$ListPosition;

    iget v0, v0, Lcom/asus/reader/book/BookViewActivity$ListPosition;->x:I

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$ListPosition;->PORT_UP:Lcom/asus/reader/book/BookViewActivity$ListPosition;

    iget v1, v1, Lcom/asus/reader/book/BookViewActivity$ListPosition;->y:I

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0

    .line 1628
    :cond_3
    return-void
.end method

.method private updateSelectionArea(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2568
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionArea:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2569
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 2570
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 2571
    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2572
    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 2573
    iget v5, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 2574
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 2575
    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 2576
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const v3, -0xffff01

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2577
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/16 v3, 0x32

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2578
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionArea:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2580
    :cond_0
    return-void
.end method

.method private updateSelectionBarStatus()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v8, 0x0

    .line 2515
    .line 2517
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-virtual {v0}, Lcom/asus/reader/book/BookSurfaceView;->getWidth()I

    move-result v1

    .line 2518
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-virtual {v0}, Lcom/asus/reader/book/BookSurfaceView;->getHeight()I

    .line 2519
    const-string v0, "BookViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSelectionBarStatus() State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    sget-object v2, Lcom/asus/reader/book/BookViewActivity$SelectionState;->LONGPRESS_SELECTED:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mDictionary:Lcom/asus/dictionary/Dictionary;

    invoke-virtual {v0}, Lcom/asus/dictionary/Dictionary;->cancelLookupAndInvisible()V

    .line 2522
    :cond_0
    sget-object v0, Lcom/asus/reader/book/BookViewActivity$25;->$SwitchMap$com$asus$reader$book$BookViewActivity$SelectionState:[I

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    invoke-virtual {v2}, Lcom/asus/reader/book/BookViewActivity$SelectionState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move v3, v4

    .line 2536
    :goto_0
    if-eq v3, v4, :cond_4

    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionArea:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 2537
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionArea:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 2538
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x0

    int-to-float v4, v2

    .line 2539
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    const/16 v2, 0x8c

    sub-int/2addr v0, v2

    int-to-float v0, v0

    .line 2542
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 2543
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 2544
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionMenu:Lcom/asus/reader/ui/SelectionMenuBarWindow;

    if-nez v0, :cond_1

    .line 2545
    const v0, 0x7f030032

    iget-object v7, p0, Lcom/asus/reader/book/BookViewActivity;->mOptionBarClickListener:Lcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;

    invoke-static {p0, v0, v7}, Lcom/asus/reader/ui/SelectionMenuBarWindow;->buildOptionMenu(Landroid/content/Context;ILcom/asus/reader/ui/SelectionOptionBar$OnOptionBarClickListener;)Lcom/asus/reader/ui/SelectionMenuBarWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionMenu:Lcom/asus/reader/ui/SelectionMenuBarWindow;

    .line 2547
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionMenu:Lcom/asus/reader/ui/SelectionMenuBarWindow;

    invoke-virtual {v0}, Lcom/asus/reader/ui/SelectionMenuBarWindow;->getWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v7, p0, Lcom/asus/reader/book/BookViewActivity;->mMyDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v7}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 2549
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionMenu:Lcom/asus/reader/ui/SelectionMenuBarWindow;

    invoke-virtual {v0, v3}, Lcom/asus/reader/ui/SelectionMenuBarWindow;->setButtonState(I)V

    .line 2550
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    if-eqz v0, :cond_5

    .line 2551
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionMenu:Lcom/asus/reader/ui/SelectionMenuBarWindow;

    invoke-virtual {v0}, Lcom/asus/reader/ui/SelectionMenuBarWindow;->getWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v0

    .line 2552
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    cmpg-float v3, v4, v3

    if-gez v3, :cond_5

    int-to-float v3, v0

    add-float/2addr v3, v4

    div-int/lit8 v4, v1, 0x2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 2553
    div-int/lit8 v1, v1, 0x2

    sub-int v0, v1, v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v1, v0

    .line 2556
    :goto_1
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionMenu:Lcom/asus/reader/ui/SelectionMenuBarWindow;

    invoke-virtual {v0}, Lcom/asus/reader/ui/SelectionMenuBarWindow;->getWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    .line 2557
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2558
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 2565
    :cond_2
    :goto_2
    return-void

    :pswitch_0
    move v3, v8

    .line 2525
    goto/16 :goto_0

    :pswitch_1
    move v3, v5

    .line 2528
    goto/16 :goto_0

    .line 2530
    :pswitch_2
    const/4 v0, 0x3

    move v3, v0

    .line 2531
    goto/16 :goto_0

    .line 2533
    :pswitch_3
    const/4 v0, 0x2

    move v3, v0

    goto/16 :goto_0

    .line 2560
    :cond_3
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-virtual {v0, v3, v8, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2

    .line 2562
    :cond_4
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionMenu:Lcom/asus/reader/ui/SelectionMenuBarWindow;

    if-eqz v0, :cond_2

    .line 2563
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionMenu:Lcom/asus/reader/ui/SelectionMenuBarWindow;

    invoke-virtual {v0}, Lcom/asus/reader/ui/SelectionMenuBarWindow;->getWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_2

    :cond_5
    move v1, v6

    goto :goto_1

    .line 2522
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private updateShowingPage(I)V
    .locals 5
    .parameter "pageNum"

    .prologue
    .line 1258
    invoke-static {}, Lcom/asus/reader/Cache;->getInstance()Lcom/asus/reader/Cache;

    move-result-object v0

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->mCurrentBookId:I

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v2, v2, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    iget-boolean v3, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/asus/reader/Cache;->ClearOneCache(IIIZ)V

    .line 1260
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 1261
    invoke-static {}, Lcom/asus/reader/Cache;->getInstance()Lcom/asus/reader/Cache;

    move-result-object v0

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->mCurrentBookId:I

    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_1

    add-int/lit8 v2, p1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v3, v3, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    iget-boolean v4, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/reader/Cache;->ClearOneCache(IIIZ)V

    .line 1264
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mRenderer:Lcom/asus/reader/book/PageRenderer;

    invoke-virtual {v0}, Lcom/asus/reader/book/PageRenderer;->invalidate()V

    .line 1265
    return-void

    .line 1261
    :cond_1
    const/4 v2, 0x1

    sub-int v2, p1, v2

    goto :goto_0
.end method


# virtual methods
.method public createIndexDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 842
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 843
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mItems:Ljava/util/List;

    invoke-static {v2}, Lcom/asus/reader/book/ReaderDatabase;->getBookTocItems(Ljava/util/List;)V

    .line 844
    new-instance v0, Lcom/asus/reader/ui/BookIndexAdapter;

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mItems:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/asus/reader/ui/BookIndexAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 845
    .local v0, adapter:Lcom/asus/reader/ui/BookIndexAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 847
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getBookName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 849
    const/4 v2, -0x1

    new-instance v3, Lcom/asus/reader/book/BookViewActivity$5;

    invoke-direct {v3, p0}, Lcom/asus/reader/book/BookViewActivity$5;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 858
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public finishReadBook()V
    .locals 2

    .prologue
    .line 3112
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/asus/reader/book/ReaderDatabase;->hostHasUsed:Z

    .line 3113
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->finish()V

    .line 3114
    return-void
.end method

.method public getLeftPageNoView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mLeftPageNoView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPageSeekBar()Lcom/asus/reader/ui/PageSeekBar2;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    return-object v0
.end method

.method public getPrefValue(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1309
    const-string v0, "Preference"

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/book/BookViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1310
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1311
    sget-boolean v1, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "BookViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrefValue name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    :cond_0
    return v0
.end method

.method public getRightPageNoView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mRightPageNoView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1974
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1977
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 862
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->reacquireWakeLock()V

    .line 863
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mLibraryButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    .line 864
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->createIndexDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 866
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mFontSizeUpButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    .line 867
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mKeyHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mChangingFontSize:Z

    if-nez v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mKeyHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 870
    :cond_2
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mFontSizeDownButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_3

    .line 871
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mKeyHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mChangingFontSize:Z

    if-nez v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mKeyHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 874
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b002a

    if-ne v0, v1, :cond_4

    .line 875
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSearchEdit:Lcom/asus/reader/ui/SearchEditText;

    invoke-virtual {v0}, Lcom/asus/reader/ui/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 876
    invoke-direct {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->startToSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 877
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0023

    if-ne v0, v1, :cond_6

    .line 878
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mTextToSpeechAgent:Lcom/asus/reader/book/TextToSpeechAgent;

    invoke-virtual {v0}, Lcom/asus/reader/book/TextToSpeechAgent;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 879
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->startTextToSpeech()V

    goto :goto_0

    .line 881
    :cond_5
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->stopTextToSpeech()V

    goto :goto_0

    .line 882
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0024

    if-ne v0, v1, :cond_9

    .line 883
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mContainBookmark:Z

    if-nez v0, :cond_7

    .line 884
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->insertBookmark()V

    .line 885
    const v0, 0x7f070078

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 890
    :goto_1
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mContrlPanelHandler:Landroid/os/Handler;

    iget-boolean v1, p0, Lcom/asus/reader/book/BookViewActivity;->mContainBookmark:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 887
    :cond_7
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->deleteBookmark()V

    .line 888
    const v0, 0x7f070079

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_8
    move v1, v2

    .line 890
    goto :goto_2

    .line 891
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0025

    if-ne v0, v1, :cond_0

    .line 892
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->showDialog(I)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 280
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 282
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 283
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 284
    iget v0, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    .line 287
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 288
    instance-of v1, v0, Lcom/asus/reader/book/BookViewActivity$NonConfigurationInstanceState;

    if-eqz v1, :cond_0

    .line 289
    check-cast v0, Lcom/asus/reader/book/BookViewActivity$NonConfigurationInstanceState;

    .line 290
    iget-object v0, v0, Lcom/asus/reader/book/BookViewActivity$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 292
    :cond_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 293
    const/16 v1, 0xa

    const-string v2, "BookViewActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 294
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 295
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 297
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 299
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 303
    const-string v0, "ro.build.version.release"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 304
    const-wide v4, 0x4002666666666666L

    cmpg-double v4, v0, v4

    if-gez v4, :cond_6

    .line 305
    const/16 v0, 0x1e

    move v4, v0

    .line 311
    :goto_1
    invoke-static {}, Lcom/asus/reader/Cache;->getInstance()Lcom/asus/reader/Cache;

    move-result-object v0

    iget-boolean v1, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    invoke-virtual {v0, v4, v3, v2, v1}, Lcom/asus/reader/Cache;->updateScreenHeightAndWidth(IIIZ)V

    .line 313
    new-instance v0, Lcom/asus/reader/book/BookSurfaceView;

    invoke-direct {v0, p0}, Lcom/asus/reader/book/BookSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    .line 314
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookFilePath:Ljava/lang/String;

    .line 315
    const-string v0, "isNightMode"

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->getPrefValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/asus/reader/book/BookViewActivity;->isNightMode:Z

    .line 316
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    iput-boolean v8, v0, Lcom/asus/reader/book/ReaderDatabase;->hostHasUsed:Z

    .line 317
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->setStyleCssForDayNightMode()V

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookFilePath:Ljava/lang/String;

    sub-int/2addr v3, v4

    sget-boolean v4, Lcom/asus/reader/book/BookViewActivity;->isNightMode:Z

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/asus/reader/book/BookSurfaceView;->loadDocumentNative(Ljava/lang/String;IIZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_2
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bookid"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->mCurrentBookId:I

    .line 327
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->setContentView(I)V

    .line 328
    if-eqz p1, :cond_8

    .line 329
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    const-string v1, "page_no"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    .line 330
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    const-string v1, "page_count"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/asus/reader/book/BookSurfaceView;->mPageCount:I

    .line 331
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    const-string v1, "font_size"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    .line 334
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v0, v0, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    invoke-direct {p0, v0, v11, v12}, Lcom/asus/reader/book/BookViewActivity;->setFontSize(ID)V

    .line 335
    const-string v0, "isLandscape"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPreIsLandscape:Z

    .line 336
    const-string v0, "search_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSearchText:Ljava/lang/String;

    .line 337
    const-string v0, "selection_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionText:Ljava/lang/String;

    .line 338
    const-string v0, "translation_lang"

    invoke-virtual {p1, v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->mTranslationLang:I

    .line 347
    :goto_3
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/BookSurfaceView;->navigateToPageNative(I)V

    .line 348
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/ui/SearchEditText;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSearchEdit:Lcom/asus/reader/ui/SearchEditText;

    .line 349
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSearchProgress:Landroid/widget/ProgressBar;

    .line 350
    new-instance v0, Lcom/asus/reader/book/BookViewActivity$SearchListener;

    invoke-direct {v0, p0, v10}, Lcom/asus/reader/book/BookViewActivity$SearchListener;-><init>(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$1;)V

    .line 351
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mSearchEdit:Lcom/asus/reader/ui/SearchEditText;

    invoke-virtual {v1, v0}, Lcom/asus/reader/ui/SearchEditText;->setNavigateCallback(Lcom/asus/reader/ui/SearchEditText$NavigatePageCallback;)V

    .line 352
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mSearchEdit:Lcom/asus/reader/ui/SearchEditText;

    invoke-virtual {v1, v0}, Lcom/asus/reader/ui/SearchEditText;->setSearchStatusListener(Lcom/asus/reader/ui/SearchEditText$SearchStatusListener;)V

    .line 353
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSearchButton:Landroid/widget/ImageButton;

    .line 354
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSearchButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mScanProgress:Landroid/widget/ProgressBar;

    .line 356
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageScanListener:Lcom/asus/reader/book/BookViewActivity$PageScanListener;

    invoke-interface {v0}, Lcom/asus/reader/book/BookViewActivity$PageScanListener;->onScanStart()V

    .line 357
    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageNoPanel:Landroid/widget/RelativeLayout;

    .line 358
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 359
    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mLeftPageNoView:Landroid/widget/TextView;

    .line 360
    :cond_1
    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mRightPageNoView:Landroid/widget/TextView;

    .line 361
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->setPageNoViewForDayNightMode()V

    .line 363
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mDictionaryLayout:Landroid/widget/RelativeLayout;

    .line 364
    new-instance v0, Lcom/asus/dictionary/Dictionary;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mDictionaryLayout:Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1, v8}, Lcom/asus/dictionary/Dictionary;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;I)V

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mDictionary:Lcom/asus/dictionary/Dictionary;

    .line 365
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mDictionary:Lcom/asus/dictionary/Dictionary;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Lcom/asus/dictionary/Dictionary;->setBackground(I)V

    .line 366
    new-instance v0, Lcom/asus/reader/book/PageRenderer;

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v3, p0, Lcom/asus/reader/book/BookViewActivity;->mCurrentBookId:I

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v4, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    iget-boolean v5, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/asus/reader/book/PageRenderer;-><init>(Landroid/content/Context;Lcom/asus/reader/book/BookSurfaceView;IIZ)V

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mRenderer:Lcom/asus/reader/book/PageRenderer;

    .line 367
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->UseGLES20:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->detectOpenGLES20()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 368
    const-string v0, "BookViewActivity"

    const-string v1, "detect and use OpenGLES 2.0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/BookSurfaceView;->setEGLContextClientVersion(I)V

    .line 371
    :goto_4
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mRenderer:Lcom/asus/reader/book/PageRenderer;

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/BookSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 373
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mControlPanel:Landroid/widget/RelativeLayout;

    .line 374
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 375
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 377
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 380
    new-instance v1, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;

    invoke-direct {v1, p0, p0}, Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;-><init>(Lcom/asus/reader/book/BookViewActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mCustomDrawableView:Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;

    .line 381
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mCustomDrawableView:Lcom/asus/reader/book/BookViewActivity$CustomDrawableView;

    invoke-virtual {v0, v1, v9, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 383
    const v1, 0x7f0b0022

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mLibraryButton:Landroid/widget/ImageButton;

    .line 384
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mLibraryButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    const v1, 0x7f0b0028

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mFontSizeUpButton:Landroid/widget/ImageButton;

    .line 386
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mFontSizeUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    const v1, 0x7f0b0027

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mFontSizeDownButton:Landroid/widget/ImageButton;

    .line 388
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mFontSizeDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->updateFontButtonStatus()V

    .line 390
    const v1, 0x7f0b0031

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mNavigatingProgress:Landroid/widget/ProgressBar;

    .line 391
    new-instance v1, Lcom/asus/reader/ui/DropDownMenu2;

    const v2, 0x7f0b0026

    invoke-virtual {p0, v2}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0001

    invoke-direct {v1, p0, v2, v3, p0}, Lcom/asus/reader/ui/DropDownMenu2;-><init>(Landroid/content/Context;Landroid/view/View;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mMenuButton:Lcom/asus/reader/ui/DropDownMenu2;

    .line 394
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-virtual {v1, p0}, Lcom/asus/reader/book/BookSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 395
    new-instance v1, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;

    invoke-direct {v1, p0, v10}, Lcom/asus/reader/book/BookViewActivity$TouchGestureListener;-><init>(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$1;)V

    .line 396
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p0, v1, v10, v8}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 398
    new-instance v2, Lcom/asus/reader/ui/MultiTouchDetector;

    invoke-direct {v2, p0, v1}, Lcom/asus/reader/ui/MultiTouchDetector;-><init>(Landroid/content/Context;Lcom/asus/reader/ui/MultiTouchDetector$SimpleMultiTouchListener;)V

    iput-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mMultiTouchDetector:Lcom/asus/reader/ui/MultiTouchDetector;

    .line 399
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mControlPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 400
    const v1, 0x7f0b002d

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/asus/reader/ui/PageSeekBar2;

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    .line 401
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    if-eqz v1, :cond_2

    .line 406
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    new-instance v2, Lcom/asus/reader/book/BookViewActivity$1;

    invoke-direct {v2, p0}, Lcom/asus/reader/book/BookViewActivity$1;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    invoke-virtual {v1, v2}, Lcom/asus/reader/ui/PageSeekBar2;->setOnProgressChangedListener(Lcom/asus/reader/ui/PageSeekBar2$OnProgressChangeListener;)V

    .line 427
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    new-instance v2, Lcom/asus/reader/book/BookViewActivity$2;

    invoke-direct {v2, p0}, Lcom/asus/reader/book/BookViewActivity$2;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    invoke-virtual {v1, v2}, Lcom/asus/reader/ui/PageSeekBar2;->setOnKeyUpInterceptor(Lcom/asus/reader/ui/PageSeekBar2$OnKeyUpInterceptor;)V

    .line 453
    :cond_2
    const v1, 0x7f0b0025

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mRedRibbon:Landroid/widget/ImageButton;

    .line 454
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mRedRibbon:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->mCurrentBookId:I

    const-string v2, "No name"

    invoke-static {v1, v2, v8}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;->createBookInfo(ILjava/lang/String;I)Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookInfo:Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;

    .line 456
    invoke-direct {p0, v8}, Lcom/asus/reader/book/BookViewActivity;->refreshTheHighlight(Z)V

    .line 459
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookmarkUpdateThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_3

    .line 460
    const-string v1, "BookViewActivity"

    const-string v2, "Create BookmarkUpdate Handler Thread!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "BookmarkUpdate"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookmarkUpdateThread:Landroid/os/HandlerThread;

    .line 462
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookmarkUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 463
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookmarkUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 464
    new-instance v2, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;

    invoke-direct {v2, p0, v1}, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;-><init>(Lcom/asus/reader/book/BookViewActivity;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mBookmarkUpdateHandler:Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;

    .line 466
    :cond_3
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mRenderer:Lcom/asus/reader/book/PageRenderer;

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mOnRendererChangeListener:Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;

    invoke-virtual {v1, v2}, Lcom/asus/reader/book/PageRenderer;->registerListener(Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;)V

    .line 467
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-direct {p0, v1}, Lcom/asus/reader/book/BookViewActivity;->refreshHighlightInPage(I)V

    .line 468
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-direct {p0, v1}, Lcom/asus/reader/book/BookViewActivity;->refreshAnnotationInPage(I)V

    .line 469
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->refreshBookmarkInPage()V

    .line 470
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/BookViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 471
    invoke-static {}, Lcom/asus/reader/Cache;->getInstance()Lcom/asus/reader/Cache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/reader/Cache;->ClearAllCaches()V

    .line 472
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->getDefaultTranslationLang()Lcom/google/api/translate/Language;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBeTranslationLang:Lcom/google/api/translate/Language;

    .line 473
    const-string v1, "BookViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The locale code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const v1, 0x7f0b0023

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    const v1, 0x7f0b0024

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/BookViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mRedRibbon:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->getUpdateState()Lcom/asus/reader/book/BookViewActivity$UpdateState;

    move-result-object v1

    sget-object v2, Lcom/asus/reader/book/BookViewActivity$UpdateState;->NONE:Lcom/asus/reader/book/BookViewActivity$UpdateState;

    if-ne v1, v2, :cond_4

    .line 478
    sget-object v1, Lcom/asus/reader/book/BookViewActivity$UpdateState;->UPDATED:Lcom/asus/reader/book/BookViewActivity$UpdateState;

    invoke-direct {p0, v1}, Lcom/asus/reader/book/BookViewActivity;->setUpdateState(Lcom/asus/reader/book/BookViewActivity$UpdateState;)V

    .line 479
    :cond_4
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->Animation:Ljava/lang/Object;

    .line 480
    new-instance v1, Lcom/asus/reader/book/BookViewActivity$AnimationThread;

    invoke-direct {v1, p0}, Lcom/asus/reader/book/BookViewActivity$AnimationThread;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->animationThread:Ljava/lang/Thread;

    .line 481
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->animationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 483
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 486
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 487
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020155

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mCursorLeftBitmap:Landroid/graphics/Bitmap;

    .line 488
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020156

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mCursorRightBitmap:Landroid/graphics/Bitmap;

    .line 489
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 492
    new-instance v1, Lcom/asus/reader/book/BoundingBoxView;

    invoke-direct {v1, p0}, Lcom/asus/reader/book/BoundingBoxView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    .line 493
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mRenderer:Lcom/asus/reader/book/PageRenderer;

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v3, v3, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    iget-boolean v4, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/asus/reader/book/BoundingBoxView;->listenPageChange(Lcom/asus/reader/book/PageRenderer;IZ)V

    .line 494
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    invoke-virtual {v0, v1, v9, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 497
    new-instance v0, Lcom/asus/reader/book/BookViewActivity$TtsHelper;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mRenderer:Lcom/asus/reader/book/PageRenderer;

    invoke-direct {v0, p0, v1}, Lcom/asus/reader/book/BookViewActivity$TtsHelper;-><init>(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/PageRenderer;)V

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mTtsHelper:Lcom/asus/reader/book/BookViewActivity$TtsHelper;

    .line 498
    new-instance v0, Lcom/asus/reader/book/TextToSpeechAgent;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mTtsHelper:Lcom/asus/reader/book/BookViewActivity$TtsHelper;

    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->getBookLanguage()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/asus/reader/book/TextToSpeechAgent;-><init>(Landroid/content/Context;Lcom/asus/reader/book/TextToSpeechAgent$TtsHelper;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mTextToSpeechAgent:Lcom/asus/reader/book/TextToSpeechAgent;

    .line 499
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/asus/reader/book/ReaderDatabase;->setUnMountListener(Lcom/asus/reader/book/ReaderDatabase$unMountListener;)V

    .line 501
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->mCurrentBookId:I

    invoke-static {p0, v0}, Lcom/asus/reader/book/BookmarkUtility;->getBookLang(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookLang:Ljava/lang/String;

    .line 502
    return-void

    :cond_5
    move v0, v7

    .line 284
    goto/16 :goto_0

    .line 306
    :cond_6
    const-wide/high16 v4, 0x4008

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_7

    const-wide v4, 0x4008cccccccccccdL

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_7

    .line 307
    const/16 v0, 0x30

    move v4, v0

    goto/16 :goto_1

    .line 308
    :cond_7
    const-wide v4, 0x4002666666666666L

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_a

    const-wide/high16 v4, 0x4008

    cmpg-double v0, v0, v4

    if-gez v0, :cond_a

    .line 309
    const/16 v0, 0x32

    move v4, v0

    goto/16 :goto_1

    .line 320
    :catch_0
    move-exception v0

    .line 321
    const-string v0, "BookViewActivity"

    const-string v1, "Failed to load this file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    iput-boolean v7, v0, Lcom/asus/reader/book/ReaderDatabase;->hostHasUsed:Z

    .line 323
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->finish()V

    goto/16 :goto_2

    .line 340
    :cond_8
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pos"

    invoke-virtual {v0, v1, v11, v12}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    .line 341
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "fontSize"

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 342
    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iput v7, v3, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    .line 343
    invoke-direct {p0, v2, v0, v1}, Lcom/asus/reader/book/BookViewActivity;->setFontSize(ID)V

    .line 344
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    iput-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPreIsLandscape:Z

    .line 345
    iput-object v10, p0, Lcom/asus/reader/book/BookViewActivity;->mSearchText:Ljava/lang/String;

    goto/16 :goto_3

    .line 370
    :cond_9
    sput-boolean v7, Lcom/asus/reader/book/BookViewActivity;->UseGLES20:Z

    goto/16 :goto_4

    :cond_a
    move v4, v7

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    const v1, 0x7f07007a

    const v2, 0x7f07005a

    const v3, 0x7f030027

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1987
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v1, v4

    .line 2172
    :goto_0
    return-object v1

    .line 1989
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1990
    const v2, 0x7f050003

    new-instance v3, Lcom/asus/reader/book/BookViewActivity$12;

    invoke-direct {v3, p0}, Lcom/asus/reader/book/BookViewActivity$12;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1999
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 2001
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2002
    const v2, 0x7f050004

    new-instance v3, Lcom/asus/reader/book/BookViewActivity$13;

    invoke-direct {v3, p0}, Lcom/asus/reader/book/BookViewActivity$13;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2018
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 2020
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2021
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2022
    const v2, 0x7f050005

    new-instance v3, Lcom/asus/reader/book/BookViewActivity$14;

    invoke-direct {v3, p0}, Lcom/asus/reader/book/BookViewActivity$14;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2030
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 2032
    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2033
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2034
    const v2, 0x7f050006

    new-instance v3, Lcom/asus/reader/book/BookViewActivity$15;

    invoke-direct {v3, p0}, Lcom/asus/reader/book/BookViewActivity$15;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2041
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 2043
    :pswitch_5
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2044
    const v1, 0x7f07005f

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2045
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030035

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2046
    const v1, 0x7f0b00ac

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2047
    new-instance v4, Lcom/asus/reader/book/BookViewActivity$16;

    invoke-direct {v4, p0}, Lcom/asus/reader/book/BookViewActivity$16;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2058
    const v1, 0x7f0b00ad

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2059
    new-instance v4, Lcom/asus/reader/book/BookViewActivity$17;

    invoke-direct {v4, p0}, Lcom/asus/reader/book/BookViewActivity$17;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2065
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2084
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 2086
    :pswitch_6
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2087
    const v1, 0x7f070077

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2088
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030014

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2089
    move-object v0, v2

    check-cast v0, Landroid/widget/ListView;

    move-object v1, v0

    .line 2090
    new-instance v4, Lcom/asus/reader/book/BookViewActivity$18;

    invoke-direct {v4, p0}, Lcom/asus/reader/book/BookViewActivity$18;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2103
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2104
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 2106
    :pswitch_7
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2107
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2108
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2109
    const v1, 0x7f0b0087

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2110
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2111
    const v3, 0x7f07007b

    new-instance v4, Lcom/asus/reader/book/BookViewActivity$19;

    invoke-direct {v4, p0, v1}, Lcom/asus/reader/book/BookViewActivity$19;-><init>(Lcom/asus/reader/book/BookViewActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2147
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 2149
    :pswitch_8
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2150
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2151
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 2152
    const v1, 0x7f0b0087

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2153
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2154
    const v3, 0x7f07007b

    new-instance v4, Lcom/asus/reader/book/BookViewActivity$20;

    invoke-direct {v4, p0, v1}, Lcom/asus/reader/book/BookViewActivity$20;-><init>(Lcom/asus/reader/book/BookViewActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2164
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 2166
    :pswitch_9
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2167
    const v2, 0x7f070093

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2168
    const v2, 0x7f070094

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2169
    const v2, 0x104000a

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2170
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1987
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 798
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 799
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mRenderer:Lcom/asus/reader/book/PageRenderer;

    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->destroy(ZI)V

    .line 800
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-virtual {v0}, Lcom/asus/reader/book/BookSurfaceView;->onDetachedFromWindow()V

    .line 801
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mDictionary:Lcom/asus/dictionary/Dictionary;

    invoke-virtual {v0}, Lcom/asus/dictionary/Dictionary;->destroy()V

    .line 802
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mAnimationThreadStop:Z

    .line 803
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->Animation:Ljava/lang/Object;

    monitor-enter v0

    .line 804
    :try_start_0
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->Animation:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 805
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 807
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionMenu:Lcom/asus/reader/ui/SelectionMenuBarWindow;

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionMenu:Lcom/asus/reader/ui/SelectionMenuBarWindow;

    invoke-virtual {v0}, Lcom/asus/reader/ui/SelectionMenuBarWindow;->getWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 811
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 814
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 817
    :cond_2
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mTextToSpeechAgent:Lcom/asus/reader/book/TextToSpeechAgent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mTextToSpeechAgent:Lcom/asus/reader/book/TextToSpeechAgent;

    invoke-virtual {v0}, Lcom/asus/reader/book/TextToSpeechAgent;->destroy()V

    .line 818
    :cond_3
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBoundingBoxView:Lcom/asus/reader/book/BoundingBoxView;

    invoke-virtual {v0}, Lcom/asus/reader/book/BoundingBoxView;->destroy()V

    .line 819
    :cond_4
    return-void

    .line 805
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 1400
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->touchParameter:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->setTouchParameter()V

    .line 1401
    :cond_0
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->reacquireWakeLock()V

    .line 1402
    packed-switch p1, :pswitch_data_0

    .line 1422
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1405
    :pswitch_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mKeyHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v2

    .line 1406
    goto :goto_0

    .line 1409
    :pswitch_1
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mKeyHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v2

    .line 1410
    goto :goto_0

    .line 1402
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1365
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1394
    :goto_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mMenuButton:Lcom/asus/reader/ui/DropDownMenu2;

    invoke-virtual {v0}, Lcom/asus/reader/ui/DropDownMenu2;->dismiss()V

    .line 1395
    return v5

    .line 1367
    :sswitch_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->showDialog(I)V

    goto :goto_0

    .line 1370
    :sswitch_1
    const v0, 0x7f0700e7

    invoke-direct {p0, p0, v0}, Lcom/asus/reader/book/BookViewActivity;->createProgressDialog(Landroid/content/Context;I)V

    .line 1371
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->isNightMode:Z

    if-nez v0, :cond_0

    move v0, v5

    :goto_1
    sput-boolean v0, Lcom/asus/reader/book/BookViewActivity;->isNightMode:Z

    .line 1372
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->isNightMode:Z

    if-eqz v0, :cond_1

    const-string v0, "BookViewActivity"

    const-string v1, "onMenuItemClick: change to night mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    :goto_2
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->setStyleCssForDayNightMode()V

    .line 1375
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->setPageNoViewForDayNightMode()V

    .line 1376
    const-string v0, "isNightMode"

    sget-boolean v1, Lcom/asus/reader/book/BookViewActivity;->isNightMode:Z

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/book/BookViewActivity;->setPrefValue(Ljava/lang/String;Z)V

    .line 1378
    :try_start_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookFilePath:Ljava/lang/String;

    sget-boolean v2, Lcom/asus/reader/book/BookViewActivity;->isNightMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/asus/reader/book/BookSurfaceView;->setNightModeNative(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    :goto_3
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mRenderer:Lcom/asus/reader/book/PageRenderer;

    invoke-virtual {v0}, Lcom/asus/reader/book/PageRenderer;->removeAllCachingMessages()V

    .line 1385
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mRenderer:Lcom/asus/reader/book/PageRenderer;

    invoke-virtual {v0}, Lcom/asus/reader/book/PageRenderer;->clearAllTextures()V

    .line 1386
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    invoke-virtual {v0}, Lcom/asus/reader/ui/PageSeekBar2;->changeDayNightMode()V

    .line 1387
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageSeekBar:Lcom/asus/reader/ui/PageSeekBar2;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/PageSeekBar2;->setProgress(I)V

    .line 1388
    invoke-static {}, Lcom/asus/reader/Cache;->getInstance()Lcom/asus/reader/Cache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/Cache;->ClearAllCaches()V

    .line 1389
    invoke-direct {p0, v5}, Lcom/asus/reader/book/BookViewActivity;->refreshTheHighlight(Z)V

    .line 1390
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mRenderer:Lcom/asus/reader/book/PageRenderer;

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->mCurrentBookId:I

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v2, v2, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v3, v3, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/reader/book/PageRenderer;->setCurrentPage(III)V

    .line 1391
    invoke-direct {p0, v4}, Lcom/asus/reader/book/BookViewActivity;->destroyProgressDialog(Z)V

    goto :goto_0

    :cond_0
    move v0, v4

    .line 1371
    goto :goto_1

    .line 1373
    :cond_1
    const-string v0, "BookViewActivity"

    const-string v1, "onMenuItemClick: change to day mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1379
    :catch_0
    move-exception v0

    .line 1380
    const-string v0, "BookViewActivity"

    const-string v1, "onMenuItemClick: failed to load this file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    iput-boolean v4, v0, Lcom/asus/reader/book/ReaderDatabase;->hostHasUsed:Z

    .line 1382
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->finish()V

    goto :goto_3

    .line 1365
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0053 -> :sswitch_0
        0x7f0b00c5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 2925
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2929
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 2927
    :pswitch_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/asus/reader/book/BookViewActivity;->showDialog(I)V

    goto :goto_0

    .line 2925
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 782
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 783
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mRenderer:Lcom/asus/reader/book/PageRenderer;

    invoke-virtual {v0}, Lcom/asus/reader/book/PageRenderer;->pause()V

    .line 784
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-virtual {v0}, Lcom/asus/reader/book/BookSurfaceView;->onPause()V

    .line 785
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookmarkUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 786
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookmarkUpdateThread:Landroid/os/HandlerThread;

    .line 787
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSearchEdit:Lcom/asus/reader/ui/SearchEditText;

    invoke-virtual {v0}, Lcom/asus/reader/ui/SearchEditText;->stopSearch()V

    .line 788
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0b0087

    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2177
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2179
    packed-switch p1, :pswitch_data_0

    .line 2256
    :goto_0
    :pswitch_0
    return-void

    .line 2183
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mTranslatedText:Ljava/lang/String;

    .line 2184
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->getTranslationIndex()I

    move-result v0

    .line 2185
    if-eq v0, v4, :cond_0

    array-length v1, v2

    if-lt v0, v1, :cond_5

    :cond_0
    move v3, v7

    .line 2187
    :goto_1
    sget-object v0, Lcom/asus/reader/book/BookViewActivity;->LANG_ITEMS:[Lcom/google/api/translate/Language;

    aget-object v0, v0, v3

    .line 2188
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookmarkUpdateHandler:Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;

    new-instance v4, Lcom/asus/reader/book/BookViewActivity$21;

    invoke-direct {v4, p0}, Lcom/asus/reader/book/BookViewActivity$21;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    invoke-virtual {v1, v4}, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2198
    new-instance v1, Lcom/asus/reader/book/BookViewActivity$translateOnGoogle;

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionText:Ljava/lang/String;

    invoke-direct {v1, p0, v4, v0}, Lcom/asus/reader/book/BookViewActivity$translateOnGoogle;-><init>(Lcom/asus/reader/book/BookViewActivity;Ljava/lang/String;Lcom/google/api/translate/Language;)V

    .line 2199
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 2202
    const-wide/16 v4, 0x7530

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v4, v5, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mTranslatedText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2209
    invoke-interface {v1, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 2211
    :goto_2
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2212
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 2213
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mTranslatedText:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mTranslatedText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2214
    :cond_1
    const v0, 0x7f0700d6

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2215
    :cond_2
    const v0, 0x7f0b00a4

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2216
    const v0, 0x7f0b00a6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2217
    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionText:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2218
    const v0, 0x7f0b00a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2219
    const v4, 0x7f0b00a7

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2220
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070061

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2221
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v2, v3

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2222
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mTranslatedText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2223
    iput-object p2, p0, Lcom/asus/reader/book/BookViewActivity;->mOptionDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 2203
    :catch_0
    move-exception v0

    .line 2204
    :try_start_1
    const-string v0, "BookViewActivity"

    const-string v4, "GoogleTranslateWithTimeout TIMEOUT"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2209
    invoke-interface {v1, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto/16 :goto_2

    .line 2206
    :catch_1
    move-exception v0

    .line 2207
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2209
    invoke-interface {v1, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v1, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    throw v0

    .line 2226
    :pswitch_2
    const v0, 0x7f0b0053

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 2227
    new-instance v1, Lcom/asus/reader/ui/BookmarkListAdapter;

    invoke-direct {v1, p0}, Lcom/asus/reader/ui/BookmarkListAdapter;-><init>(Landroid/content/Context;)V

    .line 2228
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mBookInfo:Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;

    invoke-static {p0, v2}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;->getBookmarkList(Landroid/content/Context;Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;)[Ljava/lang/String;

    move-result-object v2

    .line 2231
    if-eqz v2, :cond_4

    .line 2232
    array-length v3, v2

    move v5, v4

    move v4, v7

    :goto_3
    if-ge v4, v3, :cond_4

    aget-object v6, v2, v4

    .line 2234
    iget-object v7, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-static {v6}, Lcom/asus/reader/book/BookSurfaceView;->bookmarkToPosDoubletNative(Ljava/lang/String;)D

    move-result-wide v6

    .line 2235
    iget-object v8, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-virtual {v8, v6, v7}, Lcom/asus/reader/book/BookSurfaceView;->findPageNoByPositionNative(D)I

    move-result v6

    .line 2236
    if-eq v6, v5, :cond_3

    .line 2237
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/asus/reader/ui/BookmarkListAdapter;->insert(Ljava/lang/Integer;)V

    .line 2232
    :cond_3
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_3

    .line 2240
    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2241
    iput-object p2, p0, Lcom/asus/reader/book/BookViewActivity;->mOptionDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 2244
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2245
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2246
    iput-object p2, p0, Lcom/asus/reader/book/BookViewActivity;->mOptionDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 2250
    :pswitch_4
    invoke-virtual {p2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2251
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookInfo:Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity;->mNoteStartLoc:Ljava/lang/String;

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity;->mNoteEndLoc:Ljava/lang/String;

    invoke-static {p0, v1, v2, v3}, Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils;->getAnnotation(Landroid/content/Context;Lcom/asus/reader/util/ReaderDatabaseUtils$ReaderBookmarkUtils$BookInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2252
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2253
    iput-object p2, p0, Lcom/asus/reader/book/BookViewActivity;->mOptionDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    :cond_5
    move v3, v0

    goto/16 :goto_1

    .line 2179
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2915
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 2916
    const v0, 0x7f070077

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 2917
    const v1, 0x7f02014d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2918
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mScanState:Lcom/asus/reader/book/BookViewActivity$ScanState;

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$ScanState;->SCANNING:Lcom/asus/reader/book/BookViewActivity$ScanState;

    if-ne v0, v1, :cond_0

    .line 2919
    invoke-interface {p1, v2, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2920
    :cond_0
    return v3
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 747
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 748
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-virtual {v0}, Lcom/asus/reader/book/BookSurfaceView;->onResume()V

    .line 749
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mRenderer:Lcom/asus/reader/book/PageRenderer;

    invoke-virtual {v0}, Lcom/asus/reader/book/PageRenderer;->resume()V

    .line 750
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookmarkUpdateThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 751
    const-string v0, "BookViewActivity"

    const-string v1, "Create BookmarkUpdate Handler Thread!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BookmarkUpdate"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookmarkUpdateThread:Landroid/os/HandlerThread;

    .line 753
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookmarkUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 754
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mBookmarkUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 755
    new-instance v1, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;

    invoke-direct {v1, p0, v0}, Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;-><init>(Lcom/asus/reader/book/BookViewActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookmarkUpdateHandler:Lcom/asus/reader/book/BookViewActivity$BookmarkUpdateHandler;

    .line 757
    :cond_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1359
    new-instance v0, Lcom/asus/reader/book/BookViewActivity$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/asus/reader/book/BookViewActivity$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 1360
    .local v0, state:Lcom/asus/reader/book/BookViewActivity$NonConfigurationInstanceState;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1361
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 761
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 763
    const-string v0, "page_no"

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 764
    const-string v0, "page_count"

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 765
    const-string v0, "font_size"

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 767
    const-string v0, "isLandscape"

    iget-boolean v1, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 768
    const-string v0, "search_text"

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mSearchText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string v0, "selection_text"

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string v0, "translation_lang"

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->mTranslationLang:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 771
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mOptionDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mOptionDialog:Landroid/app/Dialog;

    const v1, 0x7f0b0087

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 772
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BookViewActivity"

    const-string v1, "Dismiss annotation edit dialog after screen rotation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mOptionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 774
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mOptionDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 776
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 739
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 740
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 792
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 793
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->stopTextToSpeech()V

    .line 794
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    const-wide/16 v11, -0x1

    const/16 v10, 0x8

    const/4 v8, 0x0

    const/high16 v7, -0x4080

    const/4 v9, 0x1

    .line 991
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/asus/reader/book/BookViewActivity;->mLastTouchTime:J

    .line 992
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->touchParameter:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->setTouchParameter()V

    .line 993
    :cond_0
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->reacquireWakeLock()V

    .line 994
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->isAnimation:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mNavigatingToPage:Z

    if-eqz v0, :cond_4

    .line 995
    :cond_1
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v0, :cond_2

    .line 996
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->isAnimation:Z

    if-eqz v0, :cond_3

    const-string v0, "BookViewActivity"

    const-string v1, "on Animation, skip touch event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    move v0, v8

    .line 1132
    :goto_1
    return v0

    .line 997
    :cond_3
    const-string v0, "BookViewActivity"

    const-string v1, "Navigating to page, skip touch event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1001
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1002
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1008
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x4270

    cmpg-float v0, v0, v1

    if-lez v0, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mBookSurfaceView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-virtual {v1}, Lcom/asus/reader/book/BookSurfaceView;->getWidth()I

    move-result v1

    const/16 v2, 0x3c

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    .line 1010
    :cond_5
    invoke-direct {p0, p2, v9}, Lcom/asus/reader/book/BookViewActivity;->cancelHighlightSelection(Landroid/view/MotionEvent;Z)V

    .line 1013
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mDictionary:Lcom/asus/dictionary/Dictionary;

    invoke-virtual {v0}, Lcom/asus/dictionary/Dictionary;->cancelLookupAndInvisible()V

    .line 1014
    :cond_7
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1015
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mScanState:Lcom/asus/reader/book/BookViewActivity$ScanState;

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$ScanState;->FINISH:Lcom/asus/reader/book/BookViewActivity$ScanState;

    if-ne v0, v1, :cond_8

    .line 1016
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mMultiTouchDetector:Lcom/asus/reader/ui/MultiTouchDetector;

    invoke-virtual {v0, p2}, Lcom/asus/reader/ui/MultiTouchDetector;->onTouch(Landroid/view/MotionEvent;)Z

    .line 1017
    invoke-direct {p0, p2}, Lcom/asus/reader/book/BookViewActivity;->handleHighlightTouchEvent2(Landroid/view/MotionEvent;)Z

    .line 1020
    :cond_8
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mSelectionState:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$SelectionState;->DRAG_SELECTING:Lcom/asus/reader/book/BookViewActivity$SelectionState;

    if-ne v0, v1, :cond_9

    move v0, v9

    .line 1021
    goto :goto_1

    .line 1023
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v8

    .line 1132
    goto :goto_1

    .line 1025
    :pswitch_0
    float-to-int v0, v3

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->mLongClick_X:I

    .line 1026
    float-to-int v0, v4

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->mLongClick_Y:I

    .line 1027
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nRHold:I

    int-to-float v0, v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_b

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nRight:I

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_b

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nTop:I

    int-to-float v0, v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_b

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_b

    .line 1028
    iput v7, p0, Lcom/asus/reader/book/BookViewActivity;->startX:F

    .line 1029
    iput v4, p0, Lcom/asus/reader/book/BookViewActivity;->startY:F

    .line 1030
    iput v9, p0, Lcom/asus/reader/book/BookViewActivity;->flipPage:I

    .line 1031
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/asus/reader/book/BookViewActivity;->SingleTapFlipActiveTime:J

    .line 1042
    :goto_2
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "BookViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action down (x, y)=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") startY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/asus/reader/book/BookViewActivity;->startY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v0, v9

    .line 1043
    goto/16 :goto_1

    .line 1032
    :cond_b
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nLeft:I

    int-to-float v0, v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_c

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nLHold:I

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_c

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nTop:I

    int-to-float v0, v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_c

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_c

    .line 1033
    iput v7, p0, Lcom/asus/reader/book/BookViewActivity;->startX:F

    .line 1034
    iput v4, p0, Lcom/asus/reader/book/BookViewActivity;->startY:F

    .line 1035
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/reader/book/BookViewActivity;->flipPage:I

    .line 1036
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/asus/reader/book/BookViewActivity;->SingleTapFlipActiveTime:J

    goto :goto_2

    .line 1038
    :cond_c
    iput v3, p0, Lcom/asus/reader/book/BookViewActivity;->startX:F

    .line 1039
    iput v7, p0, Lcom/asus/reader/book/BookViewActivity;->startY:F

    .line 1040
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/asus/reader/book/BookViewActivity;->QuickFlipActiveTime:J

    goto :goto_2

    .line 1045
    :pswitch_1
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    if-ne v0, v9, :cond_13

    .line 1046
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->startY:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->flipPage:I

    if-ne v0, v9, :cond_e

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nLeft:I

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_e

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nLeft:I

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->nRight:I

    iget v2, p0, Lcom/asus/reader/book/BookViewActivity;->nLeft:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_e

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nTop:I

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_e

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_e

    .line 1047
    iput-boolean v9, p0, Lcom/asus/reader/book/BookViewActivity;->isAnimation:Z

    .line 1048
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->startY:F

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/asus/reader/book/BookViewActivity;->ActivateAnimation(FFFF)V

    .line 1097
    :cond_d
    :goto_3
    iput v7, p0, Lcom/asus/reader/book/BookViewActivity;->startX:F

    .line 1098
    iput v7, p0, Lcom/asus/reader/book/BookViewActivity;->startY:F

    .line 1099
    iput-wide v11, p0, Lcom/asus/reader/book/BookViewActivity;->QuickFlipActiveTime:J

    .line 1100
    iput-wide v11, p0, Lcom/asus/reader/book/BookViewActivity;->SingleTapFlipActiveTime:J

    move v0, v9

    .line 1101
    goto/16 :goto_1

    .line 1050
    :cond_e
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->startY:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->flipPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nLeft:I

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->nRight:I

    iget v2, p0, Lcom/asus/reader/book/BookViewActivity;->nLeft:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_f

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nRight:I

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_f

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nTop:I

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_f

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_f

    .line 1051
    iput-boolean v9, p0, Lcom/asus/reader/book/BookViewActivity;->isAnimation:Z

    .line 1052
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->startY:F

    invoke-direct {p0, v7, v0, v3, v4}, Lcom/asus/reader/book/BookViewActivity;->ActivateAnimation(FFFF)V

    goto :goto_3

    .line 1054
    :cond_f
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nRHold:I

    int-to-float v0, v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_10

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nRight:I

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_10

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nTop:I

    int-to-float v0, v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_10

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/asus/reader/book/BookViewActivity;->SingleTapFlipActiveTime:J

    sub-long/2addr v0, v5

    iget-wide v5, p0, Lcom/asus/reader/book/BookViewActivity;->SingleTapFlipTime:J

    cmp-long v0, v0, v5

    if-gez v0, :cond_10

    .line 1055
    iput-boolean v9, p0, Lcom/asus/reader/book/BookViewActivity;->isAnimation:Z

    .line 1056
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageNoPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1057
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/asus/reader/book/BookViewActivity;->nRight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/asus/reader/book/BookViewActivity;->ActivateAnimation(FFFF)V

    .line 1059
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "BookViewActivity"

    const-string v1, "Single Tap Flip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1060
    :cond_10
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nLeft:I

    int-to-float v0, v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_12

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nLHold:I

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_12

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nTop:I

    int-to-float v0, v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_12

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/asus/reader/book/BookViewActivity;->SingleTapFlipActiveTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/asus/reader/book/BookViewActivity;->SingleTapFlipTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_12

    .line 1061
    iput-boolean v9, p0, Lcom/asus/reader/book/BookViewActivity;->isAnimation:Z

    .line 1062
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageNoPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1063
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->nLeft:I

    iget-boolean v2, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    if-eqz v2, :cond_11

    move v2, v8

    :goto_4
    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    invoke-direct {p0, v7, v0, v1, v2}, Lcom/asus/reader/book/BookViewActivity;->ActivateAnimation(FFFF)V

    .line 1065
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "BookViewActivity"

    const-string v1, "Single Tap Flip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1063
    :cond_11
    iget v2, p0, Lcom/asus/reader/book/BookViewActivity;->nRight:I

    goto :goto_4

    .line 1067
    :cond_12
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mRenderer:Lcom/asus/reader/book/PageRenderer;

    invoke-virtual {v0, v9}, Lcom/asus/reader/book/PageRenderer;->resetPage(Z)V

    .line 1068
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageNoPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 1070
    :cond_13
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    if-nez v0, :cond_d

    .line 1071
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->startY:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->flipPage:I

    if-ne v0, v9, :cond_14

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nLeft:I

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_14

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nLeft:I

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->nRight:I

    iget v2, p0, Lcom/asus/reader/book/BookViewActivity;->nLeft:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_14

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nTop:I

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_14

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_14

    .line 1072
    iput-boolean v9, p0, Lcom/asus/reader/book/BookViewActivity;->isAnimation:Z

    .line 1073
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->startY:F

    invoke-direct {p0, v0, v1, v3, v4}, Lcom/asus/reader/book/BookViewActivity;->ActivateAnimation(FFFF)V

    goto/16 :goto_3

    .line 1075
    :cond_14
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->startY:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->flipPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nLeft:I

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->nRight:I

    iget v2, p0, Lcom/asus/reader/book/BookViewActivity;->nLeft:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_15

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nRight:I

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_15

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nTop:I

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_15

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_15

    .line 1076
    iput-boolean v9, p0, Lcom/asus/reader/book/BookViewActivity;->isAnimation:Z

    .line 1077
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->startY:F

    invoke-direct {p0, v7, v0, v3, v4}, Lcom/asus/reader/book/BookViewActivity;->ActivateAnimation(FFFF)V

    goto/16 :goto_3

    .line 1079
    :cond_15
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nRHold:I

    int-to-float v0, v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_16

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nRight:I

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_16

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nTop:I

    int-to-float v0, v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_16

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/asus/reader/book/BookViewActivity;->SingleTapFlipActiveTime:J

    sub-long/2addr v0, v5

    iget-wide v5, p0, Lcom/asus/reader/book/BookViewActivity;->SingleTapFlipTime:J

    cmp-long v0, v0, v5

    if-gez v0, :cond_16

    .line 1080
    iput-boolean v9, p0, Lcom/asus/reader/book/BookViewActivity;->isAnimation:Z

    .line 1081
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageNoPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1082
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/asus/reader/book/BookViewActivity;->nRight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/asus/reader/book/BookViewActivity;->ActivateAnimation(FFFF)V

    .line 1084
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "BookViewActivity"

    const-string v1, "Single Tap Flip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1085
    :cond_16
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nLeft:I

    int-to-float v0, v0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_18

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nLHold:I

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_18

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nTop:I

    int-to-float v0, v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_18

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/asus/reader/book/BookViewActivity;->SingleTapFlipActiveTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/asus/reader/book/BookViewActivity;->SingleTapFlipTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_18

    .line 1086
    iput-boolean v9, p0, Lcom/asus/reader/book/BookViewActivity;->isAnimation:Z

    .line 1087
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageNoPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1088
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->nLeft:I

    iget-boolean v2, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    if-eqz v2, :cond_17

    move v2, v8

    :goto_5
    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    invoke-direct {p0, v7, v0, v1, v2}, Lcom/asus/reader/book/BookViewActivity;->ActivateAnimation(FFFF)V

    .line 1090
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "BookViewActivity"

    const-string v1, "Single Tap Flip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1088
    :cond_17
    iget v2, p0, Lcom/asus/reader/book/BookViewActivity;->nRight:I

    goto :goto_5

    .line 1092
    :cond_18
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mRenderer:Lcom/asus/reader/book/PageRenderer;

    invoke-virtual {v0, v9}, Lcom/asus/reader/book/PageRenderer;->resetPage(Z)V

    .line 1093
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageNoPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_3

    .line 1103
    :pswitch_2
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->startY:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nLMargin:I

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_1a

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nRMargin:I

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_1a

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_1a

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nTop:I

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_1a

    .line 1104
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mRenderer:Lcom/asus/reader/book/PageRenderer;

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->flipPage:I

    int-to-float v1, v1

    iget v2, p0, Lcom/asus/reader/book/BookViewActivity;->startY:F

    iget v5, p0, Lcom/asus/reader/book/BookViewActivity;->nLeft:I

    int-to-float v5, v5

    iget v6, p0, Lcom/asus/reader/book/BookViewActivity;->nRight:I

    int-to-float v6, v6

    iget v7, p0, Lcom/asus/reader/book/BookViewActivity;->nTop:I

    int-to-float v7, v7

    iget v8, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    int-to-float v8, v8

    invoke-virtual/range {v0 .. v8}, Lcom/asus/reader/book/PageRenderer;->flip(FFFFFFFF)V

    .line 1105
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageNoPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1106
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->forceHideKeyboard()V

    .line 1107
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mControlPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_19
    :goto_6
    move v0, v9

    .line 1130
    goto/16 :goto_1

    .line 1110
    :cond_1a
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->startY:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->flipPage:I

    if-ne v0, v9, :cond_1b

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nRMargin:I

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1b

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_1b

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nTop:I

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_1b

    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mRenderer:Lcom/asus/reader/book/PageRenderer;

    invoke-virtual {v0, v8}, Lcom/asus/reader/book/PageRenderer;->resetPage(Z)V

    goto :goto_6

    .line 1111
    :cond_1b
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->startY:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->flipPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nLMargin:I

    int-to-float v0, v0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_1c

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    int-to-float v0, v0

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_1c

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nTop:I

    int-to-float v0, v0

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_1c

    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mRenderer:Lcom/asus/reader/book/PageRenderer;

    invoke-virtual {v0, v8}, Lcom/asus/reader/book/PageRenderer;->resetPage(Z)V

    goto :goto_6

    .line 1112
    :cond_1c
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->startX:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->startX:F

    sub-float v0, v3, v0

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->QuickFlipLength:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/asus/reader/book/BookViewActivity;->QuickFlipActiveTime:J

    sub-long/2addr v0, v4

    iget-wide v4, p0, Lcom/asus/reader/book/BookViewActivity;->QuickFlipTime:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_1d

    .line 1113
    iput-boolean v9, p0, Lcom/asus/reader/book/BookViewActivity;->isAnimation:Z

    .line 1114
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageNoPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1115
    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/asus/reader/book/BookViewActivity;->nRight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    mul-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0x6

    int-to-float v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/asus/reader/book/BookViewActivity;->ActivateAnimation(FFFF)V

    .line 1116
    iput v7, p0, Lcom/asus/reader/book/BookViewActivity;->startX:F

    .line 1117
    iput-wide v11, p0, Lcom/asus/reader/book/BookViewActivity;->QuickFlipActiveTime:J

    .line 1118
    iput-wide v11, p0, Lcom/asus/reader/book/BookViewActivity;->SingleTapFlipActiveTime:J

    .line 1119
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v0, :cond_19

    const-string v0, "BookViewActivity"

    const-string v1, "Quick Flip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1121
    :cond_1d
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->startX:F

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->startX:F

    sub-float v0, v3, v0

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->QuickFlipLength:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/asus/reader/book/BookViewActivity;->QuickFlipActiveTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/asus/reader/book/BookViewActivity;->QuickFlipTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_19

    .line 1122
    iput-boolean v9, p0, Lcom/asus/reader/book/BookViewActivity;->isAnimation:Z

    .line 1123
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mPageNoPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1124
    iget v0, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity;->nLeft:I

    iget-boolean v2, p0, Lcom/asus/reader/book/BookViewActivity;->mIsLandscape:Z

    if-eqz v2, :cond_1e

    move v2, v8

    :goto_7
    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/asus/reader/book/BookViewActivity;->nBottom:I

    mul-int/lit8 v2, v2, 0x5

    div-int/lit8 v2, v2, 0x6

    int-to-float v2, v2

    invoke-direct {p0, v7, v0, v1, v2}, Lcom/asus/reader/book/BookViewActivity;->ActivateAnimation(FFFF)V

    .line 1125
    iput v7, p0, Lcom/asus/reader/book/BookViewActivity;->startX:F

    .line 1126
    iput-wide v11, p0, Lcom/asus/reader/book/BookViewActivity;->QuickFlipActiveTime:J

    .line 1127
    iput-wide v11, p0, Lcom/asus/reader/book/BookViewActivity;->SingleTapFlipActiveTime:J

    .line 1128
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v0, :cond_19

    const-string v0, "BookViewActivity"

    const-string v1, "Quick Flip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1124
    :cond_1e
    iget v2, p0, Lcom/asus/reader/book/BookViewActivity;->nRight:I

    goto :goto_7

    .line 1023
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 828
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 830
    if-eqz p1, :cond_0

    .line 831
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->reacquireWakeLock()V

    .line 837
    :goto_0
    return-void

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 835
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method public setPrefValue(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1300
    const-string v0, "Preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/asus/reader/book/BookViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1301
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1302
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BookViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPrefValue name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    :cond_0
    return-void
.end method

.method showShareDialog(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 3025
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3026
    const-string v0, "text/plain"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3027
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3029
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3030
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3032
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 3034
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "Facebook"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3035
    new-instance v4, Lcom/asus/reader/book/ShareDialog$DisplayItem;

    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-direct {v4, v0, v1, v5}, Lcom/asus/reader/book/ShareDialog$DisplayItem;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3039
    :cond_1
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3040
    invoke-direct {p0}, Lcom/asus/reader/book/BookViewActivity;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "CN_epad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3042
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.asus.facebookposter.action.SEND"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3043
    const-string v0, "text/plain"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3044
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3045
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3046
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3047
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 3048
    new-instance v3, Lcom/asus/reader/book/ShareDialog$DisplayItem;

    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-direct {v3, v0, v1, v4}, Lcom/asus/reader/book/ShareDialog$DisplayItem;-><init>(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3052
    :cond_2
    const v0, 0x7f07007f

    invoke-static {v2, v0}, Lcom/asus/reader/book/ShareDialog;->newInstance(Ljava/util/ArrayList;I)Lcom/asus/reader/book/ShareDialog;

    move-result-object v0

    .line 3053
    invoke-virtual {p0}, Lcom/asus/reader/book/BookViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 3054
    return-void
.end method

.method public stopTextToSpeech()V
    .locals 2

    .prologue
    .line 2899
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mTextToSpeechAgent:Lcom/asus/reader/book/TextToSpeechAgent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mTextToSpeechAgent:Lcom/asus/reader/book/TextToSpeechAgent;

    invoke-virtual {v0}, Lcom/asus/reader/book/TextToSpeechAgent;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mTextToSpeechAgent:Lcom/asus/reader/book/TextToSpeechAgent;

    if-nez v0, :cond_0

    .line 2901
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity;->mTextToSpeechAgent:Lcom/asus/reader/book/TextToSpeechAgent;

    invoke-virtual {v0}, Lcom/asus/reader/book/TextToSpeechAgent;->stop()V

    .line 2903
    :cond_0
    return-void
.end method
