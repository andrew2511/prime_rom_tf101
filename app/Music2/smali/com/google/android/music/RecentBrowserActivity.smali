.class public Lcom/google/android/music/RecentBrowserActivity;
.super Landroid/app/ListActivity;
.source "RecentBrowserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/content/ServiceConnection;
.implements Lcom/google/android/music/menu/MusicMenu$Callback;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
.implements Lcom/google/android/music/TopBar$MenuCustomizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;,
        Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;
    }
.end annotation


# static fields
.field private static final ALBUM_ARTIST_ID_INDEX:I = 0x3

.field private static final ALBUM_ARTIST_INDEX:I = 0x4

.field private static final ALBUM_ID_INDEX:I = 0x1

.field private static final ALBUM_NAME_INDEX:I = 0x2

.field private static final LIST_ID_INDEX:I = 0x5

.field private static final LIST_NAME_INDEX:I = 0x6

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final MEDIA_ID_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RecentBrowserActivity"

.field private static final mCursorCols:[Ljava/lang/String;

.field private static mLastListPosCourse:I

.field private static mLastListPosFine:I


# instance fields
.field private mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

.field private mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

.field private mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

.field private mCurrentAlbumId:J

.field private mCurrentAlbumName:Ljava/lang/String;

.field private mCurrentArtistNameForAlbum:Ljava/lang/String;

.field private mCurrentPlaylistId:J

.field private mCurrentPlaylistName:Ljava/lang/String;

.field private mListContainer:Landroid/view/View;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNoContentListener:Lcom/google/android/music/NoContentListener;

.field private mRecentCursor:Landroid/database/Cursor;

.field private mRecentList:Landroid/widget/ListView;

.field private mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

.field private mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

.field private mTrackListListener:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 73
    const-string v0, "RecentBrowserActivity"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/RecentBrowserActivity;->LOGV:Z

    .line 83
    sput v1, Lcom/google/android/music/RecentBrowserActivity;->mLastListPosCourse:I

    .line 84
    sput v1, Lcom/google/android/music/RecentBrowserActivity;->mLastListPosFine:I

    .line 147
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "RecentAlbumId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_artist_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album_artist"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "RecentListId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "list_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/RecentBrowserActivity;->mCursorCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 180
    new-instance v0, Lcom/google/android/music/RecentBrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/RecentBrowserActivity$1;-><init>(Lcom/google/android/music/RecentBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    .line 225
    new-instance v0, Lcom/google/android/music/RecentBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/RecentBrowserActivity$2;-><init>(Lcom/google/android/music/RecentBrowserActivity;)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    .line 321
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/RecentBrowserActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/RecentBrowserActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/RecentBrowserActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/music/RecentBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/NoContentListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/RecentBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/music/RecentBrowserActivity;->getRecentCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getRecentCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "filter"

    .prologue
    const/4 v4, 0x0

    .line 259
    sget-object v1, Lcom/google/android/music/store/MusicContent$Recent;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/RecentBrowserActivity;->mCursorCols:[Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 262
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method


# virtual methods
.method public closeContextMusicMenu()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicPopupMenu;->close()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mContextMenu:Lcom/google/android/music/menu/MusicPopupMenu;

    .line 178
    :cond_0
    return-void
.end method

.method public createOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 604
    return-void
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    if-nez v0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 246
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->closeContextMusicMenu()V

    goto :goto_0

    .line 252
    :cond_2
    sget v0, Lcom/google/android/music/RecentBrowserActivity;->mLastListPosCourse:I

    if-ltz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sget v1, Lcom/google/android/music/RecentBrowserActivity;->mLastListPosCourse:I

    sget v2, Lcom/google/android/music/RecentBrowserActivity;->mLastListPosFine:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 254
    const/4 v0, -0x1

    sput v0, Lcom/google/android/music/RecentBrowserActivity;->mLastListPosCourse:I

    goto :goto_0
.end method

.method public onAlbumChanged()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->notifyDataSetChanged()V

    .line 211
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 97
    .local v9, intent:Landroid/content/Intent;
    sget-boolean v0, Lcom/google/android/music/RecentBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "RecentBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    sget-boolean v0, Lcom/google/android/music/RecentBrowserActivity;->LOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "RecentBrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - extras: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 101
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/music/RecentBrowserActivity;->requestWindowFeature(I)Z

    .line 102
    invoke-virtual {p0, v4}, Lcom/google/android/music/RecentBrowserActivity;->requestWindowFeature(I)Z

    .line 103
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/music/RecentBrowserActivity;->setVolumeControlStream(I)V

    .line 105
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    const-string v0, "RecentBrowserActivity"

    const-string v1, "RecentBrowserActivity called on XLarge screen"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_2
    invoke-static {p0}, Lcom/google/android/music/TabbedLists;->isInTab(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    invoke-static {p0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getMusicActivityManager(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 115
    :goto_0
    invoke-static {p0, p0}, Lcom/google/android/music/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/google/android/music/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mToken:Lcom/google/android/music/MusicUtils$ServiceToken;

    .line 117
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    move v10, v4

    .line 119
    .local v10, isSubView:Z
    :goto_1
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/google/android/music/RecentBrowserActivity;->setContentView(I)V

    .line 121
    const v0, 0x7f0f0054

    invoke-virtual {p0, v0}, Lcom/google/android/music/RecentBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mListContainer:Landroid/view/View;

    .line 122
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    .line 123
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 126
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 128
    new-instance v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const v4, 0x7f040013

    iget-object v5, p0, Lcom/google/android/music/RecentBrowserActivity;->mRecentCursor:Landroid/database/Cursor;

    new-array v6, v3, [Ljava/lang/String;

    new-array v7, v3, [I

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;-><init>(Lcom/google/android/music/RecentBrowserActivity;Landroid/content/Context;Lcom/google/android/music/RecentBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    .line 136
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    invoke-virtual {p0, v0}, Lcom/google/android/music/RecentBrowserActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/RecentBrowserActivity;->getRecentCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 138
    .local v8, c:Landroid/database/Cursor;
    invoke-virtual {p0, v8}, Lcom/google/android/music/RecentBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 140
    invoke-static {p0}, Lcom/google/android/music/TabbedLists;->isInTab(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    invoke-static {p0}, Lcom/google/android/music/TabbedLists;->getRepresentativeAlbumChangeListener(Landroid/app/Activity;)Lcom/google/android/music/RepresentativeAlbumChangeListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    .line 142
    invoke-static {p0}, Lcom/google/android/music/TabbedLists;->getNoContentListener(Landroid/app/Activity;)Lcom/google/android/music/NoContentListener;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mNoContentListener:Lcom/google/android/music/NoContentListener;

    .line 143
    invoke-static {p0, p0}, Lcom/google/android/music/TabbedLists;->addMenuCustomizer(Landroid/app/Activity;Lcom/google/android/music/TopBar$MenuCustomizer;)V

    .line 145
    :cond_3
    return-void

    .line 112
    .end local v8           #c:Landroid/database/Cursor;
    .end local v10           #isSubView:Z
    :cond_4
    const-string v0, "RecentBrowserActivity"

    const-string v1, "Not in a tabbed list"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move v10, v3

    .line 117
    goto :goto_1
.end method

.method public onCreateContextMusicMenu(Landroid/view/View;I)V
    .locals 0
    .parameter "view"
    .parameter "position"

    .prologue
    .line 171
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
    .line 165
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2, p3}, Lcom/google/android/music/RecentBrowserActivity;->onCreateContextMusicMenu(Landroid/view/View;I)V

    .line 166
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
    .line 585
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;

    .line 586
    .local v0, vh:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;
    if-eqz v0, :cond_0

    .line 587
    iget-wide v1, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 588
    const-string v1, "RecentBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opening album list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    new-instance v2, Lcom/google/android/music/medialist/AlbumSongList;

    iget-wide v3, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->albumId:J

    invoke-direct {v2, v3, v4}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 591
    :cond_1
    const-string v1, "RecentBrowserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opening playlist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    new-instance v2, Lcom/google/android/music/medialist/PlaylistSongList;

    iget-wide v3, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistId:J

    iget-object v5, v0, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter$ViewHolder;->playlistName:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListing(Lcom/google/android/music/medialist/MediaList;)V

    goto :goto_0
.end method

.method public onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 610
    const-string v0, "RecentBrowserActivity"

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

    .line 612
    const/4 v0, 0x1

    return v0
.end method

.method public onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 599
    invoke-virtual {p0, p1}, Lcom/google/android/music/RecentBrowserActivity;->onMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/music/RecentBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 236
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->unregisterBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 237
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 238
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 216
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 217
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.android.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mTrackListListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/music/RecentBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 222
    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v2, p0, Lcom/google/android/music/RecentBrowserActivity;->mBottomBarChangeListener:Lcom/google/android/music/BottomBarChangeListener;

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->registerBottomBarChangeListener(Lcom/google/android/music/BottomBarChangeListener;)V

    .line 223
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 624
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    if-eqz v0, :cond_0

    .line 628
    if-nez p2, :cond_1

    .line 629
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    iget-object v1, p0, Lcom/google/android/music/RecentBrowserActivity;->mAdapter:Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;

    invoke-virtual {v1}, Lcom/google/android/music/RecentBrowserActivity$RecentListAdapter;->getRepresentativeAlbumId()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/music/RepresentativeAlbumChangeListener;->setRepresentativeAlbum(JZ)V

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/RecentBrowserActivity;->mRepresentativeAlbumChangeListener:Lcom/google/android/music/RepresentativeAlbumChangeListener;

    invoke-interface {v0}, Lcom/google/android/music/RepresentativeAlbumChangeListener;->cancelBackgroundChange()V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "name"
    .parameter "service"

    .prologue
    .line 616
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/google/android/music/RecentBrowserActivity;->finish()V

    .line 620
    return-void
.end method

.method public prepareOptionsMenu(Lcom/google/android/music/menu/MusicMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 607
    return-void
.end method
