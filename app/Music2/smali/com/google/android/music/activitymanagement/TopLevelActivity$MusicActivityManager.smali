.class public final Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;
.super Ljava/lang/Object;
.source "TopLevelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/TopLevelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MusicActivityManager"
.end annotation


# static fields
.field public static final VIEW_ALBUMS:I = 0x1

.field public static final VIEW_ARTISTS:I = 0x2

.field public static final VIEW_GENRES:I = 0x5

.field public static final VIEW_MODE_MAX:I = 0x5

.field public static final VIEW_MODE_MIN:I = 0x0

.field public static final VIEW_PLAYLISTS:I = 0x3

.field public static final VIEW_RECENT:I = 0x0

.field public static final VIEW_SONGS:I = 0x4


# instance fields
.field private final mBottomBarChangeListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/music/BottomBarChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mHasValidPlaylist:Z

.field private mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field final synthetic this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1752
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1763
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mBottomBarChangeListeners:Ljava/util/Collection;

    .line 1771
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mHasValidPlaylist:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/OfflineMusicManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1752
    invoke-direct {p0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->restoreManageMusicMode(Lcom/google/android/music/OfflineMusicManager;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1752
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->usingTopBarNowPlayingBar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1752
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->updateHasPlaylist()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1752
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mHasValidPlaylist:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)Lcom/google/android/music/OfflineMusicManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    return-object v0
.end method

.method private declared-synchronized restoreManageMusicMode(Lcom/google/android/music/OfflineMusicManager;)V
    .locals 2
    .parameter "manager"

    .prologue
    .line 2129
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 2130
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/music/OfflineMusicManager;->restoreMusicActivityManager(Landroid/content/Context;Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    .line 2131
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->notifyModeChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2132
    monitor-exit p0

    return-void

    .line 2129
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateHasPlaylist()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 1949
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1981
    :cond_0
    :goto_0
    return-void

    .line 1954
    :cond_1
    const/4 v0, 0x0

    .line 1955
    .local v0, hasValidPlaylist:Z
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v1, :cond_0

    .line 1956
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->hasValidPlaylist()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1957
    const/4 v0, 0x1

    .line 1964
    :cond_2
    iput-boolean v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mHasValidPlaylist:Z

    .line 1968
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$1100(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/NowPlayingBar;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$1200(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/TopBar;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1970
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->usingTopBarNowPlayingBar()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1971
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$1100(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/NowPlayingBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/music/NowPlayingBar;->setVisibility(I)V

    .line 1972
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$1200(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/TopBar;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$200(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isNowPlayingVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/TopBar;->setNowPlayingVisibility(Z)V

    .line 1980
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->notifyModeChanged()V

    goto :goto_0

    .line 1974
    :cond_4
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$1100(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/NowPlayingBar;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$200(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isNowPlayingBarVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Lcom/google/android/music/NowPlayingBar;->setVisibility(I)V

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2
.end method

.method private usingTopBarNowPlayingBar()Z
    .locals 1

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$900(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$1300(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public closeMenu()V
    .locals 1

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->closeMusicMenu()V

    .line 2048
    return-void
.end method

.method public displayOverfullWarning()V
    .locals 2

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->showDialog(I)V

    .line 1789
    return-void
.end method

.method public declared-synchronized exitManageMusicMode()V
    .locals 2

    .prologue
    .line 2115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_1

    .line 2116
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0}, Lcom/google/android/music/OfflineMusicManager;->isOutOfSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2117
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->showDialog(I)V

    .line 2119
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 2120
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->notifyModeChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2122
    :cond_1
    monitor-exit p0

    return-void

    .line 2115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBottomBarHeight()I
    .locals 2

    .prologue
    .line 2090
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isManageMusicBarVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2091
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2098
    :goto_0
    return v0

    .line 2094
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isNowPlayingBarVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2095
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 2098
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentBackgroundAlbumId()J
    .locals 2

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$800(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/BackgroundView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/BackgroundView;->getRepresentativeAlbumId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getOfflineMusicManager()Lcom/google/android/music/OfflineMusicManager;
    .locals 1

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    return-object v0
.end method

.method public getPreviousActionBarController(Lcom/google/android/music/TopBar$ActionBarController;)Lcom/google/android/music/TopBar$ActionBarController;
    .locals 5
    .parameter "currentController"

    .prologue
    .line 1934
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v4}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$400(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/AppStateStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/AppStateStack;->size()I

    move-result v2

    .line 1935
    .local v2, stackSize:I
    const/4 v1, 0x0

    .line 1936
    .local v1, returnNext:Z
    const/4 v4, 0x1

    sub-int v0, v2, v4

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_2

    .line 1937
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v4}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$400(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/AppStateStack;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/music/activitymanagement/AppStateStack;->get(I)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v3

    .line 1938
    .local v3, state:Lcom/google/android/music/activitymanagement/AppState;
    if-eqz v1, :cond_0

    .line 1939
    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v4

    .line 1945
    .end local v3           #state:Lcom/google/android/music/activitymanagement/AppState;
    :goto_1
    return-object v4

    .line 1941
    .restart local v3       #state:Lcom/google/android/music/activitymanagement/AppState;
    :cond_0
    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v4

    if-ne p1, v4, :cond_1

    .line 1942
    const/4 v1, 0x1

    .line 1936
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1945
    .end local v3           #state:Lcom/google/android/music/activitymanagement/AppState;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getUseListViewsInLandscape()Z
    .locals 1

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$1500(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Z

    move-result v0

    return v0
.end method

.method public goBackOneLevel()V
    .locals 3

    .prologue
    .line 1795
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$400(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/AppStateStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppStateStack;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 1800
    :goto_0
    return-void

    .line 1798
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$400(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/AppStateStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppStateStack;->last()Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v0

    .line 1799
    .local v0, appState:Lcom/google/android/music/activitymanagement/AppState;
    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/AppState;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public isManageMusicBarVisible()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2030
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$400(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/AppStateStack;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v2

    .line 2035
    :goto_0
    return v1

    .line 2032
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$400(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/AppStateStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppStateStack;->last()Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v0

    .line 2033
    .local v0, state:Lcom/google/android/music/activitymanagement/AppState;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/AppState;->isManageMusicBarEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 2035
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public isManageMusicMode()Z
    .locals 1

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNowPlayingBarVisible()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2017
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_0

    move v0, v1

    .line 2026
    :goto_0
    return v0

    .line 2020
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$900(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->shouldHideNowPlayingBar()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 2022
    :cond_1
    invoke-direct {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->usingTopBarNowPlayingBar()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 2023
    goto :goto_0

    .line 2026
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isNowPlayingVisible()Z

    move-result v0

    goto :goto_0
.end method

.method public isNowPlayingVisible()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1994
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$400(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/AppStateStack;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v2

    .line 2006
    :goto_0
    return v1

    .line 1997
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$400(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/AppStateStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/AppStateStack;->last()Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v0

    .line 1998
    .local v0, state:Lcom/google/android/music/activitymanagement/AppState;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/AppState;->isNowPlayingBarEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 2001
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mHasValidPlaylist:Z

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    .line 2004
    :cond_2
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_0

    .line 2006
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTopLevel(Lcom/google/android/music/activitymanagement/AppState;)Z
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x0

    .line 1780
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$400(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/AppStateStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/AppStateStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1781
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$400(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/activitymanagement/AppStateStack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/AppStateStack;->get(I)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    .line 1783
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1781
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1783
    goto :goto_0
.end method

.method public notifyModeChanged()V
    .locals 6

    .prologue
    .line 2140
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mBottomBarChangeListeners:Ljava/util/Collection;

    monitor-enter v3

    .line 2141
    :try_start_0
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mBottomBarChangeListeners:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/BottomBarChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2143
    .local v2, listener:Lcom/google/android/music/BottomBarChangeListener;
    :try_start_1
    invoke-interface {v2}, Lcom/google/android/music/BottomBarChangeListener;->onBottomBarChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2144
    :catch_0
    move-exception v0

    .line 2145
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "TopLevelActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2148
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/google/android/music/BottomBarChangeListener;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2149
    return-void
.end method

.method public openMenu()V
    .locals 1

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->openMusicMenu()V

    .line 2044
    return-void
.end method

.method public registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mBottomBarChangeListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 2080
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mBottomBarChangeListeners:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2081
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2082
    invoke-interface {p1}, Lcom/google/android/music/BottomBarChangeListener;->onBottomBarChanged()V

    .line 2083
    return-void

    .line 2081
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public returnToTop()V
    .locals 4

    .prologue
    .line 1803
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1804
    .local v0, i:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v3, Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1805
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1806
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->superStartActivity(Landroid/content/Intent;)V

    .line 1807
    return-void
.end method

.method public setUseListViewsInLandscape(Z)V
    .locals 1
    .parameter "useListViewsInLandscape"

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$1600(Lcom/google/android/music/activitymanagement/TopLevelActivity;Z)V

    .line 2070
    return-void
.end method

.method public setViewMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$1400(Lcom/google/android/music/activitymanagement/TopLevelActivity;I)V

    .line 2063
    return-void
.end method

.method public showDialog(ILandroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "args"

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 2153
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->startFramedActivity(Landroid/content/Intent;)V

    .line 1823
    return-void
.end method

.method public startAlbumListingForAlbumArtist(JLjava/lang/String;Ljava/lang/String;J)V
    .locals 3
    .parameter "artistId"
    .parameter "artistName"
    .parameter "sortableAlbumArtistName"
    .parameter "selectedAlbum"

    .prologue
    .line 1858
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$900(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1860
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1861
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "displayMode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1863
    const-string v1, "albumArtistId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1864
    const-string v1, "sortableAlbumArtistName"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1879
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startActivity(Landroid/content/Intent;)V

    .line 1880
    return-void

    .line 1870
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/AlbumBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1873
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/vnd.google.music.album"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1874
    const-string v1, "albumArtistId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1875
    const-wide/16 v1, -0x1

    cmp-long v1, p5, v1

    if-eqz v1, :cond_0

    .line 1876
    const-string v1, "selectedAlbumId"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0
.end method

.method public startGlobalSearch()V
    .locals 5

    .prologue
    .line 1923
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SEARCH"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v4, Lcom/google/android/music/QueryBrowserActivity;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1927
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1928
    invoke-static {}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TopLevelActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInternalSearch(): launching built-in search UI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startActivity(Landroid/content/Intent;)V

    .line 1930
    return-void
.end method

.method public startLocalSearch(Ljava/lang/String;)V
    .locals 3
    .parameter "searchString"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1914
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/QueryBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1915
    .local v0, i:Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1916
    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1918
    :cond_0
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1919
    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startActivity(Landroid/content/Intent;)V

    .line 1920
    return-void
.end method

.method public declared-synchronized startManageMusicMode()V
    .locals 2

    .prologue
    .line 2108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-nez v0, :cond_0

    .line 2109
    new-instance v0, Lcom/google/android/music/OfflineMusicManager;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-direct {v0, v1, p0}, Lcom/google/android/music/OfflineMusicManager;-><init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 2110
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->notifyModeChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2112
    :cond_0
    monitor-exit p0

    return-void

    .line 2108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startNowPlayingScreen()V
    .locals 1

    .prologue
    .line 1910
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->getMediaPlayerIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startActivity(Landroid/content/Intent;)V

    .line 1911
    return-void
.end method

.method public startSettings()V
    .locals 1

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v0}, Lcom/google/android/music/MusicSettingsActivity;->getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startActivity(Landroid/content/Intent;)V

    .line 1827
    return-void
.end method

.method public startTrackListing(Lcom/google/android/music/medialist/MediaList;)V
    .locals 1
    .parameter "medialist"

    .prologue
    .line 1843
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListing(Lcom/google/android/music/medialist/MediaList;Z)V

    .line 1844
    return-void
.end method

.method public startTrackListing(Lcom/google/android/music/medialist/MediaList;Z)V
    .locals 3
    .parameter "medialist"
    .parameter "clearTop"

    .prologue
    .line 1847
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1848
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "medialist"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1849
    if-eqz p2, :cond_0

    .line 1850
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1852
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startActivity(Landroid/content/Intent;)V

    .line 1853
    return-void
.end method

.method public startTrackListingForAlbum(JJJ)V
    .locals 5
    .parameter "albumId"
    .parameter "artistId"
    .parameter "selectedTrackId"

    .prologue
    const-wide/16 v3, -0x1

    .line 1830
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1831
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1832
    const-string v1, "medialist"

    new-instance v2, Lcom/google/android/music/medialist/AlbumSongList;

    invoke-direct {v2, p1, p2}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1833
    cmp-long v1, p3, v3

    if-eqz v1, :cond_0

    .line 1834
    const-string v1, "autoscrollAlbumArtistId"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1836
    :cond_0
    cmp-long v1, p5, v3

    if-eqz v1, :cond_1

    .line 1837
    const-string v1, "autoscrollTrackId"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1839
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startActivity(Landroid/content/Intent;)V

    .line 1840
    return-void
.end method

.method public startTrackListingForAllSongsByArtist(JLjava/lang/String;)V
    .locals 2
    .parameter "artistId"
    .parameter "artistName"

    .prologue
    .line 1883
    new-instance v0, Lcom/google/android/music/medialist/ArtistSongList;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$900(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getArtistSongsSortOrder()I

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 1885
    return-void
.end method

.method public startTrackListingForAllSongsInGenre(JLjava/lang/String;)V
    .locals 2
    .parameter "genreId"
    .parameter "genreName"

    .prologue
    .line 1888
    new-instance v0, Lcom/google/android/music/medialist/GenreSongList;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$900(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getGenreSongsSortOrder()I

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/music/medialist/GenreSongList;-><init>(JLjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 1890
    return-void
.end method

.method public startTrackListingForNewAndRecent()V
    .locals 2

    .prologue
    .line 1905
    new-instance v0, Lcom/google/android/music/medialist/RecentlyAdddedSongList;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$900(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getRecentlyAddedSongsSortOrder()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/music/medialist/RecentlyAdddedSongList;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 1907
    return-void
.end method

.method public startTrackListingForPlaylist(JLjava/lang/String;)V
    .locals 0
    .parameter "playlistId"
    .end parameter
    .parameter "playlistName"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1902
    return-void
.end method

.method public startTrackListingForTrackArtist(JLjava/lang/String;)V
    .locals 2
    .parameter "artistId"
    .parameter "artist"

    .prologue
    .line 1896
    new-instance v0, Lcom/google/android/music/medialist/ArtistSongList;

    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->access$900(Lcom/google/android/music/activitymanagement/TopLevelActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getArtistSongsSortOrder()I

    move-result v1

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 1898
    return-void
.end method

.method public superStartActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->superStartActivity(Landroid/content/Intent;)V

    .line 1815
    return-void
.end method

.method public unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mBottomBarChangeListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 2103
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->mBottomBarChangeListeners:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 2104
    monitor-exit v0

    .line 2105
    return-void

    .line 2104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateNoMusicFoundVisibility()V
    .locals 1

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->this$0:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->updateNoMusicFoundVisibility()V

    .line 2040
    return-void
.end method
