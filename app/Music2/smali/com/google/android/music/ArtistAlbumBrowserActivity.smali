.class public Lcom/google/android/music/ArtistAlbumBrowserActivity;
.super Landroid/app/ExpandableListActivity;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/music/menu/MusicMenu$Callback;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/google/android/music/CreatePlaylist$Callback;
.implements Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
.implements Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
.implements Lcom/google/android/music/TopBar$MenuCustomizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/ArtistAlbumBrowserActivity$AlbumQuery;,
        Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistQuery;,
        Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;,
        Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;,
        Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumContentObserver;
    }
.end annotation


# static fields
.field private static final ALL_SONGS_ITEM:I = -0x1

.field public static final EXTRA_AUTOSCROLL_TO_ALBUM_ID:Ljava/lang/String; = "autoscrollAlbumId"

.field private static final EXTRA_AUTOSCROLL_TO_ALBUM_NAME:Ljava/lang/String; = "autoscrollAlbumName"

.field public static final EXTRA_AUTOSCROLL_TO_ARTIST_ID:Ljava/lang/String; = "autoscrollArtistId"

.field private static final EXTRA_AUTOSCROLL_TO_ARTIST_NAME:Ljava/lang/String; = "autoscrollArtistName"

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "ArtistAlbumBrowser"

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

.field private mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mAppState:Lcom/google/android/music/activitymanagement/AppState;

.field private mArtistCursor:Landroid/database/Cursor;

.field private mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

.field private mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

.field private mCurrentAlbumHasRemote:Z

.field private mCurrentAlbumId:J

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistHasRemote:Z

.field private mCurrentArtistId:J

.field private mCurrentArtistName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field mIsUnknownAlbum:Z

.field mIsUnknownArtist:Z

.field private mListContainer:Landroid/view/View;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNoContentListener:Lcom/google/android/music/NoContentListener;

.field private mObserver:Landroid/database/ContentObserver;

.field private mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 87
    const-string v0, "ArtistAlbumBrowser"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->LOGV:Z

    .line 106
    sput v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    .line 107
    sput v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 221
    new-instance v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$1;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    .line 329
    new-instance v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$3;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 1443
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/NoContentListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/ArtistAlbumBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/RepresentativeAlbumChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    return-object v0
.end method

.method private addCurrentSelectionToPlaylist(JLjava/lang/String;)V
    .locals 6
    .parameter "playlistId"
    .parameter "playlistName"

    .prologue
    .line 777
    invoke-direct {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getSongListForSelection()Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    .line 778
    .local v2, songList:Lcom/google/android/music/medialist/SongList;
    new-instance v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$5;

    move-object v1, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/ArtistAlbumBrowserActivity$5;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;Lcom/google/android/music/medialist/SongList;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 790
    return-void
.end method

.method private doExternalSearch()V
    .locals 6

    .prologue
    .line 702
    sget-boolean v2, Lcom/google/android/music/ArtistAlbumBrowserActivity;->LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "ArtistAlbumBrowser"

    const-string v3, "doExternalSearch()..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isPreGingerbread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 705
    const-string v2, "ArtistAlbumBrowser"

    const-string v3, "Do external search does not work pre-GB"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :goto_0
    return-void

    .line 709
    :cond_1
    const/4 v1, 0x0

    .line 711
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 719
    .local v0, i:Landroid/content/Intent;
    sget-boolean v2, Lcom/google/android/music/ArtistAlbumBrowserActivity;->LOGV:Z

    if-eqz v2, :cond_2

    .line 720
    const-string v2, "ArtistAlbumBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - mCurrentArtistId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string v2, "ArtistAlbumBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - mCurrentArtistName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const-string v2, "ArtistAlbumBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - mIsUnknownAlbum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string v2, "ArtistAlbumBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - mCurrentArtistNameForAlbum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const-string v2, "ArtistAlbumBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - mCurrentAlbumName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const-string v2, "ArtistAlbumBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - mIsUnknownArtist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_2
    iget-wide v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 729
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 730
    const-string v2, "android.intent.extra.artist"

    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    const-string v2, "android.intent.extra.focus"

    const-string v3, "vnd.android.cursor.item/artist"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    :goto_1
    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    sget-boolean v2, Lcom/google/android/music/ArtistAlbumBrowserActivity;->LOGV:Z

    if-eqz v2, :cond_3

    .line 752
    const-string v2, "ArtistAlbumBrowser"

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

    .line 753
    const-string v2, "ArtistAlbumBrowser"

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

    .line 754
    const-string v2, "ArtistAlbumBrowser"

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

    .line 756
    :cond_3
    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v2, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->superStartActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 733
    :cond_4
    iget-boolean v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v2, :cond_6

    .line 734
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 745
    :cond_5
    :goto_2
    const-string v2, "android.intent.extra.artist"

    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    const-string v2, "android.intent.extra.album"

    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 747
    const-string v2, "android.intent.extra.focus"

    const-string v3, "vnd.android.cursor.item/album"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 736
    :cond_6
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 737
    iget-boolean v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    if-nez v2, :cond_5

    .line 738
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 739
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    goto :goto_2

    .line 741
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private findViewHolder(Landroid/view/View;J)Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    .locals 10
    .parameter "childView"
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    .line 1469
    const/4 v2, 0x0

    .line 1470
    .local v2, holder:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    move-object v4, p1

    .line 1472
    .local v4, view:Landroid/view/View;
    :goto_0
    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    .line 1473
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1474
    .local v3, tag:Ljava/lang/Object;
    instance-of v5, v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    if-eqz v5, :cond_0

    .line 1475
    move-object v0, v3

    check-cast v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    move-object v2, v0

    goto :goto_0

    .line 1477
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .end local v4           #view:Landroid/view/View;
    check-cast v4, Landroid/view/View;

    .restart local v4       #view:Landroid/view/View;
    goto :goto_0

    .line 1481
    .end local v3           #tag:Ljava/lang/Object;
    :cond_1
    if-nez v2, :cond_2

    .line 1482
    const-string v5, "ArtistAlbumBrowser"

    const-string v6, "No holder found"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v9

    .line 1497
    :goto_1
    return-object v5

    .line 1486
    :cond_2
    iget-object v1, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    .line 1488
    .local v1, checkBox:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;
    invoke-virtual {v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->isAlbum()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v5}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->getAlbumId()J

    move-result-wide v5

    cmp-long v5, v5, p2

    if-eqz v5, :cond_3

    .line 1489
    const-string v5, "ArtistAlbumBrowser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong album id: Got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v7}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->getAlbumId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from the view but expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v9

    .line 1491
    goto :goto_1

    .line 1492
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->isAlbum()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v5}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->getArtistId()J

    move-result-wide v5

    cmp-long v5, v5, p2

    if-eqz v5, :cond_4

    .line 1493
    const-string v5, "ArtistAlbumBrowser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong artist id: Got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v7}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->getArtistId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from the view but expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v9

    .line 1495
    goto :goto_1

    :cond_4
    move-object v5, v2

    .line 1497
    goto :goto_1
.end method

.method private getArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "filter"

    .prologue
    const/4 v4, 0x0

    .line 812
    if-eqz p1, :cond_0

    .line 813
    const-string v1, "ArtistAlbumBrowser"

    const-string v2, "Filtering is not supported"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 816
    :cond_0
    new-instance v0, Lcom/google/android/music/AsyncCursor;

    invoke-static {v4}, Lcom/google/android/music/store/MusicContent$Artists;->getArtistsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistQuery;->COLUMNS:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/AsyncCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    .local v0, ret:Landroid/database/Cursor;
    return-object v0
.end method

.method private getSongListForSelection()Lcom/google/android/music/medialist/SongList;
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 760
    const/4 v0, 0x0

    .line 761
    .local v0, list:Lcom/google/android/music/medialist/SongList;
    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getArtistSongsSortOrder()I

    move-result v1

    .line 762
    .local v1, sortOrder:I
    iget-wide v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 763
    iget-wide v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 764
    new-instance v0, Lcom/google/android/music/medialist/ArtistSongList;

    .end local v0           #list:Lcom/google/android/music/medialist/SongList;
    iget-wide v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    .line 773
    .restart local v0       #list:Lcom/google/android/music/medialist/SongList;
    :cond_0
    :goto_0
    return-object v0

    .line 767
    :cond_1
    new-instance v0, Lcom/google/android/music/medialist/AlbumSongList;

    .end local v0           #list:Lcom/google/android/music/medialist/SongList;
    iget-wide v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    .restart local v0       #list:Lcom/google/android/music/medialist/SongList;
    goto :goto_0

    .line 769
    :cond_2
    iget-wide v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 770
    new-instance v0, Lcom/google/android/music/medialist/ArtistSongList;

    .end local v0           #list:Lcom/google/android/music/medialist/SongList;
    iget-wide v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    .restart local v0       #list:Lcom/google/android/music/medialist/SongList;
    goto :goto_0
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 395
    const v0, 0x7f0c0053

    invoke-virtual {p0, v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->setTitle(I)V

    .line 396
    return-void
.end method


# virtual methods
.method public closeContextMusicMenu()V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicPopupMenu;->close()V

    .line 678
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    .line 680
    :cond_0
    return-void
.end method

.method public createOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 435
    return-void
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 346
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-nez v1, :cond_1

    .line 347
    if-eqz p1, :cond_0

    .line 348
    const-string v1, "ArtistAlbumBrowser"

    const-string v2, "null adapter, non-null cursor"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 354
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 356
    :cond_2
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 357
    if-eqz p1, :cond_3

    .line 358
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 361
    :cond_3
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-nez v1, :cond_4

    .line 362
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->closeContextMenu()V

    goto :goto_0

    .line 367
    :cond_4
    sget v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    if-ltz v1, :cond_5

    .line 368
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    .line 369
    .local v0, elv:Landroid/widget/ExpandableListView;
    sget v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    sget v2, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 370
    const/4 v1, -0x1

    sput v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    .line 373
    .end local v0           #elv:Landroid/widget/ExpandableListView;
    :cond_5
    invoke-direct {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 794
    packed-switch p1, :pswitch_data_0

    .line 804
    :goto_0
    return-void

    .line 796
    :pswitch_0
    if-nez p2, :cond_0

    .line 797
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->finish()V

    goto :goto_0

    .line 799
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 800
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0

    .line 794
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public onAlbumChanged()V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->notifyDataSetChanged()V

    .line 687
    :cond_0
    return-void
.end method

.method public onArtistChanged()V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->notifyDataSetChanged()V

    .line 694
    :cond_0
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 8
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    .line 400
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->notifyDataSetChanged()V

    .line 401
    iput-wide p5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 403
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v4

    invoke-interface {v4, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 404
    .local v1, c:Landroid/database/Cursor;
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, album:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    cmp-long v4, p5, v5

    if-gez v4, :cond_2

    .line 410
    :cond_0
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v4, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 411
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    .line 412
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 414
    const v4, 0x7f0c0068

    invoke-virtual {p0, v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 416
    :cond_1
    new-instance v2, Lcom/google/android/music/medialist/ArtistSongList;

    iget-wide v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v6}, Lcom/google/android/music/jumper/MusicPreferences;->getArtistSongsSortOrder()I

    move-result v6

    invoke-direct {v2, v4, v5, v3, v6}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    .line 425
    .end local v3           #name:Ljava/lang/String;
    .local v2, mediaList:Lcom/google/android/music/medialist/MediaList;
    :goto_0
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v4, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    move v4, v7

    .line 426
    .end local v2           #mediaList:Lcom/google/android/music/medialist/MediaList;
    :goto_1
    return v4

    .line 418
    :cond_2
    cmp-long v4, p5, v5

    if-ltz v4, :cond_3

    .line 419
    new-instance v2, Lcom/google/android/music/medialist/AlbumSongList;

    invoke-direct {v2, p5, p6}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    .restart local v2       #mediaList:Lcom/google/android/music/medialist/MediaList;
    goto :goto_0

    .line 421
    .end local v2           #mediaList:Lcom/google/android/music/medialist/MediaList;
    :cond_3
    const-string v4, "ArtistAlbumBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Album ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") was not unknown but id ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") was < 0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v7

    .line 423
    goto :goto_1
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 823
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onContentChanged()V

    .line 824
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 825
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 826
    .local v0, count:I
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    if-eqz v1, :cond_0

    .line 827
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    if-lez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1, v2}, Lcom/google/android/music/NoContentListener;->setMusicFound(Z)V

    .line 830
    .end local v0           #count:I
    :cond_0
    return-void

    .line 827
    .restart local v0       #count:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "icicle"

    .prologue
    .line 126
    invoke-super/range {p0 .. p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    const-string v4, "ArtistAlbumBrowser"

    const-string v5, "ArtistAlbumBrowserActivity called on XLarge screen"

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/TabbedLists;->isInTab(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 134
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getMusicActivityManager(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 135
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/google/android/music/TabbedLists;->addMenuCustomizer(Landroid/app/Activity;Lcom/google/android/music/TopBar$MenuCustomizer;)V

    .line 157
    :goto_0
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 158
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 159
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->setVolumeControlStream(I)V

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 162
    .local v17, launchIntent:Landroid/content/Intent;
    sget-boolean v4, Lcom/google/android/music/ArtistAlbumBrowserActivity;->LOGV:Z

    if-eqz v4, :cond_1

    const-string v4, "ArtistAlbumBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate: intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1
    sget-boolean v4, Lcom/google/android/music/ArtistAlbumBrowserActivity;->LOGV:Z

    if-eqz v4, :cond_2

    const-string v4, "ArtistAlbumBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  - extras: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_2
    if-eqz p1, :cond_7

    .line 166
    const-string v4, "autoscrollAlbumId"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 167
    const-string v4, "autoscrollAlbumName"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 168
    const-string v4, "autoscrollArtistId"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    .line 169
    const-string v4, "autoscrollArtistName"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 170
    sget-boolean v4, Lcom/google/android/music/ArtistAlbumBrowserActivity;->LOGV:Z

    if-eqz v4, :cond_3

    const-string v4, "ArtistAlbumBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored artist / album from icicle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 185
    const v4, 0x7f04001a

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->setContentView(I)V

    .line 186
    const v4, 0x7f0f0054

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mListContainer:Landroid/view/View;

    .line 188
    new-instance v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumContentObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumContentObserver;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/os/Handler;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mObserver:Landroid/database/ContentObserver;

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v18

    .line 190
    .local v18, lv:Landroid/widget/ExpandableListView;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/ExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 191
    const/4 v4, 0x0

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setTextFilterEnabled(Z)V

    .line 192
    const/4 v4, 0x0

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setCacheColorHint(I)V

    .line 193
    invoke-virtual/range {v18 .. v19}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 195
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/TabbedLists;->isInTab(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 196
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/TabbedLists;->getRepresentativeAlbumChangeListener(Landroid/app/Activity;)Lcom/google/android/music/RepresentativeAlbumChangeListener;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    .line 198
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/TabbedLists;->getNoContentListener(Landroid/app/Activity;)Lcom/google/android/music/NoContentListener;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    .line 205
    :goto_2
    new-instance v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    const/4 v8, 0x0

    const v9, 0x7f040016

    const/4 v5, 0x0

    new-array v10, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    new-array v11, v5, [I

    const v12, 0x7f040014

    const/4 v5, 0x0

    new-array v13, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    new-array v14, v5, [I

    move-object/from16 v5, p0

    move-object/from16 v7, p0

    invoke-direct/range {v4 .. v14}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/content/Context;Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 216
    const v4, 0x7f0c008c

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->setTitle(I)V

    .line 217
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 218
    .local v16, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 219
    return-void

    .line 137
    .end local v16           #c:Landroid/database/Cursor;
    .end local v17           #launchIntent:Landroid/content/Intent;
    .end local v18           #lv:Landroid/widget/ExpandableListView;
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/AppState;->getActivityManager()Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v15

    .line 140
    .local v15, actionBarController:Lcom/google/android/music/TopBar$ActionBarController;
    invoke-virtual {v15}, Lcom/google/android/music/TopBar$ActionBarController;->showTopBar()V

    .line 141
    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/music/TopBar$ActionBarController;->setMenuCustomizer(Lcom/google/android/music/TopBar$MenuCustomizer;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isTopLevel(Lcom/google/android/music/activitymanagement/AppState;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 143
    invoke-virtual {v15}, Lcom/google/android/music/TopBar$ActionBarController;->showDisplayModes()V

    .line 144
    invoke-virtual {v15}, Lcom/google/android/music/TopBar$ActionBarController;->hideTitle()V

    .line 146
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090018

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 151
    invoke-virtual {v15}, Lcom/google/android/music/TopBar$ActionBarController;->showToggleButton()V

    goto/16 :goto_0

    .line 153
    :cond_6
    invoke-virtual {v15}, Lcom/google/android/music/TopBar$ActionBarController;->hideToggleButton()V

    goto/16 :goto_0

    .line 174
    .end local v15           #actionBarController:Lcom/google/android/music/TopBar$ActionBarController;
    .restart local v17       #launchIntent:Landroid/content/Intent;
    :cond_7
    const-string v4, "autoscrollArtistId"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v17

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    .line 175
    const-string v4, "autoscrollAlbumName"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v17

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 176
    sget-boolean v4, Lcom/google/android/music/ArtistAlbumBrowserActivity;->LOGV:Z

    if-eqz v4, :cond_3

    const-string v4, "ArtistAlbumBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got artist / album from launchIntent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 201
    .restart local v18       #lv:Landroid/widget/ExpandableListView;
    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    .line 202
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    goto/16 :goto_2
.end method

.method public onCreateContextMusicMenu(Landroid/view/View;)V
    .locals 29
    .parameter "view"

    .prologue
    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v18

    .line 561
    .local v18, lv:Landroid/widget/ExpandableListView;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->getPositionForView(Landroid/view/View;)I

    move-result v13

    .line 562
    .local v13, flatListPosition:I
    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v20

    .line 563
    .local v20, packedPosition:J
    invoke-static/range {v20 .. v21}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v16

    .line 564
    .local v16, itemtype:I
    invoke-static/range {v20 .. v21}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v14

    .line 565
    .local v14, gpos:I
    invoke-static/range {v20 .. v21}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v12

    .line 567
    .local v12, cpos:I
    new-instance v25, Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ExpandableListView;->getRootView()Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/menu/MusicPopupMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    .line 568
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 569
    .local v17, location:[I
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 570
    const/16 v25, 0x0

    aget v23, v17, v25

    .line 571
    .local v23, x:I
    const/16 v25, 0x1

    aget v25, v17, v25

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    add-int v24, v25, v26

    .line 572
    .local v24, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/menu/MusicPopupMenu;->setLocation(III)V

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v25

    sub-int v14, v14, v25

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 577
    .local v9, artistId:J
    move-wide v0, v9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    const/16 v25, 0x1

    :goto_0
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistHasRemote:Z

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    const/16 v25, 0x1

    move/from16 v8, v25

    .line 584
    .local v8, artistHasLocal:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v25, v0

    const/16 v26, 0x6

    const/16 v27, 0x0

    const v28, 0x7f0c0070

    invoke-virtual/range {v25 .. v28}, Lcom/google/android/music/menu/MusicPopupMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v22

    .line 586
    .local v22, playMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 587
    const v25, 0x7f020151

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 591
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v26

    if-eqz v26, :cond_4

    const v26, 0x7f02013c

    :goto_2
    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcom/google/android/music/MusicUtils;->populateAddToPlaylistMenu(Lcom/google/android/music/menu/MusicMenu;II)V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v25, v0

    const/16 v26, 0x258

    const/16 v27, 0x4

    const v28, 0x7f0c0017

    invoke-virtual/range {v25 .. v28}, Lcom/google/android/music/menu/MusicPopupMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v19

    .line 597
    .local v19, menuItem:Lcom/google/android/music/menu/MusicMenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 598
    const v25, 0x7f020159

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 603
    :cond_1
    if-nez v16, :cond_8

    .line 604
    const/16 v25, -0x1

    move v0, v14

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 606
    const-string v25, "ArtistAlbumBrowser"

    const-string v26, "no group"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :goto_3
    return-void

    .line 580
    .end local v8           #artistHasLocal:Z
    .end local v19           #menuItem:Lcom/google/android/music/menu/MusicMenuItem;
    .end local v22           #playMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_2
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 581
    :cond_3
    const/16 v25, 0x0

    move/from16 v8, v25

    goto/16 :goto_1

    .line 591
    .restart local v8       #artistHasLocal:Z
    .restart local v22       #playMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_4
    const/16 v26, 0x0

    goto :goto_2

    .line 610
    .restart local v19       #menuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_5
    const-wide/16 v25, -0x1

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    .line 612
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    .line 613
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v25, v0

    const v26, 0x7f0c0068

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/google/android/music/menu/MusicPopupMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 672
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/google/android/music/menu/MusicPopupMenu;->show()V

    goto :goto_3

    .line 617
    :cond_7
    new-instance v15, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v0, v15

    move-object/from16 v1, p1

    move v2, v13

    move-wide v3, v9

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 619
    .local v15, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicPopupMenu;->setMenuInfo(Ljava/lang/Object;)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/google/android/music/BrowserActivityUtils;->addKeepOnMenu(Lcom/google/android/music/jumper/MusicPreferences;Landroid/database/Cursor;Lcom/google/android/music/menu/MusicListMenu;)V

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/google/android/music/menu/MusicPopupMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/google/android/music/BrowserActivityUtils;->addSearchMenu(Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/menu/MusicListMenu;)V

    goto :goto_4

    .line 630
    .end local v15           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_8
    const/16 v25, 0x1

    move/from16 v0, v16

    move/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 631
    const/16 v25, -0x1

    move v0, v12

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 633
    const-string v25, "ArtistAlbumBrowser"

    const-string v26, "no child"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 636
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v14

    move v2, v12

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/database/Cursor;

    .line 637
    .local v11, c:Landroid/database/Cursor;
    invoke-interface {v11, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 640
    const/16 v25, 0x0

    move-object v0, v11

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 641
    .local v6, albumId:J
    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 642
    const/16 v25, 0x1

    move-object v0, v11

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v25

    sub-int v14, v14, v25

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 646
    const/16 v25, 0x5

    move-object v0, v11

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    const/16 v25, 0x1

    :goto_5
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumHasRemote:Z

    .line 647
    const/16 v25, 0x4

    move-object v0, v11

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    const/16 v25, 0x1

    move/from16 v5, v25

    .line 650
    .local v5, albumHasLocal:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    .line 652
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    move/from16 v25, v0

    if-eqz v25, :cond_e

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v25, v0

    const v26, 0x7f0c0069

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/google/android/music/menu/MusicPopupMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 657
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsUnknownAlbum:Z

    move/from16 v25, v0

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsUnknownArtist:Z

    move/from16 v25, v0

    if-nez v25, :cond_6

    .line 658
    :cond_a
    const-wide/16 v25, -0x1

    cmp-long v25, v6, v25

    if-eqz v25, :cond_b

    .line 660
    new-instance v15, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v0, v15

    move-object/from16 v1, p1

    move v2, v13

    move-wide v3, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 662
    .restart local v15       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicPopupMenu;->setMenuInfo(Ljava/lang/Object;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object v1, v11

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/google/android/music/BrowserActivityUtils;->addKeepOnMenu(Lcom/google/android/music/jumper/MusicPreferences;Landroid/database/Cursor;Lcom/google/android/music/menu/MusicListMenu;)V

    .line 669
    .end local v15           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/google/android/music/BrowserActivityUtils;->addSearchMenu(Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/menu/MusicListMenu;)V

    goto/16 :goto_4

    .line 646
    .end local v5           #albumHasLocal:Z
    :cond_c
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 647
    :cond_d
    const/16 v25, 0x0

    move/from16 v5, v25

    goto/16 :goto_6

    .line 655
    .restart local v5       #albumHasLocal:Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/google/android/music/menu/MusicPopupMenu;->setHeader(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, dialog:Landroid/app/AlertDialog;
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 540
    new-instance v0, Lcom/google/android/music/CreatePlaylist;

    .end local v0           #dialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/music/CreatePlaylist;-><init>(Landroid/content/Context;ZLcom/google/android/music/CreatePlaylist$Callback;)V

    .line 541
    .restart local v0       #dialog:Landroid/app/AlertDialog;
    new-instance v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$4;

    invoke-direct {v1, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$4;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 551
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 273
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v3

    .line 274
    .local v3, lv:Landroid/widget/ExpandableListView;
    if-eqz v3, :cond_0

    .line 275
    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v4

    sput v4, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosCourse:I

    .line 276
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 277
    .local v2, cv:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    sput v4, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mLastListPosFine:I

    .line 282
    .end local v2           #cv:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v4}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 287
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v4, :cond_1

    .line 288
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    invoke-virtual {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 289
    .local v1, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 293
    .local v0, adapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    invoke-virtual {v0, v6}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 296
    new-instance v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$2;

    invoke-direct {v4, p0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$2;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;)V

    invoke-static {v4}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 307
    .end local v0           #adapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    .end local v1           #c:Landroid/database/Cursor;
    :cond_1
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_2

    .line 308
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 310
    :cond_2
    invoke-virtual {p0, v6}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 311
    iput-object v6, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 312
    invoke-virtual {p0, v6}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 314
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onDestroy()V

    .line 315
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
    .line 555
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->onCreateContextMusicMenu(Landroid/view/View;)V

    .line 556
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 26
    .parameter "item"

    .prologue
    .line 443
    const-string v5, "ArtistAlbumBrowser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMenuItemSelected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MusicMenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 530
    const-string v5, "ArtistAlbumBrowser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMusicMenuItemSelected: unexpected item id for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :goto_0
    const/4 v5, 0x1

    :goto_1
    return v5

    .line 446
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->doExternalSearch()V

    goto :goto_0

    .line 450
    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getSongListForSelection()Lcom/google/android/music/medialist/SongList;

    move-result-object v20

    .line 451
    .local v20, list:Lcom/google/android/music/medialist/SongList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v20

    move v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/medialist/SongList;IZ)V

    .line 452
    const/4 v5, 0x1

    goto :goto_1

    .line 456
    .end local v20           #list:Lcom/google/android/music/medialist/SongList;
    :sswitch_2
    const/16 v5, 0x64

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->showDialog(I)V

    .line 457
    const/4 v5, 0x1

    goto :goto_1

    .line 461
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MusicMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "playlist"

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v23

    .line 462
    .local v23, playlistId:J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MusicMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "playlist_name"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 463
    .local v25, playlistName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->addCurrentSelectionToPlaylist(JLjava/lang/String;)V

    .line 464
    const/4 v5, 0x1

    goto :goto_1

    .line 468
    .end local v23           #playlistId:J
    .end local v25           #playlistName:Ljava/lang/String;
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MusicMenuItem;->getMenuInfo()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 471
    .local v22, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    move-object v5, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    move-wide v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->findViewHolder(Landroid/view/View;J)Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    move-result-object v17

    .line 473
    .local v17, holder:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    if-nez v17, :cond_0

    .line 474
    const/4 v5, 0x0

    goto :goto_1

    .line 480
    :cond_0
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->getAlbumId()J

    move-result-wide v13

    .line 481
    .local v13, albumId:J
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->getArtistId()J

    move-result-wide v15

    .line 482
    .local v15, artistId:J
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->isAlbum()Z

    move-result v18

    .line 485
    .local v18, isAlbum:Z
    new-instance v21, Lcom/google/android/music/OfflineMusicManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-object v5, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/OfflineMusicManager;-><init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    .line 486
    .local v21, manager:Lcom/google/android/music/OfflineMusicManager;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MusicMenuItem;->getChecked()Z

    move-result v19

    .line 487
    .local v19, keep:Z
    if-eqz v19, :cond_1

    .line 488
    new-instance v5, Lcom/google/android/music/SpaceWarningListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/android/music/SpaceWarningListener;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/music/OfflineMusicManager;->addAvailableSpaceChangeListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 491
    :cond_1
    if-eqz v19, :cond_3

    .line 492
    if-eqz v18, :cond_2

    .line 493
    move-object/from16 v0, v21

    move-wide v1, v13

    move-wide v3, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(JJ)V

    .line 504
    :goto_2
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/OfflineMusicManager;->commitChanges()V

    .line 505
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 495
    :cond_2
    move-object/from16 v0, v21

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/OfflineMusicManager;->selectArtist(J)V

    goto :goto_2

    .line 498
    :cond_3
    if-eqz v18, :cond_4

    .line 499
    move-object/from16 v0, v21

    move-wide v1, v13

    move-wide v3, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->deselectAlbum(JJ)V

    goto :goto_2

    .line 501
    :cond_4
    move-object/from16 v0, v21

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/OfflineMusicManager;->deselectArtist(J)V

    goto :goto_2

    .line 509
    .end local v13           #albumId:J
    .end local v15           #artistId:J
    .end local v17           #holder:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    .end local v18           #isAlbum:Z
    .end local v19           #keep:Z
    .end local v21           #manager:Lcom/google/android/music/OfflineMusicManager;
    .end local v22           #mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/google/android/music/MusicUtils;->shopFor(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 513
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MusicMenuItem;->getMenuInfo()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 514
    .restart local v22       #mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    move-object v5, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    move-wide v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->findViewHolder(Landroid/view/View;J)Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    move-result-object v17

    .line 516
    .restart local v17       #holder:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    if-nez v17, :cond_5

    .line 517
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 519
    :cond_5
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->isAlbum()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 520
    sget-object v6, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->ALBUM_BY_ARTIST:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    move-wide v7, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    move-wide v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumHasRemote:Z

    move v12, v0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v12}, Lcom/google/android/music/DeleteConfirmationActivity;->confirmDelete(Landroid/content/Context;Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;JJLjava/lang/CharSequence;Z)V

    .line 527
    :goto_3
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 524
    :cond_6
    sget-object v6, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->ARTIST:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    move-wide v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistHasRemote:Z

    move v10, v0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Lcom/google/android/music/DeleteConfirmationActivity;->confirmDelete(Landroid/content/Context;Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;JLjava/lang/CharSequence;Z)V

    goto :goto_3

    .line 444
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x5 -> :sswitch_2
        0x6 -> :sswitch_1
        0xf -> :sswitch_4
        0x1c -> :sswitch_6
        0x12c -> :sswitch_0
        0x258 -> :sswitch_5
    .end sparse-switch
.end method

.method public onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 430
    invoke-virtual {p0, p1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 340
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 341
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onPause()V

    .line 342
    return-void
.end method

.method public onPlaylistCreated(JLjava/lang/String;)V
    .locals 0
    .parameter "playlistId"
    .parameter "playlistName"

    .prologue
    .line 807
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->addCurrentSelectionToPlaylist(JLjava/lang/String;)V

    .line 808
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 319
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onResume()V

    .line 320
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 321
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->invalidateViews()V

    .line 326
    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 327
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 253
    const-string v0, "autoscrollAlbumId"

    iget-wide v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 254
    const-string v0, "autoscrollAlbumName"

    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v0, "autoscrollArtistId"

    iget-wide v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 256
    const-string v0, "autoscrollArtistName"

    iget-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mCurrentArtistName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 258
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1408
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1411
    new-instance v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$6;

    invoke-direct {v0, p0, p2}, Lcom/google/android/music/ArtistAlbumBrowserActivity$6;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;I)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 1423
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1399
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 1402
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->finish()V

    .line 1403
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->notifyDataSetChanged(Z)V

    .line 268
    :cond_0
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onStop()V

    .line 269
    return-void
.end method

.method public prepareOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 438
    const/16 v1, 0x14

    invoke-virtual {p1, v1}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 439
    .local v0, item:Lcom/google/android/music/menu/MusicMenuItem;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 440
    :cond_0
    return-void
.end method
