.class public Lcom/google/android/apps/books/app/ReaderFragment;
.super Landroid/app/Fragment;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;
.implements Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;
.implements Lcom/google/android/apps/books/app/OnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;,
        Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeQuery;,
        Lcom/google/android/apps/books/app/ReaderFragment$VolumesQuery;,
        Lcom/google/android/apps/books/app/ReaderFragment$MyFetchReadingPositionTask;,
        Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;,
        Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;,
        Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeParams;,
        Lcom/google/android/apps/books/app/ReaderFragment$EndViewFactory;,
        Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;,
        Lcom/google/android/apps/books/app/ReaderFragment$SimpleViewFactory;,
        Lcom/google/android/apps/books/app/ReaderFragment$SimpleSpecialViewWrapper;,
        Lcom/google/android/apps/books/app/ReaderFragment$ReaderSpecialViews;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/google/android/apps/books/model/VolumeMetadata;",
        ">;",
        "Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;",
        "Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;",
        "Lcom/google/android/apps/books/app/OnBackListener;"
    }
.end annotation


# static fields
.field private static final FRAME_DELAY_MS:I = 0x10

.field private static final MAX_SCALE:F = 6.0f

.field private static final MIN_SCALE:F = 1.0f

.field private static final SOFT_ACTIONS_TO_CLEAR_UNDO:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ReaderFragment"

.field private static final WAKE_LOCK_DURATION_MILLIS:J = 0x3a980L

.field private static final ZOOM_IN_SNAP_BACK:F = 1.3f

.field private static final ZOOM_OUT_SNAP_BACK:F = 1.5f


# instance fields
.field private mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

.field private mBeforeSearchPosition:Lcom/google/android/apps/books/common/Position;

.field private final mConnReceiver:Landroid/content/BroadcastReceiver;

.field private mHasShownErrorDialog:Z

.field private mHaveSavedPosition:Z

.field private mIgnoreTouchesHorizontalMargin:F

.field private mKeepAvailableOffline:Landroid/view/MenuItem;

.field private mLastPosition:Lcom/google/android/apps/books/common/Position;

.field private mMenuBookBuy:Landroid/view/MenuItem;

.field private mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

.field private mMinimumZoomPastEdge:I

.field private final mNavigator:Lcom/google/android/apps/books/util/Navigator;

.field private final mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private final mOnSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field private final mOnSearchFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mOnSearchItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnSearchPopupDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

.field private mPositionSaver:Lcom/google/android/apps/books/model/ReadingPositionSaver;

.field private final mReadingAccessDelegate:Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;

.field private mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/render/ReaderRenderer",
            "<*>;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

.field private mScrubIndex:Lcom/google/android/apps/books/util/VolumeScrubIndex;

.field private mSearchMenu:Landroid/view/MenuItem;

.field private mSearchModeActive:Z

.field private mSearchResultsAdapter:Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

.field private mSearchResultsPopup:Landroid/widget/ListPopupWindow;

.field private mSearchResultsState:Landroid/os/Parcelable;

.field private mSearchView:Landroid/widget/SearchView;

.field private final mSearchWithinVolumeLoader:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mServerAccess:J

.field private mServerPosition:Lcom/google/android/apps/books/common/Position;

.field private mSettings:Lcom/google/android/apps/books/render/ReaderSettings;

.field private mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

.field private final mSettingsListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

.field private mShowingActionBar:Z

.field private mSoftActionCount:I

.field private mStartedReadingPositionFetch:Z

.field private mStubView:Landroid/view/ViewGroup;

.field private final mSystemUiListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

.field private mUndoPosition:Lcom/google/android/apps/books/common/Position;

.field private mVerticalRut:I

.field private mView:Landroid/view/ViewGroup;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoomEnabled:Z

.field private mZoomMaxSpan:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 207
    iput-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mZoomEnabled:Z

    .line 211
    iput-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mHasShownErrorDialog:Z

    .line 214
    iput v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSoftActionCount:I

    .line 223
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$1;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mNavigator:Lcom/google/android/apps/books/util/Navigator;

    .line 229
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$2;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 406
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$4;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSystemUiListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 938
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$7;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$7;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mReadingAccessDelegate:Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;

    .line 1010
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$9;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$9;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 1018
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$10;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$10;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    .line 1027
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$11;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$11;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1048
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$12;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$12;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 1063
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$13;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$13;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchPopupDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 1076
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$14;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$14;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1186
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$15;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$15;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchWithinVolumeLoader:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1674
    new-instance v0, Lcom/google/android/apps/books/app/ReaderFragment$18;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/ReaderFragment$18;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    .line 2621
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->updateDeviceConnected(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/books/app/ReaderFragment;)Ljava/util/concurrent/Future;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getFetchService()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->clearSearchViewFocus()V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->leaveSearchWithinVolume()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->hideSearchWithinVolumeUi()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/apps/books/app/ReaderFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mShowingActionBar:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/apps/books/app/ReaderFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchModeActive:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/widget/ListPopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsState:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsState:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/google/android/apps/books/app/ReaderFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->startSearchWithinVolume(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/common/Position;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mBeforeSearchPosition:Lcom/google/android/apps/books/common/Position;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/common/Position;)Lcom/google/android/apps/books/common/Position;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mBeforeSearchPosition:Lcom/google/android/apps/books/common/Position;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/common/Position;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLastPosition:Lcom/google/android/apps/books/common/Position;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsAdapter:Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/google/android/apps/books/app/ReaderFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mZoomEnabled:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/render/ReaderRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/render/ReaderRenderer;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->getModeForRenderer(Lcom/google/android/apps/books/render/ReaderRenderer;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/android/apps/books/app/ReaderFragment;I)Lcom/google/android/apps/books/render/ReaderRenderer;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->setModeInPageTurnView(I)Lcom/google/android/apps/books/render/ReaderRenderer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/render/ReaderRenderer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->setRenderer(Lcom/google/android/apps/books/render/ReaderRenderer;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/TableOfContentsActionItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/util/VolumeScrubIndex;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubIndex:Lcom/google/android/apps/books/util/VolumeScrubIndex;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/ScrubBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/ReadingPositionSaver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPositionSaver:Lcom/google/android/apps/books/model/ReadingPositionSaver;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->applySettingsIfChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->isEdgeTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/app/ReaderFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->setChromeVisible(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/google/android/apps/books/app/ReaderFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isChromeVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/google/android/apps/books/app/ReaderFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isLandscape()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/google/android/apps/books/app/ReaderFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMinimumZoomPastEdge:I

    return v0
.end method

.method static synthetic access$4300(Lcom/google/android/apps/books/app/ReaderFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mVerticalRut:I

    return v0
.end method

.method static synthetic access$4400(Lcom/google/android/apps/books/app/ReaderFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mZoomMaxSpan:I

    return v0
.end method

.method static synthetic access$4500(Lcom/google/android/apps/books/app/ReaderFragment;IZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/books/app/ReaderFragment;->dispatchModesAvailable(IZZ)V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/common/Position;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeHandleServerPosition(Lcom/google/android/apps/books/common/Position;J)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/app/ReaderFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->setInternalChromeVisible(Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-static {p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->snapshotView(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-static {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->runOnUiThreadAndBlock(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static animateVisible(Landroid/view/View;Z)V
    .locals 5
    .parameter "targetView"
    .parameter "visible"

    .prologue
    .line 1779
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1780
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 1782
    .local v1, currentVisible:Z
    :goto_0
    if-ne v1, p1, :cond_1

    .line 1808
    :goto_1
    return-void

    .line 1780
    .end local v1           #currentVisible:Z
    :cond_0
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 1786
    .restart local v1       #currentVisible:Z
    :cond_1
    if-eqz p1, :cond_2

    .line 1787
    const/high16 v4, 0x7f06

    invoke-static {v0, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 1788
    .local v2, fadeIn:Landroid/animation/Animator;
    invoke-virtual {v2, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1789
    new-instance v4, Lcom/google/android/apps/books/app/ReaderFragment$19;

    invoke-direct {v4, p0}, Lcom/google/android/apps/books/app/ReaderFragment$19;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1795
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_1

    .line 1798
    .end local v2           #fadeIn:Landroid/animation/Animator;
    :cond_2
    const v4, 0x7f060001

    invoke-static {v0, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    .line 1799
    .local v3, fadeOut:Landroid/animation/Animator;
    invoke-virtual {v3, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1800
    new-instance v4, Lcom/google/android/apps/books/app/ReaderFragment$20;

    invoke-direct {v4, p0}, Lcom/google/android/apps/books/app/ReaderFragment$20;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1806
    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    goto :goto_1
.end method

.method private applySettings(Lcom/google/android/apps/books/render/ReaderSettings;)V
    .locals 1
    .parameter "settings"

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    if-eqz v0, :cond_0

    .line 1616
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/render/ReaderRenderer;->applySettings(Lcom/google/android/apps/books/render/ReaderSettings;)V

    .line 1618
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->updateNightMode()V

    .line 1619
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettings:Lcom/google/android/apps/books/render/ReaderSettings;

    .line 1621
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchModeActive:Z

    if-eqz v0, :cond_1

    .line 1623
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->hideSearchWithinVolumeUi()V

    .line 1626
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mBeforeSearchPosition:Lcom/google/android/apps/books/common/Position;

    if-eqz v0, :cond_1

    .line 1627
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mBeforeSearchPosition:Lcom/google/android/apps/books/common/Position;

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->saveUndo(Lcom/google/android/apps/books/common/Position;)V

    .line 1628
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mBeforeSearchPosition:Lcom/google/android/apps/books/common/Position;

    .line 1631
    :cond_1
    return-void
.end method

.method private applySettingsIfChanged(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1634
    new-instance v0, Lcom/google/android/apps/books/render/ReaderSettings;

    invoke-direct {v0, p1}, Lcom/google/android/apps/books/render/ReaderSettings;-><init>(Landroid/content/Context;)V

    .line 1635
    .local v0, settings:Lcom/google/android/apps/books/render/ReaderSettings;
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettings:Lcom/google/android/apps/books/render/ReaderSettings;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/render/ReaderSettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1636
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->applySettings(Lcom/google/android/apps/books/render/ReaderSettings;)V

    .line 1640
    :goto_0
    return-void

    .line 1638
    :cond_0
    const-string v1, "ReaderFragment"

    const-string v2, "applySettings() skipping because settings already match"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private bindSettingsFragment()V
    .locals 2

    .prologue
    .line 1665
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->findReaderSettingsFragment()Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    .line 1666
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->setListener(Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;)V

    .line 1667
    return-void
.end method

.method private static buildContextSupportIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .parameter "context"

    .prologue
    .line 1609
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getConfig(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;

    move-result-object v0

    .line 1610
    .local v0, config:Lcom/google/android/apps/books/util/Config;
    invoke-static {v0}, Lcom/google/android/apps/books/util/OceanUris;->getContentBlockedUrl(Lcom/google/android/apps/books/util/Config;)Landroid/net/Uri;

    move-result-object v1

    .line 1611
    .local v1, contentBlockedUrl:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v2
.end method

.method private static buildMarketUpdateIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .parameter "context"

    .prologue
    .line 1602
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1603
    .local v1, packageName:Ljava/lang/String;
    const-string v2, "market://details"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 1605
    .local v0, marketUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v2
.end method

.method private clearSearchViewFocus()V
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1269
    :cond_0
    return-void
.end method

.method private clearUndo()V
    .locals 1

    .prologue
    .line 1505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mUndoPosition:Lcom/google/android/apps/books/common/Position;

    .line 1506
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/ScrubBar;->clearUndoPosition()V

    .line 1507
    return-void
.end method

.method private dispatchModesAvailable(IZZ)V
    .locals 1
    .parameter "preferredMode"
    .parameter "hasTextMode"
    .parameter "hasImageMode"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->onModesAvailable(IZZ)V

    .line 268
    :cond_0
    return-void
.end method

.method private getAddToMyEBooks()Z
    .locals 1

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/LoaderParams;->getAddToMyEBooks(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private getFetchService()Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/apps/books/service/ContentFetchService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2570
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2571
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/google/android/apps/books/app/BooksActivity;

    if-eqz v1, :cond_0

    .line 2572
    check-cast v0, Lcom/google/android/apps/books/app/BooksActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFetchService()Ljava/util/concurrent/Future;

    move-result-object v1

    return-object v1

    .line 2574
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unexpected activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getModeForRenderer(Lcom/google/android/apps/books/render/ReaderRenderer;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/render/ReaderRenderer",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1289
    .local p1, renderer:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<*>;"
    instance-of v0, p1, Lcom/google/android/apps/books/render/ImageModeRenderer;

    if-eqz v0, :cond_0

    .line 1290
    const/4 v0, 0x1

    .line 1294
    :goto_0
    return v0

    .line 1291
    :cond_0
    instance-of v0, p1, Lcom/google/android/apps/books/render/WebViewRenderer;

    if-eqz v0, :cond_1

    .line 1292
    const/4 v0, 0x2

    goto :goto_0

    .line 1294
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .locals 1

    .prologue
    .line 2566
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getScene(Landroid/app/Fragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method

.method private getUpdateVolumeOverview()Z
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/util/LoaderParams;->getUpdateVolumeOverview(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private hideSearchWithinVolumeUi()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1143
    iput-boolean v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchModeActive:Z

    .line 1146
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1147
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsAdapter:Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1148
    iput-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsState:Landroid/os/Parcelable;

    .line 1151
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1154
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->isIconfiedByDefault()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1156
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 1158
    :cond_0
    return-void
.end method

.method private isChromeVisible()Z
    .locals 1

    .prologue
    .line 1731
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEdgeTouch(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 1329
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1330
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1331
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1332
    .local v2, x:F
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1333
    .local v1, w:I
    const/high16 v3, 0x3f80

    add-float/2addr v3, v2

    iget v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mIgnoreTouchesHorizontalMargin:F

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    int-to-float v3, v1

    sub-float/2addr v3, v2

    iget v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mIgnoreTouchesHorizontalMargin:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 1336
    .end local v1           #w:I
    .end local v2           #x:F
    :goto_0
    return v3

    .restart local v1       #w:I
    .restart local v2       #x:F
    :cond_1
    move v3, v5

    .line 1333
    goto :goto_0

    .end local v1           #w:I
    .end local v2           #x:F
    :cond_2
    move v3, v5

    .line 1336
    goto :goto_0
.end method

.method private isLandscape()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2579
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2580
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    move v0, v2

    .line 2585
    :goto_0
    return v0

    .line 2580
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 2585
    goto :goto_0
.end method

.method private leaveSearchWithinVolume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1129
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mBeforeSearchPosition:Lcom/google/android/apps/books/common/Position;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mBeforeSearchPosition:Lcom/google/android/apps/books/common/Position;

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->saveUndo(Lcom/google/android/apps/books/common/Position;)V

    .line 1131
    iput-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mBeforeSearchPosition:Lcom/google/android/apps/books/common/Position;

    .line 1135
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLastPosition:Lcom/google/android/apps/books/common/Position;

    const/4 v2, 0x1

    const-string v3, "SearchWithinBook"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/app/ReaderFragment;->moveToPosition(Lcom/google/android/apps/books/common/Position;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 1137
    :cond_0
    return-void
.end method

.method private maybeAnchorSearchResultsPopup()V
    .locals 2

    .prologue
    .line 925
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 928
    :cond_0
    return-void
.end method

.method private maybeHandleServerPosition(Lcom/google/android/apps/books/common/Position;J)V
    .locals 18
    .parameter "serverPosition"
    .parameter "serverAccess"

    .prologue
    .line 2516
    invoke-static/range {p1 .. p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    move-object v3, v0

    if-nez v3, :cond_1

    .line 2520
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/app/ReaderFragment;->mServerPosition:Lcom/google/android/apps/books/common/Position;

    .line 2521
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/apps/books/app/ReaderFragment;->mServerAccess:J

    .line 2563
    :cond_0
    :goto_0
    return-void

    .line 2525
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPosition()Lcom/google/android/apps/books/common/Position;

    move-result-object v14

    .line 2526
    .local v14, localPosition:Lcom/google/android/apps/books/common/Position;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/apps/books/model/VolumeMetadata;->getLastAccess()J

    move-result-wide v11

    .line 2529
    .local v11, localAccess:J
    cmp-long v3, p2, v11

    if-lez v3, :cond_0

    .line 2533
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/common/Position;->extractPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2534
    .local v16, serverPageId:Ljava/lang/String;
    if-nez v14, :cond_2

    const/4 v3, 0x0

    move-object v13, v3

    .line 2538
    .local v13, localPageId:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v16

    move-object v1, v13

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment;->mLastPosition:Lcom/google/android/apps/books/common/Position;

    move-object v3, v0

    if-nez v3, :cond_3

    const/4 v3, 0x0

    move-object/from16 v17, v3

    .line 2546
    .local v17, visiblePageId:Ljava/lang/String;
    :goto_2
    invoke-static/range {v16 .. v17}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2554
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getContainingChapterIndexForPageId(Ljava/lang/String;)I

    move-result v10

    .line 2556
    .local v10, chapterIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    move-object v3, v0

    invoke-virtual {v3, v10}, Lcom/google/android/apps/books/model/VolumeMetadata;->getChapterTitle(I)Ljava/lang/String;

    move-result-object v7

    .line 2557
    .local v7, chapterTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageIndex(Lcom/google/android/apps/books/common/Position;)I

    move-result v15

    .line 2558
    .local v15, pageIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    move-object v3, v0

    invoke-virtual {v3, v15}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageTitle(I)Ljava/lang/String;

    move-result-object v8

    .line 2559
    .local v8, pageTitle:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    .line 2560
    .local v9, arguments:Landroid/os/Bundle;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v3

    invoke-static {v9}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v4

    invoke-static {v9}, Lcom/google/android/apps/books/util/LoaderParams;->getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-interface/range {v3 .. v8}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showNewPositionAvailableDialog(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2534
    .end local v7           #chapterTitle:Ljava/lang/String;
    .end local v8           #pageTitle:Ljava/lang/String;
    .end local v9           #arguments:Landroid/os/Bundle;
    .end local v10           #chapterIndex:I
    .end local v13           #localPageId:Ljava/lang/String;
    .end local v15           #pageIndex:I
    .end local v17           #visiblePageId:Ljava/lang/String;
    :cond_2
    invoke-virtual {v14}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/common/Position;->extractPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v13, v3

    goto :goto_1

    .line 2542
    .restart local v13       #localPageId:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/ReaderFragment;->mLastPosition:Lcom/google/android/apps/books/common/Position;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/common/Position;->extractPageId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v3

    goto :goto_2
.end method

.method private maybeUpdateMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 901
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v5}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    move v4, v7

    .line 902
    .local v4, validMetadata:Z
    :goto_0
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    if-eqz v5, :cond_2

    move v3, v7

    .line 903
    .local v3, validMenus:Z
    :goto_1
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 904
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    invoke-virtual {v5}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 906
    .local v0, context:Landroid/content/Context;
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/apps/books/model/VolumeMetadata;)V

    .line 907
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v6}, Lcom/google/android/apps/books/model/VolumeMetadata;->getMode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->setReadingMode(I)V

    .line 909
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mKeepAvailableOffline:Landroid/view/MenuItem;

    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v6}, Lcom/google/android/apps/books/model/VolumeMetadata;->isPinned()Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 911
    sget-object v5, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->SAMPLE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v6, v6, Lcom/google/android/apps/books/model/VolumeMetadata;->access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 912
    .local v2, isSample:Z
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMenuBookBuy:Landroid/view/MenuItem;

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 916
    invoke-static {v0}, Lcom/google/android/apps/books/util/Config;->isDeviceConnected(Landroid/content/Context;)Z

    move-result v1

    .line 917
    .local v1, deviceConnected:Z
    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v5, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 918
    if-nez v1, :cond_0

    .line 919
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->leaveSearchWithinVolume()V

    .line 922
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #deviceConnected:Z
    .end local v2           #isSample:Z
    :cond_0
    return-void

    .end local v3           #validMenus:Z
    .end local v4           #validMetadata:Z
    :cond_1
    move v4, v6

    .line 901
    goto :goto_0

    .restart local v4       #validMetadata:Z
    :cond_2
    move v3, v6

    .line 902
    goto :goto_1
.end method

.method private onLoadException(Landroid/content/Loader;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/apps/books/model/VolumeMetadata;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 931
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/apps/books/model/VolumeMetadata;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/android/apps/books/app/ReaderFragment$6;

    invoke-direct {v1, p0, p2}, Lcom/google/android/apps/books/app/ReaderFragment$6;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 936
    return-void
.end method

.method private releaseSettingsFragment()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1670
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/ReaderSettingsFragment;->setListener(Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;)V

    .line 1671
    iput-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsFragment:Lcom/google/android/apps/books/app/ReaderSettingsFragment;

    .line 1672
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1286
    return-void
.end method

.method private renewWakeLock()V
    .locals 3

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x3a980

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1282
    return-void
.end method

.method private static runOnUiThreadAndBlock(Ljava/lang/Runnable;)V
    .locals 6
    .parameter "r"

    .prologue
    const-string v5, "ReaderFragment"

    .line 678
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 679
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 682
    .local v2, uiHandler:Landroid/os/Handler;
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 683
    .local v1, semaphore:Ljava/util/concurrent/Semaphore;
    new-instance v3, Lcom/google/android/apps/books/app/ReaderFragment$5;

    invoke-direct {v3, p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment$5;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 691
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "ReaderFragment"

    const/4 v3, 0x6

    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 694
    const-string v3, "ReaderFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interrupted while waiting for result from UI thread: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveUndo(Lcom/google/android/apps/books/common/Position;)V
    .locals 2
    .parameter "markPosition"

    .prologue
    .line 1497
    if-nez p1, :cond_0

    .line 1502
    :goto_0
    return-void

    .line 1499
    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mUndoPosition:Lcom/google/android/apps/books/common/Position;

    .line 1500
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageIndex(Lcom/google/android/apps/books/common/Position;)I

    move-result v0

    .line 1501
    .local v0, pageIndex:I
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/widget/ScrubBar;->setUndoPosition(I)V

    goto :goto_0
.end method

.method private setChromeVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1737
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchModeActive:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1739
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showSettings(Z)V

    .line 1751
    :goto_0
    return-void

    .line 1744
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_1

    .line 1745
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 1750
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private setInternalChromeVisible(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/4 v3, 0x0

    .line 1759
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v1

    .line 1760
    .local v1, scene:Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-interface {v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1762
    .local v0, actionBar:Landroid/app/ActionBar;
    if-nez p1, :cond_0

    .line 1763
    invoke-interface {v1, v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showSettings(Z)V

    .line 1766
    :cond_0
    if-eqz p1, :cond_1

    .line 1767
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mShowingActionBar:Z

    .line 1768
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 1769
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    .line 1770
    iput-boolean v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mShowingActionBar:Z

    .line 1775
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-static {v2, p1}, Lcom/google/android/apps/books/app/ReaderFragment;->animateVisible(Landroid/view/View;Z)V

    .line 1776
    return-void

    .line 1772
    :cond_1
    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0
.end method

.method private setModeInPageTurnView(I)Lcom/google/android/apps/books/render/ReaderRenderer;
    .locals 4
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/apps/books/render/ReaderRenderer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 825
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mStubView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/google/android/apps/books/widget/PageTurnView;->setReadingMode(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/ViewGroup;I)Lcom/google/android/apps/books/render/ReaderRenderer;

    move-result-object v1

    return-object v1
.end method

.method private setRenderer(Lcom/google/android/apps/books/render/ReaderRenderer;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/books/render/ReaderRenderer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, newRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<*>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1299
    const-string v2, "ReaderFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveToRenderer() renderer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    if-eqz p1, :cond_0

    .line 1301
    invoke-virtual {p1}, Lcom/google/android/apps/books/render/ReaderRenderer;->isSetup()Z

    move-result v2

    const-string v3, "newRenderer not setup"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1304
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    if-eqz v2, :cond_1

    .line 1305
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    invoke-virtual {v2}, Lcom/google/android/apps/books/render/ReaderRenderer;->teardown()V

    .line 1308
    :cond_1
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    .line 1313
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v2}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    move v1, v5

    .line 1314
    .local v1, validMetadata:Z
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->getModeForRenderer(Lcom/google/android/apps/books/render/ReaderRenderer;)I

    move-result v0

    .line 1315
    .local v0, currentMode:I
    if-eqz v1, :cond_2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 1316
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v2, v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->setForceMode(I)V

    .line 1321
    :cond_2
    if-ne v0, v5, :cond_4

    move v2, v5

    :goto_1
    iput-boolean v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mZoomEnabled:Z

    .line 1326
    return-void

    .end local v0           #currentMode:I
    .end local v1           #validMetadata:Z
    :cond_3
    move v1, v6

    .line 1313
    goto :goto_0

    .restart local v0       #currentMode:I
    .restart local v1       #validMetadata:Z
    :cond_4
    move v2, v6

    .line 1321
    goto :goto_1
.end method

.method private setupGestureDetector(Landroid/view/View;)V
    .locals 5
    .parameter "target"

    .prologue
    .line 1344
    const-string v4, "setupGestureDetector missing view"

    invoke-static {p1, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1348
    .local v0, context:Landroid/content/Context;
    new-instance v2, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;

    invoke-direct {v2, p0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/view/View;)V

    .line 1349
    .local v2, gestureListener:Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;
    new-instance v1, Landroid/view/GestureDetector;

    invoke-direct {v1, v0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 1350
    .local v1, gestureDetector:Landroid/view/GestureDetector;
    new-instance v3, Landroid/view/ScaleGestureDetector;

    invoke-direct {v3, v0, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 1352
    .local v3, scaleGestureDetector:Landroid/view/ScaleGestureDetector;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 1354
    new-instance v4, Lcom/google/android/apps/books/app/ReaderFragment$16;

    invoke-direct {v4, p0, v1, v3, v2}, Lcom/google/android/apps/books/app/ReaderFragment$16;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/view/GestureDetector;Landroid/view/ScaleGestureDetector;Lcom/google/android/apps/books/app/ReaderFragment$ReaderGestureListener;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1379
    return-void
.end method

.method private static snapshotView(Landroid/view/View;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "view"
    .parameter "convertBitmap"

    .prologue
    const/4 v5, 0x1

    .line 624
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 625
    .local v3, width:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 627
    .local v2, height:I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v2, v4, :cond_1

    move v1, v5

    .line 631
    .local v1, dimensionsMatch:Z
    :goto_0
    if-nez v1, :cond_0

    .line 632
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 635
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 636
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 637
    return-object p1

    .line 627
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #dimensionsMatch:Z
    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method private startSearchWithinVolume(Ljava/lang/String;)V
    .locals 6
    .parameter "query"

    .prologue
    const/4 v4, 0x1

    .line 1107
    iput-boolean v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchModeActive:Z

    .line 1109
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsAdapter:Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->setEmptyLoading(Z)V

    .line 1110
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsAdapter:Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1111
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    .line 1114
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v0

    .line 1115
    .local v0, account:Landroid/accounts/Account;
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/util/LoaderParams;->getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 1116
    .local v2, volumeId:Ljava/lang/String;
    invoke-static {v0, v2, p1}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeParams;->buildFrom(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1117
    .local v1, args:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const v4, 0x7f0e0004

    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchWithinVolumeLoader:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v3, v4, v1, v5}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1120
    return-void
.end method

.method private teardownGestureDetector(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 1382
    const-string v0, "missing PageTurnView"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1384
    return-void
.end method

.method private updateDeviceConnected(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 242
    invoke-static {p1}, Lcom/google/android/apps/books/util/Config;->isDeviceConnected(Landroid/content/Context;)Z

    move-result v2

    .line 244
    .local v2, deviceConnected:Z
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;

    invoke-direct {p0, v4}, Lcom/google/android/apps/books/app/ReaderFragment;->getModeForRenderer(Lcom/google/android/apps/books/render/ReaderRenderer;)I

    move-result v0

    .line 246
    .local v0, currentMode:I
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v4}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    move v3, v4

    .line 247
    .local v3, validMetadata:Z
    :goto_0
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 249
    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    move v1, v0

    .line 250
    .local v1, desiredMode:I
    :goto_1
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-boolean v4, v4, Lcom/google/android/apps/books/model/VolumeMetadata;->hasTextMode:Z

    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-boolean v5, v5, Lcom/google/android/apps/books/model/VolumeMetadata;->hasImageMode:Z

    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/apps/books/app/ReaderFragment;->dispatchModesAvailable(IZZ)V

    .line 259
    .end local v1           #desiredMode:I
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeUpdateMenu()V

    .line 260
    return-void

    .end local v3           #validMetadata:Z
    :cond_1
    move v3, v6

    .line 246
    goto :goto_0

    .line 249
    .restart local v3       #validMetadata:Z
    :cond_2
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v4}, Lcom/google/android/apps/books/model/VolumeMetadata;->getMode()I

    move-result v4

    move v1, v4

    goto :goto_1

    .line 252
    :cond_3
    if-nez v2, :cond_0

    if-eqz v3, :cond_0

    .line 255
    new-instance v4, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/app/ReaderFragment$1;)V

    new-array v5, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/google/android/apps/books/app/ReaderFragment$UpdateDeviceConnectedTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method


# virtual methods
.method public acceptNewPosition(Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/common/Position;)V
    .locals 7
    .parameter "account"
    .parameter "volumeId"
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 1419
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    .line 1420
    .local v6, arguments:Landroid/os/Bundle;
    invoke-static {v6}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1421
    invoke-static {v6}, Lcom/google/android/apps/books/util/LoaderParams;->getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 1424
    const-string v3, "ScrollToPage"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p3

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/app/ReaderFragment;->moveToPosition(Lcom/google/android/apps/books/common/Position;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 1425
    return-void
.end method

.method public createHelpArguments()Landroid/os/Bundle;
    .locals 7

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLastPosition:Lcom/google/android/apps/books/common/Position;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLastPosition:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v0}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, position:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLastPosition:Lcom/google/android/apps/books/common/Position;

    invoke-virtual {v0}, Lcom/google/android/apps/books/common/Position;->getPageName()Ljava/lang/String;

    move-result-object v3

    .line 286
    .local v3, pageNumber:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->creator:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, creator:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v0, v0, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getMode()I

    move-result v1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/books/app/HelpFragment$Arguments;->create(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 293
    .end local v2           #position:Ljava/lang/String;
    .end local v3           #pageNumber:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #creator:Ljava/lang/String;
    .local v6, result:Landroid/os/Bundle;
    :goto_1
    return-object v6

    .line 283
    .end local v6           #result:Landroid/os/Bundle;
    :cond_0
    const/4 v2, 0x0

    .line 284
    .restart local v2       #position:Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3       #pageNumber:Ljava/lang/String;
    goto :goto_0

    .line 291
    .end local v2           #position:Ljava/lang/String;
    .end local v3           #pageNumber:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    .restart local v6       #result:Landroid/os/Bundle;
    goto :goto_1
.end method

.method public moveToPosition(Lcom/google/android/apps/books/common/Position;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter "position"
    .parameter "fromUser"
    .parameter "lastAction"
    .parameter "highlight"
    .parameter "saveUndo"

    .prologue
    .line 1388
    if-eqz p5, :cond_0

    .line 1389
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLastPosition:Lcom/google/android/apps/books/common/Position;

    invoke-direct {p0, v2}, Lcom/google/android/apps/books/app/ReaderFragment;->saveUndo(Lcom/google/android/apps/books/common/Position;)V

    .line 1393
    :cond_0
    if-nez p4, :cond_1

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_1

    .line 1394
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 1397
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/android/apps/books/widget/PageTurnView;->moveToPosition(Lcom/google/android/apps/books/common/Position;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1401
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageIndex(Lcom/google/android/apps/books/common/Position;)I

    move-result v1

    .line 1402
    .local v1, pageIndex:I
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/books/widget/ScrubBar;->setPosition(I)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1409
    .end local v1           #pageIndex:I
    :goto_0
    return-void

    .line 1403
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1406
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v2, "ReaderFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveToPosition() unable to find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v4, v4, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 389
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 392
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 393
    .local v0, args:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const v4, 0x7f0e0001

    invoke-virtual {v3, v4, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 396
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 397
    .local v1, context:Landroid/content/Context;
    iget-boolean v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mStartedReadingPositionFetch:Z

    if-nez v3, :cond_0

    invoke-static {v1}, Lcom/google/android/apps/books/util/Config;->isDeviceConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mStartedReadingPositionFetch:Z

    .line 399
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/books/common/BooksContext;

    invoke-interface {v3}, Lcom/google/android/apps/books/common/BooksContext;->getResponseGetter()Lcom/google/android/apps/books/net/ResponseGetter;

    move-result-object v2

    .line 401
    .local v2, getter:Lcom/google/android/apps/books/net/ResponseGetter;
    new-instance v3, Lcom/google/android/apps/books/app/ReaderFragment$MyFetchReadingPositionTask;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/books/util/LoaderParams;->getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v5

    invoke-direct {v3, p0, v2, v4, v5}, Lcom/google/android/apps/books/app/ReaderFragment$MyFetchReadingPositionTask;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/net/ResponseGetter;Ljava/lang/String;Landroid/accounts/Account;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/books/app/ReaderFragment$MyFetchReadingPositionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 404
    .end local v2           #getter:Lcom/google/android/apps/books/net/ResponseGetter;
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2384
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v3

    .line 2387
    .local v3, scene:Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-interface {v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->isSettingsVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2388
    invoke-interface {v3, v6}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showSettings(Z)V

    move v4, v5

    .line 2410
    :goto_0
    return v4

    .line 2396
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2397
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2399
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 2400
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_2

    move v2, v5

    .line 2404
    .local v2, intentSpecifiedOnHome:Z
    :goto_1
    if-nez v2, :cond_1

    invoke-interface {v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->isHomeVisited()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2405
    :cond_1
    invoke-interface {v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHome()V

    :goto_2
    move v4, v5

    .line 2410
    goto :goto_0

    .end local v2           #intentSpecifiedOnHome:Z
    :cond_2
    move v2, v6

    .line 2400
    goto :goto_1

    .line 2402
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #intentSpecifiedOnHome:Z
    goto :goto_1

    .line 2407
    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 299
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->setHasOptionsMenu(Z)V

    .line 301
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "ReaderFragment"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 303
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 304
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/apps/books/model/VolumeMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getFetchService()Ljava/util/concurrent/Future;

    move-result-object v2

    .line 566
    .local v2, fetchService:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<Lcom/google/android/apps/books/service/ContentFetchService;>;"
    invoke-static {p2}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v3

    .line 567
    .local v3, account:Landroid/accounts/Account;
    invoke-static {p2}, Lcom/google/android/apps/books/util/LoaderParams;->getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 568
    .local v4, volumeId:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getUpdateVolumeOverview()Z

    move-result v5

    .line 572
    .local v5, updateVolumeOverview:Z
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getAddToMyEBooks()Z

    move-result v6

    .line 574
    .local v6, checkShelfMembership:Z
    new-instance v0, Lcom/google/android/apps/books/model/VolumeMetadataLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/model/VolumeMetadataLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/Future;Landroid/accounts/Account;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 978
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 979
    const v0, 0x7f120003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 982
    const v0, 0x7f0e0054

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    .line 984
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mNavigator:Lcom/google/android/apps/books/util/Navigator;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->setNavigator(Lcom/google/android/apps/books/util/Navigator;)V

    .line 985
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    new-instance v1, Lcom/google/android/apps/books/app/ReaderFragment$8;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/app/ReaderFragment$8;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 993
    const v0, 0x7f0e0053

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchMenu:Landroid/view/MenuItem;

    .line 994
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchMenu:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    .line 995
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 997
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnSearchClickListener(Landroid/view/View$OnClickListener;)V

    .line 998
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchCloseListener:Landroid/widget/SearchView$OnCloseListener;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 999
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1000
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 1002
    const v0, 0x7f0e0058

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mKeepAvailableOffline:Landroid/view/MenuItem;

    .line 1003
    const v0, 0x7f0e0056

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMenuBookBuy:Landroid/view/MenuItem;

    .line 1006
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeUpdateMenu()V

    .line 1007
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeAnchorSearchResultsPopup()V

    .line 1008
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    .line 310
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 311
    .local v3, context:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 313
    .local v4, resources:Landroid/content/res/Resources;
    const v6, 0x7f0d000e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMinimumZoomPastEdge:I

    .line 314
    const v6, 0x7f0d000f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mVerticalRut:I

    .line 315
    const v6, 0x7f0d0010

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mIgnoreTouchesHorizontalMargin:F

    .line 317
    const v6, 0x7f0d0009

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mZoomMaxSpan:I

    .line 319
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mResolver:Landroid/content/ContentResolver;

    .line 320
    new-instance v6, Lcom/google/android/apps/books/model/ReadingPositionSaver;

    iget-object v7, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v6, v7}, Lcom/google/android/apps/books/model/ReadingPositionSaver;-><init>(Landroid/content/ContentResolver;)V

    iput-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPositionSaver:Lcom/google/android/apps/books/model/ReadingPositionSaver;

    .line 322
    const v6, 0x7f04000a

    const/4 v7, 0x0

    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    .line 323
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    const v7, 0x7f0e004b

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mStubView:Landroid/view/ViewGroup;

    .line 328
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v6

    const v7, 0x7f0e000b

    invoke-interface {v6, v7}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->findStaticViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/books/widget/PageTurnView;

    iput-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    .line 329
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v6, p0}, Lcom/google/android/apps/books/widget/PageTurnView;->setReaderDelegate(Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;)V

    .line 330
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0, v6}, Lcom/google/android/apps/books/app/ReaderFragment;->setupGestureDetector(Landroid/view/View;)V

    .line 332
    const/4 v2, 0x1

    .line 333
    .local v2, consumeFadeIn:Z
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/google/android/apps/books/util/LoaderParams;->getReaderFadeIn(Landroid/os/Bundle;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 334
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v6, v8}, Lcom/google/android/apps/books/widget/PageTurnView;->setShouldFadeIn(Z)V

    .line 343
    :goto_0
    new-instance v5, Lcom/google/android/apps/books/app/ReaderFragment$ReaderSpecialViews;

    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    invoke-direct {v5, p0, p1, v6}, Lcom/google/android/apps/books/app/ReaderFragment$ReaderSpecialViews;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 344
    .local v5, specialViews:Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v6, v5}, Lcom/google/android/apps/books/widget/PageTurnView;->setSpecialViews(Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;)V

    .line 346
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    new-instance v7, Lcom/google/android/apps/books/app/ReaderFragment$3;

    invoke-direct {v7, p0}, Lcom/google/android/apps/books/app/ReaderFragment$3;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 354
    new-instance v6, Lcom/google/android/apps/books/util/VolumeScrubIndex;

    invoke-direct {v6}, Lcom/google/android/apps/books/util/VolumeScrubIndex;-><init>()V

    iput-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubIndex:Lcom/google/android/apps/books/util/VolumeScrubIndex;

    .line 356
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    const v7, 0x7f0e0039

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/books/widget/ScrubBar;

    iput-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    .line 357
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-virtual {v6, p0}, Lcom/google/android/apps/books/widget/ScrubBar;->setOnScrubListener(Lcom/google/android/apps/books/widget/ScrubBar$OnScrubListener;)V

    .line 358
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    iget-object v7, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubIndex:Lcom/google/android/apps/books/util/VolumeScrubIndex;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/books/widget/ScrubBar;->setScrubIndex(Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;)V

    .line 362
    new-instance v6, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-direct {v6, v3}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/google/android/apps/books/preference/LocalPreferences;->getBrightness()I

    move-result v0

    .line 363
    .local v0, brightness:I
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    invoke-interface {v6, v0}, Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;->onBrightnessChanged(I)V

    .line 364
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSettingsListener:Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;

    invoke-interface {v6}, Lcom/google/android/apps/books/app/ReaderSettingsFragment$ReaderSettingsListener;->onThemeChanged()V

    .line 370
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mConnReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 372
    invoke-direct {p0, v3}, Lcom/google/android/apps/books/app/ReaderFragment;->updateDeviceConnected(Landroid/content/Context;)V

    .line 375
    new-instance v6, Landroid/widget/ListPopupWindow;

    const/4 v7, 0x0

    const v8, 0x1010300

    invoke-direct {v6, v3, v7, v8}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    .line 376
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeAnchorSearchResultsPopup()V

    .line 379
    new-instance v6, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    invoke-direct {v6, v3}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsAdapter:Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    .line 380
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    iget-object v7, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsAdapter:Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 381
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    iget-object v7, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 382
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    iget-object v7, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mOnSearchPopupDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v6, v7}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 384
    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    return-object v6

    .line 337
    .end local v0           #brightness:I
    .end local v5           #specialViews:Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v6

    const v7, 0x7f0e000a

    invoke-interface {v6, v7}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->findStaticViewById(I)Landroid/view/View;

    move-result-object v1

    .line 338
    .local v1, carousel:Landroid/view/View;
    invoke-static {v1, v8}, Lcom/google/android/apps/books/app/BooksActivity;->setViewOffscreen(Landroid/view/View;Z)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 547
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/ReadingAccessManager;->stop()V

    .line 552
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 553
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 554
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/app/ReadingAccessManager;->maybeReleaseAccessLock(Landroid/content/Context;)V

    .line 557
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 558
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 520
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 521
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 523
    iput-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    .line 525
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->teardownGestureDetector(Landroid/view/View;)V

    .line 529
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 530
    iput-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsPopup:Landroid/widget/ListPopupWindow;

    .line 532
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 534
    iput-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchView:Landroid/widget/SearchView;

    .line 537
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/widget/PageTurnView;->setSpecialViews(Lcom/google/android/apps/books/widget/PageTurnView$SpecialViews;)V

    .line 538
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->resetZoom()V

    .line 540
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 541
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 12
    .parameter "exception"

    .prologue
    const/4 v11, 0x0

    const v10, 0x104000a

    const/high16 v9, 0x104

    const/4 v8, 0x1

    const-string v7, "ReaderFragment"

    .line 1512
    const-string v5, "ReaderFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reader ran into error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1517
    .local v2, context:Landroid/content/Context;
    if-eqz v2, :cond_1

    iget-boolean v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mHasShownErrorDialog:Z

    if-nez v5, :cond_1

    move v4, v8

    .line 1518
    .local v4, validContext:Z
    :goto_0
    iput-boolean v8, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mHasShownErrorDialog:Z

    .line 1522
    if-nez v4, :cond_2

    .line 1523
    const-string v5, "ReaderFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onError() without valid context: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_0
    :goto_1
    return-void

    .end local v4           #validContext:Z
    :cond_1
    move v4, v11

    .line 1517
    goto :goto_0

    .line 1527
    .restart local v4       #validContext:Z
    :cond_2
    instance-of v5, p1, Lcom/google/android/apps/books/util/SessionKeyFactory$RootKeyExpiredException;

    if-eqz v5, :cond_3

    .line 1528
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1529
    .local v1, args:Landroid/os/Bundle;
    const v5, 0x7f0b005d

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setMessageText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1530
    const v5, 0x7f0b005e

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1531
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->buildMarketUpdateIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveIntent(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 1532
    invoke-virtual {p0, v9}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setNegativeText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1533
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showError(Landroid/os/Bundle;)V

    .line 1534
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHomeAllowingStateLoss()V

    goto :goto_1

    .line 1536
    .end local v1           #args:Landroid/os/Bundle;
    :cond_3
    instance-of v5, p1, Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;

    if-eqz v5, :cond_4

    .line 1537
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1538
    .restart local v1       #args:Landroid/os/Bundle;
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;

    move-object v3, v0

    .line 1539
    .local v3, ole:Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;
    const v5, 0x7f0b0060

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;->getDeviceLimit()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-virtual {p0, v5, v6}, Lcom/google/android/apps/books/app/ReaderFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setMessageText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1541
    const v5, 0x7f0b0062

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1542
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->buildContextSupportIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveIntent(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 1543
    invoke-virtual {p0, v9}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setNegativeText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1544
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showError(Landroid/os/Bundle;)V

    .line 1545
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHomeAllowingStateLoss()V

    goto/16 :goto_1

    .line 1547
    .end local v1           #args:Landroid/os/Bundle;
    .end local v3           #ole:Lcom/google/android/apps/books/util/BlockedContentReason$OfflineLimitException;
    :cond_4
    instance-of v5, p1, Lcom/google/android/apps/books/util/BlockedContentReason$BlockedContentException;

    if-eqz v5, :cond_5

    .line 1548
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1549
    .restart local v1       #args:Landroid/os/Bundle;
    const v5, 0x7f0b0061

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setMessageText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1550
    const v5, 0x7f0b0062

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1551
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->buildContextSupportIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveIntent(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 1552
    invoke-virtual {p0, v9}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setNegativeText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1553
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showError(Landroid/os/Bundle;)V

    .line 1554
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHomeAllowingStateLoss()V

    goto/16 :goto_1

    .line 1556
    .end local v1           #args:Landroid/os/Bundle;
    :cond_5
    instance-of v5, p1, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;

    if-eqz v5, :cond_6

    .line 1557
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1558
    .restart local v1       #args:Landroid/os/Bundle;
    const v5, 0x7f0b005f

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setMessageText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1559
    invoke-virtual {p0, v10}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1560
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showError(Landroid/os/Bundle;)V

    .line 1561
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHomeAllowingStateLoss()V

    goto/16 :goto_1

    .line 1563
    .end local v1           #args:Landroid/os/Bundle;
    :cond_6
    instance-of v5, p1, Lcom/google/android/apps/books/net/ResponseGetter$OfflineIoException;

    if-eqz v5, :cond_7

    .line 1564
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1565
    .restart local v1       #args:Landroid/os/Bundle;
    const v5, 0x7f0b0075

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setMessageText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1566
    invoke-virtual {p0, v10}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1567
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showError(Landroid/os/Bundle;)V

    .line 1568
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHomeAllowingStateLoss()V

    goto/16 :goto_1

    .line 1570
    .end local v1           #args:Landroid/os/Bundle;
    :cond_7
    instance-of v5, p1, Lcom/google/android/apps/books/provider/ExternalStorageUnavailableException;

    if-nez v5, :cond_8

    instance-of v5, p1, Lcom/google/android/apps/books/provider/ExternalStorageInconsistentException;

    if-eqz v5, :cond_9

    .line 1572
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1573
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->onExternalStorageException()V

    goto/16 :goto_1

    .line 1576
    :cond_9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1577
    .restart local v1       #args:Landroid/os/Bundle;
    const v5, 0x7f0b0076

    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setMessageText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1578
    invoke-virtual {p0, v10}, Lcom/google/android/apps/books/app/ReaderFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/android/apps/books/app/ErrorFragment$ErrorParams;->setPositiveText(Landroid/os/Bundle;Ljava/lang/CharSequence;)V

    .line 1579
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v5

    invoke-interface {v5, v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showError(Landroid/os/Bundle;)V

    .line 1580
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHomeAllowingStateLoss()V

    .line 1583
    instance-of v5, p1, Lcom/google/android/apps/books/net/ResponseGetter$UncategorizedIoException;

    if-nez v5, :cond_a

    instance-of v5, p1, Lcom/google/android/apps/books/net/ResponseGetter$ClientIoException;

    if-nez v5, :cond_a

    instance-of v5, p1, Lcom/google/android/apps/books/net/ResponseGetter$ServerIoException;

    if-eqz v5, :cond_b

    .line 1588
    :cond_a
    const-string v5, "ReaderFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "problem with network: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1590
    :cond_b
    instance-of v5, p1, Lcom/google/android/apps/books/model/VolumeMetadataLoader$VolumeAccessException;

    if-eqz v5, :cond_c

    .line 1592
    const-string v5, "ReaderFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VolumeAccessException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1596
    :cond_c
    const-string v5, "ReaderFragment"

    const-string v5, "reader ran into unexpected error"

    invoke-static {v7, v5, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public onFadeInComplete()V
    .locals 2

    .prologue
    .line 1482
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/apps/books/app/ReaderFragment$17;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/app/ReaderFragment$17;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1493
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/google/android/apps/books/model/VolumeMetadata;)V
    .locals 12
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/apps/books/model/VolumeMetadata;",
            ">;",
            "Lcom/google/android/apps/books/model/VolumeMetadata;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/apps/books/model/VolumeMetadata;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v11, "ReaderFragment"

    .line 831
    instance-of v0, p2, Lcom/google/android/apps/books/model/ExceptionVolumeMetadata;

    if-eqz v0, :cond_1

    .line 832
    check-cast p2, Lcom/google/android/apps/books/model/ExceptionVolumeMetadata;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/books/model/ExceptionVolumeMetadata;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->onLoadException(Landroid/content/Loader;Ljava/lang/Exception;)V

    .line 893
    :cond_0
    :goto_0
    return-void

    .line 836
    .restart local p2
    :cond_1
    const-string v0, "ReaderFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadFinished() found vid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p2, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iput-object p2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    .line 840
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 841
    .local v7, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    iget-object v4, p2, Lcom/google/android/apps/books/model/VolumeMetadata;->title:Ljava/lang/CharSequence;

    iget-object v5, p2, Lcom/google/android/apps/books/model/VolumeMetadata;->creator:Ljava/lang/CharSequence;

    invoke-interface {v0, v4, v5}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->populateActionBar(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 843
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubIndex:Lcom/google/android/apps/books/util/VolumeScrubIndex;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/books/util/VolumeScrubIndex;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/apps/books/model/VolumeMetadata;)V

    .line 844
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubIndex:Lcom/google/android/apps/books/util/VolumeScrubIndex;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/books/widget/ScrubBar;->setScrubIndex(Lcom/google/android/apps/books/widget/ScrubBar$ScrubIndex;)V

    .line 847
    iget-object v8, p2, Lcom/google/android/apps/books/model/VolumeMetadata;->fetchService:Lcom/google/android/apps/books/service/ContentFetchService;

    .line 850
    .local v8, fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->getMode()I

    move-result v10

    .line 851
    .local v10, readingMode:I
    invoke-direct {p0, v10}, Lcom/google/android/apps/books/app/ReaderFragment;->setModeInPageTurnView(I)Lcom/google/android/apps/books/render/ReaderRenderer;

    move-result-object v9

    .line 852
    .local v9, newRenderer:Lcom/google/android/apps/books/render/ReaderRenderer;,"Lcom/google/android/apps/books/render/ReaderRenderer<*>;"
    invoke-virtual {v9, v8, p2}, Lcom/google/android/apps/books/render/ReaderRenderer;->setup(Lcom/google/android/apps/books/service/ContentFetchService;Lcom/google/android/apps/books/model/VolumeMetadata;)V

    .line 853
    invoke-direct {p0, v9}, Lcom/google/android/apps/books/app/ReaderFragment;->setRenderer(Lcom/google/android/apps/books/render/ReaderRenderer;)V

    .line 857
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubIndex:Lcom/google/android/apps/books/util/VolumeScrubIndex;

    invoke-virtual {v0, v10}, Lcom/google/android/apps/books/util/VolumeScrubIndex;->setReadingMode(I)V

    .line 858
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/ScrubBar;->invalidate()V

    .line 861
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeUpdateMenu()V

    .line 863
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsAdapter:Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/apps/books/model/VolumeMetadata;)V

    .line 868
    invoke-virtual {p2}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPosition()Lcom/google/android/apps/books/common/Position;

    move-result-object v1

    .line 869
    .local v1, position:Lcom/google/android/apps/books/common/Position;
    const-string v0, "ReaderFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoring from lastPosition="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v4, v3

    move v5, v2

    .line 870
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/app/ReaderFragment;->moveToPosition(Lcom/google/android/apps/books/common/Position;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 874
    invoke-direct {p0, v7}, Lcom/google/android/apps/books/app/ReaderFragment;->updateDeviceConnected(Landroid/content/Context;)V

    .line 876
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getUpdateVolumeOverview()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getAddToMyEBooks()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/apps/books/model/VolumeMetadata;->isInMyEBooksCollection()Z

    move-result v0

    if-nez v0, :cond_2

    .line 878
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    iget-object v2, p2, Lcom/google/android/apps/books/model/VolumeMetadata;->account:Landroid/accounts/Account;

    iget-object v4, p2, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->addVolumeToMyEBooks(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 881
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/google/android/apps/books/model/VolumeMetadata;->access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    sget-object v2, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->PURCHASED:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 882
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/books/common/BooksContext;

    .line 883
    .local v6, booksContext:Lcom/google/android/apps/books/common/BooksContext;
    new-instance v0, Lcom/google/android/apps/books/app/ReadingAccessManager;

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mReadingAccessDelegate:Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;

    iget-object v4, p2, Lcom/google/android/apps/books/model/VolumeMetadata;->account:Landroid/accounts/Account;

    iget-object v5, p2, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-interface {v6}, Lcom/google/android/apps/books/common/BooksContext;->getResponseGetter()Lcom/google/android/apps/books/net/ResponseGetter;

    move-result-object v11

    invoke-direct {v0, v2, v4, v5, v11}, Lcom/google/android/apps/books/app/ReadingAccessManager;-><init>(Lcom/google/android/apps/books/app/ReadingAccessManager$Reader;Landroid/accounts/Account;Ljava/lang/String;Lcom/google/android/apps/books/net/ResponseGetter;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    .line 885
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ReadingAccessManager;->start()V

    .line 889
    .end local v6           #booksContext:Lcom/google/android/apps/books/common/BooksContext;
    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mServerPosition:Lcom/google/android/apps/books/common/Position;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mServerPosition:Lcom/google/android/apps/books/common/Position;

    iget-wide v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mServerAccess:J

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/apps/books/app/ReaderFragment;->maybeHandleServerPosition(Lcom/google/android/apps/books/common/Position;J)V

    .line 891
    iput-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mServerPosition:Lcom/google/android/apps/books/common/Position;

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    check-cast p2, Lcom/google/android/apps/books/model/VolumeMetadata;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/app/ReaderFragment;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/apps/books/model/VolumeMetadata;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/google/android/apps/books/model/VolumeMetadata;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 969
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/google/android/apps/books/model/VolumeMetadata;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    .line 971
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubIndex:Lcom/google/android/apps/books/util/VolumeScrubIndex;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/util/VolumeScrubIndex;->onLoaderReset(Landroid/content/Loader;)V

    .line 972
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mTableOfContents:Lcom/google/android/apps/books/widget/TableOfContentsActionItem;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/widget/TableOfContentsActionItem;->onLoaderReset(Landroid/content/Loader;)V

    .line 973
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSearchResultsAdapter:Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeAdapter;->onLoaderReset(Landroid/content/Loader;)V

    .line 974
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1222
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v1

    .line 1223
    .local v1, scene:Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v3, v4

    .line 1262
    :goto_0
    return v3

    .line 1225
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->clearSearchViewFocus()V

    .line 1226
    invoke-interface {v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->isSettingsVisible()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v6

    :goto_1
    invoke-interface {v1, v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showSettings(Z)V

    move v3, v6

    .line 1227
    goto :goto_0

    :cond_0
    move v3, v4

    .line 1226
    goto :goto_1

    .line 1230
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/util/LoaderParams;->getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 1231
    .local v2, volumeId:Ljava/lang/String;
    invoke-interface {v1, v2}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startAboutVolume(Ljava/lang/String;)V

    move v3, v6

    .line 1232
    goto :goto_0

    .line 1235
    .end local v2           #volumeId:Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/books/util/LoaderParams;->getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 1236
    .restart local v2       #volumeId:Ljava/lang/String;
    invoke-interface {v1, v2}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startBuyVolume(Ljava/lang/String;)V

    move v3, v6

    .line 1237
    goto :goto_0

    .line 1241
    .end local v2           #volumeId:Ljava/lang/String;
    :pswitch_3
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-nez v3, :cond_1

    move v3, v6

    goto :goto_0

    .line 1244
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v6

    .line 1245
    .local v0, pinned:Z
    :goto_2
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1247
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPositionSaver:Lcom/google/android/apps/books/model/ReadingPositionSaver;

    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v4, v4, Lcom/google/android/apps/books/model/VolumeMetadata;->account:Landroid/accounts/Account;

    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v5, v5, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v0}, Lcom/google/android/apps/books/model/ReadingPositionSaver;->startPinnedSave(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/util/concurrent/Future;

    move v3, v6

    .line 1248
    goto :goto_0

    .end local v0           #pinned:Z
    :cond_2
    move v0, v4

    .line 1244
    goto :goto_2

    .line 1252
    :pswitch_4
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-nez v3, :cond_3

    move v3, v6

    goto :goto_0

    .line 1254
    :cond_3
    iget-object v3, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v3, v3, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v4, v4, Lcom/google/android/apps/books/model/VolumeMetadata;->title:Ljava/lang/CharSequence;

    invoke-interface {v1, v3, v4}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startShare(Ljava/lang/String;Ljava/lang/CharSequence;)V

    move v3, v6

    .line 1255
    goto :goto_0

    .line 1258
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->createHelpArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v1, v6, v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->showHelp(ZLandroid/os/Bundle;)V

    move v3, v6

    .line 1259
    goto :goto_0

    .line 1223
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0055
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 468
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 469
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->pause()V

    .line 470
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->releaseWakeLock()V

    .line 474
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_1

    .line 477
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-virtual {v1}, Lcom/google/android/apps/books/app/ReadingAccessManager;->stop()V

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 483
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 484
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/app/ReadingAccessManager;->maybeReleaseAccessLock(Landroid/content/Context;)V

    .line 487
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    return-void
.end method

.method public onPositionChanged(Lcom/google/android/apps/books/common/Position;ZLjava/lang/String;)V
    .locals 9
    .parameter "position"
    .parameter "fromUser"
    .parameter "lastAction"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "ReaderFragment"

    .line 1429
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v4}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    move v3, v8

    .line 1430
    .local v3, validMetadata:Z
    :goto_0
    if-nez v3, :cond_2

    .line 1431
    const-string v4, "ReaderFragment"

    const-string v4, "validMetadata missing, dropping position update on floor"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :cond_0
    :goto_1
    return-void

    .end local v3           #validMetadata:Z
    :cond_1
    move v3, v7

    .line 1429
    goto :goto_0

    .line 1435
    .restart local v3       #validMetadata:Z
    :cond_2
    const-string v4, "missing position"

    invoke-static {p1, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    if-nez p3, :cond_3

    if-nez p2, :cond_6

    :cond_3
    move v4, v8

    :goto_2
    const-string v5, "missing lastAction"

    invoke-static {v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1441
    const-string v4, "ReaderFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPositionChanged() with position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    :try_start_0
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v4, p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageIndex(Lcom/google/android/apps/books/common/Position;)I

    move-result v1

    .line 1446
    .local v1, pageIndex:I
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mScrubBar:Lcom/google/android/apps/books/widget/ScrubBar;

    invoke-virtual {v4, v1}, Lcom/google/android/apps/books/widget/ScrubBar;->setPosition(I)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1456
    .end local v1           #pageIndex:I
    :goto_3
    if-eqz p2, :cond_4

    .line 1457
    invoke-virtual {p1}, Lcom/google/android/apps/books/common/Position;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1458
    .local v2, positionString:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPositionSaver:Lcom/google/android/apps/books/model/ReadingPositionSaver;

    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v5, v5, Lcom/google/android/apps/books/model/VolumeMetadata;->account:Landroid/accounts/Account;

    iget-object v6, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v6, v6, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v2, p3}, Lcom/google/android/apps/books/model/ReadingPositionSaver;->startPositionSave(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1460
    iput-boolean v8, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mHaveSavedPosition:Z

    .line 1464
    .end local v2           #positionString:Ljava/lang/String;
    :cond_4
    const-string v4, "NextPage"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "PrevPage"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1465
    :cond_5
    iget v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSoftActionCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSoftActionCount:I

    .line 1470
    :goto_4
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mLastPosition:Lcom/google/android/apps/books/common/Position;

    .line 1471
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v4, p1}, Lcom/google/android/apps/books/model/VolumeMetadata;->setForcePosition(Lcom/google/android/apps/books/common/Position;)V

    .line 1475
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mUndoPosition:Lcom/google/android/apps/books/common/Position;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSoftActionCount:I

    const/4 v5, 0x5

    if-le v4, v5, :cond_0

    .line 1476
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->clearUndo()V

    goto :goto_1

    :cond_6
    move v4, v7

    .line 1439
    goto :goto_2

    .line 1447
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1450
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v4, "ReaderFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPositionChanged() unable to find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in volume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    iget-object v5, v5, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1467
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :cond_7
    iput v7, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSoftActionCount:I

    goto :goto_4
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 458
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 459
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->resume()V

    .line 460
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->renewWakeLock()V

    .line 461
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mAccessManager:Lcom/google/android/apps/books/app/ReadingAccessManager;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ReadingAccessManager;->start()V

    .line 464
    :cond_0
    return-void
.end method

.method public onScrub(Lcom/google/android/apps/books/widget/ScrubBar;IZZ)V
    .locals 8
    .parameter "scrubBar"
    .parameter "itemPosition"
    .parameter "activeScrub"
    .parameter "fromUser"

    .prologue
    const/4 v2, 0x1

    .line 1647
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    move v7, v2

    .line 1648
    .local v7, validMetadata:Z
    :goto_0
    if-nez p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz v7, :cond_0

    .line 1649
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v0, p2}, Lcom/google/android/apps/books/model/VolumeMetadata;->getPageId(I)Ljava/lang/String;

    move-result-object v6

    .line 1650
    .local v6, pageId:Ljava/lang/String;
    new-instance v1, Lcom/google/android/apps/books/common/Position;

    invoke-direct {v1, v6}, Lcom/google/android/apps/books/common/Position;-><init>(Ljava/lang/String;)V

    const-string v3, "ScrollToPage"

    const/4 v4, 0x0

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/app/ReaderFragment;->moveToPosition(Lcom/google/android/apps/books/common/Position;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 1652
    .end local v6           #pageId:Ljava/lang/String;
    :cond_0
    return-void

    .line 1647
    .end local v7           #validMetadata:Z
    :cond_1
    const/4 v0, 0x0

    move v7, v0

    goto :goto_0
.end method

.method public onScrubUndo(Lcom/google/android/apps/books/widget/ScrubBar;)V
    .locals 6
    .parameter "scrubBar"

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mUndoPosition:Lcom/google/android/apps/books/common/Position;

    if-eqz v0, :cond_0

    .line 1657
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mUndoPosition:Lcom/google/android/apps/books/common/Position;

    const/4 v2, 0x1

    const-string v3, "ScrollToPage"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/app/ReaderFragment;->moveToPosition(Lcom/google/android/apps/books/common/Position;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 1658
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->clearUndo()V

    .line 1660
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 425
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 427
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v3

    .line 430
    .local v3, scene:Lcom/google/android/apps/books/app/BooksActivity$Scene;
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mSystemUiListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 433
    invoke-direct {p0, v7}, Lcom/google/android/apps/books/app/ReaderFragment;->setChromeVisible(Z)V

    .line 436
    const v4, 0x7f0e000b

    invoke-interface {v3, v4}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->findStaticViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v6}, Lcom/google/android/apps/books/app/BooksActivity;->setViewOffscreen(Landroid/view/View;Z)V

    .line 438
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    sget-object v5, Lcom/google/android/apps/books/R$styleable;->Theme:[I

    invoke-virtual {v4, v9, v5, v6, v6}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 439
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 440
    .local v2, background:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 442
    invoke-interface {v3}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 443
    .local v1, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    invoke-virtual {v1, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 448
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {v4}, Lcom/google/android/apps/books/model/VolumeMetadata;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 449
    iget-object v4, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mMetadata:Lcom/google/android/apps/books/model/VolumeMetadata;

    invoke-virtual {p0, v9, v4}, Lcom/google/android/apps/books/app/ReaderFragment;->onLoadFinished(Landroid/content/Loader;Lcom/google/android/apps/books/model/VolumeMetadata;)V

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->bindSettingsFragment()V

    .line 454
    return-void
.end method

.method public onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 491
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 494
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 498
    invoke-direct {p0, v4}, Lcom/google/android/apps/books/app/ReaderFragment;->setRenderer(Lcom/google/android/apps/books/render/ReaderRenderer;)V

    .line 499
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->clearRenderer()V

    .line 500
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/PageTurnView;->refreshPages()V

    .line 504
    iget-boolean v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mHaveSavedPosition:Z

    if-eqz v2, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v0

    .line 506
    .local v0, account:Landroid/accounts/Account;
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->requestManualSyncUpload(Landroid/accounts/Account;)V

    .line 511
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/books/provider/BooksContract$Collections;->dirUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 512
    .local v1, collectionDirUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 515
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #collectionDirUri:Landroid/net/Uri;
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->releaseSettingsFragment()V

    .line 516
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 1277
    invoke-direct {p0}, Lcom/google/android/apps/books/app/ReaderFragment;->renewWakeLock()V

    .line 1278
    return-void
.end method
