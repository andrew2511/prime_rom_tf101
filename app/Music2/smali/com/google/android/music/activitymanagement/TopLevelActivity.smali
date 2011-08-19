.class public Lcom/google/android/music/activitymanagement/TopLevelActivity;
.super Landroid/app/ActivityGroup;
.source "TopLevelActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/music/MusicUtils$Defs;
.implements Lcom/google/android/music/BottomBarChangeListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/google/android/music/store/StoreStateListener;
.implements Lcom/google/android/music/menu/MusicMenu$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;,
        Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;,
        Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;,
        Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;,
        Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;
    }
.end annotation


# static fields
.field public static final ACTION_PLAYBACK_VIEWER:Ljava/lang/String; = "com.google.android.music.PLAYBACK_VIEWER"

.field private static final ACTION_SEARCH_RESULT:Ljava/lang/String; = "android.intent.action.SEARCH_RESULT"

.field public static final ACTION_SHOW_TRACKLISTING:Ljava/lang/String; = "com.google.android.music.SHOW_TRACKLISTING"

.field private static final ACTIVITY_MANAGER_STATES_KEY:Ljava/lang/String; = "android:states"

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field public static final MODE_2D_AVAILABLE:I = 0x1

.field public static final MODE_3D_AVAILABLE:I = 0x2

.field public static final MODE_SWITCH_AVAILABLE:I = 0x3

.field private static final NFS_SHOW_INIT:I = -0x1

.field private static final NFS_SHOW_MUSIC:I = 0x1

.field private static final NFS_SHOW_NOTHING:I = 0x0

.field private static final NFS_SHOW_PLAYLISTS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TopLevelActivity"

.field private static final TOPMOST_CHILD_ACTIVITY:Ljava/lang/String; = "topLevelActivity"


# instance fields
.field private mActivityManager:Landroid/app/LocalActivityManager;

.field private mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

.field private mBackgroundView:Lcom/google/android/music/BackgroundView;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentDisplayMode:I

.field private mCurrentNoMusicView:Lcom/google/android/music/TransitionableViewWrapper;

.field private mFullContentFrame:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mImportState:I

.field private mIsLandscape:Z

.field private mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLimitedContentFrame:Landroid/view/ViewGroup;

.field private mManageMusicMenu:Lcom/google/android/music/menu/ManageMusicMenu;

.field private mMediaStoreImportConnection:Landroid/content/ServiceConnection;

.field private mMenuKeyDown:Z

.field private mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/music/menu/MusicMenu;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNoLocalMusicView:Lcom/google/android/music/TransitionableViewWrapper;

.field private mNoMusicFoundViewEnabled:Z

.field private mNoMusicStreamingDisabledView:Lcom/google/android/music/TransitionableViewWrapper;

.field private mNoMusicStreamingEnabledView:Lcom/google/android/music/TransitionableViewWrapper;

.field private mNoPlaylistsView:Lcom/google/android/music/TransitionableViewWrapper;

.field private mNotFoundState:I

.field private mNowPlayingBar:Lcom/google/android/music/NowPlayingBar;

.field private mOnServiceConnectedRunnable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneUses3DInLandscape:Z

.field private mSoftKeyboardInvoked:Z

.field private mStartedTutorial:Z

.field private mSyncInProgress:Z

.field mSyncObserver:Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;

.field private mSyncObserverHandle:Ljava/lang/Object;

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mTopBar:Lcom/google/android/music/TopBar;

.field private mUseListViewsInLandscape:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    const-string v0, "TopLevelActivity"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 204
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    .line 148
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    .line 162
    iput v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mNotFoundState:I

    .line 163
    iput-boolean v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mNoMusicFoundViewEnabled:Z

    .line 170
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-direct {v0, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 172
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 190
    iput-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOnServiceConnectedRunnable:Ljava/util/List;

    .line 194
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$1;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMediaStoreImportConnection:Landroid/content/ServiceConnection;

    .line 318
    iput-boolean v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mStartedTutorial:Z

    .line 961
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$4;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1567
    iput v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentDisplayMode:I

    .line 2289
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/activitymanagement/TopLevelActivity$1;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSyncObserver:Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;

    .line 205
    new-instance v0, Landroid/app/LocalActivityManager;

    invoke-direct {v0, p0, v4}, Landroid/app/LocalActivityManager;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    .line 206
    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/NowPlayingBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mNowPlayingBar:Lcom/google/android/music/NowPlayingBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/TopBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTopBar:Lcom/google/android/music/TopBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/activitymanagement/TopLevelActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setDisplayModeIfDifferent(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getUseListViewsInLandscape()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/google/android/music/activitymanagement/TopLevelActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setUseListViewsInLandscape(Z)V

    return-void
.end method

.method static synthetic access$1902(Lcom/google/android/music/activitymanagement/TopLevelActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSyncInProgress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->updateNoMusicState()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/AppStateStack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/BackgroundView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBackgroundView:Lcom/google/android/music/BackgroundView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/jumper/MusicPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method private animateViews(Lcom/google/android/music/activitymanagement/AppState;)V
    .locals 8
    .parameter "newView"

    .prologue
    const/4 v1, 0x0

    .line 1257
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/AppState;->getView()Landroid/view/View;

    move-result-object v5

    .line 1258
    .local v5, incomingView:Landroid/view/View;
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/AppState;->useFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mFullContentFrame:Landroid/view/ViewGroup;

    move-object v4, v0

    .line 1264
    .local v4, incomingViewGroup:Landroid/view/ViewGroup;
    :goto_0
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBackgroundView:Lcom/google/android/music/BackgroundView;

    invoke-virtual {v0}, Lcom/google/android/music/BackgroundView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/AppState;->isUseSystemBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1266
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBackgroundView:Lcom/google/android/music/BackgroundView;

    invoke-virtual {v0, v1}, Lcom/google/android/music/BackgroundView;->setVisibility(I)V

    .line 1268
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mFullContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1269
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mFullContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1270
    .local v3, outgoingView:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mFullContentFrame:Landroid/view/ViewGroup;

    .line 1279
    .local v2, outgoingViewGroup:Landroid/view/ViewGroup;
    :goto_1
    invoke-static {}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->createIncomingViewAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    .line 1281
    .local v6, animateIn:Landroid/view/animation/Animation;
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$7;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/activitymanagement/AppState;)V

    invoke-virtual {v6, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1300
    invoke-static {}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->createOutgoingViewAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    .line 1302
    .local v7, animateOut:Landroid/view/animation/Animation;
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/activitymanagement/TopLevelActivity$8;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/animation/Animation;)V

    invoke-virtual {v7, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1315
    if-eqz v3, :cond_4

    .line 1316
    invoke-virtual {v3, v7}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1321
    :goto_2
    return-void

    .line 1258
    .end local v2           #outgoingViewGroup:Landroid/view/ViewGroup;
    .end local v3           #outgoingView:Landroid/view/View;
    .end local v4           #incomingViewGroup:Landroid/view/ViewGroup;
    .end local v6           #animateIn:Landroid/view/animation/Animation;
    .end local v7           #animateOut:Landroid/view/animation/Animation;
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mLimitedContentFrame:Landroid/view/ViewGroup;

    move-object v4, v0

    goto :goto_0

    .line 1271
    .restart local v4       #incomingViewGroup:Landroid/view/ViewGroup;
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mLimitedContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1272
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mLimitedContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1273
    .restart local v3       #outgoingView:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mLimitedContentFrame:Landroid/view/ViewGroup;

    .restart local v2       #outgoingViewGroup:Landroid/view/ViewGroup;
    goto :goto_1

    .line 1275
    .end local v2           #outgoingViewGroup:Landroid/view/ViewGroup;
    .end local v3           #outgoingView:Landroid/view/View;
    :cond_3
    const/4 v3, 0x0

    .line 1276
    .restart local v3       #outgoingView:Landroid/view/View;
    const/4 v2, 0x0

    .restart local v2       #outgoingViewGroup:Landroid/view/ViewGroup;
    goto :goto_1

    .line 1318
    .restart local v6       #animateIn:Landroid/view/animation/Animation;
    .restart local v7       #animateOut:Landroid/view/animation/Animation;
    :cond_4
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1319
    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method

.method private clearAppStack()V
    .locals 4

    .prologue
    .line 954
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/AppStateStack;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 955
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v2, v0}, Lcom/google/android/music/activitymanagement/AppStateStack;->get(I)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v1

    .line 956
    .local v1, state:Lcom/google/android/music/activitymanagement/AppState;
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v2, v0}, Lcom/google/android/music/activitymanagement/AppStateStack;->remove(I)V

    .line 957
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/activitymanagement/AppState;->destroy(Landroid/app/LocalActivityManager;Z)V

    .line 954
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 959
    .end local v1           #state:Lcom/google/android/music/activitymanagement/AppState;
    :cond_0
    return-void
.end method

.method private static createIncomingViewAnimation()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 1244
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1245
    .local v0, animateIn:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1246
    return-object v0
.end method

.method private static createOutgoingViewAnimation()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 1251
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1252
    .local v0, animateOut:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1253
    return-object v0
.end method

.method private getCurrentMenuCustomizer()Lcom/google/android/music/TopBar$MenuCustomizer;
    .locals 3

    .prologue
    .line 675
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/AppStateStack;->last()Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v1

    .line 676
    .local v1, state:Lcom/google/android/music/activitymanagement/AppState;
    if-eqz v1, :cond_0

    .line 677
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v0

    .line 678
    .local v0, actionBarController:Lcom/google/android/music/TopBar$ActionBarController;
    if-eqz v0, :cond_0

    .line 679
    invoke-virtual {v0}, Lcom/google/android/music/TopBar$ActionBarController;->getMenuCustomizer()Lcom/google/android/music/TopBar$MenuCustomizer;

    move-result-object v2

    .line 682
    .end local v0           #actionBarController:Lcom/google/android/music/TopBar$ActionBarController;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDisplayModeIntent(IZ)Landroid/content/Intent;
    .locals 8
    .parameter "mode"
    .parameter "useListViewsInLandscape"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 1595
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 1596
    const-string v3, "TopLevelActivity"

    const-string v4, "should not be using list views in landscape mode"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1597
    const/4 p2, 0x0

    .line 1599
    :cond_0
    move-object v2, p0

    .line 1600
    .local v2, topLevel:Lcom/google/android/music/activitymanagement/TopLevelActivity;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1603
    .local v1, launchIntent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 1604
    .local v0, availableMode:I
    packed-switch p1, :pswitch_data_0

    .line 1671
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1606
    :pswitch_0
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/google/android/music/carousel/CarouselActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1673
    :goto_0
    const/high16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1674
    return-object v1

    .line 1610
    :pswitch_1
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 1614
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1616
    if-eqz p2, :cond_1

    if-eq v0, v7, :cond_2

    :cond_1
    if-ne v0, v6, :cond_3

    .line 1618
    :cond_2
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 1621
    :cond_3
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1623
    const-string v3, "displayMode"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1628
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1630
    if-eqz p2, :cond_4

    if-eq v0, v7, :cond_5

    :cond_4
    if-ne v0, v6, :cond_6

    .line 1632
    :cond_5
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 1635
    :cond_6
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1637
    const-string v3, "displayMode"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 1642
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1644
    if-eqz p2, :cond_7

    if-eq v0, v7, :cond_8

    :cond_7
    if-ne v0, v6, :cond_9

    .line 1646
    :cond_8
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1649
    :cond_9
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1651
    const-string v3, "displayMode"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1656
    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1658
    if-eqz p2, :cond_a

    if-eq v0, v7, :cond_b

    :cond_a
    if-ne v0, v6, :cond_c

    .line 1660
    :cond_b
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/google/android/music/AlbumBrowserActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1663
    :cond_c
    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1665
    const-string v3, "displayMode"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 1604
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/TopLevelActivity;
    .locals 2
    .parameter "activity"

    .prologue
    .line 2224
    :goto_0
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    if-nez v0, :cond_0

    .line 2225
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p0

    goto :goto_0

    .line 2227
    :cond_0
    if-nez p0, :cond_1

    .line 2228
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity was not started in a TopLevelActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2230
    :cond_1
    check-cast p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    .end local p0
    return-object p0
.end method

.method public static getMusicActivityManager(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;
    .locals 1
    .parameter "activity"

    .prologue
    .line 2220
    invoke-static {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getInstance(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/TopLevelActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getMusicActivityManager()Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v0

    return-object v0
.end method

.method private getUseListViewsInLandscape()Z
    .locals 1

    .prologue
    .line 1570
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mUseListViewsInLandscape:Z

    return v0
.end method

.method private initialize(Landroid/content/Intent;ZZ)V
    .locals 23
    .parameter "intent"
    .parameter "allowPlayback"
    .parameter "orientationChanged"

    .prologue
    .line 328
    sget-boolean v20, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v20, :cond_0

    .line 329
    const-string v20, "TopLevelActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "initialize "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " allowPlayback: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " orientationChange: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 334
    new-instance v20, Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-direct/range {v20 .. v20}, Lcom/google/android/music/activitymanagement/AppStateStack;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    .line 337
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/jumper/MusicPreferences;->getTopLevelDisplayMode()I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentDisplayMode:I

    .line 338
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentDisplayMode:I

    move/from16 v20, v0

    if-ltz v20, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentDisplayMode:I

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    .line 342
    :cond_2
    const-string v20, "TopLevelActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "invalid current saved view mode "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentDisplayMode:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentDisplayMode:I

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentDisplayMode:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/google/android/music/jumper/MusicPreferences;->setTopLevelDisplayMode(I)V

    .line 346
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/jumper/MusicPreferences;->useListViewsInLandscape()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mUseListViewsInLandscape:Z

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTopBar:Lcom/google/android/music/TopBar;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentDisplayMode:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/google/android/music/TopBar;->setDisplayModeText(I)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTopBar:Lcom/google/android/music/TopBar;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mUseListViewsInLandscape:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/google/android/music/TopBar;->setUseLisViewstInLandscape(Z)V

    .line 366
    if-eqz p3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v20

    if-nez v20, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mPhoneUses3DInLandscape:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/activitymanagement/AppStateStack;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 368
    const-string v20, "TopLevelActivity"

    const-string v21, "Rotation: AppStack.size() == 1 => Clearing stack"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->clearAppStack()V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTopBar:Lcom/google/android/music/TopBar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/TopBar;->getDefaultActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/TopBar$ActionBarController;->showTopBar()V

    .line 373
    :cond_4
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->startTutorialIfNecessary(Z)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 554
    :cond_5
    :goto_0
    return-void

    .line 377
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, action:Ljava/lang/String;
    const/4 v11, 0x0

    .line 379
    .local v11, newState:Lcom/google/android/music/activitymanagement/AppState;
    const-string v20, "TopLevelActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "action "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v20, "com.google.android.music.PLAYBACK_VIEWER"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/activitymanagement/AppStateStack;->last()Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v16

    .line 382
    .local v16, state:Lcom/google/android/music/activitymanagement/AppState;
    if-eqz v16, :cond_9

    const-class v20, Lcom/google/android/music/MediaPlaybackActivity;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/AppState;->isSameComponentClass(Ljava/lang/Class;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    .line 389
    .local v6, currentActivity:Landroid/app/Activity;
    if-eqz v6, :cond_7

    move-object v0, v6

    instance-of v0, v0, Lcom/google/android/music/MediaPlaybackActivity;

    move/from16 v20, v0

    if-nez v20, :cond_5

    .line 541
    .end local v6           #currentActivity:Landroid/app/Activity;
    .end local v16           #state:Lcom/google/android/music/activitymanagement/AppState;
    :cond_7
    :goto_1
    if-eqz v11, :cond_24

    .line 542
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->startFramedActivity(Lcom/google/android/music/activitymanagement/AppState;)V

    .line 553
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->updateFrame()V

    goto :goto_0

    .line 397
    .restart local v16       #state:Lcom/google/android/music/activitymanagement/AppState;
    :cond_9
    new-instance v20, Landroid/content/Intent;

    const-class v21, Lcom/google/android/music/MediaPlaybackActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v20

    const/high16 v21, 0x400

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    .line 400
    .local v7, i:Landroid/content/Intent;
    new-instance v11, Lcom/google/android/music/activitymanagement/AppState;

    .end local v11           #newState:Lcom/google/android/music/activitymanagement/AppState;
    move-object v0, v11

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/AppState;-><init>(Landroid/content/Intent;Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    .restart local v11       #newState:Lcom/google/android/music/activitymanagement/AppState;
    goto :goto_1

    .line 402
    .end local v7           #i:Landroid/content/Intent;
    .end local v16           #state:Lcom/google/android/music/activitymanagement/AppState;
    :cond_a
    const-string v20, "android.intent.action.CREATE_SHORTCUT"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 405
    new-instance v14, Landroid/content/Intent;

    const-class v20, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 406
    .local v14, shortcutIntent:Landroid/content/Intent;
    const-string v20, "android.intent.action.CREATE_SHORTCUT"

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v20, "displayMode"

    const/16 v21, 0x1

    move-object v0, v14

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 414
    :goto_3
    new-instance v11, Lcom/google/android/music/activitymanagement/AppState;

    .end local v11           #newState:Lcom/google/android/music/activitymanagement/AppState;
    move-object v0, v11

    move-object v1, v14

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/AppState;-><init>(Landroid/content/Intent;Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    .line 415
    .restart local v11       #newState:Lcom/google/android/music/activitymanagement/AppState;
    goto :goto_1

    .line 410
    .end local v14           #shortcutIntent:Landroid/content/Intent;
    :cond_b
    new-instance v14, Landroid/content/Intent;

    const-class v20, Lcom/google/android/music/PlaylistBrowserActivity;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    .restart local v14       #shortcutIntent:Landroid/content/Intent;
    const-string v20, "android.intent.action.CREATE_SHORTCUT"

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v20

    move-object v0, v14

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_3

    .line 415
    .end local v14           #shortcutIntent:Landroid/content/Intent;
    :cond_c
    const-string v20, "com.google.android.music.SHOW_TRACKLISTING"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 416
    if-eqz p2, :cond_7

    .line 417
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/google/android/music/TrackBrowserActivity;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    .restart local v7       #i:Landroid/content/Intent;
    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 419
    new-instance v11, Lcom/google/android/music/activitymanagement/AppState;

    .end local v11           #newState:Lcom/google/android/music/activitymanagement/AppState;
    move-object v0, v11

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/AppState;-><init>(Landroid/content/Intent;Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    .line 420
    .restart local v11       #newState:Lcom/google/android/music/activitymanagement/AppState;
    goto/16 :goto_1

    .line 421
    .end local v7           #i:Landroid/content/Intent;
    :cond_d
    const-string v20, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v18

    .line 423
    .local v18, type:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v19

    .line 424
    .local v19, uri:Landroid/net/Uri;
    if-eqz v19, :cond_e

    sget-object v20, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_e

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v18

    .line 429
    :cond_e
    const-string v20, "vnd.android.cursor.dir/vnd.google.music.playlist"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_f

    const-string v20, "vnd.android.cursor.dir/playlist"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 433
    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "playlist"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 434
    .local v17, strPlaylistId:Ljava/lang/String;
    if-eqz v17, :cond_11

    .line 435
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 440
    .local v12, playlistId:J
    :goto_4
    const-wide/16 v20, -0x1

    cmp-long v20, v12, v20

    if-nez v20, :cond_12

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/jumper/MusicPreferences;->getRecentlyAddedSongsSortOrder()I

    move-result v15

    .line 442
    .local v15, sortOrder:I
    new-instance v10, Lcom/google/android/music/medialist/RecentlyAdddedSongList;

    invoke-direct {v10, v15}, Lcom/google/android/music/medialist/RecentlyAdddedSongList;-><init>(I)V

    .line 450
    .end local v15           #sortOrder:I
    .local v10, list:Lcom/google/android/music/medialist/SongList;
    :goto_5
    if-eqz p2, :cond_10

    .line 451
    new-instance v20, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/medialist/SongList;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    .line 453
    :cond_10
    new-instance v11, Lcom/google/android/music/activitymanagement/AppState;

    .end local v11           #newState:Lcom/google/android/music/activitymanagement/AppState;
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/MusicUtils;->getMediaPlayerIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v20

    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/AppState;-><init>(Landroid/content/Intent;Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    .line 455
    .restart local v11       #newState:Lcom/google/android/music/activitymanagement/AppState;
    goto/16 :goto_1

    .line 437
    .end local v10           #list:Lcom/google/android/music/medialist/SongList;
    .end local v12           #playlistId:J
    :cond_11
    const-string v20, "playlistId"

    const-wide/16 v21, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .restart local v12       #playlistId:J
    goto :goto_4

    .line 443
    :cond_12
    const-wide/16 v20, -0x2

    cmp-long v20, v12, v20

    if-nez v20, :cond_13

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/jumper/MusicPreferences;->getAllSongsSortOrder()I

    move-result v15

    .line 445
    .restart local v15       #sortOrder:I
    new-instance v10, Lcom/google/android/music/medialist/AllSongsList;

    invoke-direct {v10, v15}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    .line 446
    .restart local v10       #list:Lcom/google/android/music/medialist/SongList;
    goto :goto_5

    .line 447
    .end local v10           #list:Lcom/google/android/music/medialist/SongList;
    .end local v15           #sortOrder:I
    :cond_13
    new-instance v10, Lcom/google/android/music/medialist/PlaylistSongList;

    const/16 v20, 0x0

    move-object v0, v10

    move-wide v1, v12

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;)V

    .restart local v10       #list:Lcom/google/android/music/medialist/SongList;
    goto :goto_5

    .line 455
    .end local v10           #list:Lcom/google/android/music/medialist/SongList;
    .end local v12           #playlistId:J
    .end local v17           #strPlaylistId:Ljava/lang/String;
    :cond_14
    if-eqz v18, :cond_19

    const-string v20, "audio/"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_15

    const-string v20, "application/ogg"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_15

    const-string v20, "application/x-ogg"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_15

    const-string v20, "application/itunes"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    .line 463
    :cond_15
    if-eqz v19, :cond_7

    .line 465
    const-string v20, "com.google.android.music.MusicContent"

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    .line 466
    new-instance v10, Lcom/google/android/music/medialist/UriSongList;

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/music/medialist/UriSongList;-><init>(Landroid/net/Uri;)V

    .line 478
    .restart local v10       #list:Lcom/google/android/music/medialist/SongList;
    :goto_6
    if-eqz v10, :cond_7

    .line 479
    if-eqz p2, :cond_16

    .line 480
    new-instance v20, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$PlayMediaListRunnable;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/medialist/SongList;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    .line 482
    :cond_16
    new-instance v11, Lcom/google/android/music/activitymanagement/AppState;

    .end local v11           #newState:Lcom/google/android/music/activitymanagement/AppState;
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/MusicUtils;->getMediaPlayerIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v20

    move-object v0, v11

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/AppState;-><init>(Landroid/content/Intent;Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    .restart local v11       #newState:Lcom/google/android/music/activitymanagement/AppState;
    goto/16 :goto_1

    .line 467
    .end local v10           #list:Lcom/google/android/music/medialist/SongList;
    :cond_17
    const-string v20, "media"

    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    .line 469
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 470
    .local v8, id:J
    invoke-static {v8, v9}, Lcom/google/android/music/store/MusicContent$SystemMediaStore;->getAudioUri(J)Landroid/net/Uri;

    move-result-object v19

    .line 471
    new-instance v10, Lcom/google/android/music/medialist/UriSongList;

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/music/medialist/UriSongList;-><init>(Landroid/net/Uri;)V

    .line 472
    .restart local v10       #list:Lcom/google/android/music/medialist/SongList;
    goto :goto_6

    .line 474
    .end local v8           #id:J
    .end local v10           #list:Lcom/google/android/music/medialist/SongList;
    :cond_18
    const-string v20, "TopLevelActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "unhandled audio uri "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v10, 0x0

    .restart local v10       #list:Lcom/google/android/music/medialist/SongList;
    goto :goto_6

    .line 487
    .end local v10           #list:Lcom/google/android/music/medialist/SongList;
    :cond_19
    const-string v20, "TopLevelActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "unhandled mimetype "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 489
    .end local v18           #type:Ljava/lang/String;
    .end local v19           #uri:Landroid/net/Uri;
    :cond_1a
    const-string v20, "android.intent.action.SEARCH_RESULT"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1b

    .line 490
    new-instance v20, Lcom/google/android/music/activitymanagement/TopLevelActivity$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$2;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 497
    :cond_1b
    const-string v20, "android.intent.action.SEARCH"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1c

    const-string v20, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1c

    const-string v20, "android.intent.action.MEDIA_SEARCH"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1e

    .line 502
    :cond_1c
    new-instance v7, Landroid/content/Intent;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 503
    .restart local v7       #i:Landroid/content/Intent;
    const-class v20, Lcom/google/android/music/QueryBrowserActivity;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 504
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    if-eqz v20, :cond_1d

    .line 505
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 507
    :cond_1d
    new-instance v11, Lcom/google/android/music/activitymanagement/AppState;

    .end local v11           #newState:Lcom/google/android/music/activitymanagement/AppState;
    move-object v0, v11

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/AppState;-><init>(Landroid/content/Intent;Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    .line 508
    .restart local v11       #newState:Lcom/google/android/music/activitymanagement/AppState;
    goto/16 :goto_1

    .end local v7           #i:Landroid/content/Intent;
    :cond_1e
    const-string v20, "com.google.android.music.DOWNLOAD_QUEUE"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1f

    .line 509
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/google/android/music/DownloadQueueActivity;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 510
    .restart local v7       #i:Landroid/content/Intent;
    new-instance v11, Lcom/google/android/music/activitymanagement/AppState;

    .end local v11           #newState:Lcom/google/android/music/activitymanagement/AppState;
    move-object v0, v11

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/AppState;-><init>(Landroid/content/Intent;Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    .line 511
    .restart local v11       #newState:Lcom/google/android/music/activitymanagement/AppState;
    goto/16 :goto_1

    .line 512
    .end local v7           #i:Landroid/content/Intent;
    :cond_1f
    const-string v20, "android.intent.action.MAIN"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_20

    const-string v20, "android.intent.action.MUSIC_PLAYER"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_20

    .line 515
    const-string v20, "TopLevelActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown action: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", defaulting to main action"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/activitymanagement/AppStateStack;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_21

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v20

    const/high16 v21, 0x400

    and-int v20, v20, v21

    if-eqz v20, :cond_7

    .line 519
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->clearAppStack()V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v20

    if-eqz v20, :cond_22

    .line 521
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentDisplayMode:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mUseListViewsInLandscape:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getDisplayModeIntent(IZ)Landroid/content/Intent;

    move-result-object v7

    .line 523
    .restart local v7       #i:Landroid/content/Intent;
    new-instance v5, Lcom/google/android/music/activitymanagement/AppState;

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/AppState;-><init>(Landroid/content/Intent;Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    .line 524
    .local v5, appState:Lcom/google/android/music/activitymanagement/AppState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTopBar:Lcom/google/android/music/TopBar;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentDisplayMode:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/google/android/music/TopBar;->getDisplayModeTitle(I)Ljava/lang/CharSequence;

    move-result-object v20

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/AppState;->setTitle(Ljava/lang/CharSequence;)V

    .line 525
    move-object v11, v5

    .line 526
    goto/16 :goto_1

    .line 527
    .end local v5           #appState:Lcom/google/android/music/activitymanagement/AppState;
    .end local v7           #i:Landroid/content/Intent;
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsLandscape:Z

    move/from16 v20, v0

    if-eqz v20, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mPhoneUses3DInLandscape:Z

    move/from16 v20, v0

    if-eqz v20, :cond_23

    .line 528
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentDisplayMode:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mUseListViewsInLandscape:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getDisplayModeIntent(IZ)Landroid/content/Intent;

    move-result-object v7

    .line 530
    .restart local v7       #i:Landroid/content/Intent;
    new-instance v5, Lcom/google/android/music/activitymanagement/AppState;

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/AppState;-><init>(Landroid/content/Intent;Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    .line 531
    .restart local v5       #appState:Lcom/google/android/music/activitymanagement/AppState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTopBar:Lcom/google/android/music/TopBar;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentDisplayMode:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/google/android/music/TopBar;->getDisplayModeTitle(I)Ljava/lang/CharSequence;

    move-result-object v20

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/AppState;->setTitle(Ljava/lang/CharSequence;)V

    .line 532
    move-object v11, v5

    .line 533
    goto/16 :goto_1

    .line 534
    .end local v5           #appState:Lcom/google/android/music/activitymanagement/AppState;
    .end local v7           #i:Landroid/content/Intent;
    :cond_23
    new-instance v7, Landroid/content/Intent;

    const-class v20, Lcom/google/android/music/TabbedLists;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 535
    .restart local v7       #i:Landroid/content/Intent;
    new-instance v11, Lcom/google/android/music/activitymanagement/AppState;

    .end local v11           #newState:Lcom/google/android/music/activitymanagement/AppState;
    move-object v0, v11

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/activitymanagement/AppState;-><init>(Landroid/content/Intent;Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    .restart local v11       #newState:Lcom/google/android/music/activitymanagement/AppState;
    goto/16 :goto_1

    .line 544
    .end local v7           #i:Landroid/content/Intent;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/activitymanagement/AppStateStack;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_8

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/music/activitymanagement/AppStateStack;->last()Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v16

    .line 547
    .restart local v16       #state:Lcom/google/android/music/activitymanagement/AppState;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v20

    if-nez v20, :cond_8

    .line 548
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->launchAppState(Lcom/google/android/music/activitymanagement/AppState;)V

    goto/16 :goto_2
.end method

.method private launchAppState(Lcom/google/android/music/activitymanagement/AppState;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {p1, v0}, Lcom/google/android/music/activitymanagement/AppState;->launch(Landroid/app/LocalActivityManager;)V

    .line 1236
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    if-eqz v0, :cond_0

    .line 1237
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can not launch a framed TopLevelActivity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1239
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->animateViews(Lcom/google/android/music/activitymanagement/AppState;)V

    .line 1240
    return-void
.end method

.method private runWhenServiceConnected(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 1082
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1083
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOnServiceConnectedRunnable:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1084
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOnServiceConnectedRunnable:Ljava/util/List;

    .line 1086
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOnServiceConnectedRunnable:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1087
    monitor-exit v0

    .line 1092
    :goto_0
    return-void

    .line 1089
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1091
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1089
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private runWhenServiceConnected(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1068
    .local p1, runnables:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    if-eqz p1, :cond_0

    .line 1069
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 1070
    .local v1, r:Ljava/lang/Runnable;
    invoke-direct {p0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1073
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method private setDisplayMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 1678
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTopBar:Lcom/google/android/music/TopBar;

    invoke-virtual {v2, p1}, Lcom/google/android/music/TopBar;->setDisplayModeText(I)V

    .line 1679
    iget-boolean v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mUseListViewsInLandscape:Z

    invoke-direct {p0, p1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getDisplayModeIntent(IZ)Landroid/content/Intent;

    move-result-object v0

    .line 1681
    .local v0, launchIntent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->clearAppStack()V

    .line 1683
    new-instance v1, Lcom/google/android/music/activitymanagement/AppState;

    invoke-direct {v1, v0, p0}, Lcom/google/android/music/activitymanagement/AppState;-><init>(Landroid/content/Intent;Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    .line 1684
    .local v1, newState:Lcom/google/android/music/activitymanagement/AppState;
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTopBar:Lcom/google/android/music/TopBar;

    invoke-virtual {v2, p1}, Lcom/google/android/music/TopBar;->getDisplayModeTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/AppState;->setTitle(Ljava/lang/CharSequence;)V

    .line 1685
    invoke-direct {p0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->startFramedActivity(Lcom/google/android/music/activitymanagement/AppState;)V

    .line 1687
    iput p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentDisplayMode:I

    .line 1689
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentDisplayMode:I

    invoke-virtual {v2, v3}, Lcom/google/android/music/jumper/MusicPreferences;->setTopLevelDisplayMode(I)V

    .line 1690
    return-void
.end method

.method private setDisplayModeIfDifferent(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1589
    iget v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentDisplayMode:I

    if-eq p1, v0, :cond_0

    .line 1590
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setDisplayMode(I)V

    .line 1592
    :cond_0
    return-void
.end method

.method private setMenuVisibility(Lcom/google/android/music/menu/MusicMenu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "id"
    .parameter "visible"

    .prologue
    .line 686
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Lcom/google/android/music/menu/MusicMenu;IZZ)V

    .line 687
    return-void
.end method

.method private setMenuVisibility(Lcom/google/android/music/menu/MusicMenu;IZZ)V
    .locals 1
    .parameter "menu"
    .parameter "id"
    .parameter "visible"
    .parameter "enabled"

    .prologue
    .line 690
    invoke-virtual {p1, p2}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 691
    .local v0, item:Lcom/google/android/music/menu/MusicMenuItem;
    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0, p3}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 693
    invoke-virtual {v0, p4}, Lcom/google/android/music/menu/MusicMenuItem;->setEnabled(Z)V

    .line 695
    :cond_0
    return-void
.end method

.method private setNoMusicFoundState(I)V
    .locals 0
    .parameter "newNotFoundState"

    .prologue
    .line 857
    iput p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mNotFoundState:I

    .line 858
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->updateNoMusicState()V

    .line 859
    return-void
.end method

.method private setOfflineOnly(Z)V
    .locals 4
    .parameter "offlineOnly"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 719
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getDisplayOptions()I

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    .line 721
    .local v0, isOfflineOnlyNow:Z
    :goto_0
    if-eq v0, p1, :cond_1

    .line 722
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    if-eqz p1, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v1, v2}, Lcom/google/android/music/jumper/MusicPreferences;->setDisplayOptions(I)V

    .line 725
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->updateNoMusicFoundVisibility()V

    .line 727
    :cond_1
    return-void

    .end local v0           #isOfflineOnlyNow:Z
    :cond_2
    move v0, v2

    .line 719
    goto :goto_0
.end method

.method private setUIVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 1045
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$6;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Z)V

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    .line 1050
    return-void
.end method

.method private setUseListViewsInLandscape(Z)V
    .locals 4
    .parameter "useListViewsInLandscape"

    .prologue
    .line 1573
    iget-boolean v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mUseListViewsInLandscape:Z

    if-eq v2, p1, :cond_0

    .line 1575
    iget v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentDisplayMode:I

    invoke-direct {p0, v2, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getDisplayModeIntent(IZ)Landroid/content/Intent;

    move-result-object v0

    .line 1577
    .local v0, launchIntent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->clearAppStack()V

    .line 1579
    new-instance v1, Lcom/google/android/music/activitymanagement/AppState;

    invoke-direct {v1, v0, p0}, Lcom/google/android/music/activitymanagement/AppState;-><init>(Landroid/content/Intent;Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    .line 1580
    .local v1, newState:Lcom/google/android/music/activitymanagement/AppState;
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTopBar:Lcom/google/android/music/TopBar;

    iget v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentDisplayMode:I

    invoke-virtual {v2, v3}, Lcom/google/android/music/TopBar;->getDisplayModeTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/AppState;->setTitle(Ljava/lang/CharSequence;)V

    .line 1581
    invoke-direct {p0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->startFramedActivity(Lcom/google/android/music/activitymanagement/AppState;)V

    .line 1583
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mUseListViewsInLandscape:Z

    .line 1584
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2, p1}, Lcom/google/android/music/jumper/MusicPreferences;->setUseListViewsInLandscape(Z)V

    .line 1586
    .end local v0           #launchIntent:Landroid/content/Intent;
    .end local v1           #newState:Lcom/google/android/music/activitymanagement/AppState;
    :cond_0
    return-void
.end method

.method private startFramedActivity(Lcom/google/android/music/activitymanagement/AppState;)V
    .locals 11
    .parameter "newState"

    .prologue
    const/4 v10, 0x1

    .line 1158
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->invalidateMusicOptionsMenu()V

    .line 1162
    const-string v7, "TopLevelActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startFramedActivity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    if-nez v7, :cond_0

    .line 1165
    const-string v7, "TopLevelActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "null app stack in startFramedActivity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTopBar:Lcom/google/android/music/TopBar;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1169
    :cond_0
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v7}, Lcom/google/android/music/activitymanagement/AppStateStack;->last()Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v5

    .line 1170
    .local v5, lastState:Lcom/google/android/music/activitymanagement/AppState;
    if-eqz v5, :cond_1

    invoke-virtual {p1, v5}, Lcom/google/android/music/activitymanagement/AppState;->isSameComponentClass(Lcom/google/android/music/activitymanagement/AppState;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/AppState;->isSingleTop()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1172
    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1173
    .local v2, currentActivity:Landroid/app/Activity;
    if-eqz v2, :cond_1

    instance-of v7, v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;

    if-eqz v7, :cond_1

    .line 1176
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/AppState;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/google/android/music/activitymanagement/AppState;->sendNewIntent(Landroid/app/LocalActivityManager;Landroid/content/Intent;)V

    .line 1179
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->updateFrame()V

    .line 1232
    .end local v2           #currentActivity:Landroid/app/Activity;
    :goto_0
    return-void

    .line 1184
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/AppState;->isClearTop()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1186
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v7}, Lcom/google/android/music/activitymanagement/AppStateStack;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 1187
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v7, v3}, Lcom/google/android/music/activitymanagement/AppStateStack;->get(I)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v1

    .line 1188
    .local v1, current:Lcom/google/android/music/activitymanagement/AppState;
    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Lcom/google/android/music/activitymanagement/AppState;->isSameComponentClass(Lcom/google/android/music/activitymanagement/AppState;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1190
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v7}, Lcom/google/android/music/activitymanagement/AppStateStack;->size()I

    move-result v7

    sub-int v4, v7, v10

    .local v4, j:I
    :goto_2
    if-le v4, v3, :cond_2

    .line 1191
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v7, v4}, Lcom/google/android/music/activitymanagement/AppStateStack;->get(I)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v6

    .line 1192
    .local v6, state:Lcom/google/android/music/activitymanagement/AppState;
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v7, v4}, Lcom/google/android/music/activitymanagement/AppStateStack;->remove(I)V

    .line 1193
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v6, v7, v10}, Lcom/google/android/music/activitymanagement/AppState;->destroy(Landroid/app/LocalActivityManager;Z)V

    .line 1190
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1197
    .end local v6           #state:Lcom/google/android/music/activitymanagement/AppState;
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1198
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_3

    invoke-virtual {v1, p1}, Lcom/google/android/music/activitymanagement/AppState;->isSameComponentClass(Lcom/google/android/music/activitymanagement/AppState;)Z

    move-result v7

    if-eqz v7, :cond_3

    instance-of v7, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;

    if-eqz v7, :cond_3

    .line 1203
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v7, v3}, Lcom/google/android/music/activitymanagement/AppStateStack;->remove(I)V

    .line 1204
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v7, p1}, Lcom/google/android/music/activitymanagement/AppStateStack;->push(Lcom/google/android/music/activitymanagement/AppState;)V

    .line 1205
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {p1, v1, v7}, Lcom/google/android/music/activitymanagement/AppState;->launchFrom(Lcom/google/android/music/activitymanagement/AppState;Landroid/app/LocalActivityManager;)V

    .line 1206
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->animateViews(Lcom/google/android/music/activitymanagement/AppState;)V

    .line 1207
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->updateFrame()V

    goto :goto_0

    .line 1210
    :cond_3
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v7, v3}, Lcom/google/android/music/activitymanagement/AppStateStack;->remove(I)V

    .line 1211
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v1, v7, v10}, Lcom/google/android/music/activitymanagement/AppState;->destroy(Landroid/app/LocalActivityManager;Z)V

    .line 1186
    .end local v0           #activity:Landroid/app/Activity;
    .end local v4           #j:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1219
    .end local v1           #current:Lcom/google/android/music/activitymanagement/AppState;
    .end local v3           #i:I
    :cond_5
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v7}, Lcom/google/android/music/activitymanagement/AppStateStack;->last()Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v5

    .line 1220
    if-eqz v5, :cond_6

    .line 1221
    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;

    if-eqz v7, :cond_6

    .line 1223
    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/AppState;->saveState()V

    .line 1227
    :cond_6
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v7, p1}, Lcom/google/android/music/activitymanagement/AppStateStack;->push(Lcom/google/android/music/activitymanagement/AppState;)V

    .line 1229
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->launchAppState(Lcom/google/android/music/activitymanagement/AppState;)V

    .line 1231
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->updateFrame()V

    goto/16 :goto_0
.end method

.method private startTutorialIfNecessary(Z)Z
    .locals 7
    .parameter "clearStackOnStart"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 807
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamingEnabled()Z

    move-result v2

    .line 809
    .local v2, streamingEnabled:Z
    if-eqz v2, :cond_3

    .line 810
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->wasTutorialViewed()Z

    move-result v3

    .line 811
    .local v3, tutorialViewed:Z
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v4

    if-eqz v4, :cond_1

    move v0, v6

    .line 813
    .local v0, accountSetup:Z
    :goto_0
    if-nez v3, :cond_2

    if-nez v0, :cond_2

    iget-boolean v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mStartedTutorial:Z

    if-nez v4, :cond_2

    .line 814
    if-eqz p1, :cond_0

    .line 820
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->clearAppStack()V

    .line 822
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/google/android/music/tutorial/TutorialAccountActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 823
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->startFramedActivity(Landroid/content/Intent;)V

    .line 824
    iput-boolean v6, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mStartedTutorial:Z

    move v4, v6

    .line 833
    .end local v0           #accountSetup:Z
    .end local v1           #i:Landroid/content/Intent;
    .end local v3           #tutorialViewed:Z
    :goto_1
    return v4

    .restart local v3       #tutorialViewed:Z
    :cond_1
    move v0, v5

    .line 811
    goto :goto_0

    .line 827
    .restart local v0       #accountSetup:Z
    :cond_2
    iput-boolean v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mStartedTutorial:Z

    .end local v0           #accountSetup:Z
    .end local v3           #tutorialViewed:Z
    :goto_2
    move v4, v5

    .line 833
    goto :goto_1

    .line 831
    :cond_3
    invoke-static {p0}, Lcom/google/android/music/tutorial/SignupStatus;->launchVerificationCheck(Landroid/content/Context;)V

    goto :goto_2
.end method

.method private updateNoMusicState()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 870
    iget-boolean v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mNoMusicFoundViewEnabled:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mNotFoundState:I

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSyncInProgress:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mImportState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 873
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentNoMusicView:Lcom/google/android/music/TransitionableViewWrapper;

    if-eqz v2, :cond_1

    .line 874
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentNoMusicView:Lcom/google/android/music/TransitionableViewWrapper;

    invoke-virtual {v2, v4}, Lcom/google/android/music/TransitionableViewWrapper;->setVisibility(I)V

    .line 875
    iput-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentNoMusicView:Lcom/google/android/music/TransitionableViewWrapper;

    .line 876
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/AppStateStack;->last()Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v1

    .line 877
    .local v1, state:Lcom/google/android/music/activitymanagement/AppState;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 878
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/TopBar$ActionBarController;->showSearchIcon()V

    .line 911
    .end local v1           #state:Lcom/google/android/music/activitymanagement/AppState;
    :cond_1
    :goto_0
    return-void

    .line 883
    :cond_2
    iget v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mNotFoundState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 886
    const/4 v0, 0x0

    .line 899
    .local v0, newNoMusicView:Lcom/google/android/music/TransitionableViewWrapper;
    :goto_1
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentNoMusicView:Lcom/google/android/music/TransitionableViewWrapper;

    if-eq v2, v0, :cond_1

    .line 900
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentNoMusicView:Lcom/google/android/music/TransitionableViewWrapper;

    if-eqz v2, :cond_3

    .line 901
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentNoMusicView:Lcom/google/android/music/TransitionableViewWrapper;

    invoke-virtual {v2, v4}, Lcom/google/android/music/TransitionableViewWrapper;->setVisibility(I)V

    .line 903
    :cond_3
    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentNoMusicView:Lcom/google/android/music/TransitionableViewWrapper;

    .line 904
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentNoMusicView:Lcom/google/android/music/TransitionableViewWrapper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/music/TransitionableViewWrapper;->setVisibility(I)V

    .line 905
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    if-nez v2, :cond_7

    move-object v1, v5

    .line 906
    .restart local v1       #state:Lcom/google/android/music/activitymanagement/AppState;
    :goto_2
    if-eqz v1, :cond_1

    .line 907
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/TopBar$ActionBarController;->hideSearchIcon()V

    goto :goto_0

    .line 887
    .end local v0           #newNoMusicView:Lcom/google/android/music/TransitionableViewWrapper;
    .end local v1           #state:Lcom/google/android/music/activitymanagement/AppState;
    :cond_4
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamingEnabled()Z

    move-result v2

    if-nez v2, :cond_5

    .line 888
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mNoMusicStreamingDisabledView:Lcom/google/android/music/TransitionableViewWrapper;

    .restart local v0       #newNoMusicView:Lcom/google/android/music/TransitionableViewWrapper;
    goto :goto_1

    .line 890
    .end local v0           #newNoMusicView:Lcom/google/android/music/TransitionableViewWrapper;
    :cond_5
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getDisplayOptions()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 892
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mNoLocalMusicView:Lcom/google/android/music/TransitionableViewWrapper;

    .restart local v0       #newNoMusicView:Lcom/google/android/music/TransitionableViewWrapper;
    goto :goto_1

    .line 894
    .end local v0           #newNoMusicView:Lcom/google/android/music/TransitionableViewWrapper;
    :cond_6
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mNoMusicStreamingEnabledView:Lcom/google/android/music/TransitionableViewWrapper;

    .restart local v0       #newNoMusicView:Lcom/google/android/music/TransitionableViewWrapper;
    goto :goto_1

    .line 905
    :cond_7
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/AppStateStack;->last()Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v2

    move-object v1, v2

    goto :goto_2
.end method


# virtual methods
.method public cancelBackgroundAlbum()V
    .locals 1

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBackgroundView:Lcom/google/android/music/BackgroundView;

    invoke-virtual {v0}, Lcom/google/android/music/BackgroundView;->cancelTransition()V

    .line 2165
    return-void
.end method

.method public closeMusicMenu()V
    .locals 2

    .prologue
    .line 711
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicMenu;->close()V

    .line 715
    :cond_0
    monitor-exit v0

    .line 716
    return-void

    .line 715
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final createNewTopBarController(Lcom/google/android/music/activitymanagement/AppState;)Lcom/google/android/music/TopBar$ActionBarController;
    .locals 1
    .parameter "state"

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTopBar:Lcom/google/android/music/TopBar;

    invoke-virtual {v0, p1}, Lcom/google/android/music/TopBar;->startNewState(Lcom/google/android/music/activitymanagement/AppState;)Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v0

    return-object v0
.end method

.method public createOptionsMenu()Lcom/google/android/music/menu/MusicMenu;
    .locals 15

    .prologue
    const v14, 0x7f0c0011

    const/4 v13, 0x1

    .line 557
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v11}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v4

    .line 558
    .local v4, isTablet:Z
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v11}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v3

    .line 562
    .local v3, hasIcons:Z
    if-eqz v4, :cond_8

    .line 563
    new-instance v2, Lcom/google/android/music/menu/MusicDropdownMenu;

    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mFullContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v11

    invoke-direct {v2, p0, p0, v11}, Lcom/google/android/music/menu/MusicDropdownMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 565
    .local v2, dropdownMenu:Lcom/google/android/music/menu/MusicDropdownMenu;
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTopBar:Lcom/google/android/music/TopBar;

    invoke-virtual {v11}, Lcom/google/android/music/TopBar;->getMenuButton()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/google/android/music/menu/MusicDropdownMenu;->setButtonView(Landroid/view/View;)V

    .line 566
    move-object v7, v2

    .line 571
    .end local v2           #dropdownMenu:Lcom/google/android/music/menu/MusicDropdownMenu;
    .local v7, menu:Lcom/google/android/music/menu/MusicMenu;
    :goto_0
    const/4 v8, 0x0

    .line 573
    .local v8, order:I
    const/16 v11, 0xa

    add-int/lit8 v9, v8, 0x1

    .end local v8           #order:I
    .local v9, order:I
    const v12, 0x7f0c000b

    invoke-virtual {v7, v11, v8, v12}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v5

    .line 574
    .local v5, item:Lcom/google/android/music/menu/MusicMenuItem;
    if-eqz v3, :cond_0

    const v11, 0x7f020187

    invoke-virtual {v5, v11}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 576
    :cond_0
    const/16 v11, 0x16

    add-int/lit8 v8, v9, 0x1

    .end local v9           #order:I
    .restart local v8       #order:I
    const v12, 0x7f0c00de

    invoke-virtual {v7, v11, v9, v12}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v5

    .line 577
    const/16 v11, 0x15

    add-int/lit8 v9, v8, 0x1

    .end local v8           #order:I
    .restart local v9       #order:I
    const v12, 0x7f0c00dd

    invoke-virtual {v7, v11, v8, v12}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v5

    .line 579
    const/16 v11, 0x14

    add-int/lit8 v8, v9, 0x1

    .end local v9           #order:I
    .restart local v8       #order:I
    const v12, 0x7f0c0012

    invoke-virtual {v7, v11, v9, v12}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v5

    .line 580
    if-eqz v3, :cond_1

    const v11, 0x7f020177

    invoke-virtual {v5, v11}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 582
    :cond_1
    const/4 v11, 0x4

    const v12, 0x7f0c0076

    invoke-virtual {v7, v11, v13, v12}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v5

    .line 583
    if-eqz v3, :cond_2

    const v11, 0x7f020165

    invoke-virtual {v5, v11}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 585
    :cond_2
    if-eqz v4, :cond_9

    .line 586
    const/16 v11, 0x66

    add-int/lit8 v9, v8, 0x1

    .end local v8           #order:I
    .restart local v9       #order:I
    const v12, 0x7f0c0018

    invoke-virtual {v7, v11, v8, v12}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v5

    .line 587
    invoke-virtual {v5, v13}, Lcom/google/android/music/menu/MusicMenuItem;->setCheckboxEnabled(Z)V

    move v8, v9

    .line 602
    .end local v9           #order:I
    .restart local v8       #order:I
    :goto_1
    const/16 v11, 0x12

    add-int/lit8 v9, v8, 0x1

    .end local v8           #order:I
    .restart local v9       #order:I
    const v12, 0x7f0c0010

    invoke-virtual {v7, v11, v8, v12}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v5

    .line 603
    if-eqz v3, :cond_3

    const v11, 0x7f020184

    invoke-virtual {v5, v11}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 605
    :cond_3
    const/16 v11, 0x11

    add-int/lit8 v8, v9, 0x1

    .end local v9           #order:I
    .restart local v8       #order:I
    const v12, 0x7f0c000f

    invoke-virtual {v7, v11, v9, v12}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v5

    .line 606
    if-eqz v3, :cond_4

    const v11, 0x7f020180

    invoke-virtual {v5, v11}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 608
    :cond_4
    const/16 v11, 0x18

    add-int/lit8 v9, v8, 0x1

    .end local v8           #order:I
    .restart local v9       #order:I
    const v12, 0x7f0c0014

    invoke-virtual {v7, v11, v8, v12}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v5

    .line 609
    if-eqz v3, :cond_5

    const v11, 0x7f02016b

    invoke-virtual {v5, v11}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 611
    :cond_5
    const/16 v11, 0x19

    add-int/lit8 v8, v9, 0x1

    .end local v9           #order:I
    .restart local v8       #order:I
    const v12, 0x7f0c0015

    invoke-virtual {v7, v11, v9, v12}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v5

    .line 612
    if-eqz v3, :cond_6

    const v11, 0x7f02016e

    invoke-virtual {v5, v11}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 615
    :cond_6
    const/16 v11, 0x17

    const v12, 0x7fffffff

    const v13, 0x7f0c003e

    invoke-virtual {v7, v11, v12, v13}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v5

    .line 617
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getCurrentMenuCustomizer()Lcom/google/android/music/TopBar$MenuCustomizer;

    move-result-object v1

    .line 618
    .local v1, customizer:Lcom/google/android/music/TopBar$MenuCustomizer;
    if-eqz v1, :cond_7

    .line 619
    invoke-interface {v1, v7}, Lcom/google/android/music/TopBar$MenuCustomizer;->createOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V

    .line 622
    :cond_7
    return-object v7

    .line 568
    .end local v1           #customizer:Lcom/google/android/music/TopBar$MenuCustomizer;
    .end local v5           #item:Lcom/google/android/music/menu/MusicMenuItem;
    .end local v7           #menu:Lcom/google/android/music/menu/MusicMenu;
    .end local v8           #order:I
    :cond_8
    new-instance v7, Lcom/google/android/music/menu/MusicOptionsMenu;

    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mFullContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v11

    invoke-direct {v7, p0, p0, v11}, Lcom/google/android/music/menu/MusicOptionsMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .restart local v7       #menu:Lcom/google/android/music/menu/MusicMenu;
    goto/16 :goto_0

    .line 591
    .restart local v5       #item:Lcom/google/android/music/menu/MusicMenuItem;
    .restart local v8       #order:I
    :cond_9
    const/16 v11, 0x13

    add-int/lit8 v9, v8, 0x1

    .end local v8           #order:I
    .restart local v9       #order:I
    invoke-virtual {v7, v11, v8, v14}, Lcom/google/android/music/menu/MusicMenu;->addSubMenu(III)Lcom/google/android/music/menu/MusicMenu;

    move-result-object v10

    .line 592
    .local v10, subMenu:Lcom/google/android/music/menu/MusicMenu;
    invoke-virtual {v10}, Lcom/google/android/music/menu/MusicMenu;->getItem()Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v5

    .line 593
    if-eqz v3, :cond_a

    const v11, 0x7f020171

    invoke-virtual {v5, v11}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 594
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/music/menu/MusicMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 595
    invoke-virtual {v10, v13}, Lcom/google/android/music/menu/MusicMenu;->setRadioButtonsEnabled(Z)V

    .line 597
    const/16 v11, 0x64

    add-int/lit8 v8, v9, 0x1

    .end local v9           #order:I
    .restart local v8       #order:I
    const v12, 0x7f0c001e

    invoke-virtual {v10, v11, v9, v12}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 598
    .local v0, allMusicItem:Lcom/google/android/music/menu/MusicMenuItem;
    if-eqz v3, :cond_b

    const v11, 0x7f02013f

    invoke-virtual {v0, v11}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 599
    :cond_b
    const/16 v11, 0x65

    add-int/lit8 v9, v8, 0x1

    .end local v8           #order:I
    .restart local v9       #order:I
    const v12, 0x7f0c001f

    invoke-virtual {v10, v11, v8, v12}, Lcom/google/android/music/menu/MusicMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v6

    .line 600
    .local v6, localOnlyItem:Lcom/google/android/music/menu/MusicMenuItem;
    if-eqz v3, :cond_c

    const v11, 0x7f020148

    invoke-virtual {v6, v11}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    :cond_c
    move v8, v9

    .end local v9           #order:I
    .restart local v8       #order:I
    goto/16 :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1399
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x52

    if-ne v7, v8, :cond_6

    .line 1400
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-ne v7, v9, :cond_1

    move v4, v9

    .line 1401
    .local v4, keyUp:Z
    :goto_0
    if-eqz v4, :cond_2

    .line 1402
    iget-boolean v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMenuKeyDown:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSoftKeyboardInvoked:Z

    if-nez v7, :cond_0

    .line 1403
    iput-boolean v10, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMenuKeyDown:Z

    .line 1404
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->openMusicMenu()V

    .line 1406
    :cond_0
    iput-boolean v10, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSoftKeyboardInvoked:Z

    move v7, v9

    .line 1469
    .end local v4           #keyUp:Z
    :goto_1
    return v7

    :cond_1
    move v4, v10

    .line 1400
    goto :goto_0

    .line 1409
    .restart local v4       #keyUp:Z
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1410
    iget-boolean v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSoftKeyboardInvoked:Z

    if-nez v7, :cond_4

    .line 1411
    const-string v7, "input_method"

    invoke-virtual {p0, v7}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1413
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_3

    .line 1414
    const/4 v7, 0x2

    invoke-virtual {v1, v7, v10}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1416
    :cond_3
    iput-boolean v9, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSoftKeyboardInvoked:Z

    .line 1418
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    iput-boolean v10, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMenuKeyDown:Z

    :goto_2
    move v7, v9

    .line 1422
    goto :goto_1

    .line 1420
    :cond_5
    iput-boolean v9, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMenuKeyDown:Z

    goto :goto_2

    .line 1427
    .end local v4           #keyUp:Z
    :cond_6
    iput-boolean v10, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMenuKeyDown:Z

    .line 1429
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v7}, Lcom/google/android/music/activitymanagement/AppStateStack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    .line 1430
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const/16 v8, 0x54

    if-ne v7, v8, :cond_7

    move v3, v9

    .line 1431
    .local v3, isSearch:Z
    :goto_3
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v7}, Lcom/google/android/music/activitymanagement/AppStateStack;->last()Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v6

    .line 1432
    .local v6, state:Lcom/google/android/music/activitymanagement/AppState;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-ne v7, v9, :cond_8

    move v4, v9

    .line 1433
    .restart local v4       #keyUp:Z
    :goto_4
    invoke-virtual {v6}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1435
    .local v0, activity:Landroid/app/Activity;
    if-eqz v3, :cond_9

    .line 1440
    if-eqz v4, :cond_b

    instance-of v7, v0, Lcom/google/android/music/QueryBrowserActivity;

    if-nez v7, :cond_b

    .line 1441
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->doSearch()V

    move v7, v9

    .line 1442
    goto :goto_1

    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #isSearch:Z
    .end local v4           #keyUp:Z
    .end local v6           #state:Lcom/google/android/music/activitymanagement/AppState;
    :cond_7
    move v3, v10

    .line 1430
    goto :goto_3

    .restart local v3       #isSearch:Z
    .restart local v6       #state:Lcom/google/android/music/activitymanagement/AppState;
    :cond_8
    move v4, v10

    .line 1432
    goto :goto_4

    .line 1444
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v4       #keyUp:Z
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-ne v7, v11, :cond_b

    .line 1448
    if-eqz v4, :cond_b

    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v7}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isManageMusicMode()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1449
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v7}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getOfflineMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v5

    .line 1450
    .local v5, offlineManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-virtual {v5}, Lcom/google/android/music/OfflineMusicManager;->isAnyChangeMade()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1452
    const/16 v7, 0x69

    invoke-virtual {p0, v7}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->showDialog(I)V

    :goto_5
    move v7, v9

    .line 1456
    goto :goto_1

    .line 1454
    :cond_a
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v7}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->exitManageMusicMode()V

    goto :goto_5

    .line 1459
    .end local v5           #offlineManager:Lcom/google/android/music/OfflineMusicManager;
    :cond_b
    invoke-virtual {v6, p1}, Lcom/google/android/music/activitymanagement/AppState;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_c

    move v7, v9

    .line 1460
    goto/16 :goto_1

    .line 1464
    .end local v0           #activity:Landroid/app/Activity;
    .end local v3           #isSearch:Z
    .end local v4           #keyUp:Z
    .end local v6           #state:Lcom/google/android/music/activitymanagement/AppState;
    :cond_c
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    if-ne v7, v11, :cond_d

    move v2, v9

    .line 1465
    .local v2, isBack:Z
    :goto_6
    if-eqz v2, :cond_e

    .line 1466
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->onBackPressed()V

    move v7, v9

    .line 1467
    goto/16 :goto_1

    .end local v2           #isBack:Z
    :cond_d
    move v2, v10

    .line 1464
    goto :goto_6

    .line 1469
    .restart local v2       #isBack:Z
    :cond_e
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v7

    goto/16 :goto_1
.end method

.method doSearch()V
    .locals 2

    .prologue
    .line 1391
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/QueryBrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1392
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1393
    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->startActivity(Landroid/content/Intent;)V

    .line 1394
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setUIVisibility(Z)V

    .line 1475
    invoke-super {p0}, Landroid/app/ActivityGroup;->finish()V

    .line 1476
    return-void
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 3
    .parameter "child"
    .parameter "requestCode"

    .prologue
    .line 1480
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->finishActivityFromChild(Landroid/app/Activity;I)V

    .line 1481
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v0, :cond_0

    .line 1482
    const-string v0, "TopLevelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TopLevel.finishActivityFromChild ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_0
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 14
    .parameter "child"

    .prologue
    .line 1488
    instance-of v11, p1, Lcom/google/android/music/RetrievableResultActivity;

    if-eqz v11, :cond_0

    .line 1489
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/RetrievableResultActivity;

    move-object v8, v0

    .line 1490
    .local v8, resultChild:Lcom/google/android/music/RetrievableResultActivity;
    invoke-interface {v8}, Lcom/google/android/music/RetrievableResultActivity;->wasStartedForResult()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1491
    invoke-interface {v8}, Lcom/google/android/music/RetrievableResultActivity;->getResultCode()I

    move-result v11

    invoke-interface {v8}, Lcom/google/android/music/RetrievableResultActivity;->getResultData()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setResult(ILandroid/content/Intent;)V

    .line 1492
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->finish()V

    .line 1496
    .end local v8           #resultChild:Lcom/google/android/music/RetrievableResultActivity;
    :cond_0
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    if-nez v11, :cond_2

    .line 1565
    :cond_1
    :goto_0
    return-void

    .line 1499
    :cond_2
    const-string v11, "TopLevelActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TopLevel.finishFromChild: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " stacksize "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v13}, Lcom/google/android/music/activitymanagement/AppStateStack;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const/4 v2, -0x1

    .line 1502
    .local v2, finishedPos:I
    const/4 v5, 0x0

    .line 1505
    .local v5, foundFinished:Lcom/google/android/music/activitymanagement/AppState;
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v11}, Lcom/google/android/music/activitymanagement/AppStateStack;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int v6, v11, v12

    .local v6, i:I
    :goto_1
    if-ltz v6, :cond_4

    if-nez v5, :cond_4

    .line 1506
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v11, v6}, Lcom/google/android/music/activitymanagement/AppStateStack;->get(I)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v1

    .line 1507
    .local v1, current:Lcom/google/android/music/activitymanagement/AppState;
    invoke-virtual {v1, p1}, Lcom/google/android/music/activitymanagement/AppState;->isSameActivity(Landroid/app/Activity;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1508
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v11, v6}, Lcom/google/android/music/activitymanagement/AppStateStack;->remove(I)V

    .line 1509
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Lcom/google/android/music/activitymanagement/AppState;->destroy(Landroid/app/LocalActivityManager;Z)V

    .line 1510
    move-object v5, v1

    .line 1511
    move v2, v6

    .line 1505
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1514
    .end local v1           #current:Lcom/google/android/music/activitymanagement/AppState;
    :cond_4
    if-eqz v5, :cond_1

    .line 1518
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v11}, Lcom/google/android/music/activitymanagement/AppStateStack;->size()I

    move-result v11

    if-ne v2, v11, :cond_6

    const/4 v11, 0x1

    move v4, v11

    .line 1519
    .local v4, finishedTop:Z
    :goto_2
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v11}, Lcom/google/android/music/activitymanagement/AppStateStack;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ne v2, v11, :cond_7

    const/4 v11, 0x1

    move v3, v11

    .line 1521
    .local v3, finishedSecondTop:Z
    :goto_3
    if-nez v4, :cond_5

    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v11}, Lcom/google/android/music/activitymanagement/AppStateStack;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1525
    :cond_5
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v11}, Lcom/google/android/music/activitymanagement/AppStateStack;->last()Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v7

    .line 1526
    .local v7, prev:Lcom/google/android/music/activitymanagement/AppState;
    if-nez v7, :cond_8

    .line 1528
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->finish()V

    goto/16 :goto_0

    .line 1518
    .end local v3           #finishedSecondTop:Z
    .end local v4           #finishedTop:Z
    .end local v7           #prev:Lcom/google/android/music/activitymanagement/AppState;
    :cond_6
    const/4 v11, 0x0

    move v4, v11

    goto :goto_2

    .line 1519
    .restart local v4       #finishedTop:Z
    :cond_7
    const/4 v11, 0x0

    move v3, v11

    goto :goto_3

    .line 1530
    .restart local v3       #finishedSecondTop:Z
    .restart local v7       #prev:Lcom/google/android/music/activitymanagement/AppState;
    :cond_8
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v11}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v11

    if-nez v11, :cond_b

    iget-boolean v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mPhoneUses3DInLandscape:Z

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v11}, Lcom/google/android/music/activitymanagement/AppStateStack;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    .line 1537
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/google/android/music/activitymanagement/AppStateStack;->get(I)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v11

    const-class v12, Lcom/google/android/music/TabbedLists;

    invoke-virtual {v11, v12}, Lcom/google/android/music/activitymanagement/AppState;->isSameComponentClass(Ljava/lang/Class;)Z

    move-result v10

    .line 1538
    .local v10, tabbedListsRunning:Z
    const/4 v6, 0x0

    .line 1540
    .local v6, i:Landroid/content/Intent;
    iget-boolean v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsLandscape:Z

    if-eqz v11, :cond_a

    if-eqz v10, :cond_a

    .line 1541
    iget v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentDisplayMode:I

    iget-boolean v12, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mUseListViewsInLandscape:Z

    invoke-direct {p0, v11, v12}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getDisplayModeIntent(IZ)Landroid/content/Intent;

    move-result-object v6

    .line 1546
    :cond_9
    :goto_4
    if-eqz v6, :cond_b

    .line 1547
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->clearAppStack()V

    .line 1548
    const/high16 v11, 0x2000

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1550
    new-instance v9, Lcom/google/android/music/activitymanagement/AppState;

    invoke-direct {v9, v6, p0}, Lcom/google/android/music/activitymanagement/AppState;-><init>(Landroid/content/Intent;Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    .line 1551
    .local v9, state:Lcom/google/android/music/activitymanagement/AppState;
    invoke-direct {p0, v9}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->startFramedActivity(Lcom/google/android/music/activitymanagement/AppState;)V

    goto/16 :goto_0

    .line 1542
    .end local v9           #state:Lcom/google/android/music/activitymanagement/AppState;
    :cond_a
    iget-boolean v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsLandscape:Z

    if-nez v11, :cond_9

    if-nez v10, :cond_9

    .line 1543
    new-instance v6, Landroid/content/Intent;

    .end local v6           #i:Landroid/content/Intent;
    const-class v11, Lcom/google/android/music/TabbedLists;

    invoke-direct {v6, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v6       #i:Landroid/content/Intent;
    goto :goto_4

    .line 1556
    .end local v6           #i:Landroid/content/Intent;
    .end local v10           #tabbedListsRunning:Z
    :cond_b
    const-string v11, "TopLevelActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "resuming activity: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    iget-object v11, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v7, v11}, Lcom/google/android/music/activitymanagement/AppState;->launch(Landroid/app/LocalActivityManager;)V

    .line 1559
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->invalidateMusicOptionsMenu()V

    .line 1560
    invoke-direct {p0, v7}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->animateViews(Lcom/google/android/music/activitymanagement/AppState;)V

    .line 1562
    if-nez v4, :cond_c

    if-eqz v3, :cond_1

    .line 1563
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->updateFrame()V

    goto/16 :goto_0
.end method

.method final getAppState(J)Lcom/google/android/music/activitymanagement/AppState;
    .locals 5
    .parameter "id"

    .prologue
    .line 2168
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/AppStateStack;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 2169
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v2, v0}, Lcom/google/android/music/activitymanagement/AppStateStack;->get(I)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v1

    .line 2170
    .local v1, state:Lcom/google/android/music/activitymanagement/AppState;
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppState;->getControllerId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 2171
    return-object v1

    .line 2168
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2174
    .end local v1           #state:Lcom/google/android/music/activitymanagement/AppState;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown state id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getMusicActivityManager()Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;
    .locals 1

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    return-object v0
.end method

.method public hideNoMusicView()V
    .locals 1

    .prologue
    .line 850
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mNoMusicFoundViewEnabled:Z

    if-eqz v0, :cond_0

    .line 851
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mNoMusicFoundViewEnabled:Z

    .line 852
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->updateNoMusicState()V

    .line 854
    :cond_0
    return-void
.end method

.method public invalidateMusicOptionsMenu()V
    .locals 3

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 1153
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1154
    monitor-exit v0

    .line 1155
    return-void

    .line 1154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noMusicSetupUploaderClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 928
    const v2, 0x7f0c0041

    invoke-virtual {p0, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 929
    .local v1, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 930
    .local v0, i:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 931
    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->superStartActivity(Landroid/content/Intent;)V

    .line 932
    return-void
.end method

.method public noMusicSetupUsbClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 917
    const v2, 0x7f0c0040

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 919
    .local v1, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 920
    .local v0, i:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 921
    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->superStartActivity(Landroid/content/Intent;)V

    .line 922
    return-void
.end method

.method public onBottomBarChanged()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 2235
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mManageMusicMenu:Lcom/google/android/music/menu/ManageMusicMenu;

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getOfflineMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/menu/ManageMusicMenu;->setOfflineMusicManager(Lcom/google/android/music/OfflineMusicManager;)V

    .line 2236
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mManageMusicMenu:Lcom/google/android/music/menu/ManageMusicMenu;

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isManageMusicBarVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Lcom/google/android/music/menu/ManageMusicMenu;->setVisibility(I)V

    .line 2239
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-static {v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->access$1700(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)Z

    move-result v1

    .line 2241
    .local v1, useTopbarNowPlaying:Z
    if-eqz v1, :cond_2

    .line 2242
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mNowPlayingBar:Lcom/google/android/music/NowPlayingBar;

    invoke-virtual {v2, v5}, Lcom/google/android/music/NowPlayingBar;->setVisibility(I)V

    .line 2243
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTopBar:Lcom/google/android/music/TopBar;

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isNowPlayingVisible()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/TopBar;->setNowPlayingVisibility(Z)V

    .line 2244
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getOfflineMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 2245
    .local v0, isManageMusicMode:Z
    :goto_1
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTopBar:Lcom/google/android/music/TopBar;

    invoke-virtual {v2, v0}, Lcom/google/android/music/TopBar;->setDoneMangeMusicVisibility(Z)V

    .line 2250
    .end local v0           #isManageMusicMode:Z
    :goto_2
    return-void

    .end local v1           #useTopbarNowPlaying:Z
    :cond_0
    move v3, v5

    .line 2236
    goto :goto_0

    .restart local v1       #useTopbarNowPlaying:Z
    :cond_1
    move v0, v4

    .line 2244
    goto :goto_1

    .line 2247
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mNowPlayingBar:Lcom/google/android/music/NowPlayingBar;

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isNowPlayingBarVisible()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Lcom/google/android/music/NowPlayingBar;->setVisibility(I)V

    goto :goto_2

    :cond_3
    move v3, v5

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x400

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 210
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 211
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    if-nez p1, :cond_7

    move-object v6, v12

    :goto_0
    invoke-virtual {v5, v6}, Landroid/app/LocalActivityManager;->dispatchCreate(Landroid/os/Bundle;)V

    .line 214
    if-eqz p1, :cond_8

    move v3, v10

    .line 215
    .local v3, orientationChanged:Z
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x3e9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 217
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 218
    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setVolumeControlStream(I)V

    .line 220
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 221
    .local v1, currentWindow:Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 226
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 229
    :cond_0
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->isXLargeScreen()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->isLargeScreen()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 230
    :cond_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5}, Lcom/google/android/music/utils/AlbumArtUtils;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    .line 235
    :goto_2
    const v5, 0x7f040030

    invoke-virtual {p0, v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setContentView(I)V

    .line 237
    invoke-static {p0, p0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 238
    const v5, 0x7f0f0083

    invoke-virtual {p0, v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/TopBar;

    iput-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTopBar:Lcom/google/android/music/TopBar;

    .line 239
    const v5, 0x7f0f004a

    invoke-virtual {p0, v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/menu/ManageMusicMenu;

    iput-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mManageMusicMenu:Lcom/google/android/music/menu/ManageMusicMenu;

    .line 240
    const v5, 0x7f0f0077

    invoke-virtual {p0, v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/NowPlayingBar;

    iput-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mNowPlayingBar:Lcom/google/android/music/NowPlayingBar;

    .line 242
    const v5, 0x7f0f0096

    invoke-virtual {p0, v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/BackgroundView;

    iput-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBackgroundView:Lcom/google/android/music/BackgroundView;

    .line 243
    const v5, 0x7f0f0097

    invoke-virtual {p0, v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mFullContentFrame:Landroid/view/ViewGroup;

    .line 244
    const v5, 0x7f0f0098

    invoke-virtual {p0, v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mLimitedContentFrame:Landroid/view/ViewGroup;

    .line 245
    new-instance v5, Lcom/google/android/music/TransitionableViewWrapper;

    const v6, 0x7f0f006c

    invoke-virtual {p0, v6}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->createIncomingViewAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    invoke-static {}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->createOutgoingViewAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/music/TransitionableViewWrapper;-><init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    iput-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mNoMusicStreamingEnabledView:Lcom/google/android/music/TransitionableViewWrapper;

    .line 247
    new-instance v5, Lcom/google/android/music/TransitionableViewWrapper;

    const v6, 0x7f0f0068

    invoke-virtual {p0, v6}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->createIncomingViewAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    invoke-static {}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->createOutgoingViewAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/music/TransitionableViewWrapper;-><init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    iput-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mNoMusicStreamingDisabledView:Lcom/google/android/music/TransitionableViewWrapper;

    .line 249
    new-instance v5, Lcom/google/android/music/TransitionableViewWrapper;

    const v6, 0x7f0f0060

    invoke-virtual {p0, v6}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->createIncomingViewAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    invoke-static {}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->createOutgoingViewAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/music/TransitionableViewWrapper;-><init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    iput-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mNoLocalMusicView:Lcom/google/android/music/TransitionableViewWrapper;

    .line 251
    new-instance v5, Lcom/google/android/music/TransitionableViewWrapper;

    const v6, 0x7f0f0076

    invoke-virtual {p0, v6}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-static {}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->createIncomingViewAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    invoke-static {}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->createOutgoingViewAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/music/TransitionableViewWrapper;-><init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    iput-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mNoPlaylistsView:Lcom/google/android/music/TransitionableViewWrapper;

    .line 253
    iput-object v12, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mCurrentNoMusicView:Lcom/google/android/music/TransitionableViewWrapper;

    .line 254
    invoke-direct {p0, v9}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setNoMusicFoundState(I)V

    .line 255
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mHandler:Landroid/os/Handler;

    .line 257
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    move v5, v10

    :goto_3
    iput-boolean v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsLandscape:Z

    .line 260
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f08

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mPhoneUses3DInLandscape:Z

    .line 261
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mPhoneUses3DInLandscape:Z

    if-eqz v5, :cond_2

    .line 262
    const-string v5, "TopLevelActivity"

    const-string v6, "Using 3D on phone in landscape..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_2
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v5

    if-nez v5, :cond_3

    .line 266
    iget-boolean v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsLandscape:Z

    if-eqz v5, :cond_3

    .line 267
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v11, v11}, Landroid/view/Window;->setFlags(II)V

    .line 273
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 277
    .local v2, launchIntent:Landroid/content/Intent;
    const/4 v4, 0x0

    .line 278
    .local v4, wasRetained:Z
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    if-nez v5, :cond_5

    .line 279
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;

    .line 280
    .local v0, config:Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;
    if-eqz v0, :cond_5

    .line 281
    const/4 v4, 0x1

    .line 282
    iget-object v5, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    iput-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    .line 283
    iget-object v5, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v5, :cond_4

    .line 284
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v6, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v5, v6}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->access$000(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/OfflineMusicManager;)V

    .line 287
    :cond_4
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBackgroundView:Lcom/google/android/music/BackgroundView;

    iget-object v6, v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->mBackgroundConfig:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lcom/google/android/music/BackgroundView;->restoreInstanceFromConfiguration(Ljava/lang/Object;)V

    .line 288
    invoke-static {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;->access$100(Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runWhenServiceConnected(Ljava/util/List;)V

    .line 292
    .end local v0           #config:Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;
    :cond_5
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    if-eqz v5, :cond_6

    .line 293
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v5, p0}, Lcom/google/android/music/activitymanagement/AppStateStack;->refreshTopLevelActivity(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    .line 297
    :cond_6
    if-nez v4, :cond_b

    move v5, v10

    :goto_4
    invoke-direct {p0, v2, v5, v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->initialize(Landroid/content/Intent;ZZ)V

    .line 299
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v5, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 301
    invoke-static {p0, p0}, Lcom/google/android/music/MusicApplication;->registerStoreStateListener(Landroid/content/Context;Lcom/google/android/music/store/StoreStateListener;)V

    .line 303
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/android/music/store/MediaStoreImportService;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v6, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMediaStoreImportConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v5, v6, v10}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 306
    iput-boolean v9, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMenuKeyDown:Z

    .line 307
    iput-boolean v9, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSoftKeyboardInvoked:Z

    .line 308
    return-void

    .line 211
    .end local v1           #currentWindow:Landroid/view/Window;
    .end local v2           #launchIntent:Landroid/content/Intent;
    .end local v3           #orientationChanged:Z
    .end local v4           #wasRetained:Z
    :cond_7
    const-string v6, "android:states"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    goto/16 :goto_0

    :cond_8
    move v3, v9

    .line 214
    goto/16 :goto_1

    .line 232
    .restart local v1       #currentWindow:Landroid/view/Window;
    .restart local v3       #orientationChanged:Z
    :cond_9
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5}, Lcom/google/android/music/utils/AlbumArtUtils;->setPreferredConfig(Landroid/graphics/Bitmap$Config;)V

    goto/16 :goto_2

    :cond_a
    move v5, v9

    .line 257
    goto/16 :goto_3

    .restart local v2       #launchIntent:Landroid/content/Intent;
    .restart local v4       #wasRetained:Z
    :cond_b
    move v5, v9

    .line 297
    goto :goto_4
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "id"
    .parameter "args"

    .prologue
    const v6, 0x7f0c00cb

    const v5, 0x7f0c0005

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1694
    const/4 v1, 0x0

    .line 1695
    .local v1, dialog:Landroid/app/AlertDialog;
    const/16 v2, 0x64

    if-ne p1, v2, :cond_1

    .line 1696
    new-instance v1, Lcom/google/android/music/CreatePlaylist;

    .end local v1           #dialog:Landroid/app/AlertDialog;
    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v4}, Lcom/google/android/music/CreatePlaylist;-><init>(Landroid/content/Context;ZLcom/google/android/music/CreatePlaylist$Callback;)V

    .line 1697
    .restart local v1       #dialog:Landroid/app/AlertDialog;
    new-instance v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$9;

    invoke-direct {v2, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$9;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1749
    :cond_0
    :goto_0
    return-object v1

    .line 1706
    :cond_1
    const/16 v2, 0x67

    if-ne p1, v2, :cond_2

    .line 1707
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1708
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1709
    const v2, 0x7f0c00cc

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1710
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1711
    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1712
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1713
    goto :goto_0

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    const/16 v2, 0x68

    if-ne p1, v2, :cond_3

    .line 1714
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1715
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1716
    const v2, 0x7f0c00cf

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1717
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1718
    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1719
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1720
    goto :goto_0

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_3
    const/16 v2, 0x69

    if-ne p1, v2, :cond_0

    .line 1721
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1722
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c00cd

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1723
    const v2, 0x7f0c00ce

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1724
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1725
    const v2, 0x7f0c0007

    new-instance v3, Lcom/google/android/music/activitymanagement/TopLevelActivity$10;

    invoke-direct {v3, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$10;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1738
    const v2, 0x7f0c0008

    new-instance v3, Lcom/google/android/music/activitymanagement/TopLevelActivity$11;

    invoke-direct {v3, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$11;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1747
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1335
    sget-boolean v2, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "TopLevelActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDestroy "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isFinishing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->isFinishing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_0
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycomb()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1340
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v2}, Landroid/app/LocalActivityManager;->removeAllActivities()V

    .line 1342
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->exitManageMusicMode()V

    .line 1343
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v2}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 1347
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/AppStateStack;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1348
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v2, v1}, Lcom/google/android/music/activitymanagement/AppStateStack;->get(I)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v0

    .line 1349
    .local v0, appState:Lcom/google/android/music/activitymanagement/AppState;
    invoke-virtual {v0, v5}, Lcom/google/android/music/activitymanagement/AppState;->refreshTopLevelActivity(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    .line 1347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1351
    .end local v0           #appState:Lcom/google/android/music/activitymanagement/AppState;
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMediaStoreImportConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1352
    iput-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    .line 1355
    iput-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTopBar:Lcom/google/android/music/TopBar;

    .line 1357
    invoke-static {p0, p0}, Lcom/google/android/music/MusicApplication;->unregisterStoreStateListener(Landroid/content/Context;Lcom/google/android/music/store/StoreStateListener;)V

    .line 1358
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 1359
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->isFinishing()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    .line 1360
    return-void
.end method

.method public onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 730
    sget-boolean v3, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v3, :cond_0

    const-string v3, "TopLevelActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMusicMenuItemSelected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->closeMusicMenu()V

    .line 732
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 789
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/AppStateStack;->last()Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v1

    .line 790
    .local v1, state:Lcom/google/android/music/activitymanagement/AppState;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/TopBar$ActionBarController;->getMenuCustomizer()Lcom/google/android/music/TopBar$MenuCustomizer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 792
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/TopBar$ActionBarController;->getMenuCustomizer()Lcom/google/android/music/TopBar$MenuCustomizer;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/google/android/music/TopBar$MenuCustomizer;->onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z

    .line 798
    .end local v1           #state:Lcom/google/android/music/activitymanagement/AppState;
    :cond_1
    :goto_0
    return v7

    .line 735
    :sswitch_0
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getDisplayOptions()I

    move-result v3

    if-nez v3, :cond_2

    .line 737
    invoke-direct {p0, v7}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setOfflineOnly(Z)V

    goto :goto_0

    .line 739
    :cond_2
    invoke-direct {p0, v6}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setOfflineOnly(Z)V

    goto :goto_0

    .line 744
    :sswitch_1
    invoke-direct {p0, v6}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setOfflineOnly(Z)V

    goto :goto_0

    .line 748
    :sswitch_2
    invoke-direct {p0, v7}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setOfflineOnly(Z)V

    goto :goto_0

    .line 752
    :sswitch_3
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startManageMusicMode()V

    goto :goto_0

    .line 756
    :sswitch_4
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-static {p0, v3}, Lcom/google/android/music/MusicUtils;->doInternalSearch(Landroid/content/Context;Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    goto :goto_0

    .line 760
    :sswitch_5
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startSettings()V

    goto :goto_0

    .line 764
    :sswitch_6
    sget-object v3, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v3, :cond_1

    .line 765
    new-instance v3, Lcom/google/android/music/medialist/AllSongsList;

    invoke-direct {v3, v6}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->shuffleAll(Lcom/google/android/music/medialist/SongList;)V

    .line 766
    invoke-static {p0}, Lcom/google/android/music/MusicUtils;->getMediaPlayerIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 771
    :sswitch_7
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3, v6}, Lcom/google/android/music/jumper/MusicPreferences;->setHideNowPlayingBar(Z)V

    goto :goto_0

    .line 775
    :sswitch_8
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3, v7}, Lcom/google/android/music/jumper/MusicPreferences;->setHideNowPlayingBar(Z)V

    goto :goto_0

    .line 779
    :sswitch_9
    const v3, 0x7f0c0040

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 780
    .local v2, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 781
    .local v0, i:Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 782
    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->superStartActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 732
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_6
        0x11 -> :sswitch_4
        0x12 -> :sswitch_5
        0x14 -> :sswitch_3
        0x15 -> :sswitch_8
        0x16 -> :sswitch_7
        0x17 -> :sswitch_9
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 312
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v0, :cond_0

    .line 313
    const-string v0, "TopLevelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->initialize(Landroid/content/Intent;ZZ)V

    .line 316
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1006
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 1007
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchPause(Z)V

    .line 1008
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSyncObserverHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 1009
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0, p0}, Lcom/google/android/music/jumper/MusicPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1010
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1011
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 1378
    sget-boolean v1, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "TopLevelActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRestoreInstanceState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppStateStack;->last()Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v1

    move-object v0, v1

    .line 1380
    .local v0, state:Lcom/google/android/music/activitymanagement/AppState;
    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 1381
    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/AppState;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "topLevelActivity"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1383
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1388
    :cond_1
    :goto_1
    return-void

    .line 1379
    .end local v0           #state:Lcom/google/android/music/activitymanagement/AppState;
    :cond_2
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0

    .line 1385
    .restart local v0       #state:Lcom/google/android/music/activitymanagement/AppState;
    :cond_3
    const-string v1, "TopLevelActivity"

    const-string v2, "top activity changed, dropping saved state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 1015
    sget-boolean v2, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "TopLevelActivity"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 1017
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v2}, Landroid/app/LocalActivityManager;->dispatchResume()V

    .line 1019
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1020
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.music.playstatechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1021
    const-string v2, "com.android.music.queuechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1022
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSyncObserver:Lcom/google/android/music/activitymanagement/TopLevelActivity$SyncObserver;

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mSyncObserverHandle:Ljava/lang/Object;

    .line 1024
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamingEnabled()Z

    move-result v1

    .line 1025
    .local v1, streamingEnabled:Z
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1026
    if-eqz v1, :cond_1

    .line 1027
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTopBar:Lcom/google/android/music/TopBar;

    invoke-static {p0}, Lcom/google/android/music/sync/SyncAdapterService;->isSyncActive(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/TopBar;->setSyncStatus(Z)V

    .line 1030
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2, p0}, Lcom/google/android/music/jumper/MusicPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1031
    new-instance v2, Lcom/google/android/music/activitymanagement/TopLevelActivity$5;

    invoke-direct {v2, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$5;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    invoke-direct {p0, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runWhenServiceConnected(Ljava/lang/Runnable;)V

    .line 1036
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setUIVisibility(Z)V

    .line 1037
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 996
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->access$600(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)Z

    move-result v2

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->access$700(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBackgroundView:Lcom/google/android/music/BackgroundView;

    invoke-virtual {v1}, Lcom/google/android/music/BackgroundView;->saveInstanceConfiguration()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOnServiceConnectedRunnable:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/activitymanagement/TopLevelActivity$TopLevelConfig;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;ZLcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/activitymanagement/AppStateStack;Ljava/lang/Object;Ljava/util/List;)V

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outcicle"

    .prologue
    .line 1364
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1365
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v3}, Landroid/app/LocalActivityManager;->saveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 1366
    .local v0, activityManagerState:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1367
    const-string v3, "android:states"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1369
    :cond_0
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/AppStateStack;->last()Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v3

    move-object v2, v3

    .line 1370
    .local v2, state:Lcom/google/android/music/activitymanagement/AppState;
    :goto_0
    if-eqz v2, :cond_1

    .line 1371
    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/AppState;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 1372
    .local v1, component:Landroid/content/ComponentName;
    const-string v3, "topLevelActivity"

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    .end local v1           #component:Landroid/content/ComponentName;
    :cond_1
    return-void

    .line 1369
    .end local v2           #state:Lcom/google/android/music/activitymanagement/AppState;
    :cond_2
    const/4 v3, 0x0

    move-object v2, v3

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1095
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1113
    :cond_0
    return-void

    .line 1098
    :cond_1
    sget-boolean v3, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v3, :cond_2

    .line 1099
    const-string v3, "TopLevelActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_2
    const/4 v1, 0x0

    .line 1102
    .local v1, onServiceConnectedRunnables:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 1103
    :try_start_0
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1104
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOnServiceConnectedRunnable:Ljava/util/List;

    .line 1105
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mOnServiceConnectedRunnable:Ljava/util/List;

    .line 1106
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    if-eqz v1, :cond_0

    .line 1109
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 1110
    .local v2, r:Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1106
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #r:Ljava/lang/Runnable;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 1324
    sget-boolean v0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->LOGV:Z

    if-eqz v0, :cond_0

    .line 1325
    const-string v0, "TopLevelActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 1328
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mIsServiceConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1329
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1330
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->finish()V

    .line 1331
    return-void

    .line 1329
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 2253
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$12;

    invoke-direct {v0, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$12;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2260
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 1060
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStart()V

    .line 1061
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->startTutorialIfNecessary(Z)Z

    .line 1062
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1054
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 1055
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mActivityManager:Landroid/app/LocalActivityManager;

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->dispatchStop()V

    .line 1056
    return-void
.end method

.method public onStoreStateChanged(I)V
    .locals 1
    .parameter "importState"

    .prologue
    .line 939
    iput p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mImportState:I

    .line 944
    new-instance v0, Lcom/google/android/music/activitymanagement/TopLevelActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$3;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 951
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    .prologue
    .line 1041
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setUIVisibility(Z)V

    .line 1042
    return-void
.end method

.method public openMusicMenu()V
    .locals 4

    .prologue
    .line 698
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 699
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 700
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->createOptionsMenu()Lcom/google/android/music/menu/MusicMenu;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 703
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/menu/MusicMenu;

    .line 704
    .local v0, finalMenu:Lcom/google/android/music/menu/MusicMenu;
    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->prepareOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V

    .line 705
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 706
    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicMenu;->show()V

    .line 707
    monitor-exit v1

    .line 708
    return-void

    .line 707
    .end local v0           #finalMenu:Lcom/google/android/music/menu/MusicMenu;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 837
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 838
    return-void
.end method

.method public prepareOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 13
    .parameter "menu"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 627
    iget-object v9, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v9}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamingEnabled()Z

    move-result v8

    .line 628
    .local v8, streamingEnabled:Z
    iget-object v9, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v9}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v3

    .line 629
    .local v3, isTablet:Z
    iget-object v9, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v9}, Lcom/google/android/music/jumper/MusicPreferences;->shouldHideNowPlayingBar()Z

    move-result v6

    .line 630
    .local v6, nowPlayingBarShouldBeHidden:Z
    iget-object v9, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v9}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v9

    if-eqz v9, :cond_2

    move v2, v12

    .line 633
    .local v2, hasStreamingAccount:Z
    :goto_0
    const/16 v9, 0xa

    invoke-direct {p0, p1, v9, v12}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Lcom/google/android/music/menu/MusicMenu;IZ)V

    .line 634
    const/16 v9, 0x16

    if-eqz v3, :cond_3

    if-eqz v6, :cond_3

    move v10, v12

    :goto_1
    invoke-direct {p0, p1, v9, v10}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Lcom/google/android/music/menu/MusicMenu;IZ)V

    .line 635
    const/16 v9, 0x15

    if-eqz v3, :cond_4

    if-nez v6, :cond_4

    move v10, v12

    :goto_2
    invoke-direct {p0, p1, v9, v10}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Lcom/google/android/music/menu/MusicMenu;IZ)V

    .line 637
    const/16 v9, 0x14

    invoke-direct {p0, p1, v9, v11}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Lcom/google/android/music/menu/MusicMenu;IZ)V

    .line 639
    iget-object v9, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v9}, Lcom/google/android/music/jumper/MusicPreferences;->getDisplayOptions()I

    move-result v1

    .line 640
    .local v1, displayOptions:I
    if-eqz v3, :cond_6

    .line 641
    const/16 v9, 0x66

    invoke-virtual {p1, v9}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v4

    .line 642
    .local v4, item:Lcom/google/android/music/menu/MusicMenuItem;
    invoke-virtual {v4, v8}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 643
    invoke-virtual {v4, v2}, Lcom/google/android/music/menu/MusicMenuItem;->setEnabled(Z)V

    .line 644
    if-ne v1, v12, :cond_5

    move v9, v12

    :goto_3
    invoke-virtual {v4, v9}, Lcom/google/android/music/menu/MusicMenuItem;->setChecked(Z)V

    .line 657
    :cond_0
    :goto_4
    const/16 v9, 0x12

    invoke-direct {p0, p1, v9, v8}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Lcom/google/android/music/menu/MusicMenu;IZ)V

    .line 658
    const/16 v9, 0x17

    if-eqz v3, :cond_9

    if-eqz v8, :cond_9

    move v10, v12

    :goto_5
    invoke-direct {p0, p1, v9, v10}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Lcom/google/android/music/menu/MusicMenu;IZ)V

    .line 661
    const/4 v9, 0x4

    invoke-direct {p0, p1, v9, v11}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Lcom/google/android/music/menu/MusicMenu;IZ)V

    .line 663
    const/16 v9, 0x11

    if-nez v3, :cond_a

    move v10, v12

    :goto_6
    invoke-direct {p0, p1, v9, v10}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Lcom/google/android/music/menu/MusicMenu;IZ)V

    .line 665
    const/16 v9, 0x19

    invoke-direct {p0, p1, v9, v11}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Lcom/google/android/music/menu/MusicMenu;IZ)V

    .line 666
    const/16 v9, 0x18

    invoke-direct {p0, p1, v9, v11}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setMenuVisibility(Lcom/google/android/music/menu/MusicMenu;IZ)V

    .line 668
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getCurrentMenuCustomizer()Lcom/google/android/music/TopBar$MenuCustomizer;

    move-result-object v0

    .line 669
    .local v0, customizer:Lcom/google/android/music/TopBar$MenuCustomizer;
    if-eqz v0, :cond_1

    .line 670
    invoke-interface {v0, p1}, Lcom/google/android/music/TopBar$MenuCustomizer;->prepareOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V

    .line 672
    :cond_1
    return-void

    .end local v0           #customizer:Lcom/google/android/music/TopBar$MenuCustomizer;
    .end local v1           #displayOptions:I
    .end local v2           #hasStreamingAccount:Z
    .end local v4           #item:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_2
    move v2, v11

    .line 630
    goto :goto_0

    .restart local v2       #hasStreamingAccount:Z
    :cond_3
    move v10, v11

    .line 634
    goto :goto_1

    :cond_4
    move v10, v11

    .line 635
    goto :goto_2

    .restart local v1       #displayOptions:I
    .restart local v4       #item:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_5
    move v9, v11

    .line 644
    goto :goto_3

    .line 646
    .end local v4           #item:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_6
    const/16 v9, 0x13

    invoke-virtual {p1, v9}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v4

    .line 647
    .restart local v4       #item:Lcom/google/android/music/menu/MusicMenuItem;
    invoke-virtual {v4, v8}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 648
    invoke-virtual {v4, v2}, Lcom/google/android/music/menu/MusicMenuItem;->setEnabled(Z)V

    .line 649
    invoke-virtual {v4}, Lcom/google/android/music/menu/MusicMenuItem;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v4}, Lcom/google/android/music/menu/MusicMenuItem;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 650
    invoke-virtual {v4}, Lcom/google/android/music/menu/MusicMenuItem;->getSubMenu()Lcom/google/android/music/menu/MusicListMenu;

    move-result-object v5

    .line 651
    .local v5, libMenu:Lcom/google/android/music/menu/MusicListMenu;
    if-ne v1, v12, :cond_7

    move v7, v12

    .line 652
    .local v7, offlineOnly:Z
    :goto_7
    const/16 v9, 0x64

    invoke-virtual {v5, v9}, Lcom/google/android/music/menu/MusicListMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v9

    if-nez v7, :cond_8

    move v10, v12

    :goto_8
    invoke-virtual {v9, v10}, Lcom/google/android/music/menu/MusicMenuItem;->setChecked(Z)V

    .line 653
    const/16 v9, 0x65

    invoke-virtual {v5, v9}, Lcom/google/android/music/menu/MusicListMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/google/android/music/menu/MusicMenuItem;->setChecked(Z)V

    goto :goto_4

    .end local v7           #offlineOnly:Z
    :cond_7
    move v7, v11

    .line 651
    goto :goto_7

    .restart local v7       #offlineOnly:Z
    :cond_8
    move v10, v11

    .line 652
    goto :goto_8

    .end local v5           #libMenu:Lcom/google/android/music/menu/MusicListMenu;
    .end local v7           #offlineOnly:Z
    :cond_9
    move v10, v11

    .line 658
    goto :goto_5

    :cond_a
    move v10, v11

    .line 663
    goto :goto_6
.end method

.method public setMusicFound(Z)V
    .locals 1
    .parameter "musicFound"

    .prologue
    .line 841
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setNoMusicFoundState(I)V

    .line 842
    return-void

    .line 841
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPlaylistsFound(Z)V
    .locals 1
    .parameter "playlistsFound"

    .prologue
    .line 935
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->setNoMusicFoundState(I)V

    .line 936
    return-void

    .line 935
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1132
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1133
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 1134
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1135
    .local v1, packageName:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "com.google.android.music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.google.android.music"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1138
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->startFramedActivity(Landroid/content/Intent;)V

    .line 1143
    .end local v1           #packageName:Ljava/lang/String;
    :goto_0
    return-void

    .line 1142
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->superStartActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public startFramedActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1147
    new-instance v0, Lcom/google/android/music/activitymanagement/AppState;

    invoke-direct {v0, p1, p0}, Lcom/google/android/music/activitymanagement/AppState;-><init>(Landroid/content/Intent;Lcom/google/android/music/activitymanagement/TopLevelActivity;)V

    .line 1148
    .local v0, newState:Lcom/google/android/music/activitymanagement/AppState;
    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->startFramedActivity(Lcom/google/android/music/activitymanagement/AppState;)V

    .line 1149
    return-void
.end method

.method public superStartActivity(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 1120
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->startActivity(Landroid/content/Intent;)V

    .line 1121
    return-void
.end method

.method final updateBackgroundAlbum(Z)V
    .locals 4
    .parameter "fromScroll"

    .prologue
    .line 2157
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppStateStack;->last()Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v0

    .line 2158
    .local v0, state:Lcom/google/android/music/activitymanagement/AppState;
    if-eqz v0, :cond_0

    .line 2159
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mBackgroundView:Lcom/google/android/music/BackgroundView;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/AppState;->getBackgroundAlbumId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/music/BackgroundView;->setRepresentativeAlbum(JZ)V

    .line 2161
    :cond_0
    return-void
.end method

.method final updateFrame()V
    .locals 2

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/AppStateStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2179
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTopBar:Lcom/google/android/music/TopBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/TopBar;->setActionBarController(Lcom/google/android/music/TopBar$ActionBarController;)V

    .line 2183
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->updateNowPlayingBarVisibility()V

    .line 2184
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->updateNoMusicFoundVisibility()V

    .line 2185
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->updateTitles()V

    .line 2186
    return-void

    .line 2181
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTopBar:Lcom/google/android/music/TopBar;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppStateStack;->last()Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/TopBar;->setActionBarController(Lcom/google/android/music/TopBar$ActionBarController;)V

    goto :goto_0
.end method

.method public updateNoMusicFoundVisibility()V
    .locals 2

    .prologue
    .line 862
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppStateStack;->last()Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v0

    .line 863
    .local v0, state:Lcom/google/android/music/activitymanagement/AppState;
    if-eqz v0, :cond_0

    .line 864
    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/AppState;->isNoMusicViewEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mNoMusicFoundViewEnabled:Z

    .line 866
    :cond_0
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->updateNoMusicState()V

    .line 867
    return-void
.end method

.method final updateNowPlayingBarVisibility()V
    .locals 1

    .prologue
    .line 2189
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mMusicActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->access$500(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    .line 2190
    return-void
.end method

.method final updateTitles()V
    .locals 7

    .prologue
    .line 2195
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/AppStateStack;->atTop()Z

    move-result v0

    .line 2196
    .local v0, atTop:Z
    const/4 v2, 0x0

    .line 2197
    .local v2, primaryTitle:Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 2198
    .local v3, secondaryTitle:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/AppStateStack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2199
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/AppStateStack;->last()Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v1

    .line 2200
    .local v1, lastState:Lcom/google/android/music/activitymanagement/AppState;
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppState;->getPrimaryTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2201
    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppState;->getSecondaryTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 2202
    if-nez v3, :cond_0

    .line 2203
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/AppStateStack;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 2204
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    iget-object v5, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mAppStack:Lcom/google/android/music/activitymanagement/AppStateStack;

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/AppStateStack;->size()I

    move-result v5

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/google/android/music/activitymanagement/AppStateStack;->get(I)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/AppState;->getPrimaryTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 2208
    .end local v1           #lastState:Lcom/google/android/music/activitymanagement/AppState;
    :cond_0
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity;->mTopBar:Lcom/google/android/music/TopBar;

    invoke-virtual {v4, v2, v3, v0}, Lcom/google/android/music/TopBar;->updateTitles(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 2209
    return-void
.end method
