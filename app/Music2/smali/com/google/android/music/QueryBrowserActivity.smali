.class public Lcom/google/android/music/QueryBrowserActivity;
.super Landroid/app/ListActivity;
.source "QueryBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/MusicUtils$Defs;
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/music/activitymanagement/TopLevelActivity$StatefulActivity;
.implements Lcom/google/android/music/menu/MusicMenu$Callback;
.implements Lcom/google/android/music/CreatePlaylist$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;,
        Lcom/google/android/music/QueryBrowserActivity$AddToPlaylistRunner;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

#the value of this static final field might be set in the static constructor
.field private static final QUERY_MESSAGE_TYPE:I = 0x0

.field public static final SUGGEST_DATA_ALBUM:Landroid/net/Uri; = null

.field public static final SUGGEST_DATA_ALBUM_ARTIST:Landroid/net/Uri; = null

.field public static final SUGGEST_DATA_ARTIST:Landroid/net/Uri; = null

.field public static final SUGGEST_DATA_PLAYLIST:Landroid/net/Uri; = null

.field public static final SUGGEST_DATA_TRACK:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "QueryBrowserActivity"


# instance fields
.field private mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

.field private mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

.field private mAdapterSent:Z

.field private mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mAppState:Lcom/google/android/music/activitymanagement/AppState;

.field private mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

.field private mCurrentItem:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

.field private mFilterString:Ljava/lang/String;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mPlayFirst:Z

.field private mQueryCursor:Landroid/database/Cursor;

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mTrackList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "QueryBrowserActivity"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/QueryBrowserActivity;->LOGV:Z

    .line 66
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "albumartist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_ALBUM_ARTIST:Landroid/net/Uri;

    .line 68
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "artist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_ARTIST:Landroid/net/Uri;

    .line 70
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "album"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_ALBUM:Landroid/net/Uri;

    .line 72
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "playlist"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_PLAYLIST:Landroid/net/Uri;

    .line 74
    sget-object v0, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "track"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_TRACK:Landroid/net/Uri;

    .line 79
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    invoke-static {v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->getUniqueMessageType(Lcom/google/android/music/Worker;)I

    move-result v0

    sput v0, Lcom/google/android/music/QueryBrowserActivity;->QUERY_MESSAGE_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mPlayFirst:Z

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/music/QueryBrowserActivity;->onAlbumArtistClick(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/music/QueryBrowserActivity;->onTrackArtistClick(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/music/QueryBrowserActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/music/QueryBrowserActivity;->onPlaylistClick(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/QueryBrowserActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/QueryBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/google/android/music/QueryBrowserActivity;->getQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/QueryBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/music/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/music/QueryBrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mPlayFirst:Z

    return v0
.end method

.method static synthetic access$702(Lcom/google/android/music/QueryBrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/google/android/music/QueryBrowserActivity;->mPlayFirst:Z

    return p1
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/google/android/music/QueryBrowserActivity;->LOGV:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/music/QueryBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    return-object v0
.end method

.method private addToPlaylist(JLjava/lang/String;IJ)V
    .locals 8
    .parameter "playlistId"
    .parameter "playlistName"
    .parameter "itemType"
    .parameter "itemId"

    .prologue
    .line 603
    new-instance v0, Lcom/google/android/music/QueryBrowserActivity$5;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/QueryBrowserActivity$5;-><init>(Lcom/google/android/music/QueryBrowserActivity;JLjava/lang/String;IJ)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 606
    return-void
.end method

.method static getFilterStringForIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    .line 331
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 332
    .local v0, action:Ljava/lang/String;
    :goto_0
    sget-boolean v7, Lcom/google/android/music/QueryBrowserActivity;->LOGV:Z

    if-eqz v7, :cond_0

    .line 333
    const-string v7, "QueryBrowserActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFilterStringForIntent: action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    move-object v3, v7

    .line 335
    .local v3, extras:Landroid/os/Bundle;
    :goto_1
    if-eqz v3, :cond_0

    .line 336
    const-string v7, "QueryBrowserActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  - has extras: size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v7, "QueryBrowserActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  - extras = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .end local v3           #extras:Landroid/os/Bundle;
    :cond_0
    const-string v7, "query"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 343
    .local v4, filterString:Ljava/lang/String;
    const-string v7, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 344
    const-string v7, "android.intent.extra.focus"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 345
    .local v5, focus:Ljava/lang/String;
    const-string v7, "android.intent.extra.artist"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, artist:Ljava/lang/String;
    const-string v7, "android.intent.extra.album"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, album:Ljava/lang/String;
    const-string v7, "android.intent.extra.title"

    invoke-virtual {p0, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, title:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 349
    const-string v7, "audio/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v6, :cond_5

    .line 350
    move-object v4, v6

    .line 365
    .end local v1           #album:Ljava/lang/String;
    .end local v2           #artist:Ljava/lang/String;
    .end local v5           #focus:Ljava/lang/String;
    .end local v6           #title:Ljava/lang/String;
    :cond_1
    :goto_2
    sget-boolean v7, Lcom/google/android/music/QueryBrowserActivity;->LOGV:Z

    if-eqz v7, :cond_2

    const-string v7, "QueryBrowserActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFilterStringForIntent: new filter is \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_2
    return-object v4

    .end local v0           #action:Ljava/lang/String;
    .end local v4           #filterString:Ljava/lang/String;
    :cond_3
    move-object v0, v10

    .line 331
    goto/16 :goto_0

    .restart local v0       #action:Ljava/lang/String;
    :cond_4
    move-object v3, v10

    .line 334
    goto/16 :goto_1

    .line 351
    .restart local v1       #album:Ljava/lang/String;
    .restart local v2       #artist:Ljava/lang/String;
    .restart local v4       #filterString:Ljava/lang/String;
    .restart local v5       #focus:Ljava/lang/String;
    .restart local v6       #title:Ljava/lang/String;
    :cond_5
    const-string v7, "vnd.android.cursor.item/album"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 352
    if-eqz v1, :cond_1

    .line 353
    move-object v4, v1

    .line 354
    if-eqz v2, :cond_1

    .line 355
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 358
    :cond_6
    const-string v7, "vnd.android.cursor.item/artist"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 359
    if-eqz v2, :cond_1

    .line 360
    move-object v4, v2

    goto :goto_2
.end method

.method private getQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "filter"

    .prologue
    const/4 v3, 0x0

    .line 640
    if-nez p1, :cond_0

    .line 641
    const-string p1, ""

    .line 643
    :cond_0
    const/16 v0, 0xd

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "searchType"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "searchName"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "Album"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "AlbumArtist"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "AlbumArtistId"

    aput-object v4, v2, v0

    const/4 v0, 0x6

    const-string v4, "Artist"

    aput-object v4, v2, v0

    const/4 v0, 0x7

    const-string v4, "itemCount"

    aput-object v4, v2, v0

    const/16 v0, 0x8

    const-string v4, "albumCount"

    aput-object v4, v2, v0

    const/16 v0, 0x9

    const-string v4, "year"

    aput-object v4, v2, v0

    const/16 v0, 0xa

    const-string v4, "duration"

    aput-object v4, v2, v0

    const/16 v0, 0xb

    const-string v4, "AlbumId"

    aput-object v4, v2, v0

    const/16 v0, 0xc

    const-string v4, "searchSortName"

    aput-object v4, v2, v0

    .line 659
    .local v2, ccols:[Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/music/store/MusicContent$Search;->getSearchPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 661
    .local v1, search:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/google/android/music/QueryBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static handleSearchResult(Landroid/content/Context;Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Landroid/content/Intent;)Z
    .locals 10
    .parameter "context"
    .parameter "appManager"
    .parameter "intent"

    .prologue
    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 172
    .local v7, uri:Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, path:Ljava/lang/String;
    sget-object v8, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_TRACK:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 174
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/android/music/QueryBrowserActivity;->onTrackClick(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;J)V

    .line 277
    :goto_0
    const/4 v8, 0x1

    :goto_1
    return v8

    .line 175
    :cond_0
    sget-object v8, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_ALBUM_ARTIST:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 177
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 179
    .local v2, localArtistId:J
    new-instance v8, Lcom/google/android/music/QueryBrowserActivity$1;

    invoke-direct {v8, p0, v2, v3, p1}, Lcom/google/android/music/QueryBrowserActivity$1;-><init>(Landroid/content/Context;JLcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    invoke-static {v8}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    goto :goto_0

    .line 213
    .end local v2           #localArtistId:J
    :cond_1
    sget-object v8, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_ALBUM:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 214
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/android/music/QueryBrowserActivity;->onAlbumClick(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;J)V

    goto :goto_0

    .line 215
    :cond_2
    sget-object v8, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_ARTIST:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 216
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 217
    .local v0, artistId:J
    new-instance v8, Lcom/google/android/music/QueryBrowserActivity$2;

    invoke-direct {v8, p0, v0, v1, p1}, Lcom/google/android/music/QueryBrowserActivity$2;-><init>(Landroid/content/Context;JLcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    invoke-static {v8}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    goto :goto_0

    .line 244
    .end local v0           #artistId:J
    :cond_3
    sget-object v8, Lcom/google/android/music/QueryBrowserActivity;->SUGGEST_DATA_PLAYLIST:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 245
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 246
    .local v5, playlistId:J
    new-instance v8, Lcom/google/android/music/QueryBrowserActivity$3;

    invoke-direct {v8, p0, v5, v6, p1}, Lcom/google/android/music/QueryBrowserActivity$3;-><init>(Landroid/content/Context;JLcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    invoke-static {v8}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    goto :goto_0

    .line 275
    .end local v5           #playlistId:J
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private static onAlbumArtistClick(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "activityManager"
    .parameter "albumArtistId"
    .parameter "artist"
    .parameter "sortAlbumArtist"

    .prologue
    .line 383
    const-wide/16 v5, -0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startAlbumListingForAlbumArtist(JLjava/lang/String;Ljava/lang/String;J)V

    .line 384
    return-void
.end method

.method private static onAlbumClick(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;J)V
    .locals 1
    .parameter "activityManager"
    .parameter "albumId"

    .prologue
    .line 378
    new-instance v0, Lcom/google/android/music/medialist/AlbumSongList;

    invoke-direct {v0, p1, p2}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 379
    return-void
.end method

.method private static onPlaylistClick(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;JLjava/lang/String;)V
    .locals 1
    .parameter "activityManager"
    .parameter "playlistId"
    .parameter "playlistName"

    .prologue
    .line 406
    new-instance v0, Lcom/google/android/music/medialist/PlaylistSongList;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 407
    return-void
.end method

.method private static onTrackArtistClick(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;JLjava/lang/String;)V
    .locals 0
    .parameter "activityManager"
    .parameter "artistId"
    .parameter "artist"

    .prologue
    .line 401
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListingForTrackArtist(JLjava/lang/String;)V

    .line 402
    return-void
.end method

.method private static onTrackClick(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;J)V
    .locals 3
    .parameter "activityManager"
    .parameter "id"

    .prologue
    .line 410
    new-instance v0, Lcom/google/android/music/medialist/SingleSongList;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/music/medialist/SingleSongList;-><init>(JLjava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/medialist/SongList;IZ)V

    .line 411
    return-void
.end method

.method private processNewSearchQuery()V
    .locals 3

    .prologue
    .line 281
    sget-boolean v0, Lcom/google/android/music/QueryBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "QueryBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNewSearchQuery: mFilterString \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    new-instance v0, Lcom/google/android/music/QueryBrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/QueryBrowserActivity$4;-><init>(Lcom/google/android/music/QueryBrowserActivity;)V

    sget v1, Lcom/google/android/music/QueryBrowserActivity;->QUERY_MESSAGE_TYPE:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;IZ)V

    .line 294
    return-void
.end method


# virtual methods
.method public closeMusicMenu()V
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicListMenu;->close()V

    .line 1017
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 471
    invoke-super {p0}, Landroid/app/ListActivity;->finish()V

    .line 472
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v0}, Lcom/google/android/music/TopBar$ActionBarController;->hideSearchField()V

    .line 473
    return-void
.end method

.method public getState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outcicle"

    .prologue
    .line 371
    return-void
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    if-nez v0, :cond_0

    .line 614
    :goto_0
    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 529
    packed-switch p1, :pswitch_data_0

    .line 539
    :goto_0
    return-void

    .line 531
    :pswitch_0
    if-nez p2, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/google/android/music/QueryBrowserActivity;->finish()V

    goto :goto_0

    .line 534
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/music/QueryBrowserActivity;->getQueryCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 535
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/google/android/music/QueryBrowserActivity;->init(Landroid/database/Cursor;)V

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 106
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 110
    invoke-virtual {p0}, Lcom/google/android/music/QueryBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 111
    .local v7, intent:Landroid/content/Intent;
    sget-boolean v0, Lcom/google/android/music/QueryBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "QueryBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    invoke-static {p0}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 114
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v0, v6}, Lcom/google/android/music/activitymanagement/AppState;->setBottomBarEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/AppState;->getActivityManager()Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 116
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    .line 118
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v0}, Lcom/google/android/music/TopBar$ActionBarController;->hideAllButTitle()V

    .line 120
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v0}, Lcom/google/android/music/TopBar$ActionBarController;->hideTitle()V

    .line 126
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/music/QueryBrowserActivity;->setVolumeControlStream(I)V

    .line 127
    invoke-virtual {p0}, Lcom/google/android/music/QueryBrowserActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    .line 128
    invoke-static {p0, p0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 131
    invoke-static {v7}, Lcom/google/android/music/QueryBrowserActivity;->getFilterStringForIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/music/TopBar$ActionBarController;->setSearchFieldText(Ljava/lang/CharSequence;)V

    .line 141
    const v0, 0x7f040027

    invoke-virtual {p0, v0}, Lcom/google/android/music/QueryBrowserActivity;->setContentView(I)V

    .line 143
    invoke-virtual {p0}, Lcom/google/android/music/QueryBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    .line 144
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 147
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    if-nez v0, :cond_3

    .line 148
    new-instance v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {p0}, Lcom/google/android/music/QueryBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const v3, 0x7f040037

    const/4 v4, 0x0

    new-array v5, v6, [Ljava/lang/String;

    new-array v6, v6, [I

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;-><init>(Landroid/content/Context;Lcom/google/android/music/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    .line 155
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    :goto_1
    invoke-direct {p0}, Lcom/google/android/music/QueryBrowserActivity;->processNewSearchQuery()V

    .line 162
    const-string v0, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iput-boolean v8, p0, Lcom/google/android/music/QueryBrowserActivity;->mPlayFirst:Z

    .line 166
    :cond_1
    return-void

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/TopBar$ActionBarController;->showTopBar()V

    goto :goto_0

    .line 157
    :cond_3
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, p0}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->setActivity(Lcom/google/android/music/QueryBrowserActivity;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 1074
    const/4 v0, 0x0

    .line 1075
    .local v0, dialog:Landroid/app/AlertDialog;
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 1076
    new-instance v0, Lcom/google/android/music/CreatePlaylist;

    .end local v0           #dialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/google/android/music/QueryBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/music/CreatePlaylist;-><init>(Landroid/content/Context;ZLcom/google/android/music/CreatePlaylist$Callback;)V

    .line 1077
    .restart local v0       #dialog:Landroid/app/AlertDialog;
    new-instance v1, Lcom/google/android/music/QueryBrowserActivity$6;

    invoke-direct {v1, p0}, Lcom/google/android/music/QueryBrowserActivity$6;-><init>(Lcom/google/android/music/QueryBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1087
    :cond_0
    return-object v0
.end method

.method public onCreateListContextMusicMenu(Landroid/view/View;Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;)V
    .locals 13
    .parameter "view"
    .parameter "viewHolder"

    .prologue
    const/4 v12, 0x4

    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 427
    invoke-virtual {p0}, Lcom/google/android/music/QueryBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 428
    .local v1, lv:Landroid/widget/ListView;
    iget-object v7, p0, Lcom/google/android/music/QueryBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v7}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 429
    new-instance v2, Lcom/google/android/music/menu/MusicDropdownMenu;

    invoke-virtual {v1}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-direct {v2, p0, p0, v7}, Lcom/google/android/music/menu/MusicDropdownMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 431
    .local v2, menu:Lcom/google/android/music/menu/MusicDropdownMenu;
    invoke-virtual {v2, p1}, Lcom/google/android/music/menu/MusicDropdownMenu;->setButtonView(Landroid/view/View;)V

    .line 432
    iput-object v2, p0, Lcom/google/android/music/QueryBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    .line 444
    .end local v2           #menu:Lcom/google/android/music/menu/MusicDropdownMenu;
    :goto_0
    iput-object p2, p0, Lcom/google/android/music/QueryBrowserActivity;->mCurrentItem:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    .line 447
    iget-object v7, p0, Lcom/google/android/music/QueryBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    const/4 v8, 0x6

    const v9, 0x7f0c0070

    invoke-virtual {v7, v8, v10, v9}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v4

    .line 449
    .local v4, playMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    iget-object v7, p0, Lcom/google/android/music/QueryBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v7}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 450
    const v7, 0x7f020151

    invoke-virtual {v4, v7}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 454
    :cond_0
    iget v7, p2, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->type:I

    if-eq v7, v12, :cond_1

    .line 455
    iget-object v7, p0, Lcom/google/android/music/QueryBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    iget-object v8, p0, Lcom/google/android/music/QueryBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v8}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v8

    if-eqz v8, :cond_4

    const v8, 0x7f02013c

    :goto_1
    invoke-static {v7, v8, v11}, Lcom/google/android/music/MusicUtils;->populateAddToPlaylistMenu(Lcom/google/android/music/menu/MusicMenu;II)V

    .line 461
    :cond_1
    iget-object v7, p0, Lcom/google/android/music/QueryBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    const/16 v8, 0x258

    const v9, 0x7f0c0017

    invoke-virtual {v7, v8, v12, v9}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v3

    .line 462
    .local v3, menuItem:Lcom/google/android/music/menu/MusicMenuItem;
    iget-object v7, p0, Lcom/google/android/music/QueryBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v7}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 463
    const v7, 0x7f020159

    invoke-virtual {v3, v7}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 466
    :cond_2
    iget-object v7, p0, Lcom/google/android/music/QueryBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    invoke-virtual {v7}, Lcom/google/android/music/menu/MusicListMenu;->show()V

    .line 467
    return-void

    .line 434
    .end local v3           #menuItem:Lcom/google/android/music/menu/MusicMenuItem;
    .end local v4           #playMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_3
    new-instance v2, Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-virtual {v1}, Landroid/widget/ListView;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-direct {v2, p0, p0, v7}, Lcom/google/android/music/menu/MusicPopupMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 436
    .local v2, menu:Lcom/google/android/music/menu/MusicPopupMenu;
    new-array v0, v9, [I

    .line 437
    .local v0, location:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 438
    aget v5, v0, v10

    .line 439
    .local v5, x:I
    aget v7, v0, v11

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v6, v7, v8

    .line 440
    .local v6, y:I
    invoke-virtual {v2, v5, v6, v9}, Lcom/google/android/music/menu/MusicPopupMenu;->setLocation(III)V

    .line 441
    iput-object v2, p0, Lcom/google/android/music/QueryBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    goto :goto_0

    .end local v0           #location:[I
    .end local v2           #menu:Lcom/google/android/music/menu/MusicPopupMenu;
    .end local v5           #x:I
    .end local v6           #y:I
    .restart local v4       #playMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_4
    move v8, v10

    .line 455
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 511
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->unbindFromService(Lcom/google/android/music/MusicUtils$ServiceToken;)V

    .line 516
    iget-boolean v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapterSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-virtual {v0, v1}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 522
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/music/QueryBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 523
    iput-object v1, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    .line 524
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 525
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 496
    const/16 v1, 0x54

    if-ne p1, v1, :cond_0

    move v0, v2

    .line 498
    .local v0, isSearch:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 502
    invoke-virtual {p0}, Lcom/google/android/music/QueryBrowserActivity;->finish()V

    move v1, v2

    .line 505
    :goto_1
    return v1

    .line 496
    .end local v0           #isSearch:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 505
    .restart local v0       #isSearch:Z
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 618
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    .line 620
    .local v0, vh:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;
    iget v1, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->type:I

    packed-switch v1, :pswitch_data_0

    .line 637
    :goto_0
    return-void

    .line 622
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-wide v2, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->id:J

    invoke-static {v1, v2, v3}, Lcom/google/android/music/QueryBrowserActivity;->onAlbumClick(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;J)V

    goto :goto_0

    .line 625
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-wide v2, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->id:J

    iget-object v4, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->name:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->sortName:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/music/QueryBrowserActivity;->onAlbumArtistClick(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :pswitch_2
    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-wide v2, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->id:J

    invoke-static {v1, v2, v3}, Lcom/google/android/music/QueryBrowserActivity;->onTrackClick(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;J)V

    goto :goto_0

    .line 631
    :pswitch_3
    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-wide v2, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->id:J

    iget-object v4, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->name:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/music/QueryBrowserActivity;->onTrackArtistClick(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;JLjava/lang/String;)V

    goto :goto_0

    .line 634
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-wide v2, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->id:J

    iget-object v4, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->name:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/music/QueryBrowserActivity;->onPlaylistClick(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;JLjava/lang/String;)V

    goto :goto_0

    .line 620
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 12
    .parameter "item"

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1020
    invoke-virtual {p0}, Lcom/google/android/music/QueryBrowserActivity;->closeMusicMenu()V

    .line 1021
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    move v0, v10

    .line 1070
    :goto_1
    return v0

    .line 1025
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mCurrentItem:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    iget v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->type:I

    packed-switch v0, :pswitch_data_0

    :goto_2
    move v0, v10

    .line 1052
    goto :goto_1

    .line 1027
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    new-instance v4, Lcom/google/android/music/medialist/AlbumSongList;

    iget-object v5, p0, Lcom/google/android/music/QueryBrowserActivity;->mCurrentItem:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    iget-wide v5, v5, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->id:J

    invoke-direct {v4, v5, v6}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    invoke-static {v0, v4, v11, v9}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/medialist/SongList;IZ)V

    goto :goto_2

    .line 1031
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    new-instance v4, Lcom/google/android/music/medialist/ArtistSongList;

    iget-object v5, p0, Lcom/google/android/music/QueryBrowserActivity;->mCurrentItem:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    iget-wide v5, v5, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->id:J

    iget-object v7, p0, Lcom/google/android/music/QueryBrowserActivity;->mCurrentItem:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    iget-object v7, v7, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/music/QueryBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v8}, Lcom/google/android/music/jumper/MusicPreferences;->getArtistSongsSortOrder()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    invoke-static {v0, v4, v11, v9}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/medialist/SongList;IZ)V

    goto :goto_2

    .line 1037
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    new-instance v4, Lcom/google/android/music/medialist/SingleSongList;

    iget-object v5, p0, Lcom/google/android/music/QueryBrowserActivity;->mCurrentItem:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    iget-wide v5, v5, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->id:J

    iget-object v7, p0, Lcom/google/android/music/QueryBrowserActivity;->mCurrentItem:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    iget-object v7, v7, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/music/medialist/SingleSongList;-><init>(JLjava/lang/String;)V

    invoke-static {v0, v4, v9, v9}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/medialist/SongList;IZ)V

    goto :goto_2

    .line 1041
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    new-instance v4, Lcom/google/android/music/medialist/PlaylistSongList;

    iget-object v5, p0, Lcom/google/android/music/QueryBrowserActivity;->mCurrentItem:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    iget-wide v5, v5, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->id:J

    iget-object v7, p0, Lcom/google/android/music/QueryBrowserActivity;->mCurrentItem:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    iget-object v7, v7, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;)V

    invoke-static {v0, v4, v11, v9}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/medialist/SongList;IZ)V

    goto :goto_2

    .line 1045
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    new-instance v4, Lcom/google/android/music/medialist/ArtistSongList;

    iget-object v5, p0, Lcom/google/android/music/QueryBrowserActivity;->mCurrentItem:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    iget-wide v5, v5, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->id:J

    iget-object v7, p0, Lcom/google/android/music/QueryBrowserActivity;->mCurrentItem:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    iget-object v7, v7, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->name:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/music/QueryBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v8}, Lcom/google/android/music/jumper/MusicPreferences;->getArtistSongsSortOrder()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    invoke-static {v0, v4, v9, v9}, Lcom/google/android/music/MusicUtils;->playMediaList(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/medialist/SongList;IZ)V

    goto :goto_2

    .line 1055
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mCurrentItem:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->name:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/music/MusicUtils;->shopFor(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1059
    :sswitch_2
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/google/android/music/QueryBrowserActivity;->showDialog(I)V

    move v0, v10

    .line 1060
    goto :goto_1

    .line 1064
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "playlist"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1065
    .local v1, playlistId:J
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "playlist_name"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1066
    .local v3, playlistName:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mCurrentItem:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    iget v4, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->type:I

    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mCurrentItem:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    iget-wide v5, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->id:J

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/QueryBrowserActivity;->addToPlaylist(JLjava/lang/String;IJ)V

    move v0, v10

    .line 1067
    goto/16 :goto_1

    .line 1021
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x5 -> :sswitch_2
        0x6 -> :sswitch_0
        0xc8 -> :sswitch_0
        0x258 -> :sswitch_1
    .end sparse-switch

    .line 1025
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/google/android/music/QueryBrowserActivity;->onNewState(Landroid/content/Intent;)V

    .line 299
    return-void
.end method

.method public onNewState(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 302
    sget-boolean v1, Lcom/google/android/music/QueryBrowserActivity;->LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "QueryBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewState: intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    invoke-static {p1}, Lcom/google/android/music/QueryBrowserActivity;->getFilterStringForIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, newFilterString:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 309
    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mFilterString:Ljava/lang/String;

    .line 315
    :cond_1
    invoke-direct {p0}, Lcom/google/android/music/QueryBrowserActivity;->processNewSearchQuery()V

    .line 316
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 490
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 491
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v0}, Lcom/google/android/music/TopBar$ActionBarController;->hideSearchField()V

    .line 492
    return-void
.end method

.method public onPlaylistCreated(JLjava/lang/String;)V
    .locals 7
    .parameter "playlistId"
    .parameter "playlistName"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mCurrentItem:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    iget v4, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->type:I

    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mCurrentItem:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;

    iget-wide v5, v0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ViewHolder;->id:J

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/QueryBrowserActivity;->addToPlaylist(JLjava/lang/String;IJ)V

    .line 543
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 483
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 484
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v0}, Lcom/google/android/music/TopBar$ActionBarController;->showSearchField()V

    .line 485
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v0}, Lcom/google/android/music/TopBar$ActionBarController;->focusInSearchField()V

    .line 486
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapterSent:Z

    .line 478
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAdapter:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "name"
    .parameter "service"

    .prologue
    .line 418
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 422
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "incicle"

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/google/android/music/QueryBrowserActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 375
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    if-eqz v0, :cond_1

    .line 389
    sget-boolean v0, Lcom/google/android/music/QueryBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "QueryBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivity: launching via mAppController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startActivity(Landroid/content/Intent;)V

    .line 391
    invoke-virtual {p0}, Lcom/google/android/music/QueryBrowserActivity;->finish()V

    .line 397
    :goto_0
    return-void

    .line 394
    :cond_1
    sget-boolean v0, Lcom/google/android/music/QueryBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_2

    const-string v0, "QueryBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivity: launching via super.startActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_2
    invoke-super {p0, p1}, Landroid/app/ListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
