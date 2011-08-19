.class public Lcom/google/android/apps/books/app/VolumeCarouselFragment;
.super Landroid/app/Fragment;
.source "VolumeCarouselFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/google/android/apps/books/app/OnBackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;,
        Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumesQuery;,
        Lcom/google/android/apps/books/app/VolumeCarouselFragment$PopupMenuListener;,
        Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;,
        Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;,
        Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;,
        Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/apps/books/app/OnBackListener;"
    }
.end annotation


# static fields
.field private static final ATLAS_HEIGHT:I = 0x100

.field private static final ATLAS_WIDTH:I = 0x100

.field private static final AVERAGE_IMAGE_VOLUME_SIZE:J = 0x989680L

.field private static final AVERAGE_TEXT_VOLUME_SIZE:J = 0xf4240L

.field private static final BOOK_GEOMETRY:I = 0x7f080000

.field private static final HOLDOFF_DELAY:I = 0x64

#the value of this static final field might be set in the static constructor
.field private static final LOGD:Z = false

.field private static final ON_DEMAND_GEOMETRY:Z = false

.field private static final PERFORM_REQUERY:I = 0x1

.field private static final QUEUE_REQUERY:I = 0x0

.field private static final REQUERY_DELAY_MILLIS:I = 0x1f4

.field private static final STORAGE_INDICATOR_MAX_VALUE:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "VolumeCarouselFragment"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field mAllUpdatedPinnedStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAspectRatio:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mAtlasRenderer:Lcom/google/android/apps/books/widget/AtlasRenderer;

.field private final mCarouselHelperLock:Ljava/lang/Object;

.field private mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

.field private mCollectionVolumesEditor:Lcom/google/android/apps/books/model/CollectionVolumesEditor;

.field private final mConnReceiver:Landroid/content/BroadcastReceiver;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mController:Lcom/android/ex/carousel/CarouselController;

.field private mCursor:Landroid/database/Cursor;

.field private mDetailTextureParameters:[Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;

.field private mDetailView:Landroid/view/View;

.field private mDeviceConnected:Z

.field private mEmptyView:Landroid/view/ViewGroup;

.field private mHelper:Lcom/android/ex/carousel/CarouselViewHelper;

.field private mLoadedVolumes:[Ljava/lang/String;

.field private mManageOfflineView:Landroid/view/View;

.field private mManageOfflineViewAnimator:Landroid/animation/Animator;

.field private mNumRows:I

.field private mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

.field private final mOfflineViewAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private final mRequeryHandler:Landroid/os/Handler;

.field private mResolver:Landroid/content/ContentResolver;

.field private mShowingOfflineUi:Z

.field private mSyncState:Lcom/google/android/apps/books/sync/SyncAccountsState;

.field private mUiThreadHandler:Landroid/os/Handler;

.field private mView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "VolumeCarouselFragment"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->LOGD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 124
    new-instance v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$RequeryHandler;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Lcom/google/android/apps/books/app/VolumeCarouselFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mRequeryHandler:Landroid/os/Handler;

    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHelperLock:Ljava/lang/Object;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAllUpdatedPinnedStates:Ljava/util/Map;

    .line 215
    new-instance v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$1;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 577
    new-instance v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$4;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$4;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineViewAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1428
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->updateDeviceConnected(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->LOGD:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHelperLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mLoadedVolumes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/database/Cursor;)D
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getDownloadedFractionLocked(Landroid/database/Cursor;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/widget/BooksCarouselView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/service/ContentFetchService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->blockingGetFetchService()Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mUiThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDeviceConnected:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mRequeryHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAspectRatio:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDetailView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)[Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDetailTextureParameters:[Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mNumRows:I

    return v0
.end method

.method static synthetic access$2600(Lcom/google/android/apps/books/app/VolumeCarouselFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->togglePinnedStatus(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/android/apps/books/app/VolumeCarouselFragment;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setPinnedStatus(IZ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/model/CollectionVolumesEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCollectionVolumesEditor:Lcom/google/android/apps/books/model/CollectionVolumesEditor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineViewAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->updateOfflineUi()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private animateOfflineViewAlphaBetween(FF)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineViewAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineViewAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineViewAnimator:Landroid/animation/Animator;

    .line 607
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineViewAnimator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineViewAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 608
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineViewAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 609
    return-void
.end method

.method private blockingGetFetchService()Lcom/google/android/apps/books/service/ContentFetchService;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1410
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1411
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lcom/google/android/apps/books/app/BooksActivity;

    if-eqz v2, :cond_0

    .line 1413
    :try_start_0
    check-cast v0, Lcom/google/android/apps/books/app/BooksActivity;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity;->getFetchService()Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/apps/books/service/ContentFetchService;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, p0

    .line 1420
    :goto_0
    return-object v2

    .line 1414
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/lang/InterruptedException;
    move-object v2, v3

    .line 1415
    goto :goto_0

    .line 1416
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/util/concurrent/ExecutionException;
    move-object v2, v3

    .line 1417
    goto :goto_0

    .end local v1           #e:Ljava/util/concurrent/ExecutionException;
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local p0
    :cond_0
    move-object v2, v3

    .line 1420
    goto :goto_0
.end method

.method private findFreeSpaceLabel()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    const v1, 0x7f0e0029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method private findStorageIndicator()Landroid/widget/ProgressBar;
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    const v1, 0x7f0e0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private getDownloadedFractionLocked(Landroid/database/Cursor;)D
    .locals 6
    .parameter "cursor"

    .prologue
    .line 818
    iget-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 819
    .local v1, preferredMode:I
    iget-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x7

    invoke-static {v4, v5}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v3

    .line 820
    .local v3, sectionFraction:Ljava/lang/Double;
    iget-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v2

    .line 821
    .local v2, resourceFraction:Ljava/lang/Double;
    iget-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    const/16 v5, 0x9

    invoke-static {v4, v5}, Lcom/google/android/apps/books/util/CursorUtils;->getDoubleObject(Landroid/database/Cursor;I)Ljava/lang/Double;

    move-result-object v0

    .line 822
    .local v0, pageFraction:Ljava/lang/Double;
    invoke-static {v1, v3, v2, v0}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getDownloadedFraction(ILjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)D

    move-result-wide v4

    return-wide v4
.end method

.method private getPinnedStatus(I)Z
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    const-string v1, "VolumeCarouselFragment"

    .line 1316
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHelperLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1317
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1318
    :cond_0
    const-string v2, "VolumeCarouselFragment"

    const-string v3, "getPinnedStatus() found no open cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    monitor-exit v1

    move v1, v4

    .line 1330
    .end local p0
    :goto_0
    return v1

    .line 1320
    .restart local p0
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_2

    .line 1321
    const-string v2, "VolumeCarouselFragment"

    const-string v3, "getPinnedStatus() ran off the end"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    monitor-exit v1

    move v1, v4

    goto :goto_0

    .line 1325
    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1326
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, volumeId:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAllUpdatedPinnedStates:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1328
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAllUpdatedPinnedStates:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 1330
    .restart local p0
    :cond_3
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/google/android/apps/books/util/CursorUtils;->getBoolean(Landroid/database/Cursor;I)Z

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 1332
    .end local v0           #volumeId:Ljava/lang/String;
    .end local p0
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .locals 1

    .prologue
    .line 1406
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getScene(Landroid/app/Fragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    return-object v0
.end method

.method private invalidateDetailTextures()V
    .locals 3

    .prologue
    .line 539
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/BooksCarouselView;->getCardCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 541
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mController:Lcom/android/ex/carousel/CarouselController;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/ex/carousel/CarouselController;->invalidateDetailTexture(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_0
    return-void

    .line 542
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private invalidateTextures()V
    .locals 3

    .prologue
    .line 526
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/BooksCarouselView;->getCardCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mController:Lcom/android/ex/carousel/CarouselController;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/ex/carousel/CarouselController;->invalidateTexture(IZ)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 536
    :cond_0
    return-void

    .line 529
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static makeStorageIndicatorValue(JJ)I
    .locals 2
    .parameter "num"
    .parameter "den"

    .prologue
    .line 697
    long-to-float v0, p0

    long-to-float v1, p2

    div-float/2addr v0, v1

    const v1, 0x461c4000

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private setPinnedStatus(IZ)V
    .locals 7
    .parameter "position"
    .parameter "pinned"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "VolumeCarouselFragment"

    .line 1336
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHelperLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1337
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1338
    :cond_0
    const-string v3, "VolumeCarouselFragment"

    const-string v4, "setPinnedStatus() found no open cursor"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    monitor-exit v2

    .line 1357
    :goto_0
    return-void

    .line 1340
    :cond_1
    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 1341
    const-string v3, "VolumeCarouselFragment"

    const-string v4, "setPinnedStatus() ran off the end"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    monitor-exit v2

    goto :goto_0

    .line 1356
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1345
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1346
    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1348
    .local v1, volumeId:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getPinnedStatus(I)Z

    move-result v0

    .line 1349
    .local v0, currentPinned:Z
    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-ne v3, p1, :cond_4

    move v3, v6

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 1350
    if-eq v0, p2, :cond_3

    .line 1351
    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    iget-object v3, v3, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mUpdatedPinnedStates:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1352
    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAllUpdatedPinnedStates:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mController:Lcom/android/ex/carousel/CarouselController;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/ex/carousel/CarouselController;->invalidateDetailTexture(IZ)V

    .line 1354
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->updateOfflineUi()V

    .line 1356
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_4
    move v3, v5

    .line 1349
    goto :goto_1
.end method

.method private togglePinnedStatus(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHelperLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1311
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getPinnedStatus(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setPinnedStatus(IZ)V

    .line 1312
    monitor-exit v0

    .line 1313
    return-void

    .line 1311
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1312
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateDeviceConnected(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 226
    invoke-static {p1}, Lcom/google/android/apps/books/util/Config;->isDeviceConnected(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDeviceConnected:Z

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksCarouselView;->clearCoverCache()V

    .line 228
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->invalidateTextures()V

    .line 231
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDeviceConnected:Z

    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setShowOfflineUi(Z)V

    .line 234
    :cond_0
    return-void
.end method

.method private updateOfflineUi()V
    .locals 25

    .prologue
    .line 701
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 702
    .local v4, context:Landroid/content/Context;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->findStorageIndicator()Landroid/widget/ProgressBar;

    move-result-object v20

    .line 703
    .local v20, storageIndicator:Landroid/widget/ProgressBar;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->findFreeSpaceLabel()Landroid/widget/TextView;

    move-result-object v11

    .line 704
    .local v11, freeSpaceLabelView:Landroid/widget/TextView;
    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mTotalBytes:Ljava/lang/Long;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 707
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 708
    const/16 v21, 0x2710

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mUsedBytes:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mTotalBytes:Ljava/lang/Long;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    invoke-static/range {v21 .. v24}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->makeStorageIndicatorValue(JJ)I

    move-result v18

    .line 711
    .local v18, progress:I
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 713
    const-wide/16 v8, 0x0

    .line 714
    .local v8, editBytes:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHelperLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 718
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mUpdatedPinnedStates:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 719
    .local v10, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object v2, v5

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/util/CursorUtils;->moveToStringValueLocked(Landroid/database/Cursor;ILjava/lang/String;)Z

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0xa

    invoke-static/range {v22 .. v23}, Lcom/google/android/apps/books/util/CursorUtils;->getBoolean(Landroid/database/Cursor;I)Z

    move-result v5

    .line 723
    .local v5, currentPinned:Z
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .line 724
    .local v15, newPinned:Z
    if-eq v5, v15, :cond_0

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/16 v23, 0x6

    invoke-interface/range {v22 .. v23}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 726
    .local v14, mode:Ljava/lang/Integer;
    const/16 v22, 0x2

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    const-wide/32 v22, 0xf4240

    move-wide/from16 v6, v22

    .line 729
    .local v6, delta:J
    :goto_1
    if-nez v15, :cond_1

    .line 730
    const-wide/16 v22, -0x1

    mul-long v6, v6, v22

    .line 732
    :cond_1
    add-long/2addr v8, v6

    goto :goto_0

    .line 726
    .end local v6           #delta:J
    :cond_2
    const-wide/32 v22, 0x989680

    move-wide/from16 v6, v22

    goto :goto_1

    .line 735
    .end local v5           #currentPinned:Z
    .end local v10           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v14           #mode:Ljava/lang/Integer;
    .end local v15           #newPinned:Z
    :cond_3
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mUsedBytes:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    add-long v16, v21, v8

    .line 739
    .local v16, newUsedBytes:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mTotalBytes:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    move-wide/from16 v0, v16

    move-wide/from16 v2, v21

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->makeStorageIndicatorValue(JJ)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;->mTotalBytes:Ljava/lang/Long;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    sub-long v21, v21, v16

    move-object v0, v4

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    .line 744
    .local v19, sizeString:Ljava/lang/String;
    const v21, 0x7f0b0058

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v19, v22, v23

    move-object v0, v4

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 745
    .local v13, label:Ljava/lang/String;
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    const/16 v21, 0x0

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 751
    .end local v8           #editBytes:J
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #label:Ljava/lang/String;
    .end local v16           #newUsedBytes:J
    .end local v18           #progress:I
    .end local v19           #sizeString:Ljava/lang/String;
    :goto_2
    return-void

    .line 735
    .restart local v8       #editBytes:J
    .restart local v18       #progress:I
    :catchall_0
    move-exception v22

    :try_start_1
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v22

    .line 748
    .end local v8           #editBytes:J
    .end local v18           #progress:I
    :cond_4
    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 749
    const/16 v21, 0x4

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public isShowingOfflineUi()Z
    .locals 1

    .prologue
    .line 574
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 207
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 208
    .local v0, args:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAccount:Landroid/accounts/Account;

    .line 210
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/high16 v2, 0x7f0e

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 212
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAspectRatio:Ljava/util/Map;

    .line 213
    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1361
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->isShowingOfflineUi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1362
    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setShowOfflineUi(Z)V

    .line 1363
    const/4 v0, 0x1

    .line 1365
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 199
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setHasOptionsMenu(Z)V

    .line 200
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mUiThreadHandler:Landroid/os/Handler;

    .line 201
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 9
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 439
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 440
    .local v1, context:Landroid/content/Context;
    invoke-static {p2}, Lcom/google/android/apps/books/util/LoaderParams;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v7

    .line 442
    .local v7, account:Landroid/accounts/Account;
    invoke-static {v7}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->myEBooksDirUri(Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/books/provider/BooksContract;->markLocal(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 444
    .local v2, volumeDirUri:Landroid/net/Uri;
    const-string v8, "CASE WHEN last_access IS NULL THEN 9223372036854775807 ELSE last_access END DESC"

    .line 447
    .local v8, sortingOrder:Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v3, Lcom/google/android/apps/books/app/VolumeCarouselFragment$VolumesQuery;->PROJECTION:[Ljava/lang/String;

    const-string v6, "CASE WHEN last_access IS NULL THEN 9223372036854775807 ELSE last_access END DESC"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 553
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 554
    const v0, 0x7f120002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 555
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 23
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 241
    .local v8, context:Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 243
    .local v16, res:Landroid/content/res/Resources;
    new-instance v18, Lcom/google/android/apps/books/sync/SyncAccountsState;

    move-object/from16 v0, v18

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/sync/SyncAccountsState;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mSyncState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    .line 245
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mResolver:Landroid/content/ContentResolver;

    .line 246
    new-instance v18, Lcom/google/android/apps/books/model/CollectionVolumesEditor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/google/android/apps/books/model/CollectionVolumesEditor;-><init>(Landroid/content/ContentResolver;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCollectionVolumesEditor:Lcom/google/android/apps/books/model/CollectionVolumesEditor;

    .line 248
    new-instance v18, Lcom/google/android/apps/books/widget/AtlasRenderer;

    const/16 v19, 0x100

    const/16 v20, 0x100

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/widget/AtlasRenderer;-><init>(Landroid/content/res/Resources;II)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAtlasRenderer:Lcom/google/android/apps/books/widget/AtlasRenderer;

    .line 251
    const v18, 0x7f040009

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, p2

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/view/ViewGroup;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mView:Landroid/view/ViewGroup;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    const v19, 0x1020004

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mEmptyView:Landroid/view/ViewGroup;

    .line 256
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v18

    const v19, 0x7f0e000a

    invoke-interface/range {v18 .. v19}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->findStaticViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/apps/books/widget/BooksCarouselView;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/apps/books/widget/BooksCarouselView;->getController()Lcom/android/ex/carousel/CarouselController;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mController:Lcom/android/ex/carousel/CarouselController;

    .line 259
    new-instance v18, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAtlasRenderer:Lcom/google/android/apps/books/widget/AtlasRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/content/Context;Lcom/google/android/apps/books/widget/AtlasRenderer;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mHelper:Lcom/android/ex/carousel/CarouselViewHelper;

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mHelper:Lcom/android/ex/carousel/CarouselViewHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/ex/carousel/CarouselViewHelper;->setCarouselView(Lcom/android/ex/carousel/CarouselView;)V

    .line 262
    const v18, 0x7f02004b

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 264
    .local v15, placeholder:Landroid/graphics/Bitmap;
    const/16 v18, 0x0

    sget-object v19, Lcom/google/android/apps/books/R$styleable;->Theme:[I

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v0, v8

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 265
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v18, 0x0

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 267
    .local v6, carouselBackground:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAtlasRenderer:Lcom/google/android/apps/books/widget/AtlasRenderer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object v1, v15

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/books/widget/AtlasRenderer;->render(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    move-object/from16 v18, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    move-object/from16 v18, v0

    const/high16 v19, 0x7f08

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setDefaultGeometry(I)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mController:Lcom/android/ex/carousel/CarouselController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/ex/carousel/CarouselController;->createCards(I)V

    .line 280
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object v7, v0

    fill-array-data v7, :array_0

    .line 297
    .local v7, configs:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mController:Lcom/android/ex/carousel/CarouselController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/ex/carousel/CarouselController;->setStoreConfigs([I)V

    .line 299
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 302
    const v18, 0x7f0d000d

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 304
    .local v9, detailTextureOffsetX:I
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 306
    const v18, 0x7f090005

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    .line 312
    .local v10, detailTextureOffsetY:[I
    :goto_0
    move-object v0, v10

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mNumRows:I

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mNumRows:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDetailTextureParameters:[Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;

    .line 314
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mNumRows:I

    move/from16 v18, v0

    move v0, v14

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDetailTextureParameters:[Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;

    move v0, v9

    int-to-float v0, v0

    move/from16 v20, v0

    aget v21, v10, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    invoke-direct/range {v19 .. v21}, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;-><init>(FF)V

    aput-object v19, v18, v14

    .line 314
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 308
    .end local v10           #detailTextureOffsetY:[I
    .end local v14           #i:I
    :cond_0
    const v18, 0x7f090004

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    .restart local v10       #detailTextureOffsetY:[I
    goto :goto_0

    .line 322
    .restart local v14       #i:I
    :cond_1
    new-instance v12, Landroid/view/ContextThemeWrapper;

    const v18, 0x103006b

    move-object v0, v12

    move-object v1, v8

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 324
    .local v12, holoContext:Landroid/content/Context;
    move-object/from16 v0, p1

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 325
    .local v13, holoInflater:Landroid/view/LayoutInflater;
    const v18, 0x7f040014

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mView:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object v0, v13

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    .line 326
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    const/16 v18, 0x0

    move/from16 v17, v18

    .line 327
    .local v17, visibility:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 328
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->updateOfflineUi()V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0e0027

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 333
    .local v11, doneButton:Landroid/view/View;
    new-instance v18, Lcom/google/android/apps/books/app/VolumeCarouselFragment$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$2;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHelperLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 341
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDetailView:Landroid/view/View;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 342
    const v19, 0x7f040022

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDetailView:Landroid/view/View;

    .line 344
    :cond_2
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mConnReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    new-instance v19, Landroid/content/IntentFilter;

    const-string v20, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct/range {v19 .. v20}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v8

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 348
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->updateDeviceConnected(Landroid/content/Context;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mView:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    return-object v18

    .line 326
    .end local v11           #doneButton:Landroid/view/View;
    .end local v17           #visibility:I
    :cond_3
    const/16 v18, 0x8

    move/from16 v17, v18

    goto/16 :goto_2

    .line 344
    .restart local v11       #doneButton:Landroid/view/View;
    .restart local v17       #visibility:I
    :catchall_0
    move-exception v19

    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v19

    .line 280
    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 377
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 378
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mHelper:Lcom/android/ex/carousel/CarouselViewHelper;

    invoke-virtual {v0}, Lcom/android/ex/carousel/CarouselViewHelper;->onDestroy()V

    .line 379
    return-void
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    .line 355
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 357
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 358
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 360
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHelperLock:Ljava/lang/Object;

    monitor-enter v1

    .line 363
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    invoke-virtual {v2}, Lcom/google/android/apps/books/widget/BooksCarouselView;->clearCoverCache()V

    .line 369
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/apps/books/widget/BooksCarouselView;->setCallback(Lcom/android/ex/carousel/CarouselRS$CarouselCallback;)V

    .line 371
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDetailView:Landroid/view/View;

    .line 372
    monitor-exit v1

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 13
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 454
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const-string v9, "VolumeCarouselFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onLoadFinished() with count="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 459
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->hintHomeLoaded()V

    .line 463
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 464
    .local v3, count:I
    iget-object v9, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mSyncState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    iget-object v10, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getLastMyEbooksFetchTime(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    move v0, v9

    .line 466
    .local v0, alreadyFetched:Z
    :goto_0
    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    const/4 v9, 0x1

    move v6, v9

    .line 468
    .local v6, showEmpty:Z
    :goto_1
    iget-object v9, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mEmptyView:Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 470
    iget-object v9, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHelperLock:Ljava/lang/Object;

    monitor-enter v9

    .line 471
    :try_start_0
    iget-object v10, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    invoke-virtual {v10}, Lcom/google/android/apps/books/widget/BooksCarouselView;->getCardCount()I

    move-result v2

    .line 472
    .local v2, carouselSize:I
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 474
    .local v7, updatedSize:I
    if-ne v2, v7, :cond_5

    const/4 v10, 0x1

    move v1, v10

    .line 475
    .local v1, carouselMatches:Z
    :goto_3
    iget-object v10, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mLoadedVolumes:[Ljava/lang/String;

    if-nez v10, :cond_6

    const/4 v10, 0x0

    move v5, v10

    .line 478
    .local v5, loadedMatches:Z
    :goto_4
    if-eqz v1, :cond_8

    if-eqz v5, :cond_8

    .line 481
    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    if-ge v4, v7, :cond_a

    .line 482
    invoke-interface {p2, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 483
    const/4 v10, 0x1

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 484
    .local v8, volumeId:Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mLoadedVolumes:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 485
    iget-object v10, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mLoadedVolumes:[Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v11, v10, v4

    .line 486
    iget-object v10, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mController:Lcom/android/ex/carousel/CarouselController;

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Lcom/android/ex/carousel/CarouselController;->invalidateTexture(IZ)V

    .line 487
    iget-object v10, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mController:Lcom/android/ex/carousel/CarouselController;

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Lcom/android/ex/carousel/CarouselController;->invalidateDetailTexture(IZ)V

    .line 481
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 464
    .end local v0           #alreadyFetched:Z
    .end local v1           #carouselMatches:Z
    .end local v2           #carouselSize:I
    .end local v4           #i:I
    .end local v5           #loadedMatches:Z
    .end local v6           #showEmpty:Z
    .end local v7           #updatedSize:I
    .end local v8           #volumeId:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 466
    .restart local v0       #alreadyFetched:Z
    :cond_3
    const/4 v9, 0x0

    move v6, v9

    goto :goto_1

    .line 468
    .restart local v6       #showEmpty:Z
    :cond_4
    const/16 v10, 0x8

    goto :goto_2

    .line 474
    .restart local v2       #carouselSize:I
    .restart local v7       #updatedSize:I
    :cond_5
    const/4 v10, 0x0

    move v1, v10

    goto :goto_3

    .line 475
    .restart local v1       #carouselMatches:Z
    :cond_6
    iget-object v10, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mLoadedVolumes:[Ljava/lang/String;

    array-length v10, v10

    if-ne v10, v7, :cond_7

    const/4 v10, 0x1

    move v5, v10

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    move v5, v10

    goto :goto_4

    .line 494
    .restart local v5       #loadedMatches:Z
    :cond_8
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_6
    if-ge v4, v2, :cond_9

    .line 495
    iget-object v10, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mController:Lcom/android/ex/carousel/CarouselController;

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Lcom/android/ex/carousel/CarouselController;->invalidateTexture(IZ)V

    .line 496
    iget-object v10, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mController:Lcom/android/ex/carousel/CarouselController;

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Lcom/android/ex/carousel/CarouselController;->invalidateDetailTexture(IZ)V

    .line 494
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 502
    :cond_9
    iget-object v10, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/android/apps/books/widget/BooksCarouselView;->createCards(I)V

    .line 504
    new-array v10, v7, [Ljava/lang/String;

    iput-object v10, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mLoadedVolumes:[Ljava/lang/String;

    .line 505
    iget-object v10, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    invoke-virtual {v10, v7}, Lcom/google/android/apps/books/widget/BooksCarouselView;->createCards(I)V

    .line 508
    :cond_a
    iput-object p2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    .line 509
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->invalidateDetailTextures()V

    .line 514
    return-void

    .line 509
    .end local v1           #carouselMatches:Z
    .end local v2           #carouselSize:I
    .end local v4           #i:I
    .end local v5           #loadedMatches:Z
    .end local v7           #updatedSize:I
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 518
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHelperLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    .line 522
    monitor-exit v0

    .line 523
    return-void

    .line 522
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 808
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 814
    :goto_0
    return v0

    .line 810
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z

    if-nez v0, :cond_0

    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->setShowOfflineUi(Z)V

    move v0, v2

    .line 811
    goto :goto_0

    :cond_0
    move v0, v1

    .line 810
    goto :goto_1

    .line 808
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0052
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 432
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 433
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mHelper:Lcom/android/ex/carousel/CarouselViewHelper;

    invoke-virtual {v0}, Lcom/android/ex/carousel/CarouselViewHelper;->onPause()V

    .line 434
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 435
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 559
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 561
    const v1, 0x7f0e0052

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 562
    .local v0, manageOffline:Landroid/view/MenuItem;
    iget-boolean v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mDeviceConnected:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 563
    return-void

    .line 562
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 415
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 416
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mHelper:Lcom/android/ex/carousel/CarouselViewHelper;

    invoke-virtual {v0}, Lcom/android/ex/carousel/CarouselViewHelper;->onResume()V

    .line 418
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 419
    new-instance v0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$3;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 428
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 383
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 385
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getScene()Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v1

    .line 388
    .local v1, scene:Lcom/google/android/apps/books/app/BooksActivity$Scene;
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 389
    invoke-interface {v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->show()V

    .line 391
    const v2, 0x7f0e000a

    invoke-interface {v1, v2}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->findStaticViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/google/android/apps/books/app/BooksActivity;->setViewOffscreen(Landroid/view/View;Z)V

    .line 392
    const v2, 0x7f0e000b

    invoke-interface {v1, v2}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->findStaticViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/android/apps/books/app/BooksActivity;->setViewOffscreen(Landroid/view/View;Z)V

    .line 395
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/books/util/WindowUtils;->setBrightness(ILandroid/view/Window;)V

    .line 397
    invoke-interface {v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 398
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    const/4 v2, 0x4

    invoke-virtual {v0, v4, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 401
    const v2, 0x7f0b0008

    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->populateActionBar(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 405
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselHelperLock:Ljava/lang/Object;

    monitor-enter v2

    .line 406
    :try_start_0
    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 407
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v3, v4}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 409
    :cond_0
    monitor-exit v2

    .line 411
    return-void

    .line 409
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public rotateCarouselBackToOrigin()V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mCarouselView:Lcom/google/android/apps/books/widget/BooksCarouselView;

    invoke-virtual {v0}, Lcom/google/android/apps/books/widget/BooksCarouselView;->rotateCarouselBackToOrigin()V

    .line 646
    :cond_0
    return-void
.end method

.method public setShowOfflineUi(Z)V
    .locals 6
    .parameter "show"

    .prologue
    const/4 v5, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 612
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z

    if-nez v1, :cond_1

    .line 613
    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->animateOfflineViewAlphaBetween(FF)V

    .line 615
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 618
    new-instance v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    invoke-direct {v1, p0, v5}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Lcom/google/android/apps/books/app/VolumeCarouselFragment$1;)V

    iput-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    .line 620
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 621
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 622
    new-instance v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/content/Context;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$StorageStatsLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 638
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->invalidateDetailTextures()V

    .line 639
    iput-boolean p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z

    .line 640
    return-void

    .line 625
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z

    if-eqz v1, :cond_0

    .line 626
    invoke-direct {p0, v3, v2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->animateOfflineViewAlphaBetween(FF)V

    .line 634
    new-instance v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;

    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;-><init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/accounts/Account;Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$CommitOfflineChangesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 636
    iput-object v5, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mOfflineManagementContext:Lcom/google/android/apps/books/app/VolumeCarouselFragment$OfflineManagementContext;

    goto :goto_0
.end method
