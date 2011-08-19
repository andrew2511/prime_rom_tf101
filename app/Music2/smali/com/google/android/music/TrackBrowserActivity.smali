.class public Lcom/google/android/music/TrackBrowserActivity;
.super Landroid/app/ListActivity;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/music/TopBar$MenuCustomizer;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/google/android/music/CreatePlaylist$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;,
        Lcom/google/android/music/TrackBrowserActivity$MusicMenuCallback;,
        Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;
    }
.end annotation


# static fields
.field public static final EXTRA_AUTOSCROLL_ALBUMARTIST_ID:Ljava/lang/String; = "autoscrollAlbumArtistId"

.field public static final EXTRA_AUTOSCROLL_TRACK_ID:Ljava/lang/String; = "autoscrollTrackId"

.field public static final EXTRA_MEDIALIST:Ljava/lang/String; = "medialist"

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "TrackBrowser"


# instance fields
.field private mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

.field private mAlbumArt:Landroid/widget/ImageView;

.field private mAllTracks:Z

.field private mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mAppState:Lcom/google/android/music/activitymanagement/AppState;

.field private mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

.field private mContainerContextMenu:Landroid/widget/ImageView;

.field private mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field private mCurrentTrackName:Ljava/lang/String;

.field private mCursorCols:[Ljava/lang/String;

.field private mDeletedOneRow:Z

.field private mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

.field private mEditMode:Z

.field private mHeaderView:Landroid/view/View;

.field private mIsFinished:Z

.field private mIsInTabbedLists:Z

.field private mIsNowPlaying:Z

.field private mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

.field private mListContainer:Landroid/view/View;

.field private mMediaList:Lcom/google/android/music/medialist/SongList;

.field private mMetaDataObserver:Landroid/database/ContentObserver;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNoContentListener:Lcom/google/android/music/NoContentListener;

.field private mNowPlayingListener:Landroid/content/BroadcastReceiver;

.field private mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field mQueryComplete:Lcom/google/android/music/medialist/MediaList$OnQueryCompletionHandler;

.field private mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

.field private mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

.field private mSelectedHasRemote:Z

.field private mSelectedId:J

.field private mSelectedPosition:I

.field private mSortChooser:Landroid/widget/TextView;

.field private mSortChooserContainer:Landroid/view/View;

.field private mSortOrderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

.field private mSortOrderNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

.field private mTrackList:Landroid/widget/ListView;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string v0, "TrackBrowser"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/TrackBrowserActivity;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 91
    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 92
    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    .line 113
    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    .line 120
    iput-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 121
    iput-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 128
    iput-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    .line 129
    iput-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    .line 133
    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsFinished:Z

    .line 411
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$3;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    .line 834
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$7;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$7;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

    .line 841
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$8;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$8;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

    .line 865
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$9;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$9;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 873
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$10;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$10;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    .line 1345
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$15;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$15;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mQueryComplete:Lcom/google/android/music/medialist/MediaList$OnQueryCompletionHandler;

    .line 1365
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/medialist/SongList;)Lcom/google/android/music/medialist/SongList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->setTitle()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/KeepOnCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/TrackBrowserActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/music/TrackBrowserActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/menu/MusicDropdownMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/music/TrackBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/music/TrackBrowserActivity;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/music/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAllTracks:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->updateHeaderImage()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/activitymanagement/AppState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/music/TrackBrowserActivity;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/TrackBrowserActivity;->appendYearToHeader(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/medialist/MediaList$MediaCursor;)Lcom/google/android/music/medialist/MediaList$MediaCursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/google/android/music/TrackBrowserActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/google/android/music/TrackBrowserActivity;->removePlaylistItem(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/android/music/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/google/android/music/TrackBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/google/android/music/TrackBrowserActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/menu/MusicListMenu;)Lcom/google/android/music/menu/MusicListMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/google/android/music/TrackBrowserActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$2902(Lcom/google/android/music/TrackBrowserActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedId:J

    return-wide p1
.end method

.method static synthetic access$3100(Lcom/google/android/music/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/google/android/music/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/google/android/music/TrackBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsInTabbedLists:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/NoContentListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/TrackBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->openSortMenu()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/TrackBrowserActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/OfflineMusicManager;)Lcom/google/android/music/OfflineMusicManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    return-object p1
.end method

.method private addToPlaylist(JLjava/lang/String;J)V
    .locals 8
    .parameter "playlistId"
    .parameter "playlistName"
    .parameter "selectedId"

    .prologue
    .line 1302
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 1303
    .local v4, songList:Lcom/google/android/music/medialist/SongList;
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$14;

    move-object v1, p0

    move-wide v2, p4

    move-wide v5, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/TrackBrowserActivity$14;-><init>(Lcom/google/android/music/TrackBrowserActivity;JLcom/google/android/music/medialist/SongList;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 1321
    return-void
.end method

.method private appendYearToHeader(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "songText"
    .parameter "year"

    .prologue
    const/4 v4, 0x0

    .line 823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 824
    .local v1, formatBuilder:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 825
    .local v2, formatter:Ljava/util/Formatter;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Object;

    .line 827
    .local v0, args:[Ljava/lang/Object;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 828
    aput-object p1, v0, v4

    .line 829
    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 830
    const-string v3, "%s, %d"

    invoke-virtual {v2, v3, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 831
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private closeSortMenu()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicDropdownMenu;->close()V

    .line 531
    :cond_0
    return-void
.end method

.method private doExternalSearch()V
    .locals 5

    .prologue
    .line 1159
    sget-boolean v2, Lcom/google/android/music/TrackBrowserActivity;->LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "TrackBrowser"

    const-string v3, "doExternalSearch()..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_0
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isPreGingerbread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1162
    const-string v2, "TrackBrowser"

    const-string v3, "Do external search does not work pre-GB"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :goto_0
    return-void

    .line 1166
    :cond_1
    const/4 v1, 0x0

    .line 1168
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1176
    .local v0, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1177
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    .line 1182
    :goto_1
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1183
    const-string v2, "android.intent.extra.album"

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1185
    :cond_2
    const-string v2, "android.intent.extra.focus"

    const-string v3, "audio/*"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1186
    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1188
    sget-boolean v2, Lcom/google/android/music/TrackBrowserActivity;->LOGV:Z

    if-eqz v2, :cond_3

    .line 1189
    const-string v2, "TrackBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doExternalSearch(): launching query \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const-string v2, "TrackBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const-string v2, "TrackBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - extras: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_3
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v2, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->superStartActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1179
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1180
    const-string v2, "android.intent.extra.artist"

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method private getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "filter"

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/music/medialist/SongList;->getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v0

    return-object v0
.end method

.method private isMusic(Landroid/database/Cursor;)Z
    .locals 10
    .parameter "c"

    .prologue
    const/4 v9, 0x0

    .line 912
    const-string v8, "title"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 913
    .local v7, titleidx:I
    const-string v8, "album"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 914
    .local v1, albumidx:I
    const-string v8, "artist"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 916
    .local v3, artistidx:I
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 917
    .local v6, title:Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, album:Ljava/lang/String;
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 919
    .local v2, artist:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v2}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v6, :cond_0

    const-string v8, "recording"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    .line 932
    :goto_0
    return v8

    .line 927
    :cond_0
    const-string v8, "is_music"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 928
    .local v5, ismusic_idx:I
    const/4 v4, 0x1

    .line 929
    .local v4, ismusic:Z
    if-ltz v5, :cond_1

    .line 930
    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v8, v5}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    move v4, v8

    :cond_1
    :goto_1
    move v8, v4

    .line 932
    goto :goto_0

    :cond_2
    move v4, v9

    .line 930
    goto :goto_1
.end method

.method private moveItem(Z)V
    .locals 5
    .parameter "up"

    .prologue
    const/4 v4, 0x1

    .line 1231
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCount()I

    move-result v0

    .line 1232
    .local v0, curcount:I
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    .line 1233
    .local v1, curpos:I
    if-eqz p1, :cond_0

    if-lt v1, v4, :cond_1

    :cond_0
    if-nez p1, :cond_2

    sub-int v2, v0, v4

    if-lt v1, v2, :cond_2

    .line 1245
    :cond_1
    :goto_0
    return-void

    .line 1237
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz p1, :cond_3

    sub-int v3, v1, v4

    :goto_1
    invoke-virtual {v2, v1, v3}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveItem(II)V

    .line 1238
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 1239
    iput-boolean v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 1240
    if-eqz p1, :cond_4

    .line 1241
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    sub-int v3, v1, v4

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 1237
    :cond_3
    add-int/lit8 v3, v1, 0x1

    goto :goto_1

    .line 1243
    :cond_4
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private openSortMenu()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicDropdownMenu;->setButtonView(Landroid/view/View;)V

    .line 522
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicDropdownMenu;->show()V

    .line 525
    :cond_0
    return-void
.end method

.method private removeItem()V
    .locals 3

    .prologue
    .line 1221
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCount()I

    move-result v0

    .line 1222
    .local v0, curcount:I
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    .line 1223
    .local v1, curpos:I
    if-eqz v0, :cond_0

    if-gez v1, :cond_1

    .line 1228
    :cond_0
    :goto_0
    return-void

    .line 1227
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v2, v1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->removeItem(I)V

    goto :goto_0
.end method

.method private removePlaylistItem(I)V
    .locals 4
    .parameter "which"

    .prologue
    .line 849
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 850
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_0

    .line 851
    const-string v1, "TrackBrowser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No view when removing playlist item "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :goto_0
    return-void

    .line 854
    :cond_0
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getQueuePosition()I

    move-result v1

    if-eq p1, v1, :cond_1

    .line 856
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mDeletedOneRow:Z

    .line 858
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 859
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 860
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v1, p1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->removeItem(I)V

    .line 861
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 862
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_0
.end method

.method private setTitle()V
    .locals 2

    .prologue
    .line 746
    move-object v0, p0

    .line 748
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/google/android/music/TrackBrowserActivity$6;

    invoke-direct {v1, p0, v0}, Lcom/google/android/music/TrackBrowserActivity$6;-><init>(Lcom/google/android/music/TrackBrowserActivity;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 820
    return-void
.end method

.method private unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 631
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/music/TrackBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateHeaderImage()V
    .locals 5

    .prologue
    .line 455
    move-object v0, p0

    .line 457
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 485
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumArt:Landroid/widget/ImageView;

    if-nez v3, :cond_1

    .line 459
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    const v4, 0x7f0f000c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumArt:Landroid/widget/ImageView;

    .line 460
    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumArt:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 463
    .local v2, width:I
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 465
    .local v1, height:I
    new-instance v3, Lcom/google/android/music/TrackBrowserActivity$4;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/google/android/music/TrackBrowserActivity$4;-><init>(Lcom/google/android/music/TrackBrowserActivity;Landroid/content/Context;II)V

    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    goto :goto_0
.end method


# virtual methods
.method public closeContextMusicMenu()V
    .locals 1

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicListMenu;->close()V

    .line 1149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    .line 1151
    :cond_0
    return-void
.end method

.method public containerContextMenuClick(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x2

    .line 953
    const/4 v4, 0x0

    .line 954
    .local v4, tmpMenu:Lcom/google/android/music/menu/MusicListMenu;
    iget-object v7, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v7}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 955
    new-instance v0, Lcom/google/android/music/menu/MusicDropdownMenu;

    new-instance v7, Lcom/google/android/music/TrackBrowserActivity$MusicMenuCallback;

    invoke-direct {v7, p0, v8}, Lcom/google/android/music/TrackBrowserActivity$MusicMenuCallback;-><init>(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/TrackBrowserActivity$1;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-direct {v0, p0, v7, v8}, Lcom/google/android/music/menu/MusicDropdownMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 957
    .local v0, dropdown:Lcom/google/android/music/menu/MusicDropdownMenu;
    invoke-virtual {v0, p1}, Lcom/google/android/music/menu/MusicDropdownMenu;->setButtonView(Landroid/view/View;)V

    .line 958
    move-object v4, v0

    .line 969
    .end local v0           #dropdown:Lcom/google/android/music/menu/MusicDropdownMenu;
    :goto_0
    move-object v2, v4

    .line 971
    .local v2, menu:Lcom/google/android/music/menu/MusicListMenu;
    new-instance v7, Lcom/google/android/music/TrackBrowserActivity$11;

    invoke-direct {v7, p0, v2}, Lcom/google/android/music/TrackBrowserActivity$11;-><init>(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/menu/MusicListMenu;)V

    invoke-static {v7}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 1031
    return-void

    .line 960
    .end local v2           #menu:Lcom/google/android/music/menu/MusicListMenu;
    :cond_0
    new-instance v3, Lcom/google/android/music/menu/MusicPopupMenu;

    new-instance v7, Lcom/google/android/music/TrackBrowserActivity$MusicMenuCallback;

    invoke-direct {v7, p0, v8}, Lcom/google/android/music/TrackBrowserActivity$MusicMenuCallback;-><init>(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/TrackBrowserActivity$1;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-direct {v3, p0, v7, v8}, Lcom/google/android/music/menu/MusicPopupMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 962
    .local v3, popup:Lcom/google/android/music/menu/MusicPopupMenu;
    new-array v1, v9, [I

    .line 963
    .local v1, location:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 964
    const/4 v7, 0x0

    aget v5, v1, v7

    .line 965
    .local v5, x:I
    const/4 v7, 0x1

    aget v7, v1, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v6, v7, v8

    .line 966
    .local v6, y:I
    invoke-virtual {v3, v5, v6, v9}, Lcom/google/android/music/menu/MusicPopupMenu;->setLocation(III)V

    .line 967
    move-object v4, v3

    goto :goto_0
.end method

.method public createOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 1842
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1201
    iget-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1204
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1217
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1206
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/music/TrackBrowserActivity;->moveItem(Z)V

    move v0, v1

    .line 1207
    goto :goto_0

    .line 1209
    :sswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/TrackBrowserActivity;->moveItem(Z)V

    move v0, v1

    .line 1210
    goto :goto_0

    .line 1212
    :sswitch_2
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->removeItem()V

    move v0, v1

    .line 1213
    goto :goto_0

    .line 1204
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 10
    .parameter "newCursor"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    .line 680
    sget-boolean v5, Lcom/google/android/music/TrackBrowserActivity;->LOGV:Z

    if-eqz v5, :cond_0

    const-string v5, "TrackBrowser"

    const-string v6, "init()..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsFinished:Z

    if-eqz v5, :cond_2

    .line 742
    :cond_1
    :goto_0
    return-void

    .line 685
    :cond_2
    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v5, p1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 687
    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-nez v5, :cond_3

    .line 688
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->closeContextMenu()V

    .line 689
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_1

    .line 690
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 695
    :cond_3
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->setTitle()V

    .line 697
    iget-boolean v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    if-eqz v5, :cond_4

    .line 698
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 699
    .local v1, f:Landroid/content/IntentFilter;
    const-string v5, "com.android.music.playstatechanged"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 700
    const-string v5, "com.android.music.metachanged"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 701
    const-string v5, "com.android.music.queuechanged"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 702
    sget-object v5, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v5}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getQueuePosition()I

    move-result v0

    .line 703
    .local v0, cur:I
    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v5, v0, v7}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->setScrollToPosition(II)V

    .line 705
    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/google/android/music/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 706
    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.music.metachanged"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0, v6}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 732
    .end local v0           #cur:I
    .end local v1           #f:Landroid/content/IntentFilter;
    :goto_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 733
    .restart local v1       #f:Landroid/content/IntentFilter;
    const-string v5, "com.android.music.playstatechanged"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 734
    const-string v5, "com.android.music.metachanged"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 735
    const-string v5, "com.android.music.queuechanged"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 737
    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/google/android/music/TrackBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 739
    iget-boolean v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mAllTracks:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    .line 740
    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v5, p0}, Lcom/google/android/music/activitymanagement/AppState;->asyncCheckForMusic(Landroid/content/Context;)V

    goto :goto_0

    .line 709
    .end local v1           #f:Landroid/content/IntentFilter;
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "autoscrollAlbumArtistId"

    invoke-virtual {v5, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 710
    .local v3, scrollToArtistId:J
    cmp-long v5, v3, v8

    if-eqz v5, :cond_5

    .line 711
    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    const-string v6, "AlbumArtistId"

    invoke-virtual {v5, v6}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 712
    .local v2, keyidx:I
    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v5}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveToFirst()Z

    .line 713
    :goto_2
    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v5}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_5

    .line 714
    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v5, v2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-nez v5, :cond_6

    .line 715
    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    iget-object v6, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v6}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->setScrollToPosition(II)V

    .line 721
    .end local v2           #keyidx:I
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->invalidateViews()V

    goto :goto_1

    .line 718
    .restart local v2       #keyidx:I
    :cond_6
    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v5}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveToNext()Z

    goto :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 1325
    packed-switch p1, :pswitch_data_0

    .line 1336
    const-string v1, "TrackBrowser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult: unexpected requestCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :goto_0
    return-void

    .line 1327
    :pswitch_0
    if-nez p2, :cond_0

    .line 1328
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->finish()V

    goto :goto_0

    .line 1330
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/music/TrackBrowserActivity;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1331
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/google/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1325
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1970
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mAlbumArt:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_0

    .line 1971
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    instance-of v2, v2, Lcom/google/android/music/medialist/AlbumSongList;

    if-nez v2, :cond_0

    .line 1972
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v2, p0}, Lcom/google/android/music/medialist/SongList;->getAlbumId(Landroid/content/Context;)J

    move-result-wide v0

    .line 1973
    .local v0, albumId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1974
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    new-instance v3, Lcom/google/android/music/medialist/AlbumSongList;

    invoke-direct {v3, v0, v1}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 1978
    .end local v0           #albumId:J
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "icicle"

    .prologue
    .line 139
    sget-boolean v18, Lcom/google/android/music/TrackBrowserActivity;->LOGV:Z

    if-eqz v18, :cond_0

    const-string v18, "TrackBrowser"

    const-string v19, "onCreate()..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 143
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/TabbedLists;->isInTab(Landroid/app/Activity;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mIsInTabbedLists:Z

    .line 145
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mIsInTabbedLists:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 146
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getMusicActivityManager(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 147
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/google/android/music/TabbedLists;->addMenuCustomizer(Landroid/app/Activity;Lcom/google/android/music/TopBar$MenuCustomizer;)V

    .line 169
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/TrackBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 171
    .local v11, intent:Landroid/content/Intent;
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/TrackBrowserActivity;->setVolumeControlStream(I)V

    .line 172
    move-object/from16 v9, p1

    .line 173
    .local v9, extras:Landroid/os/Bundle;
    if-nez v9, :cond_1

    .line 174
    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    .line 176
    :cond_1
    if-eqz v9, :cond_2

    .line 177
    const-string v18, "medialist"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/google/android/music/medialist/SongList;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 178
    const-string v18, "autoscrollTrackId"

    const-wide/16 v19, -0x1

    move-object v0, v9

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/TrackBrowserActivity;->mSelectedId:J

    .line 181
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/jumper/MusicPreferences;->getAllSongsSortOrder()I

    move-result v16

    .line 183
    .local v16, sortOrder:I
    new-instance v18, Lcom/google/android/music/medialist/AllSongsList;

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    .line 185
    .end local v16           #sortOrder:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/google/android/music/medialist/AllSongsList;

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mAllTracks:Z

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/medialist/SongList;->isEditable()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 193
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    .line 196
    :cond_4
    new-instance v18, Lcom/google/android/music/TrackBrowserActivity$1;

    new-instance v19, Landroid/os/Handler;

    invoke-direct/range {v19 .. v19}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/TrackBrowserActivity$1;-><init>(Lcom/google/android/music/TrackBrowserActivity;Landroid/os/Handler;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mMetaDataObserver:Landroid/database/ContentObserver;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/medialist/SongList;->hasMetaData()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMetaDataObserver:Landroid/database/ContentObserver;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/medialist/SongList;->registerMetaDataObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 221
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/google/android/music/medialist/PlaylistSongList;

    move/from16 v18, v0

    if-eqz v18, :cond_c

    .line 222
    const/16 v18, 0xe

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "_id"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "title"

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string v20, "album"

    aput-object v20, v18, v19

    const/16 v19, 0x3

    const-string v20, "artist"

    aput-object v20, v18, v19

    const/16 v19, 0x4

    const-string v20, "AlbumArtistId"

    aput-object v20, v18, v19

    const/16 v19, 0x5

    const-string v20, "duration"

    aput-object v20, v18, v19

    const/16 v19, 0x6

    const-string v20, "play_order"

    aput-object v20, v18, v19

    const/16 v19, 0x7

    const-string v20, "audio_id"

    aput-object v20, v18, v19

    const/16 v19, 0x8

    const-string v20, "is_music"

    aput-object v20, v18, v19

    const/16 v19, 0x9

    const-string v20, "album_id"

    aput-object v20, v18, v19

    const/16 v19, 0xa

    const-string v20, "hasRemote"

    aput-object v20, v18, v19

    const/16 v19, 0xb

    const-string v20, "hasLocal"

    aput-object v20, v18, v19

    const/16 v19, 0xc

    const-string v20, "year"

    aput-object v20, v18, v19

    const/16 v19, 0xd

    const-string v20, "Genre"

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    .line 257
    :goto_1
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/TrackBrowserActivity;->requestWindowFeature(I)Z

    .line 258
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/TrackBrowserActivity;->requestWindowFeature(I)Z

    .line 260
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mAllTracks:Z

    move/from16 v18, v0

    if-nez v18, :cond_d

    .line 261
    const v18, 0x7f04002a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/TrackBrowserActivity;->setContentView(I)V

    .line 266
    :goto_2
    const v18, 0x7f0f0054

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mListContainer:Landroid/view/View;

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 272
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 p1, v0

    check-cast p1, Lcom/google/android/music/TouchInterceptor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/TouchInterceptor;->setDropListener(Lcom/google/android/music/TouchInterceptor$DropListener;)V

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 p1, v0

    check-cast p1, Lcom/google/android/music/TouchInterceptor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/TouchInterceptor;->setRemoveListener(Lcom/google/android/music/TouchInterceptor$RemoveListener;)V

    .line 275
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycomb()Z

    move-result v18

    if-nez v18, :cond_6

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const v19, 0x7f02011e

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setSelector(I)V

    .line 285
    :cond_6
    :goto_3
    const v18, 0x7f0f000a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 289
    const v18, 0x7f0f007c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/TrackBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_7

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/TopBar$ActionBarController;->hideSeperatorLine()V

    .line 294
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mAllTracks:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/TrackBrowserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v18

    const v19, 0x7f040011

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 301
    .local v17, topLine:Landroid/view/View;
    :goto_4
    const v18, 0x7f0f0046

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    .line 302
    const v18, 0x7f0f0045

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mSortChooserContainer:Landroid/view/View;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const/high16 v19, 0x200

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_18

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/medialist/SongList;->getValidSortOrders()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    .line 309
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderNameList:Ljava/util/ArrayList;

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/medialist/SongList;->getSortOrder()I

    move-result v8

    .line 313
    .local v8, currentSortOrder:I
    new-instance v18, Lcom/google/android/music/menu/MusicDropdownMenu;

    new-instance v19, Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;-><init>(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/TrackBrowserActivity$1;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/menu/MusicDropdownMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/menu/MusicDropdownMenu;->setRadioButtonsEnabled(Z)V

    .line 316
    const/4 v10, 0x0

    .local v10, i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move v0, v10

    move/from16 v1, v18

    if-ge v0, v1, :cond_14

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 318
    .local v13, order:I
    const/4 v15, 0x0

    .line 319
    .local v15, sortNameResource:I
    const/16 v18, 0x1

    move v0, v13

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 320
    const v15, 0x7f0c00c3

    .line 331
    :goto_6
    if-eqz v15, :cond_8

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderNameList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move v1, v10

    move v2, v10

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/menu/MusicDropdownMenu;->add(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v12

    .line 335
    .local v12, item:Lcom/google/android/music/menu/MusicMenuItem;
    if-ne v8, v13, :cond_8

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    const/16 v18, 0x1

    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setChecked(Z)V

    .line 316
    .end local v12           #item:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 149
    .end local v8           #currentSortOrder:I
    .end local v9           #extras:Landroid/os/Bundle;
    .end local v10           #i:I
    .end local v11           #intent:Landroid/content/Intent;
    .end local v13           #order:I
    .end local v15           #sortNameResource:I
    .end local v17           #topLine:Landroid/view/View;
    .restart local p1
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/activitymanagement/AppState;->getActivityManager()Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v4

    .line 152
    .local v4, actionBarController:Lcom/google/android/music/TopBar$ActionBarController;
    invoke-virtual {v4}, Lcom/google/android/music/TopBar$ActionBarController;->showTopBar()V

    .line 153
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/music/TopBar$ActionBarController;->setMenuCustomizer(Lcom/google/android/music/TopBar$MenuCustomizer;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isTopLevel(Lcom/google/android/music/activitymanagement/AppState;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 155
    invoke-virtual {v4}, Lcom/google/android/music/TopBar$ActionBarController;->showDisplayModes()V

    .line 156
    invoke-virtual {v4}, Lcom/google/android/music/TopBar$ActionBarController;->hideTitle()V

    .line 158
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v18

    if-nez v18, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f090018

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 163
    invoke-virtual {v4}, Lcom/google/android/music/TopBar$ActionBarController;->showToggleButton()V

    goto/16 :goto_0

    .line 165
    :cond_b
    invoke-virtual {v4}, Lcom/google/android/music/TopBar$ActionBarController;->hideToggleButton()V

    goto/16 :goto_0

    .line 239
    .end local v4           #actionBarController:Lcom/google/android/music/TopBar$ActionBarController;
    .end local p1
    .restart local v9       #extras:Landroid/os/Bundle;
    .restart local v11       #intent:Landroid/content/Intent;
    :cond_c
    const/16 v18, 0xb

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "_id"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "title"

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string v20, "album"

    aput-object v20, v18, v19

    const/16 v19, 0x3

    const-string v20, "artist"

    aput-object v20, v18, v19

    const/16 v19, 0x4

    const-string v20, "AlbumArtistId"

    aput-object v20, v18, v19

    const/16 v19, 0x5

    const-string v20, "duration"

    aput-object v20, v18, v19

    const/16 v19, 0x6

    const-string v20, "album_id"

    aput-object v20, v18, v19

    const/16 v19, 0x7

    const-string v20, "hasRemote"

    aput-object v20, v18, v19

    const/16 v19, 0x8

    const-string v20, "hasLocal"

    aput-object v20, v18, v19

    const/16 v19, 0x9

    const-string v20, "year"

    aput-object v20, v18, v19

    const/16 v19, 0xa

    const-string v20, "Genre"

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mCursorCols:[Ljava/lang/String;

    goto/16 :goto_1

    .line 263
    :cond_d
    const v18, 0x7f040029

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/music/TrackBrowserActivity;->setContentView(I)V

    goto/16 :goto_2

    .line 280
    :cond_e
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycomb()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const v19, 0x7f02019d

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setSelector(I)V

    .line 283
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    goto/16 :goto_3

    .line 298
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/TrackBrowserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v18

    const v19, 0x7f040012

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .restart local v17       #topLine:Landroid/view/View;
    goto/16 :goto_4

    .line 321
    .restart local v8       #currentSortOrder:I
    .restart local v10       #i:I
    .restart local v13       #order:I
    .restart local v15       #sortNameResource:I
    :cond_11
    const/16 v18, 0x3

    move v0, v13

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 322
    const v15, 0x7f0c00c4

    goto/16 :goto_6

    .line 323
    :cond_12
    const/16 v18, 0x2

    move v0, v13

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 324
    const v15, 0x7f0c00c5

    goto/16 :goto_6

    .line 328
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 329
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_6

    .line 342
    .end local v13           #order:I
    .end local v15           #sortNameResource:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooserContainer:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 344
    .end local v8           #currentSortOrder:I
    .end local v10           #i:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_17

    .line 346
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooserContainer:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 348
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/google/android/music/TrackBrowserActivity$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/music/TrackBrowserActivity$2;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    .end local v17           #topLine:Landroid/view/View;
    :cond_18
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_19

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f0012

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/widget/ImageView;

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0f000f

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    .line 369
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getOfflineMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/medialist/SongList;->supportsOfflineCaching()Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/medialist/SongList;->isSelectedForOfflineCaching(Landroid/content/Context;Lcom/google/android/music/OfflineMusicManager;)Z

    move-result v14

    .line 375
    .local v14, selectedForOffline:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1a

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mContainerContextMenu:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1b

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 384
    .end local v14           #selectedForOffline:Z
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/SongList;->getAlbumId(Landroid/content/Context;)J

    move-result-wide v5

    .line 387
    .local v5, albumId:J
    const-wide/16 v18, -0x1

    cmp-long v18, v5, v18

    if-nez v18, :cond_20

    .line 388
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mIsInTabbedLists:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1f

    .line 389
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/TabbedLists;->getRepresentativeAlbumChangeListener(Landroid/app/Activity;)Lcom/google/android/music/RepresentativeAlbumChangeListener;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    .line 391
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/TabbedLists;->getNoContentListener(Landroid/app/Activity;)Lcom/google/android/music/NoContentListener;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    .line 403
    :cond_1c
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mIsInTabbedLists:Z

    move/from16 v18, v0

    if-nez v18, :cond_1d

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v7

    .line 405
    .local v7, controller:Lcom/google/android/music/TopBar$ActionBarController;
    invoke-virtual {v7}, Lcom/google/android/music/TopBar$ActionBarController;->showTopBar()V

    .line 408
    .end local v7           #controller:Lcom/google/android/music/TopBar$ActionBarController;
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/TrackBrowserActivity;->updateHeaderImage()V

    .line 409
    return-void

    .line 355
    .end local v5           #albumId:J
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mAllTracks:Z

    move/from16 v18, v0

    if-nez v18, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    move-object/from16 v18, v0

    if-nez v18, :cond_18

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/TrackBrowserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v18

    const v19, 0x7f040003

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mHeaderView:Landroid/view/View;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v18 .. v21}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto/16 :goto_7

    .line 393
    .restart local v5       #albumId:J
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    goto :goto_8

    .line 397
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mIsInTabbedLists:Z

    move/from16 v18, v0

    if-nez v18, :cond_1c

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-wide v1, v5

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/activitymanagement/AppState;->setBackgroundAlbum(JZ)V

    goto/16 :goto_8
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "id"
    .parameter "args"

    .prologue
    .line 1272
    const/4 v0, 0x0

    .line 1273
    .local v0, dialog:Landroid/app/AlertDialog;
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 1274
    new-instance v0, Lcom/google/android/music/CreatePlaylist;

    .end local v0           #dialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/music/CreatePlaylist;-><init>(Landroid/content/Context;ZLcom/google/android/music/CreatePlaylist$Callback;)V

    .line 1275
    .restart local v0       #dialog:Landroid/app/AlertDialog;
    new-instance v1, Lcom/google/android/music/TrackBrowserActivity$12;

    invoke-direct {v1, p0}, Lcom/google/android/music/TrackBrowserActivity$12;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1297
    :cond_0
    :goto_0
    return-object v0

    .line 1284
    :cond_1
    const/16 v1, 0x65

    if-ne p1, v1, :cond_0

    .line 1285
    new-instance v0, Lcom/google/android/music/RenamePlaylist;

    .end local v0           #dialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    check-cast v1, Lcom/google/android/music/medialist/PlaylistSongList;

    invoke-virtual {v1}, Lcom/google/android/music/medialist/PlaylistSongList;->getId()J

    move-result-wide v3

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/music/RenamePlaylist;-><init>(Landroid/content/Context;J)V

    .line 1287
    .restart local v0       #dialog:Landroid/app/AlertDialog;
    new-instance v1, Lcom/google/android/music/TrackBrowserActivity$13;

    invoke-direct {v1, p0}, Lcom/google/android/music/TrackBrowserActivity$13;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method public onCreateListContextMusicMenu(Landroid/view/View;I)V
    .locals 25
    .parameter "view"
    .parameter "position"

    .prologue
    .line 1040
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v14

    .line 1041
    .local v14, lv:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1042
    new-instance v15, Lcom/google/android/music/menu/MusicDropdownMenu;

    new-instance v21, Lcom/google/android/music/TrackBrowserActivity$MusicMenuCallback;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/TrackBrowserActivity$MusicMenuCallback;-><init>(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/TrackBrowserActivity$1;)V

    invoke-virtual {v14}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v22

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/menu/MusicDropdownMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 1044
    .local v15, menu:Lcom/google/android/music/menu/MusicDropdownMenu;
    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicDropdownMenu;->setButtonView(Landroid/view/View;)V

    .line 1045
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    .line 1058
    .end local v15           #menu:Lcom/google/android/music/menu/MusicDropdownMenu;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    move-object/from16 v21, v0

    const/16 v22, 0x6

    const/16 v23, 0x0

    const v24, 0x7f0c0070

    invoke-virtual/range {v21 .. v24}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v17

    .line 1060
    .local v17, playMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 1061
    const v21, 0x7f020151

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 1064
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v21

    sub-int v21, p2, v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mSelectedPosition:I

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedPosition:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveToPosition(I)Z

    move-result v21

    if-nez v21, :cond_2

    .line 1066
    const-string v21, "TrackBrowser"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onCreateContextMusicMenu: could not move cursor to position: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :goto_1
    return-void

    .line 1047
    .end local v17           #playMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_1
    new-instance v15, Lcom/google/android/music/menu/MusicPopupMenu;

    new-instance v21, Lcom/google/android/music/TrackBrowserActivity$MusicMenuCallback;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/TrackBrowserActivity$MusicMenuCallback;-><init>(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/TrackBrowserActivity$1;)V

    invoke-virtual {v14}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v22

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/menu/MusicPopupMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 1049
    .local v15, menu:Lcom/google/android/music/menu/MusicPopupMenu;
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object v13, v0

    .line 1050
    .local v13, location:[I
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1051
    const/16 v21, 0x0

    aget v19, v13, v21

    .line 1052
    .local v19, x:I
    const/16 v21, 0x1

    aget v21, v13, v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v20, v21, v22

    .line 1053
    .local v20, y:I
    const/16 v21, 0x2

    move-object v0, v15

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/menu/MusicPopupMenu;->setLocation(III)V

    .line 1054
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    goto/16 :goto_0

    .line 1070
    .end local v13           #location:[I
    .end local v15           #menu:Lcom/google/android/music/menu/MusicPopupMenu;
    .end local v19           #x:I
    .end local v20           #y:I
    .restart local v17       #playMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v22, v0

    const-string v23, "hasRemote"

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getInt(I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    const/16 v21, 0x1

    :goto_2
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mSelectedHasRemote:Z

    .line 1073
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedHasRemote:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/music/MusicUtils;->addInstantMixMenuItem(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu;I)Z

    .line 1078
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v22

    if-eqz v22, :cond_b

    const v22, 0x7f02013c

    :goto_3
    const/16 v23, 0x2

    invoke-static/range {v21 .. v23}, Lcom/google/android/music/MusicUtils;->populateAddToPlaylistMenu(Lcom/google/android/music/menu/MusicMenu;II)V

    .line 1082
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    move-object/from16 v21, v0

    const/16 v22, 0x12d

    const/16 v23, 0x3

    const v24, 0x7f0c0088

    invoke-virtual/range {v21 .. v24}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v18

    .line 1085
    .local v18, removeMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1086
    const v21, 0x7f020154

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 1090
    .end local v18           #removeMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedHasRemote:Z

    move/from16 v21, v0

    if-nez v21, :cond_5

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    move-object/from16 v21, v0

    const/16 v22, 0x1c

    const/16 v23, 0x4

    const v24, 0x7f0c00f8

    invoke-virtual/range {v21 .. v24}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v12

    .line 1092
    .local v12, itemDelete:Lcom/google/android/music/menu/MusicMenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 1093
    const v21, 0x7f020142

    move-object v0, v12

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 1097
    .end local v12           #itemDelete:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_5
    const-wide/16 v4, -0x1

    .line 1098
    .local v4, artistId:J
    const/4 v6, 0x0

    .line 1101
    .local v6, artistName:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v21, v0

    const-string v22, "audio_id"

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1102
    .local v10, id_idx:I
    if-gez v10, :cond_6

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v21, v0

    const-string v22, "_id"

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1105
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v21, v0

    const-string v22, "AlbumArtistId"

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 1107
    .local v7, artist_id_idx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v21, v0

    const-string v22, "artist"

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1109
    .local v8, artist_name_idx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/TrackBrowserActivity;->mSelectedId:J

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getLong(I)J

    move-result-wide v4

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1118
    .end local v7           #artist_id_idx:I
    .end local v8           #artist_name_idx:I
    .end local v10           #id_idx:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    move-object/from16 v21, v0

    const/16 v22, 0x258

    const/16 v23, 0x4

    const v24, 0x7f0c0017

    invoke-virtual/range {v21 .. v24}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v16

    .line 1119
    .local v16, menuItem:Lcom/google/android/music/menu/MusicMenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v21

    if-eqz v21, :cond_7

    .line 1120
    const v21, 0x7f020159

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 1123
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/google/android/music/medialist/ArtistSongList;

    move/from16 v21, v0

    if-nez v21, :cond_8

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    move-object/from16 v21, v0

    const/16 v22, 0x12e

    const/16 v23, 0x5

    const v24, 0x7f0c00c6

    invoke-virtual/range {v21 .. v24}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v11

    .line 1127
    .local v11, item:Lcom/google/android/music/menu/MusicMenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 1128
    const v21, 0x7f02014e

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 1133
    .end local v11           #item:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/music/TrackBrowserActivity;->isMusic(Landroid/database/Cursor;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/google/android/music/BrowserActivityUtils;->addSearchMenu(Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/menu/MusicListMenu;)V

    .line 1136
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v22, v0

    const-string v23, "album"

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v22, v0

    const-string v23, "artist"

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-object/from16 v22, v0

    const-string v23, "title"

    invoke-virtual/range {v22 .. v23}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/menu/MusicListMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/TrackBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/menu/MusicListMenu;->show()V

    goto/16 :goto_1

    .line 1070
    .end local v4           #artistId:J
    .end local v6           #artistName:Ljava/lang/String;
    .end local v16           #menuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 1078
    :cond_b
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 1112
    .restart local v4       #artistId:J
    .restart local v6       #artistName:Ljava/lang/String;
    :catch_0
    move-exception v21

    move-object/from16 v9, v21

    .line 1114
    .local v9, ex:Ljava/lang/IllegalArgumentException;
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/TrackBrowserActivity;->mSelectedId:J

    goto/16 :goto_4
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 593
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsFinished:Z

    .line 594
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 595
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 596
    iget-boolean v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mEditMode:Z

    if-eqz v2, :cond_0

    .line 598
    move-object v0, v1

    check-cast v0, Lcom/google/android/music/TouchInterceptor;

    move-object v2, v0

    invoke-virtual {v2, v4}, Lcom/google/android/music/TouchInterceptor;->setDropListener(Lcom/google/android/music/TouchInterceptor$DropListener;)V

    .line 599
    check-cast v1, Lcom/google/android/music/TouchInterceptor;

    .end local v1           #lv:Landroid/widget/ListView;
    invoke-virtual {v1, v4}, Lcom/google/android/music/TouchInterceptor;->setRemoveListener(Lcom/google/android/music/TouchInterceptor$RemoveListener;)V

    .line 603
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v2}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 604
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mNowPlayingListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v2}, Lcom/google/android/music/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 605
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v2}, Lcom/google/android/music/TrackBrowserActivity;->unregisterReceiverSafe(Landroid/content/BroadcastReceiver;)V

    .line 606
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v2}, Lcom/google/android/music/medialist/SongList;->hasMetaData()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 607
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mMetaDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, p0, v3}, Lcom/google/android/music/medialist/SongList;->unregisterMetaDataObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 614
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v2, :cond_2

    .line 615
    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v2, v4}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 617
    :cond_2
    invoke-virtual {p0, v4}, Lcom/google/android/music/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 618
    iput-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 619
    iput-object v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 620
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 621
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
    .line 938
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_1

    .line 939
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    if-lt p3, v0, :cond_0

    .line 940
    invoke-virtual {p0, p2, p3}, Lcom/google/android/music/TrackBrowserActivity;->onCreateListContextMusicMenu(Landroid/view/View;I)V

    .line 942
    :cond_0
    const/4 v0, 0x1

    .line 944
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeepOnCheckBoxClicked(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1034
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mKeepOnCheckBox:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v1}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v0

    .line 1035
    .local v0, isSelected:Z
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v1, v2, p0, v0}, Lcom/google/android/music/medialist/SongList;->modifyOfflineStatus(Lcom/google/android/music/OfflineMusicManager;Landroid/content/Context;Z)V

    .line 1037
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1254
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p3, v0

    .line 1255
    if-gez p3, :cond_2

    .line 1257
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->shuffleAll(Lcom/google/android/music/medialist/SongList;)V

    .line 1258
    invoke-static {p0}, Lcom/google/android/music/MusicUtils;->startMediaPlayer(Landroid/app/Activity;)V

    goto :goto_0

    .line 1260
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-virtual {v0, p3}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveToPosition(I)Z

    .line 1261
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    const/4 v2, 0x1

    invoke-static {v0, v1, p3, v2}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/medialist/SongList;IZ)V

    goto :goto_0
.end method

.method public onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    .line 1847
    const-string v0, "TrackBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1963
    const-string v0, "TrackBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMusicMenuItemSelected: unexpected item id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v0, v13

    .line 1966
    :goto_1
    return v0

    .line 1850
    :sswitch_0
    invoke-direct {p0}, Lcom/google/android/music/TrackBrowserActivity;->doExternalSearch()V

    goto :goto_0

    .line 1855
    :sswitch_1
    const-string v0, "TrackBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected CONTAINER_SEARCH menu item:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1860
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    instance-of v0, v0, Lcom/google/android/music/medialist/ArtistSongList;

    if-eqz v0, :cond_0

    .line 1861
    iget-object v10, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    check-cast v10, Lcom/google/android/music/medialist/ArtistSongList;

    .line 1863
    .local v10, artistSongList:Lcom/google/android/music/medialist/ArtistSongList;
    const-string v3, ""

    .line 1864
    .local v3, sortableAlbumArtistName:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v10}, Lcom/google/android/music/medialist/ArtistSongList;->getArtistId()J

    move-result-wide v1

    invoke-virtual {v10}, Lcom/google/android/music/medialist/ArtistSongList;->getArtistName()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startAlbumListingForAlbumArtist(JLjava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 1867
    .end local v3           #sortableAlbumArtistName:Ljava/lang/String;
    .end local v10           #artistSongList:Lcom/google/android/music/medialist/ArtistSongList;
    :cond_0
    const-string v0, "TrackBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"More by artist\" should not be available for the type of MediaList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1874
    :sswitch_3
    new-instance v11, Lcom/google/android/music/OfflineMusicManager;

    invoke-direct {v11, p0}, Lcom/google/android/music/OfflineMusicManager;-><init>(Landroid/content/Context;)V

    .line 1875
    .local v11, manager:Lcom/google/android/music/OfflineMusicManager;
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1876
    new-instance v0, Lcom/google/android/music/SpaceWarningListener;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-direct {v0, v1}, Lcom/google/android/music/SpaceWarningListener;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    invoke-virtual {v11, v0}, Lcom/google/android/music/OfflineMusicManager;->addAvailableSpaceChangeListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 1878
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getChecked()Z

    move-result v1

    invoke-virtual {v0, v11, p0, v1}, Lcom/google/android/music/medialist/SongList;->modifyOfflineStatus(Lcom/google/android/music/OfflineMusicManager;Landroid/content/Context;Z)V

    .line 1879
    invoke-virtual {v11}, Lcom/google/android/music/OfflineMusicManager;->commitChanges()V

    goto/16 :goto_0

    .line 1883
    .end local v11           #manager:Lcom/google/android/music/OfflineMusicManager;
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    iget v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedPosition:I

    invoke-static {v0, v1, v2, v4}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/medialist/SongList;IZ)V

    move v0, v13

    .line 1884
    goto/16 :goto_1

    .line 1888
    :sswitch_5
    sget-object v5, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->SONG:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    iget-wide v6, p0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedId:J

    iget-object v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentTrackName:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedHasRemote:Z

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/google/android/music/DeleteConfirmationActivity;->confirmDelete(Landroid/content/Context;Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;JLjava/lang/CharSequence;Z)V

    move v0, v13

    .line 1890
    goto/16 :goto_1

    .line 1894
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/music/MusicUtils;->shopFor(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1898
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-static {v0, v1, v4, v4}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/medialist/SongList;IZ)V

    move v0, v13

    .line 1899
    goto/16 :goto_1

    .line 1903
    :sswitch_8
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/google/android/music/TrackBrowserActivity;->showDialog(I)V

    move v0, v13

    .line 1904
    goto/16 :goto_1

    .line 1926
    :sswitch_9
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    instance-of v0, v0, Lcom/google/android/music/medialist/PlaylistSongList;

    if-eqz v0, :cond_2

    .line 1927
    iget-object v12, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    check-cast v12, Lcom/google/android/music/medialist/PlaylistSongList;

    .line 1928
    .local v12, playlist:Lcom/google/android/music/medialist/PlaylistSongList;
    invoke-virtual {v12}, Lcom/google/android/music/medialist/PlaylistSongList;->getPlaylistId()J

    move-result-wide v0

    invoke-virtual {v12}, Lcom/google/android/music/medialist/PlaylistSongList;->getPlaylistName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/music/DeleteConfirmationActivity;->confirmDeletePlaylist(Landroid/content/Context;JLjava/lang/CharSequence;)V

    .end local v12           #playlist:Lcom/google/android/music/medialist/PlaylistSongList;
    :goto_2
    move v0, v13

    .line 1938
    goto/16 :goto_1

    .line 1934
    :cond_2
    const-string v0, "TrackBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"Delete\" should not be available for the type of MediaList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1942
    :sswitch_a
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/google/android/music/TrackBrowserActivity;->showDialog(I)V

    move v0, v13

    .line 1943
    goto/16 :goto_1

    .line 1947
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playlist"

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 1948
    .local v5, playlistId:J
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playlist_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1949
    .local v7, playlistName:Ljava/lang/String;
    iget-wide v8, p0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedId:J

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/music/TrackBrowserActivity;->addToPlaylist(JLjava/lang/String;J)V

    move v0, v13

    .line 1950
    goto/16 :goto_1

    .line 1954
    .end local v5           #playlistId:J
    .end local v7           #playlistName:Ljava/lang/String;
    :sswitch_c
    iget v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedPosition:I

    invoke-direct {p0, v0}, Lcom/google/android/music/TrackBrowserActivity;->removePlaylistItem(I)V

    move v0, v13

    .line 1955
    goto/16 :goto_1

    .line 1958
    :sswitch_d
    iget-wide v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedId:J

    invoke-static {p0, v0, v1}, Lcom/google/android/music/CreateInstantMixActivity;->createInstantPlaylistOnTrack(Landroid/content/Context;J)V

    move v0, v13

    .line 1960
    goto/16 :goto_1

    .line 1848
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_b
        0x5 -> :sswitch_a
        0x6 -> :sswitch_4
        0x1b -> :sswitch_d
        0x1c -> :sswitch_5
        0xc8 -> :sswitch_7
        0xca -> :sswitch_3
        0xcb -> :sswitch_2
        0xcc -> :sswitch_1
        0xcd -> :sswitch_8
        0xce -> :sswitch_9
        0x12c -> :sswitch_0
        0x12d -> :sswitch_c
        0x12e -> :sswitch_2
        0x258 -> :sswitch_6
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 658
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 659
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 660
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->closeContextMusicMenu()V

    .line 661
    return-void
.end method

.method public onPlaylistCreated(JLjava/lang/String;)V
    .locals 6
    .parameter "playlistId"
    .parameter "playlistName"

    .prologue
    .line 1342
    iget-wide v4, p0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedId:J

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/TrackBrowserActivity;->addToPlaylist(JLjava/lang/String;J)V

    .line 1343
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 675
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 676
    const-string v1, "android:savedDialogs"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 677
    .local v0, b:Landroid/os/Bundle;
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 639
    sget-boolean v1, Lcom/google/android/music/TrackBrowserActivity;->LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "TrackBrowser"

    const-string v2, "onResume()..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 641
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;

    if-eqz v1, :cond_1

    .line 642
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 647
    :cond_1
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    if-eqz v1, :cond_2

    .line 648
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    .line 649
    .local v0, currentList:Lcom/google/android/music/medialist/SongList;
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v1, v0}, Lcom/google/android/music/medialist/SongList;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    .line 650
    sget-boolean v1, Lcom/google/android/music/TrackBrowserActivity;->LOGV:Z

    if-eqz v1, :cond_2

    const-string v1, "TrackBrowser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- onResume: refreshed mIsNowPlaying: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    .end local v0           #currentList:Lcom/google/android/music/medialist/SongList;
    :cond_2
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 654
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 668
    const-string v0, "medialist"

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 669
    const-string v0, "autoscrollTrackId"

    iget-wide v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mSelectedId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 670
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 671
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1982
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    if-eqz v0, :cond_0

    .line 1986
    if-nez p2, :cond_1

    .line 1987
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    if-eqz v0, :cond_0

    .line 1989
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getRepresentativeAlbumId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/music/RepresentativeAlbumChangeListener;->setRepresentativeAlbum(JZ)V

    .line 1996
    :cond_0
    :goto_0
    return-void

    .line 1993
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    invoke-interface {v0}, Lcom/google/android/music/RepresentativeAlbumChangeListener;->cancelBackgroundChange()V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 10
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v4, 0x0

    const v9, 0x7f0c008e

    const/4 v6, 0x0

    .line 534
    sget-boolean v0, Lcom/google/android/music/TrackBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "TrackBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected()... name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    sget-object v0, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    invoke-virtual {v0}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v8

    .line 536
    .local v8, currentList:Lcom/google/android/music/medialist/SongList;
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v0, v8}, Lcom/google/android/music/medialist/SongList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mIsNowPlaying:Z

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    if-nez v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;

    invoke-virtual {v0}, Lcom/google/android/music/medialist/SongList;->getItemLayout()I

    move-result v3

    .line 544
    .local v3, layout:I
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    new-array v5, v6, [Ljava/lang/String;

    new-array v6, v6, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/music/TrackBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 551
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/music/TrackBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 552
    invoke-virtual {p0, v9}, Lcom/google/android/music/TrackBrowserActivity;->setTitle(I)V

    .line 553
    new-instance v0, Lcom/google/android/music/TrackBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/TrackBrowserActivity$5;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 584
    .end local v3           #layout:I
    :goto_0
    return-void

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/TrackBrowserActivity;->mAdapter:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 576
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 577
    invoke-virtual {p0, v7}, Lcom/google/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0

    .line 579
    :cond_3
    invoke-virtual {p0, v9}, Lcom/google/android/music/TrackBrowserActivity;->setTitle(I)V

    .line 580
    invoke-direct {p0, v4}, Lcom/google/android/music/TrackBrowserActivity;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 581
    invoke-virtual {p0, v7}, Lcom/google/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/google/android/music/TrackBrowserActivity;->finish()V

    .line 589
    return-void
.end method

.method public prepareOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 1844
    return-void
.end method
