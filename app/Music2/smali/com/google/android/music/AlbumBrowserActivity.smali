.class public Lcom/google/android/music/AlbumBrowserActivity;
.super Landroid/app/ListActivity;
.source "AlbumBrowserActivity.java"

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
        Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;,
        Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;
    }
.end annotation


# static fields
.field public static final EXTRA_ALBUM_ARTIST_ID:Ljava/lang/String; = "albumArtistId"

.field public static final EXTRA_SCROLL_TO_ALBUM_ID:Ljava/lang/String; = "selectedAlbumId"

.field public static final EXTRA_SCROLL_TO_ALBUM_NAME:Ljava/lang/String; = "selectedAlbumName"

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "AlbumBrowser"

.field private static final mCursorCols:[Ljava/lang/String;

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

.field private mAlbumCursor:Landroid/database/Cursor;

.field private mAlbumList:Landroid/widget/ListView;

.field private mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mAppState:Lcom/google/android/music/activitymanagement/AppState;

.field private mArtistId:J

.field private mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

.field private mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

.field private mCurrentAlbumId:J

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field private mHasRemote:Z

.field private mIsUnknownAlbum:Z

.field private mIsUnknownArtist:Z

.field private mListContainer:Landroid/view/View;

.field private mMediaList:Lcom/google/android/music/medialist/AlbumList;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNoContentListener:Lcom/google/android/music/NoContentListener;

.field private mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 77
    const-string v0, "AlbumBrowser"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/AlbumBrowserActivity;->LOGV:Z

    .line 90
    sput v1, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    .line 91
    sput v1, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosFine:I

    .line 101
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "KeepOnId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hasLocal"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hasRemote"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/AlbumBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 225
    new-instance v0, Lcom/google/android/music/AlbumBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/AlbumBrowserActivity$1;-><init>(Lcom/google/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    .line 326
    new-instance v0, Lcom/google/android/music/AlbumBrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/music/AlbumBrowserActivity$3;-><init>(Lcom/google/android/music/AlbumBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 692
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/medialist/AlbumList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/AppState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/music/AlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/NoContentListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/AlbumBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/music/AlbumBrowserActivity;->getAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private doExternalSearch()V
    .locals 5

    .prologue
    .line 446
    sget-boolean v2, Lcom/google/android/music/AlbumBrowserActivity;->LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "AlbumBrowser"

    const-string v3, "doExternalSearch()..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isPreGingerbread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    const-string v2, "AlbumBrowser"

    const-string v3, "Do external search does not work pre-GB"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_0
    return-void

    .line 453
    :cond_1
    const/4 v1, 0x0

    .line 455
    .local v1, query:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    .local v0, i:Landroid/content/Intent;
    sget-boolean v2, Lcom/google/android/music/AlbumBrowserActivity;->LOGV:Z

    if-eqz v2, :cond_2

    .line 464
    const-string v2, "AlbumBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - mIsUnknownAlbum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/music/AlbumBrowserActivity;->mIsUnknownAlbum:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string v2, "AlbumBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - mCurrentAlbumName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v2, "AlbumBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - mIsUnknownArtist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/music/AlbumBrowserActivity;->mIsUnknownArtist:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string v2, "AlbumBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  - mCurrentArtistNameForAlbum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-nez v2, :cond_3

    .line 471
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 472
    const-string v2, "android.intent.extra.album"

    iget-object v3, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const-string v2, "android.intent.extra.focus"

    const-string v3, "vnd.android.cursor.item/album"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mIsUnknownArtist:Z

    if-nez v2, :cond_4

    .line 477
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 478
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 482
    :goto_1
    const-string v2, "android.intent.extra.artist"

    iget-object v3, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    iget-boolean v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v2, :cond_4

    .line 484
    const-string v2, "android.intent.extra.focus"

    const-string v3, "vnd.android.cursor.item/artist"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    :cond_4
    const-string v2, "query"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    sget-boolean v2, Lcom/google/android/music/AlbumBrowserActivity;->LOGV:Z

    if-eqz v2, :cond_5

    .line 491
    const-string v2, "AlbumBrowser"

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

    .line 492
    const-string v2, "AlbumBrowser"

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

    .line 493
    const-string v2, "AlbumBrowser"

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

    .line 495
    :cond_5
    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v2, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->superStartActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 480
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method private findViewHolder(Landroid/view/View;J)Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    .locals 9
    .parameter "childView"
    .parameter "albumId"

    .prologue
    const/4 v8, 0x0

    .line 992
    const/4 v1, 0x0

    .line 993
    .local v1, holder:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    move-object v3, p1

    .line 995
    .local v3, view:Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 996
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 997
    .local v2, tag:Ljava/lang/Object;
    instance-of v4, v2, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    if-eqz v4, :cond_0

    .line 998
    move-object v0, v2

    check-cast v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    .line 1000
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .end local v3           #view:Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .restart local v3       #view:Landroid/view/View;
    goto :goto_0

    .line 1004
    .end local v2           #tag:Ljava/lang/Object;
    :cond_1
    if-nez v1, :cond_2

    .line 1005
    const-string v4, "AlbumBrowser"

    const-string v5, "No holder found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 1012
    :goto_1
    return-object v4

    .line 1007
    :cond_2
    iget-object v4, v1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v4}, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->getAlbumId()J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-eqz v4, :cond_3

    .line 1008
    const-string v4, "AlbumBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong album id: Got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v6}, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->getAlbumId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from the view but expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v8

    .line 1010
    goto :goto_1

    :cond_3
    move-object v4, v1

    .line 1012
    goto :goto_1
.end method

.method private getAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "filter"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    sget-object v1, Lcom/google/android/music/AlbumBrowserActivity;->mCursorCols:[Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/android/music/medialist/AlbumList;->getCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v0

    return-object v0
.end method

.method private setTitle()V
    .locals 2

    .prologue
    .line 253
    move-object v0, p0

    .line 255
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/google/android/music/AlbumBrowserActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/music/AlbumBrowserActivity$2;-><init>(Lcom/google/android/music/AlbumBrowserActivity;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 273
    return-void
.end method


# virtual methods
.method public closeContextMusicMenu()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicPopupMenu;->close()V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    .line 438
    :cond_0
    return-void
.end method

.method public createOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 542
    return-void
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-nez v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 348
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->closeContextMusicMenu()V

    goto :goto_0

    .line 354
    :cond_1
    sget v0, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    if-ltz v0, :cond_2

    .line 355
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    sget v2, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 356
    const/4 v0, -0x1

    sput v0, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    .line 359
    :cond_2
    invoke-direct {p0}, Lcom/google/android/music/AlbumBrowserActivity;->setTitle()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 500
    packed-switch p1, :pswitch_data_0

    .line 510
    :goto_0
    return-void

    .line 502
    :pswitch_0
    if-nez p2, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->finish()V

    goto :goto_0

    .line 505
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/music/AlbumBrowserActivity;->getAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 506
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0

    .line 500
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public onAlbumChanged()V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->notifyDataSetChanged()V

    .line 650
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x3

    const/4 v6, 0x1

    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    .line 123
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 124
    .local v10, intent:Landroid/content/Intent;
    sget-boolean v0, Lcom/google/android/music/AlbumBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "AlbumBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    sget-boolean v0, Lcom/google/android/music/AlbumBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "AlbumBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_1
    if-eqz p1, :cond_5

    .line 128
    const-string v0, "selectedAlbumId"

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumId:J

    .line 129
    const-string v0, "albumArtistId"

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    .line 130
    sget-boolean v0, Lcom/google/android/music/AlbumBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_2

    const-string v0, "AlbumBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restored artist / album from icicle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 141
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 142
    invoke-virtual {p0, v6}, Lcom/google/android/music/AlbumBrowserActivity;->requestWindowFeature(I)Z

    .line 143
    invoke-virtual {p0, v12}, Lcom/google/android/music/AlbumBrowserActivity;->setVolumeControlStream(I)V

    .line 145
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 146
    const-string v0, "AlbumBrowser"

    const-string v1, "AlbumBrowserActivity called on XLarge screen"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_3
    invoke-static {p0}, Lcom/google/android/music/TabbedLists;->isInTab(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 150
    invoke-static {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getMusicActivityManager(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 151
    invoke-static {p0, p0}, Lcom/google/android/music/TabbedLists;->addMenuCustomizer(Landroid/app/Activity;Lcom/google/android/music/TopBar$MenuCustomizer;)V

    .line 173
    :goto_1
    if-eqz p1, :cond_9

    .line 174
    const-string v0, "medialist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/AlbumList;

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    .line 178
    :goto_2
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    if-nez v0, :cond_4

    .line 179
    iget-wide v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_a

    .line 180
    new-instance v0, Lcom/google/android/music/medialist/AllAlbumsList;

    invoke-direct {v0}, Lcom/google/android/music/medialist/AllAlbumsList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    .line 186
    :cond_4
    :goto_3
    invoke-static {p0, p0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 188
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_b

    move v11, v6

    .line 190
    .local v11, isSubView:Z
    :goto_4
    if-eqz v11, :cond_c

    .line 191
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->setContentView(I)V

    .line 196
    :goto_5
    const v0, 0x7f0f0054

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mListContainer:Landroid/view/View;

    .line 197
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    .line 198
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 201
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 203
    new-instance v0, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v4, 0x7f040013

    iget-object v5, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    new-array v6, v7, [Ljava/lang/String;

    new-array v7, v7, [I

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;-><init>(Lcom/google/android/music/AlbumBrowserActivity;Landroid/content/Context;Lcom/google/android/music/AlbumBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    .line 211
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 212
    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->setTitle(I)V

    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->getAlbumCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 214
    .local v9, c:Landroid/database/Cursor;
    invoke-virtual {p0, v9}, Lcom/google/android/music/AlbumBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 216
    invoke-static {p0}, Lcom/google/android/music/TabbedLists;->isInTab(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 217
    invoke-static {p0}, Lcom/google/android/music/TabbedLists;->getRepresentativeAlbumChangeListener(Landroid/app/Activity;)Lcom/google/android/music/RepresentativeAlbumChangeListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    .line 218
    invoke-static {p0}, Lcom/google/android/music/TabbedLists;->getNoContentListener(Landroid/app/Activity;)Lcom/google/android/music/NoContentListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    .line 223
    :goto_6
    return-void

    .line 133
    .end local v9           #c:Landroid/database/Cursor;
    .end local v11           #isSubView:Z
    :cond_5
    const-string v0, "albumArtistId"

    invoke-virtual {v10, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    .line 134
    const-string v0, "selectedAlbumId"

    invoke-virtual {v10, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumId:J

    .line 135
    sget-boolean v0, Lcom/google/android/music/AlbumBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_2

    const-string v0, "AlbumBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got artist / album from launch intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 153
    :cond_6
    invoke-static {p0}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 154
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/AppState;->getActivityManager()Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 155
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v8

    .line 156
    .local v8, actionBarController:Lcom/google/android/music/TopBar$ActionBarController;
    invoke-virtual {v8}, Lcom/google/android/music/TopBar$ActionBarController;->showTopBar()V

    .line 157
    invoke-virtual {v8, p0}, Lcom/google/android/music/TopBar$ActionBarController;->setMenuCustomizer(Lcom/google/android/music/TopBar$MenuCustomizer;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isTopLevel(Lcom/google/android/music/activitymanagement/AppState;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    invoke-virtual {v8}, Lcom/google/android/music/TopBar$ActionBarController;->showDisplayModes()V

    .line 160
    invoke-virtual {v8}, Lcom/google/android/music/TopBar$ActionBarController;->hideTitle()V

    .line 162
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v0, v12, :cond_8

    .line 167
    invoke-virtual {v8}, Lcom/google/android/music/TopBar$ActionBarController;->showToggleButton()V

    goto/16 :goto_1

    .line 169
    :cond_8
    invoke-virtual {v8}, Lcom/google/android/music/TopBar$ActionBarController;->hideToggleButton()V

    goto/16 :goto_1

    .line 176
    .end local v8           #actionBarController:Lcom/google/android/music/TopBar$ActionBarController;
    :cond_9
    const-string v0, "medialist"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/AlbumList;

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    goto/16 :goto_2

    .line 182
    :cond_a
    new-instance v0, Lcom/google/android/music/medialist/ArtistAlbumList;

    iget-wide v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/medialist/ArtistAlbumList;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/AlbumList;

    goto/16 :goto_3

    :cond_b
    move v11, v7

    .line 188
    goto/16 :goto_4

    .line 193
    .restart local v11       #isSubView:Z
    :cond_c
    const v0, 0x7f04002a

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->setContentView(I)V

    goto/16 :goto_5

    .line 220
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_d
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    .line 221
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    iput-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    goto/16 :goto_6
.end method

.method public onCreateContextMusicMenu(Landroid/view/View;I)V
    .locals 13
    .parameter "view"
    .parameter "position"

    .prologue
    .line 368
    new-instance v9, Lcom/google/android/music/menu/MusicPopupMenu;

    iget-object v10, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumList:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v10

    invoke-direct {v9, p0, p0, v10}, Lcom/google/android/music/menu/MusicPopupMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    iput-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    .line 369
    const/4 v9, 0x2

    new-array v4, v9, [I

    .line 370
    .local v4, location:[I
    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 371
    const/4 v9, 0x0

    aget v7, v4, v9

    .line 372
    .local v7, x:I
    const/4 v9, 0x1

    aget v9, v4, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int v8, v9, v10

    .line 373
    .local v8, y:I
    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    const/4 v10, 0x2

    invoke-virtual {v9, v7, v8, v10}, Lcom/google/android/music/menu/MusicPopupMenu;->setLocation(III)V

    .line 375
    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    invoke-interface {v9, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 378
    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    const/4 v10, 0x6

    const/4 v11, 0x0

    const v12, 0x7f0c0070

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/android/music/menu/MusicPopupMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v6

    .line 380
    .local v6, playMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v9}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 381
    const v9, 0x7f020151

    invoke-virtual {v6, v9}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 385
    :cond_0
    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    iget-object v10, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v10}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v10

    if-eqz v10, :cond_4

    const v10, 0x7f02013c

    :goto_0
    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lcom/google/android/music/MusicUtils;->populateAddToPlaylistMenu(Lcom/google/android/music/menu/MusicMenu;II)V

    .line 389
    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v11, "hasRemote"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mHasRemote:Z

    .line 391
    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v11, "hasLocal"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    const/4 v9, 0x1

    move v2, v9

    .line 395
    .local v2, hasLocal:Z
    :goto_2
    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    const/16 v10, 0x258

    const/4 v11, 0x4

    const v12, 0x7f0c0017

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/android/music/menu/MusicPopupMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v5

    .line 396
    .local v5, menuItem:Lcom/google/android/music/menu/MusicMenuItem;
    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v9}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 397
    const v9, 0x7f020159

    invoke-virtual {v5, v9}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 400
    :cond_1
    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v11, "_id"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 402
    .local v0, albumId:J
    iput-wide v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumId:J

    .line 403
    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v11, "album"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    .line 405
    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v10, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    const-string v11, "artist"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    .line 407
    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mIsUnknownArtist:Z

    .line 408
    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-static {v9}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mIsUnknownAlbum:Z

    .line 409
    iget-boolean v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v9, :cond_7

    .line 410
    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    const v10, 0x7f0c0069

    invoke-virtual {p0, v10}, Lcom/google/android/music/AlbumBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/music/menu/MusicPopupMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 414
    :goto_3
    iget-boolean v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mIsUnknownAlbum:Z

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mIsUnknownArtist:Z

    if-nez v9, :cond_3

    .line 416
    :cond_2
    new-instance v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v3, p1, p2, v0, v1}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 417
    .local v3, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-virtual {v9, v3}, Lcom/google/android/music/menu/MusicPopupMenu;->setMenuInfo(Ljava/lang/Object;)V

    .line 420
    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v10, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAlbumCursor:Landroid/database/Cursor;

    iget-object v11, p0, Lcom/google/android/music/AlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-static {v9, v10, v11}, Lcom/google/android/music/BrowserActivityUtils;->addKeepOnMenu(Lcom/google/android/music/jumper/MusicPreferences;Landroid/database/Cursor;Lcom/google/android/music/menu/MusicListMenu;)V

    .line 423
    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v10, p0, Lcom/google/android/music/AlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-static {v9, v10}, Lcom/google/android/music/BrowserActivityUtils;->addSearchMenu(Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/menu/MusicListMenu;)V

    .line 430
    .end local v3           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_3
    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-virtual {v9}, Lcom/google/android/music/menu/MusicPopupMenu;->show()V

    .line 431
    return-void

    .line 385
    .end local v0           #albumId:J
    .end local v2           #hasLocal:Z
    .end local v5           #menuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 389
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 391
    :cond_6
    const/4 v9, 0x0

    move v2, v9

    goto/16 :goto_2

    .line 412
    .restart local v0       #albumId:J
    .restart local v2       #hasLocal:Z
    .restart local v5       #menuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_7
    iget-object v9, p0, Lcom/google/android/music/AlbumBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    iget-object v10, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/music/menu/MusicPopupMenu;->setHeader(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 629
    const/4 v0, 0x0

    .line 630
    .local v0, dialog:Landroid/app/AlertDialog;
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 631
    new-instance v0, Lcom/google/android/music/CreatePlaylist;

    .end local v0           #dialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/music/CreatePlaylist;-><init>(Landroid/content/Context;ZLcom/google/android/music/CreatePlaylist$Callback;)V

    .line 632
    .restart local v0       #dialog:Landroid/app/AlertDialog;
    new-instance v1, Lcom/google/android/music/AlbumBrowserActivity$5;

    invoke-direct {v1, p0}, Lcom/google/android/music/AlbumBrowserActivity$5;-><init>(Lcom/google/android/music/AlbumBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 642
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 292
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 293
    .local v1, lv:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sput v2, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosCourse:I

    .line 295
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 296
    .local v0, cv:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    sput v2, Lcom/google/android/music/AlbumBrowserActivity;->mLastListPosFine:I

    .line 300
    .end local v0           #cv:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v2}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 305
    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v2, :cond_1

    .line 306
    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v2, v3}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 308
    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/android/music/AlbumBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 309
    iput-object v3, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    .line 311
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 312
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
    .line 363
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/music/AlbumBrowserActivity;->onCreateContextMusicMenu(Landroid/view/View;I)V

    .line 364
    const/4 v0, 0x1

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    new-instance v1, Lcom/google/android/music/medialist/AlbumSongList;

    invoke-direct {v1, p4, p5}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 534
    return-void
.end method

.method public onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 24
    .parameter "item"

    .prologue
    .line 549
    const-string v5, "AlbumBrowser"

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

    .line 550
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MusicMenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 621
    const-string v5, "AlbumBrowser"

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

    .line 624
    :goto_0
    const/4 v5, 0x1

    :goto_1
    return v5

    .line 552
    :sswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/AlbumBrowserActivity;->doExternalSearch()V

    goto :goto_0

    .line 557
    :sswitch_1
    new-instance v17, Lcom/google/android/music/medialist/AlbumSongList;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumId:J

    move-wide v5, v0

    move-object/from16 v0, v17

    move-wide v1, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    .line 558
    .local v17, l:Lcom/google/android/music/medialist/SongList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v17

    move v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/medialist/SongList;IZ)V

    .line 559
    const/4 v5, 0x1

    goto :goto_1

    .line 563
    .end local v17           #l:Lcom/google/android/music/medialist/SongList;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentArtistNameForAlbum:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/google/android/music/MusicUtils;->shopFor(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 567
    :sswitch_3
    const/16 v5, 0x64

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/music/AlbumBrowserActivity;->showDialog(I)V

    .line 568
    const/4 v5, 0x1

    goto :goto_1

    .line 572
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MusicMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "playlist"

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    .line 573
    .local v20, playlistId:J
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MusicMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "playlist_name"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 574
    .local v22, playlistName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/AlbumBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumId:J

    move-wide v6, v0

    move-object v0, v5

    move-wide/from16 v1, v20

    move-wide v3, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/store/MusicContent$Playlists;->appendAlbumToPlayList(Landroid/content/ContentResolver;JJ)I

    move-result v23

    .line 576
    .local v23, songCount:I
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/google/android/music/MusicUtils;->showSongsAddedToPlaylistToast(Landroid/content/Context;ILjava/lang/String;)V

    .line 577
    const/4 v5, 0x1

    goto :goto_1

    .line 585
    .end local v20           #playlistId:J
    .end local v22           #playlistName:Ljava/lang/String;
    .end local v23           #songCount:I
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MusicMenuItem;->getMenuInfo()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 588
    .local v19, mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    move-object v5, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    move-wide v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-wide v2, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/AlbumBrowserActivity;->findViewHolder(Landroid/view/View;J)Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    move-result-object v15

    .line 590
    .local v15, holder:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    if-nez v15, :cond_0

    .line 591
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 597
    :cond_0
    iget-object v5, v15, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v5}, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->getAlbumId()J

    move-result-wide v11

    .line 598
    .local v11, albumId:J
    iget-object v5, v15, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v5}, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->getArtistId()J

    move-result-wide v13

    .line 601
    .local v13, artistId:J
    new-instance v18, Lcom/google/android/music/OfflineMusicManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-object v5, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/OfflineMusicManager;-><init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    .line 602
    .local v18, manager:Lcom/google/android/music/OfflineMusicManager;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/menu/MusicMenuItem;->getChecked()Z

    move-result v16

    .line 603
    .local v16, keep:Z
    if-eqz v16, :cond_1

    .line 604
    new-instance v5, Lcom/google/android/music/SpaceWarningListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/android/music/SpaceWarningListener;-><init>(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/music/OfflineMusicManager;->addAvailableSpaceChangeListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 607
    :cond_1
    if-eqz v16, :cond_2

    .line 608
    move-object/from16 v0, v18

    move-wide v1, v11

    move-wide v3, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(JJ)V

    .line 612
    :goto_2
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/OfflineMusicManager;->commitChanges()V

    .line 613
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 610
    :cond_2
    move-object/from16 v0, v18

    move-wide v1, v11

    move-wide v3, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->deselectAlbum(JJ)V

    goto :goto_2

    .line 616
    .end local v11           #albumId:J
    .end local v13           #artistId:J
    .end local v15           #holder:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    .end local v16           #keep:Z
    .end local v18           #manager:Lcom/google/android/music/OfflineMusicManager;
    .end local v19           #mi:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :sswitch_6
    sget-object v6, Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;->ALBUM:Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumId:J

    move-wide v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumName:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/AlbumBrowserActivity;->mHasRemote:Z

    move v10, v0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Lcom/google/android/music/DeleteConfirmationActivity;->confirmDelete(Landroid/content/Context;Lcom/google/android/music/DeleteConfirmationActivity$DeletionType;JLjava/lang/CharSequence;Z)V

    .line 618
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 550
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_4
        0x5 -> :sswitch_3
        0x6 -> :sswitch_1
        0xf -> :sswitch_5
        0x1c -> :sswitch_6
        0x12c -> :sswitch_0
        0x258 -> :sswitch_2
    .end sparse-switch
.end method

.method public onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 537
    invoke-virtual {p0, p1}, Lcom/google/android/music/AlbumBrowserActivity;->onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/AlbumBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 337
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 338
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 339
    return-void
.end method

.method public onPlaylistCreated(JLjava/lang/String;)V
    .locals 7
    .parameter "playlistId"
    .parameter "playlistName"

    .prologue
    .line 513
    iget-wide v4, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumId:J

    .line 514
    .local v4, currentAlbumId:J
    new-instance v0, Lcom/google/android/music/AlbumBrowserActivity$4;

    move-object v1, p0

    move-wide v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/AlbumBrowserActivity$4;-><init>(Lcom/google/android/music/AlbumBrowserActivity;JJLjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 527
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 277
    const-string v0, "AlbumBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 279
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 316
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 317
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 318
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/AlbumBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 323
    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 324
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outcicle"

    .prologue
    .line 285
    const-string v0, "selectedAlbumId"

    iget-wide v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mCurrentAlbumId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 286
    const-string v0, "albumArtistId"

    iget-wide v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mArtistId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 287
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 288
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 973
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 976
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    if-eqz v0, :cond_0

    .line 977
    if-nez p2, :cond_1

    .line 978
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    invoke-virtual {v1}, Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;->getRepresentativeAlbumId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/music/RepresentativeAlbumChangeListener;->setRepresentativeAlbum(JZ)V

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    invoke-interface {v0}, Lcom/google/android/music/RepresentativeAlbumChangeListener;->cancelBackgroundChange()V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "name"
    .parameter "service"

    .prologue
    .line 965
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 968
    invoke-virtual {p0}, Lcom/google/android/music/AlbumBrowserActivity;->finish()V

    .line 969
    return-void
.end method

.method public prepareOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 544
    const/16 v1, 0x14

    invoke-virtual {p1, v1}, Lcom/google/android/music/menu/MusicMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 545
    .local v0, item:Lcom/google/android/music/menu/MusicMenuItem;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setVisible(Z)V

    .line 546
    :cond_0
    return-void
.end method
