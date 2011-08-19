.class public Lcom/google/android/music/PlaylistBrowserActivity;
.super Landroid/app/ListActivity;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/google/android/music/menu/MusicMenu$Callback;
.implements Lcom/google/android/music/RetrievableResultActivity;
.implements Landroid/content/ServiceConnection;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/google/android/music/CreatePlaylist$Callback;
.implements Lcom/google/android/music/TopBar$MenuCustomizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;,
        Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;,
        Lcom/google/android/music/PlaylistBrowserActivity$NotifyingMatrixCursor;
    }
.end annotation


# static fields
.field public static final ALL_SONGS_PLAYLIST:J = -0x2L

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field public static final RECENTLY_ADDED_PLAYLIST:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "PlaylistBrowserActivity"

.field private static final mCols:[Ljava/lang/String;

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

.field private mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mAppState:Lcom/google/android/music/activitymanagement/AppState;

.field private mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

.field private mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

.field private mCreateShortcut:Z

.field private mCurrentPlaylist:J

.field private mCurrentPlaylistName:Ljava/lang/String;

.field private mListContainer:Landroid/view/View;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNoContentListener:Lcom/google/android/music/NoContentListener;

.field private mPlaylistCursor:Landroid/database/Cursor;

.field private mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

.field private mResultCode:I

.field private mResultData:Landroid/content/Intent;

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 73
    const-string v0, "PlaylistBrowserActivity"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/PlaylistBrowserActivity;->LOGV:Z

    .line 78
    sput v1, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 79
    sput v1, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosFine:I

    .line 538
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "KeepOnId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "hasRemote"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hasLocal"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 84
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mCurrentPlaylist:J

    .line 85
    iput-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mCurrentPlaylistName:Ljava/lang/String;

    .line 88
    iput-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 91
    iput-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mResultData:Landroid/content/Intent;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mResultCode:I

    .line 218
    new-instance v0, Lcom/google/android/music/PlaylistBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/PlaylistBrowserActivity$1;-><init>(Lcom/google/android/music/PlaylistBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/PlaylistBrowserActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/PlaylistBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->onPlaylistChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/PlaylistBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/music/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/NoContentListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/PlaylistBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/google/android/music/PlaylistBrowserActivity;->createRecentlyAddedCursor(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/RepresentativeAlbumChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    return-object v0
.end method

.method private static createRecentlyAddedCursor(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "context"
    .parameter "ccols"

    .prologue
    const/4 v3, 0x0

    .line 527
    const-string v0, "numweeks"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/google/android/music/MusicUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v6, v0, 0x7

    .line 528
    .local v6, days:I
    invoke-static {v6, v3}, Lcom/google/android/music/store/MusicContent$XAudio;->getRecentAudioUri(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getPlaylistCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "filterstring"

    .prologue
    const/4 v5, 0x0

    .line 548
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    .local v7, where:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 551
    const-string v1, "PlaylistBrowserActivity"

    const-string v2, "Filtering is not supported"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 556
    .local v4, whereclause:Ljava/lang/String;
    new-instance v0, Lcom/google/android/music/AsyncCursor;

    sget-object v2, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    move-object v1, p0

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/AsyncCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .local v0, c:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private innerSetResult(ILandroid/content/Intent;)V
    .locals 0
    .parameter "result"
    .parameter "data"

    .prologue
    .line 870
    invoke-virtual {p0, p1, p2}, Lcom/google/android/music/PlaylistBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 871
    iput-object p2, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mResultData:Landroid/content/Intent;

    .line 872
    iput p1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mResultCode:I

    .line 873
    return-void
.end method

.method private mergedCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 9
    .parameter "c"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 579
    if-nez p1, :cond_0

    move-object v4, v7

    .line 630
    :goto_0
    return-object v4

    .line 582
    :cond_0
    instance-of v4, p1, Landroid/database/MergeCursor;

    if-eqz v4, :cond_1

    .line 584
    const-string v4, "PlaylistBrowserActivity"

    const-string v5, "Already wrapped"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, p1

    .line 585
    goto :goto_0

    .line 587
    :cond_1
    new-instance v1, Lcom/google/android/music/PlaylistBrowserActivity$NotifyingMatrixCursor;

    sget-object v4, Lcom/google/android/music/PlaylistBrowserActivity;->mCols:[Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/google/android/music/PlaylistBrowserActivity$NotifyingMatrixCursor;-><init>([Ljava/lang/String;)V

    .line 588
    .local v1, autoplaylistscursor:Lcom/google/android/music/PlaylistBrowserActivity$NotifyingMatrixCursor;
    iget-boolean v4, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v4, :cond_2

    .line 589
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 590
    .local v0, all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v4, -0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    const v4, 0x7f0c000c

    invoke-virtual {p0, v4}, Lcom/google/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-virtual {v1, v0}, Lcom/google/android/music/PlaylistBrowserActivity$NotifyingMatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 597
    .end local v0           #all:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 598
    .local v3, recent:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    const v4, 0x7f0c0064

    invoke-virtual {p0, v4}, Lcom/google/android/music/PlaylistBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-virtual {v1, v3}, Lcom/google/android/music/PlaylistBrowserActivity$NotifyingMatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 629
    new-instance v2, Landroid/database/MergeCursor;

    new-array v4, v8, [Landroid/database/Cursor;

    aput-object v1, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-direct {v2, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .local v2, cc:Landroid/database/Cursor;
    move-object v4, v2

    .line 630
    goto :goto_0
.end method

.method private onPlaylistChanged()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->notifyDataSetChanged()V

    .line 515
    :cond_0
    return-void
.end method

.method private openPlaylist(JLjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "name"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    new-instance v1, Lcom/google/android/music/medialist/PlaylistSongList;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 522
    return-void
.end method

.method private playRecentlyAdded()V
    .locals 5

    .prologue
    .line 533
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getRecentlyAddedSongsSortOrder()I

    move-result v1

    .line 534
    .local v1, sortOrder:I
    new-instance v0, Lcom/google/android/music/medialist/RecentlyAdddedSongList;

    invoke-direct {v0, v1}, Lcom/google/android/music/medialist/RecentlyAdddedSongList;-><init>(I)V

    .line 535
    .local v0, list:Lcom/google/android/music/medialist/SongList;
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/medialist/SongList;IZ)V

    .line 536
    return-void
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 262
    const v0, 0x7f0c0057

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->setTitle(I)V

    .line 263
    return-void
.end method


# virtual methods
.method public closeContextMusicMenu()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicPopupMenu;->close()V

    .line 454
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    .line 456
    :cond_0
    return-void
.end method

.method public createOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 271
    return-void
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 880
    iget v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mResultCode:I

    return v0
.end method

.method public getResultData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mResultData:Landroid/content/Intent;

    return-object v0
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-nez v0, :cond_0

    .line 259
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->closeContextMenu()V

    goto :goto_0

    .line 254
    :cond_1
    sget v0, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    if-ltz v0, :cond_2

    .line 255
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    sget v2, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 256
    const/4 v0, -0x1

    sput v0, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 258
    :cond_2
    invoke-direct {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 460
    packed-switch p1, :pswitch_data_0

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 462
    :pswitch_0
    if-nez p2, :cond_1

    .line 463
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->finish()V

    goto :goto_0

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v1, :cond_0

    .line 465
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 466
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0

    .line 460
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v2, 0x3

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 105
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 108
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, action:Ljava/lang/String;
    invoke-static {p0, p0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 112
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    .line 114
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 115
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "PlaylistBrowserActivity"

    const-string v1, "PlaylistBrowserActivity called on XLarge screen"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    invoke-static {p0}, Lcom/google/android/music/TabbedLists;->isInTab(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-static {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getMusicActivityManager(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 121
    invoke-static {p0, p0}, Lcom/google/android/music/TabbedLists;->addMenuCustomizer(Landroid/app/Activity;Lcom/google/android/music/TopBar$MenuCustomizer;)V

    .line 143
    :goto_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->requestWindowFeature(I)Z

    .line 144
    invoke-virtual {p0, v7}, Lcom/google/android/music/PlaylistBrowserActivity;->requestWindowFeature(I)Z

    .line 145
    invoke-virtual {p0, v2}, Lcom/google/android/music/PlaylistBrowserActivity;->setVolumeControlStream(I)V

    .line 147
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->setContentView(I)V

    .line 148
    const v0, 0x7f0f0054

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mListContainer:Landroid/view/View;

    .line 149
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v12

    .line 150
    .local v12, lv:Landroid/widget/ListView;
    invoke-virtual {v12, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 151
    invoke-virtual {v12, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 152
    invoke-virtual {v12, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 153
    invoke-virtual {v12, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 155
    new-instance v0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v4, 0x7f040013

    iget-object v5, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    new-array v6, v7, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v6, v3

    new-array v7, v7, [I

    const v1, 0x1020014

    aput v1, v7, v3

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;-><init>(Lcom/google/android/music/PlaylistBrowserActivity;Landroid/content/Context;Lcom/google/android/music/PlaylistBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 162
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    const v0, 0x7f0c008f

    invoke-virtual {p0, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->setTitle(I)V

    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->getPlaylistCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 165
    .local v10, c:Landroid/database/Cursor;
    invoke-virtual {p0, v10}, Lcom/google/android/music/PlaylistBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 167
    invoke-static {p0}, Lcom/google/android/music/TabbedLists;->isInTab(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    invoke-static {p0}, Lcom/google/android/music/TabbedLists;->getRepresentativeAlbumChangeListener(Landroid/app/Activity;)Lcom/google/android/music/RepresentativeAlbumChangeListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    .line 170
    invoke-static {p0}, Lcom/google/android/music/TabbedLists;->getNoContentListener(Landroid/app/Activity;)Lcom/google/android/music/NoContentListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    .line 175
    :goto_1
    return-void

    .line 123
    .end local v10           #c:Landroid/database/Cursor;
    .end local v12           #lv:Landroid/widget/ListView;
    :cond_1
    invoke-static {p0}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 124
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/AppState;->getActivityManager()Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 125
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v9

    .line 126
    .local v9, actionBarController:Lcom/google/android/music/TopBar$ActionBarController;
    invoke-virtual {v9}, Lcom/google/android/music/TopBar$ActionBarController;->showTopBar()V

    .line 127
    invoke-virtual {v9, p0}, Lcom/google/android/music/TopBar$ActionBarController;->setMenuCustomizer(Lcom/google/android/music/TopBar$MenuCustomizer;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isTopLevel(Lcom/google/android/music/activitymanagement/AppState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {v9}, Lcom/google/android/music/TopBar$ActionBarController;->showDisplayModes()V

    .line 130
    invoke-virtual {v9}, Lcom/google/android/music/TopBar$ActionBarController;->hideTitle()V

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 137
    invoke-virtual {v9}, Lcom/google/android/music/TopBar$ActionBarController;->showToggleButton()V

    goto/16 :goto_0

    .line 139
    :cond_3
    invoke-virtual {v9}, Lcom/google/android/music/TopBar$ActionBarController;->hideToggleButton()V

    goto/16 :goto_0

    .line 172
    .end local v9           #actionBarController:Lcom/google/android/music/TopBar$ActionBarController;
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v12       #lv:Landroid/widget/ListView;
    :cond_4
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    .line 173
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    iput-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    goto :goto_1
.end method

.method public onCreateContextMusicMenu(Landroid/view/View;I)V
    .locals 11
    .parameter "view"
    .parameter "position"

    .prologue
    .line 405
    iget-boolean v7, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v7, :cond_0

    .line 449
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v7, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 409
    iget-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v9, "_id"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 411
    .local v0, id:I
    int-to-long v7, v0

    iput-wide v7, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mCurrentPlaylist:J

    .line 412
    iget-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v8, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v9, "name"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mCurrentPlaylistName:Ljava/lang/String;

    .line 415
    new-instance v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    int-to-long v7, v0

    invoke-direct {v1, p1, p2, v7, v8}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 416
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 417
    .local v4, lv:Landroid/widget/ListView;
    new-instance v7, Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-virtual {v4}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-direct {v7, p0, p0, v8}, Lcom/google/android/music/menu/MusicPopupMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    iput-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    .line 418
    const/4 v7, 0x2

    new-array v3, v7, [I

    .line 419
    .local v3, location:[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 420
    const/4 v7, 0x0

    aget v5, v3, v7

    .line 421
    .local v5, x:I
    const/4 v7, 0x1

    aget v7, v3, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v6, v7, v8

    .line 422
    .local v6, y:I
    iget-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    const/4 v8, 0x2

    invoke-virtual {v7, v5, v6, v8}, Lcom/google/android/music/menu/MusicPopupMenu;->setLocation(III)V

    .line 424
    iget-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-virtual {v7, v1}, Lcom/google/android/music/menu/MusicPopupMenu;->setMenuInfo(Ljava/lang/Object;)V

    .line 427
    iget-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    const/4 v8, 0x6

    const/4 v9, 0x0

    const v10, 0x7f0c0070

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/music/menu/MusicPopupMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v2

    .line 428
    .local v2, item:Lcom/google/android/music/menu/MusicMenuItem;
    const v7, 0x7f020151

    invoke-virtual {v2, v7}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 430
    int-to-long v7, v0

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    .line 431
    iget-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    const/16 v8, 0x190

    const/4 v9, 0x0

    const v10, 0x7f0c005c

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/music/menu/MusicPopupMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v2

    .line 433
    const v7, 0x7f020154

    invoke-virtual {v2, v7}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 434
    iget-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    const/16 v8, 0x192

    const/4 v9, 0x0

    const v10, 0x7f0c005e

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/music/menu/MusicPopupMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v2

    .line 436
    const v7, 0x7f020145

    invoke-virtual {v2, v7}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 438
    iget-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v8, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-static {v7, v8, v9}, Lcom/google/android/music/BrowserActivityUtils;->addKeepOnMenu(Lcom/google/android/music/jumper/MusicPreferences;Landroid/database/Cursor;Lcom/google/android/music/menu/MusicListMenu;)V

    .line 442
    :cond_1
    int-to-long v7, v0

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    .line 443
    iget-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    const/16 v8, 0x191

    const/4 v9, 0x0

    const v10, 0x7f0c005d

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/android/music/menu/MusicPopupMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v2

    .line 444
    const v7, 0x7f020145

    invoke-virtual {v2, v7}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 446
    :cond_2
    iget-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    iget-object v8, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v9, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v10, "name"

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/music/menu/MusicPopupMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-virtual {v7}, Lcom/google/android/music/menu/MusicPopupMenu;->show()V

    goto/16 :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "id"
    .parameter "info"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 345
    const/4 v1, 0x0

    .line 346
    .local v1, dialog:Landroid/app/AlertDialog;
    const/16 v5, 0x64

    if-ne p1, v5, :cond_1

    .line 347
    new-instance v1, Lcom/google/android/music/CreatePlaylist;

    .end local v1           #dialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5, v7, p0}, Lcom/google/android/music/CreatePlaylist;-><init>(Landroid/content/Context;ZLcom/google/android/music/CreatePlaylist$Callback;)V

    .line 348
    .restart local v1       #dialog:Landroid/app/AlertDialog;
    new-instance v5, Lcom/google/android/music/PlaylistBrowserActivity$2;

    invoke-direct {v5, p0}, Lcom/google/android/music/PlaylistBrowserActivity$2;-><init>(Lcom/google/android/music/PlaylistBrowserActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 396
    :cond_0
    :goto_0
    return-object v1

    .line 357
    :cond_1
    const/16 v5, 0x65

    if-ne p1, v5, :cond_2

    .line 358
    const-string v5, "playlistId"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 359
    .local v2, playlistId:J
    new-instance v1, Lcom/google/android/music/RenamePlaylist;

    .end local v1           #dialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5, v2, v3}, Lcom/google/android/music/RenamePlaylist;-><init>(Landroid/content/Context;J)V

    .line 360
    .restart local v1       #dialog:Landroid/app/AlertDialog;
    new-instance v5, Lcom/google/android/music/PlaylistBrowserActivity$3;

    invoke-direct {v5, p0}, Lcom/google/android/music/PlaylistBrowserActivity$3;-><init>(Lcom/google/android/music/PlaylistBrowserActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 369
    .end local v2           #playlistId:J
    :cond_2
    const/16 v5, 0x66

    if-ne p1, v5, :cond_0

    .line 370
    const-string v5, "playlistId"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 371
    .restart local v2       #playlistId:J
    const-string v5, "playlistName"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, playlistName:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 373
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0c005f

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v4, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/google/android/music/PlaylistBrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 374
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 375
    const/high16 v5, 0x104

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 376
    const v5, 0x7f0c0060

    new-instance v6, Lcom/google/android/music/PlaylistBrowserActivity$4;

    invoke-direct {v6, p0, v2, v3}, Lcom/google/android/music/PlaylistBrowserActivity$4;-><init>(Lcom/google/android/music/PlaylistBrowserActivity;J)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 386
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 387
    new-instance v5, Lcom/google/android/music/PlaylistBrowserActivity$5;

    invoke-direct {v5, p0}, Lcom/google/android/music/PlaylistBrowserActivity$5;-><init>(Lcom/google/android/music/PlaylistBrowserActivity;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 186
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sput v2, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosCourse:I

    .line 188
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sput v2, Lcom/google/android/music/PlaylistBrowserActivity;->mLastListPosFine:I

    .line 193
    .end local v0           #cv:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v2}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 198
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-virtual {v2, v3}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 201
    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/android/music/PlaylistBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    iput-object v3, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 203
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 204
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/music/PlaylistBrowserActivity;->onCreateContextMusicMenu(Landroid/view/View;I)V

    .line 401
    const/4 v0, 0x1

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 479
    iget-boolean v3, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    if-eqz v3, :cond_0

    .line 480
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 481
    .local v2, shortcut:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v4, "vnd.android.cursor.dir/vnd.google.music.playlist"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 486
    const-string v3, "playlist"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 490
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 491
    const-string v4, "android.intent.extra.shortcut.NAME"

    const v3, 0x7f0f0032

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 492
    const-string v3, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v4, 0x7f030001

    invoke-static {p0, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 495
    const/4 v3, -0x1

    invoke-direct {p0, v3, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->innerSetResult(ILandroid/content/Intent;)V

    .line 496
    invoke-virtual {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->finish()V

    .line 508
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #shortcut:Landroid/content/Intent;
    :goto_0
    return-void

    .line 499
    :cond_0
    const-wide/16 v3, -0x1

    cmp-long v3, p4, v3

    if-nez v3, :cond_1

    .line 500
    iget-object v3, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListingForNewAndRecent()V

    goto :goto_0

    .line 503
    :cond_1
    iget-object v3, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v3, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 504
    iget-object v3, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mPlaylistCursor:Landroid/database/Cursor;

    const-string v5, "name"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, name:Ljava/lang/String;
    invoke-direct {p0, p4, p5, v1}, Lcom/google/android/music/PlaylistBrowserActivity;->openPlaylist(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 280
    const-string v6, "PlaylistBrowserActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMenuItemSelected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getMenuInfo()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 282
    .local v5, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getItemId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 337
    const-string v6, "PlaylistBrowserActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onMusicMenuItemSelected: unexpected item id for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v6, v9

    .line 340
    :goto_1
    return v6

    .line 284
    :sswitch_0
    const/16 v6, 0x64

    invoke-virtual {p0, v6}, Lcom/google/android/music/PlaylistBrowserActivity;->showDialog(I)V

    goto :goto_0

    .line 287
    :sswitch_1
    iget-wide v6, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v6, v6, v11

    if-nez v6, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/google/android/music/PlaylistBrowserActivity;->playRecentlyAdded()V

    goto :goto_0

    .line 290
    :cond_0
    new-instance v3, Lcom/google/android/music/medialist/PlaylistSongList;

    iget-wide v6, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    iget-object v8, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-virtual {v8}, Lcom/google/android/music/menu/MusicPopupMenu;->getHeader()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v6, v7, v8}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;)V

    .line 292
    .local v3, list:Lcom/google/android/music/medialist/SongList;
    iget-object v6, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-static {v6, v3, v10, v10}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/medialist/SongList;IZ)V

    goto :goto_0

    .line 297
    .end local v3           #list:Lcom/google/android/music/medialist/SongList;
    :sswitch_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 298
    .local v0, args:Landroid/os/Bundle;
    const-string v6, "playlistId"

    iget-wide v7, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 299
    const-string v6, "playlistName"

    iget-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mCurrentPlaylistName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/16 v6, 0x66

    invoke-virtual {p0, v6, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 304
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_3
    iget-wide v6, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    cmp-long v6, v6, v11

    if-nez v6, :cond_1

    .line 305
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 306
    .local v1, intent:Landroid/content/Intent;
    const-class v6, Lcom/google/android/music/WeekSelector;

    invoke-virtual {v1, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 307
    const/16 v6, 0x193

    invoke-virtual {p0, v1, v6}, Lcom/google/android/music/PlaylistBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v6, v9

    .line 308
    goto :goto_1

    .line 310
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    const-string v6, "PlaylistBrowserActivity"

    const-string v7, "should not be here"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    :sswitch_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 316
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v6, "playlistId"

    iget-wide v7, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 317
    const-string v6, "playlistName"

    iget-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mCurrentPlaylistName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/16 v6, 0x65

    invoke-virtual {p0, v6, v0}, Lcom/google/android/music/PlaylistBrowserActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 322
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_5
    new-instance v4, Lcom/google/android/music/OfflineMusicManager;

    iget-object v6, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-direct {v4, p0, v6}, Lcom/google/android/music/OfflineMusicManager;-><init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    .line 323
    .local v4, manager:Lcom/google/android/music/OfflineMusicManager;
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getChecked()Z

    move-result v2

    .line 324
    .local v2, keep:Z
    if-eqz v2, :cond_2

    .line 325
    new-instance v6, Lcom/google/android/music/SpaceWarningListener;

    iget-object v7, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-direct {v6, v7}, Lcom/google/android/music/SpaceWarningListener;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    invoke-virtual {v4, v6}, Lcom/google/android/music/OfflineMusicManager;->addAvailableSpaceChangeListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 328
    :cond_2
    if-eqz v2, :cond_3

    .line 329
    iget-wide v6, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v4, v6, v7}, Lcom/google/android/music/OfflineMusicManager;->selectPlaylist(J)V

    .line 333
    :goto_2
    invoke-virtual {v4}, Lcom/google/android/music/OfflineMusicManager;->commitChanges()V

    move v6, v9

    .line 334
    goto/16 :goto_1

    .line 331
    :cond_3
    iget-wide v6, v5, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-virtual {v4, v6, v7}, Lcom/google/android/music/OfflineMusicManager;->deselectPlaylist(J)V

    goto :goto_2

    .line 282
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x6 -> :sswitch_1
        0xf -> :sswitch_5
        0x190 -> :sswitch_2
        0x191 -> :sswitch_3
        0x192 -> :sswitch_4
    .end sparse-switch
.end method

.method public onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/google/android/music/PlaylistBrowserActivity;->onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 215
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 216
    return-void
.end method

.method public onPlaylistCreated(JLjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "playlistName"

    .prologue
    .line 474
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/PlaylistBrowserActivity;->openPlaylist(JLjava/lang/String;)V

    .line 475
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 209
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 210
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 889
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    if-eqz v0, :cond_0

    .line 893
    new-instance v0, Lcom/google/android/music/PlaylistBrowserActivity$6;

    invoke-direct {v0, p0, p2}, Lcom/google/android/music/PlaylistBrowserActivity$6;-><init>(Lcom/google/android/music/PlaylistBrowserActivity;I)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 908
    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 178
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "classname"

    .prologue
    .line 181
    return-void
.end method

.method public prepareOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 273
    const/16 v1, 0x14

    invoke-virtual {p1, v1}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 274
    .local v0, item:Lcom/google/android/music/menu/MusicMenuItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 275
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 277
    :cond_1
    return-void
.end method

.method public wasStartedForResult()Z
    .locals 1

    .prologue
    .line 884
    iget-boolean v0, p0, Lcom/google/android/music/PlaylistBrowserActivity;->mCreateShortcut:Z

    return v0
.end method
