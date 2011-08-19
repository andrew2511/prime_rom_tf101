.class public Lcom/google/android/music/GenreAlbumBrowserActivity;
.super Landroid/app/ExpandableListActivity;
.source "GenreAlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/music/menu/MusicMenu$Callback;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/google/android/music/CreatePlaylist$Callback;
.implements Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
.implements Lcom/google/android/music/TopBar$MenuCustomizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/GenreAlbumBrowserActivity$AlbumQuery;,
        Lcom/google/android/music/GenreAlbumBrowserActivity$GenreQuery;,
        Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;,
        Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;,
        Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumContentObserver;
    }
.end annotation


# static fields
.field private static final ALL_SONGS_ITEM:I = -0x1

.field public static final EXTRA_AUTOSCROLL_TO_ALBUM_ID:Ljava/lang/String; = "autoscrollAlbumId"

.field private static final EXTRA_AUTOSCROLL_TO_ALBUM_NAME:Ljava/lang/String; = "autoscrollAlbumName"

.field public static final EXTRA_AUTOSCROLL_TO_GENRE_ID:Ljava/lang/String; = "autoscrollGenreId"

.field private static final EXTRA_AUTOSCROLL_TO_GENRE_NAME:Ljava/lang/String; = "autoscrollGenreName"

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "GenreAlbumBrowser"

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

.field private mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mAppState:Lcom/google/android/music/activitymanagement/AppState;

.field private mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

.field private mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

.field private mCurrentAlbumId:J

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field private mCurrentGenreId:J

.field private mCurrentGenreName:Ljava/lang/String;

.field private mGenreCursor:Landroid/database/Cursor;

.field mIsUnknownAlbum:Z

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

    .line 83
    const-string v0, "GenreAlbumBrowser"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->LOGV:Z

    .line 97
    sput v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosCourse:I

    .line 98
    sput v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosFine:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 203
    new-instance v0, Lcom/google/android/music/GenreAlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$1;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    .line 308
    new-instance v0, Lcom/google/android/music/GenreAlbumBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$3;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 1305
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/GenreAlbumBrowserActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/GenreAlbumBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/NoContentListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/GenreAlbumBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getGenreCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/RepresentativeAlbumChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    return-object v0
.end method

.method private addCurrentSelectionToPlaylist(JLjava/lang/String;)V
    .locals 6
    .parameter "playlistId"
    .parameter "playlistName"

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getSongListForSelection()Lcom/google/android/music/medialist/SongList;

    move-result-object v2

    .line 693
    .local v2, songList:Lcom/google/android/music/medialist/SongList;
    new-instance v0, Lcom/google/android/music/GenreAlbumBrowserActivity$5;

    move-object v1, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/GenreAlbumBrowserActivity$5;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;Lcom/google/android/music/medialist/SongList;JLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 705
    return-void
.end method

.method private doExternalSearch()V
    .locals 6

    .prologue
    .line 624
    sget-boolean v2, Lcom/google/android/music/GenreAlbumBrowserActivity;->LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "GenreAlbumBrowser"

    const-string v3, "doExternalSearch()..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isPreGingerbread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 627
    const-string v2, "GenreAlbumBrowser"

    const-string v3, "Do external search does not work pre-GB"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    :goto_0
    return-void

    .line 631
    :cond_1
    const/4 v1, 0x0

    .line 633
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    .local v0, i:Landroid/content/Intent;
    sget-boolean v2, Lcom/google/android/music/GenreAlbumBrowserActivity;->LOGV:Z

    if-eqz v2, :cond_2

    .line 642
    const-string v2, "GenreAlbumBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - mCurrentGenreId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v2, "GenreAlbumBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - mCurrentGenreName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v2, "GenreAlbumBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - mIsUnknownAlbum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mIsUnknownAlbum:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const-string v2, "GenreAlbumBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - mCurrentArtistNameForAlbum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const-string v2, "GenreAlbumBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - mCurrentAlbumName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_2
    iget-wide v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    .line 650
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    .line 652
    const-string v2, "android.intent.extra.album"

    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    const-string v2, "android.intent.extra.focus"

    const-string v3, "vnd.android.cursor.item/genre"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 664
    :goto_1
    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    sget-boolean v2, Lcom/google/android/music/GenreAlbumBrowserActivity;->LOGV:Z

    if-eqz v2, :cond_3

    .line 667
    const-string v2, "GenreAlbumBrowser"

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

    .line 668
    const-string v2, "GenreAlbumBrowser"

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

    .line 669
    const-string v2, "GenreAlbumBrowser"

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

    .line 671
    :cond_3
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v2, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->superStartActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 655
    :cond_4
    iget-boolean v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v2, :cond_5

    .line 656
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 660
    :goto_2
    const-string v2, "android.intent.extra.artist"

    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    const-string v2, "android.intent.extra.album"

    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    const-string v2, "android.intent.extra.focus"

    const-string v3, "vnd.android.cursor.item/album"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 658
    :cond_5
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    goto :goto_2
.end method

.method private findViewHolder(Landroid/view/View;J)Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    .locals 10
    .parameter "childView"
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    .line 1331
    const/4 v2, 0x0

    .line 1332
    .local v2, holder:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    move-object v4, p1

    .line 1334
    .local v4, view:Landroid/view/View;
    :goto_0
    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    .line 1335
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1336
    .local v3, tag:Ljava/lang/Object;
    instance-of v5, v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    if-eqz v5, :cond_0

    .line 1337
    move-object v0, v3

    check-cast v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    move-object v2, v0

    goto :goto_0

    .line 1339
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .end local v4           #view:Landroid/view/View;
    check-cast v4, Landroid/view/View;

    .restart local v4       #view:Landroid/view/View;
    goto :goto_0

    .line 1343
    .end local v3           #tag:Ljava/lang/Object;
    :cond_1
    if-nez v2, :cond_2

    .line 1344
    const-string v5, "GenreAlbumBrowser"

    const-string v6, "No holder found"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v9

    .line 1359
    :goto_1
    return-object v5

    .line 1348
    :cond_2
    iget-object v1, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    .line 1350
    .local v1, checkBox:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;
    invoke-virtual {v1}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->isAlbum()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v5}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->getAlbumId()J

    move-result-wide v5

    cmp-long v5, v5, p2

    if-eqz v5, :cond_3

    .line 1351
    const-string v5, "GenreAlbumBrowser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong album id: Got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v7}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->getAlbumId()J

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

    .line 1353
    goto :goto_1

    .line 1354
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->isAlbum()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v5}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->getGenreId()J

    move-result-wide v5

    cmp-long v5, v5, p2

    if-eqz v5, :cond_4

    .line 1355
    const-string v5, "GenreAlbumBrowser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong genre id: Got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v7}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->getGenreId()J

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

    .line 1357
    goto :goto_1

    :cond_4
    move-object v5, v2

    .line 1359
    goto :goto_1
.end method

.method private getGenreCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "filter"

    .prologue
    const/4 v4, 0x0

    .line 727
    if-eqz p1, :cond_0

    .line 728
    const-string v1, "GenreAlbumBrowser"

    const-string v2, "Filtering is not supported"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 731
    :cond_0
    new-instance v0, Lcom/google/android/music/AsyncCursor;

    invoke-static {v4}, Lcom/google/android/music/store/MusicContent$Genres;->getGenreUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreQuery;->COLUMNS:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/AsyncCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    .local v0, ret:Landroid/database/Cursor;
    return-object v0
.end method

.method private getSongListForSelection()Lcom/google/android/music/medialist/SongList;
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, list:Lcom/google/android/music/medialist/SongList;
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getGenreSongsSortOrder()I

    move-result v1

    .line 677
    .local v1, sortOrder:I
    iget-wide v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 678
    iget-wide v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 679
    new-instance v0, Lcom/google/android/music/medialist/GenreSongList;

    .end local v0           #list:Lcom/google/android/music/medialist/SongList;
    iget-wide v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/music/medialist/GenreSongList;-><init>(JLjava/lang/String;I)V

    .line 688
    .restart local v0       #list:Lcom/google/android/music/medialist/SongList;
    :cond_0
    :goto_0
    return-object v0

    .line 682
    :cond_1
    new-instance v0, Lcom/google/android/music/medialist/AlbumSongList;

    .end local v0           #list:Lcom/google/android/music/medialist/SongList;
    iget-wide v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    .restart local v0       #list:Lcom/google/android/music/medialist/SongList;
    goto :goto_0

    .line 684
    :cond_2
    iget-wide v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 685
    new-instance v0, Lcom/google/android/music/medialist/GenreSongList;

    .end local v0           #list:Lcom/google/android/music/medialist/SongList;
    iget-wide v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/android/music/medialist/GenreSongList;-><init>(JLjava/lang/String;I)V

    .restart local v0       #list:Lcom/google/android/music/medialist/SongList;
    goto :goto_0
.end method

.method private setTitle()V
    .locals 1

    .prologue
    .line 374
    const v0, 0x7f0c0055

    invoke-virtual {p0, v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->setTitle(I)V

    .line 375
    return-void
.end method


# virtual methods
.method public closeContextMusicMenu()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicPopupMenu;->close()V

    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    .line 609
    :cond_0
    return-void
.end method

.method public createOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 411
    return-void
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 325
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    if-nez v1, :cond_1

    .line 326
    if-eqz p1, :cond_0

    .line 327
    const-string v1, "GenreAlbumBrowser"

    const-string v2, "null adapter, non-null cursor"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 333
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 335
    :cond_2
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 336
    if-eqz p1, :cond_3

    .line 337
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 340
    :cond_3
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    if-nez v1, :cond_4

    .line 341
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->closeContextMenu()V

    goto :goto_0

    .line 346
    :cond_4
    sget v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosCourse:I

    if-ltz v1, :cond_5

    .line 347
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    .line 348
    .local v0, elv:Landroid/widget/ExpandableListView;
    sget v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosCourse:I

    sget v2, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ExpandableListView;->setSelectionFromTop(II)V

    .line 349
    const/4 v1, -0x1

    sput v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosCourse:I

    .line 352
    .end local v0           #elv:Landroid/widget/ExpandableListView;
    :cond_5
    invoke-direct {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 709
    packed-switch p1, :pswitch_data_0

    .line 719
    :goto_0
    return-void

    .line 711
    :pswitch_0
    if-nez p2, :cond_0

    .line 712
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->finish()V

    goto :goto_0

    .line 714
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getGenreCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 715
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public onAlbumChanged()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->notifyDataSetChanged()V

    .line 616
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
    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    .line 379
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v3}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->notifyDataSetChanged()V

    .line 380
    iput-wide p5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 382
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v3

    invoke-interface {v3, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 383
    .local v1, c:Landroid/database/Cursor;
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, album:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    cmp-long v3, p5, v4

    if-gez v3, :cond_1

    .line 389
    :cond_0
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    invoke-interface {v3, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 390
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    .line 391
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    .line 392
    new-instance v2, Lcom/google/android/music/medialist/GenreSongList;

    iget-wide v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v6}, Lcom/google/android/music/jumper/MusicPreferences;->getGenreSongsSortOrder()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/music/medialist/GenreSongList;-><init>(JLjava/lang/String;I)V

    .line 401
    .local v2, mediaList:Lcom/google/android/music/medialist/MediaList;
    :goto_0
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v3, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    move v3, v7

    .line 402
    .end local v2           #mediaList:Lcom/google/android/music/medialist/MediaList;
    :goto_1
    return v3

    .line 394
    :cond_1
    cmp-long v3, p5, v4

    if-ltz v3, :cond_2

    .line 395
    new-instance v2, Lcom/google/android/music/medialist/AlbumSongList;

    invoke-direct {v2, p5, p6}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    .restart local v2       #mediaList:Lcom/google/android/music/medialist/MediaList;
    goto :goto_0

    .line 397
    .end local v2           #mediaList:Lcom/google/android/music/medialist/MediaList;
    :cond_2
    const-string v3, "GenreAlbumBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Album ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") was not unknown but id ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") was < 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v7

    .line 399
    goto :goto_1
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 738
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onContentChanged()V

    .line 739
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 740
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 741
    .local v0, count:I
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    if-eqz v1, :cond_0

    .line 742
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    if-lez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1, v2}, Lcom/google/android/music/NoContentListener;->setMusicFound(Z)V

    .line 745
    .end local v0           #count:I
    :cond_0
    return-void

    .line 742
    .restart local v0       #count:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "icicle"

    .prologue
    .line 117
    invoke-super/range {p0 .. p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    const-string v4, "GenreAlbumBrowser"

    const-string v5, "GenreAlbumBrowserActivity called on XLarge screen"

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/TabbedLists;->isInTab(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 125
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getMusicActivityManager(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 126
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/google/android/music/TabbedLists;->addMenuCustomizer(Landroid/app/Activity;Lcom/google/android/music/TopBar$MenuCustomizer;)V

    .line 139
    :cond_1
    :goto_0
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 140
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 141
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->setVolumeControlStream(I)V

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 144
    .local v17, launchIntent:Landroid/content/Intent;
    sget-boolean v4, Lcom/google/android/music/GenreAlbumBrowserActivity;->LOGV:Z

    if-eqz v4, :cond_2

    const-string v4, "GenreAlbumBrowser"

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

    .line 145
    :cond_2
    sget-boolean v4, Lcom/google/android/music/GenreAlbumBrowserActivity;->LOGV:Z

    if-eqz v4, :cond_3

    const-string v4, "GenreAlbumBrowser"

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

    .line 147
    :cond_3
    if-eqz p1, :cond_6

    .line 148
    const-string v4, "autoscrollGenreId"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    .line 149
    const-string v4, "autoscrollGenreName"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    .line 150
    const-string v4, "autoscrollAlbumId"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 151
    const-string v4, "autoscrollAlbumName"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 152
    sget-boolean v4, Lcom/google/android/music/GenreAlbumBrowserActivity;->LOGV:Z

    if-eqz v4, :cond_4

    const-string v4, "GenreAlbumBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored Genre / album from icicle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 167
    const v4, 0x7f04001a

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->setContentView(I)V

    .line 168
    const v4, 0x7f0f0054

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mListContainer:Landroid/view/View;

    .line 170
    new-instance v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumContentObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumContentObserver;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/os/Handler;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mObserver:Landroid/database/ContentObserver;

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v18

    .line 172
    .local v18, lv:Landroid/widget/ExpandableListView;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/ExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 173
    const/4 v4, 0x0

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setTextFilterEnabled(Z)V

    .line 174
    const/4 v4, 0x0

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setCacheColorHint(I)V

    .line 175
    invoke-virtual/range {v18 .. v19}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 177
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/TabbedLists;->isInTab(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 178
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/TabbedLists;->getRepresentativeAlbumChangeListener(Landroid/app/Activity;)Lcom/google/android/music/RepresentativeAlbumChangeListener;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    .line 180
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/TabbedLists;->getNoContentListener(Landroid/app/Activity;)Lcom/google/android/music/NoContentListener;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    .line 187
    :goto_2
    new-instance v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getApplication()Landroid/app/Application;

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

    invoke-direct/range {v4 .. v14}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/content/Context;Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 198
    const v4, 0x7f0c0090

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->setTitle(I)V

    .line 199
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getGenreCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 200
    .local v16, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 201
    return-void

    .line 128
    .end local v16           #c:Landroid/database/Cursor;
    .end local v17           #launchIntent:Landroid/content/Intent;
    .end local v18           #lv:Landroid/widget/ExpandableListView;
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/AppState;->getActivityManager()Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v15

    .line 131
    .local v15, actionBarController:Lcom/google/android/music/TopBar$ActionBarController;
    invoke-virtual {v15}, Lcom/google/android/music/TopBar$ActionBarController;->showTopBar()V

    .line 132
    move-object v0, v15

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/music/TopBar$ActionBarController;->setMenuCustomizer(Lcom/google/android/music/TopBar$MenuCustomizer;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isTopLevel(Lcom/google/android/music/activitymanagement/AppState;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 134
    invoke-virtual {v15}, Lcom/google/android/music/TopBar$ActionBarController;->showDisplayModes()V

    .line 135
    invoke-virtual {v15}, Lcom/google/android/music/TopBar$ActionBarController;->hideTitle()V

    goto/16 :goto_0

    .line 156
    .end local v15           #actionBarController:Lcom/google/android/music/TopBar$ActionBarController;
    .restart local v17       #launchIntent:Landroid/content/Intent;
    :cond_6
    const-string v4, "autoscrollGenreId"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v17

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    .line 157
    const-string v4, "autoscrollAlbumName"

    const-wide/16 v5, -0x1

    move-object/from16 v0, v17

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 158
    sget-boolean v4, Lcom/google/android/music/GenreAlbumBrowserActivity;->LOGV:Z

    if-eqz v4, :cond_4

    const-string v4, "GenreAlbumBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got Genre / album from launchIntent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 183
    .restart local v18       #lv:Landroid/widget/ExpandableListView;
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    .line 184
    invoke-static/range {p0 .. p0}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    goto/16 :goto_2
.end method

.method public onCreateContextMusicMenu(Landroid/view/View;)V
    .locals 25
    .parameter "view"

    .prologue
    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v14

    .line 510
    .local v14, lv:Landroid/widget/ExpandableListView;
    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->getPositionForView(Landroid/view/View;)I

    move-result v9

    .line 511
    .local v9, flatListPosition:I
    invoke-virtual {v14, v9}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v16

    .line 512
    .local v16, packedPosition:J
    invoke-static/range {v16 .. v17}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v12

    .line 513
    .local v12, itemtype:I
    invoke-static/range {v16 .. v17}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v10

    .line 514
    .local v10, gpos:I
    invoke-static/range {v16 .. v17}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v8

    .line 516
    .local v8, cpos:I
    new-instance v21, Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-virtual {v14}, Landroid/widget/ExpandableListView;->getRootView()Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/menu/MusicPopupMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    .line 517
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object v13, v0

    .line 518
    .local v13, location:[I
    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 519
    const/16 v21, 0x0

    aget v19, v13, v21

    .line 520
    .local v19, x:I
    const/16 v21, 0x1

    aget v21, v13, v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v20, v21, v22

    .line 521
    .local v20, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/menu/MusicPopupMenu;->setLocation(III)V

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v21

    sub-int v10, v10, v21

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v21, v0

    const/16 v22, 0x6

    const/16 v23, 0x0

    const v24, 0x7f0c0070

    invoke-virtual/range {v21 .. v24}, Lcom/google/android/music/menu/MusicPopupMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v18

    .line 531
    .local v18, playMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 532
    const v21, 0x7f020151

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 536
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v22

    if-eqz v22, :cond_1

    const v22, 0x7f02013c

    :goto_0
    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lcom/google/android/music/MusicUtils;->populateAddToPlaylistMenu(Lcom/google/android/music/menu/MusicMenu;II)V

    .line 540
    if-nez v12, :cond_4

    .line 541
    const/16 v21, -0x1

    move v0, v10

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 543
    const-string v21, "GenreAlbumBrowser"

    const-string v22, "no group"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :goto_1
    return-void

    .line 536
    :cond_1
    const/16 v22, 0x0

    goto :goto_0

    .line 547
    :cond_2
    const-wide/16 v21, -0x1

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 548
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mIsUnknownAlbum:Z

    .line 550
    new-instance v11, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    move-wide/from16 v21, v0

    move-object v0, v11

    move-object/from16 v1, p1

    move v2, v9

    move-wide/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 552
    .local v11, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicPopupMenu;->setMenuInfo(Ljava/lang/Object;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/menu/MusicPopupMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/google/android/music/BrowserActivityUtils;->addSearchMenu(Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/menu/MusicListMenu;)V

    .line 601
    .end local v11           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/menu/MusicPopupMenu;->show()V

    goto :goto_1

    .line 558
    :cond_4
    const/16 v21, 0x1

    move v0, v12

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 559
    const/16 v21, -0x1

    move v0, v8

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 561
    const-string v21, "GenreAlbumBrowser"

    const-string v22, "no child"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 564
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v21

    move-object/from16 v0, v21

    move v1, v10

    move v2, v8

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/Cursor;

    .line 565
    .local v7, c:Landroid/database/Cursor;
    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 568
    const/16 v21, 0x0

    move-object v0, v7

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 569
    .local v5, albumId:J
    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    .line 570
    const/16 v21, 0x1

    move-object v0, v7

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v21

    sub-int v10, v10, v21

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/GenreAlbumBrowserActivity;->mIsUnknownAlbum:Z

    .line 575
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mIsUnknownAlbum:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v21, v0

    const v22, 0x7f0c0069

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/menu/MusicPopupMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 580
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mIsUnknownAlbum:Z

    move/from16 v21, v0

    if-nez v21, :cond_7

    .line 581
    const-wide/16 v21, -0x1

    cmp-long v21, v5, v21

    if-eqz v21, :cond_6

    .line 583
    new-instance v11, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v0, v11

    move-object/from16 v1, p1

    move v2, v9

    move-wide v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 585
    .restart local v11       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicPopupMenu;->setMenuInfo(Ljava/lang/Object;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object v1, v7

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/music/BrowserActivityUtils;->addKeepOnMenu(Lcom/google/android/music/jumper/MusicPreferences;Landroid/database/Cursor;Lcom/google/android/music/menu/MusicListMenu;)V

    .line 592
    .end local v11           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/google/android/music/BrowserActivityUtils;->addSearchMenu(Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/menu/MusicListMenu;)V

    .line 596
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v21, v0

    const/16 v22, 0x258

    const/16 v23, 0x4

    const v24, 0x7f0c0017

    invoke-virtual/range {v21 .. v24}, Lcom/google/android/music/menu/MusicPopupMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v15

    .line 597
    .local v15, menuItem:Lcom/google/android/music/menu/MusicMenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 598
    const v21, 0x7f020159

    move-object v0, v15

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    goto/16 :goto_2

    .line 578
    .end local v15           #menuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/google/android/music/menu/MusicPopupMenu;->setHeader(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, dialog:Landroid/app/AlertDialog;
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 489
    new-instance v0, Lcom/google/android/music/CreatePlaylist;

    .end local v0           #dialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/music/CreatePlaylist;-><init>(Landroid/content/Context;ZLcom/google/android/music/CreatePlaylist$Callback;)V

    .line 490
    .restart local v0       #dialog:Landroid/app/AlertDialog;
    new-instance v1, Lcom/google/android/music/GenreAlbumBrowserActivity$4;

    invoke-direct {v1, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$4;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 500
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 252
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v3

    .line 253
    .local v3, lv:Landroid/widget/ExpandableListView;
    if-eqz v3, :cond_0

    .line 254
    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v4

    sput v4, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosCourse:I

    .line 255
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 256
    .local v2, cv:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 257
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    sput v4, Lcom/google/android/music/GenreAlbumBrowserActivity;->mLastListPosFine:I

    .line 261
    .end local v2           #cv:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v4}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 266
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    if-eqz v4, :cond_1

    .line 267
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    invoke-virtual {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 268
    .local v1, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    .line 272
    .local v0, adapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;
    invoke-virtual {v0, v6}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 275
    new-instance v4, Lcom/google/android/music/GenreAlbumBrowserActivity$2;

    invoke-direct {v4, p0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity$2;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/database/Cursor;)V

    invoke-static {v4}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 286
    .end local v0           #adapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;
    .end local v1           #c:Landroid/database/Cursor;
    :cond_1
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_2

    .line 287
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;

    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 289
    :cond_2
    invoke-virtual {p0, v6}, Lcom/google/android/music/GenreAlbumBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 290
    iput-object v6, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    .line 291
    invoke-virtual {p0, v6}, Lcom/google/android/music/GenreAlbumBrowserActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 293
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onDestroy()V

    .line 294
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
    .line 504
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2}, Lcom/google/android/music/GenreAlbumBrowserActivity;->onCreateContextMusicMenu(Landroid/view/View;)V

    .line 505
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 21
    .parameter "item"

    .prologue
    .line 419
    const-string v17, "GenreAlbumBrowser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onMenuItemSelected: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MusicMenuItem;->getItemId()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    .line 479
    const-string v17, "GenreAlbumBrowser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onMusicMenuItemSelected: unexpected item id for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :goto_0
    const/16 v17, 0x1

    :goto_1
    return v17

    .line 422
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->doExternalSearch()V

    goto :goto_0

    .line 426
    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getSongListForSelection()Lcom/google/android/music/medialist/SongList;

    move-result-object v11

    .line 427
    .local v11, list:Lcom/google/android/music/medialist/SongList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object v1, v11

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/medialist/SongList;IZ)V

    .line 428
    const/16 v17, 0x1

    goto :goto_1

    .line 432
    .end local v11           #list:Lcom/google/android/music/medialist/SongList;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/google/android/music/MusicUtils;->shopFor(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :sswitch_3
    const/16 v17, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->showDialog(I)V

    .line 437
    const/16 v17, 0x1

    goto :goto_1

    .line 441
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MusicMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "playlist"

    const-wide/16 v19, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 442
    .local v14, playlistId:J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MusicMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v17

    const-string v18, "playlist_name"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 443
    .local v16, playlistName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide v1, v14

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/GenreAlbumBrowserActivity;->addCurrentSelectionToPlaylist(JLjava/lang/String;)V

    .line 444
    const/16 v17, 0x1

    goto :goto_1

    .line 448
    .end local v14           #playlistId:J
    .end local v16           #playlistName:Ljava/lang/String;
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MusicMenuItem;->getMenuInfo()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 451
    .local v13, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    move-object v0, v13

    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object v0, v13

    iget-wide v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/GenreAlbumBrowserActivity;->findViewHolder(Landroid/view/View;J)Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    move-result-object v8

    .line 453
    .local v8, holder:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    if-nez v8, :cond_0

    .line 454
    const/16 v17, 0x0

    goto :goto_1

    .line 460
    :cond_0
    move-object v0, v8

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->getAlbumId()J

    move-result-wide v4

    .line 461
    .local v4, albumId:J
    move-object v0, v8

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->getGenreId()J

    move-result-wide v6

    .line 462
    .local v6, genreId:J
    move-object v0, v8

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->isAlbum()Z

    move-result v9

    .line 465
    .local v9, isAlbum:Z
    new-instance v12, Lcom/google/android/music/OfflineMusicManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-object/from16 v17, v0

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/OfflineMusicManager;-><init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    .line 466
    .local v12, manager:Lcom/google/android/music/OfflineMusicManager;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MusicMenuItem;->getChecked()Z

    move-result v10

    .line 468
    .local v10, keep:Z
    if-eqz v9, :cond_1

    .line 469
    if-eqz v10, :cond_2

    .line 470
    invoke-virtual {v12, v4, v5, v6, v7}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(JJ)V

    .line 475
    :cond_1
    :goto_2
    invoke-virtual {v12}, Lcom/google/android/music/OfflineMusicManager;->commitChanges()V

    .line 476
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 472
    :cond_2
    invoke-virtual {v12, v4, v5, v6, v7}, Lcom/google/android/music/OfflineMusicManager;->deselectAlbum(JJ)V

    goto :goto_2

    .line 420
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x5 -> :sswitch_3
        0x6 -> :sswitch_1
        0xf -> :sswitch_5
        0x12c -> :sswitch_0
        0x258 -> :sswitch_2
    .end sparse-switch
.end method

.method public onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 406
    invoke-virtual {p0, p1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 319
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 320
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onPause()V

    .line 321
    return-void
.end method

.method public onPlaylistCreated(JLjava/lang/String;)V
    .locals 0
    .parameter "playlistId"
    .parameter "playlistName"

    .prologue
    .line 722
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/GenreAlbumBrowserActivity;->addCurrentSelectionToPlaylist(JLjava/lang/String;)V

    .line 723
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 298
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onResume()V

    .line 299
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 300
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 304
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->invalidateViews()V

    .line 305
    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 306
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 232
    const-string v0, "autoscrollAlbumId"

    iget-wide v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 233
    const-string v0, "autoscrollAlbumName"

    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "autoscrollGenreId"

    iget-wide v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 235
    const-string v0, "autoscrollGenreName"

    iget-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mCurrentGenreName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 237
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1272
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1275
    new-instance v0, Lcom/google/android/music/GenreAlbumBrowserActivity$6;

    invoke-direct {v0, p0, p2}, Lcom/google/android/music/GenreAlbumBrowserActivity$6;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;I)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 1287
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "name"
    .parameter "service"

    .prologue
    .line 1263
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 1266
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity;->finish()V

    .line 1267
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->notifyDataSetChanged(Z)V

    .line 247
    :cond_0
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onStop()V

    .line 248
    return-void
.end method

.method public prepareOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 414
    const/16 v1, 0x14

    invoke-virtual {p1, v1}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 415
    .local v0, item:Lcom/google/android/music/menu/MusicMenuItem;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 416
    :cond_0
    return-void
.end method
