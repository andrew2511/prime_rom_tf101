.class public Lcom/google/android/music/TopBar;
.super Landroid/widget/LinearLayout;
.source "TopBar.java"

# interfaces
.implements Lcom/google/android/music/MusicUtils$Defs;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/TopBar$MenuCustomizer;,
        Lcom/google/android/music/TopBar$ActionBarController;,
        Lcom/google/android/music/TopBar$ModeSelectorCallback;
    }
.end annotation


# static fields
.field private static final FINSKY_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.finsky"

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "TopBar"


# instance fields
.field private mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/google/android/music/TopBar$ActionBarController;

.field private mDefaultActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

.field private mDisplayModeSelector:Landroid/widget/TextView;

.field private mDoneManageMusicGroup:Landroid/view/View;

.field private mHomeIcon:Landroid/view/View;

.field private mMenuButton:Landroid/view/View;

.field private mModeSelectorMenu:Lcom/google/android/music/menu/MusicListMenu;

.field private mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/music/menu/MusicDropdownMenu;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNewPlaylistIcon:Landroid/view/View;

.field private mNowPlayingGroup:Landroid/view/View;

.field private mNowPlayingIcon:Lcom/google/android/music/AsyncAlbumArtImageView;

.field private mSearchField:Landroid/widget/EditText;

.field private mSearchIcon:Landroid/view/View;

.field private mSecondaryTitle:Landroid/widget/TextView;

.field private mSecondaryTitleGroup:Landroid/view/View;

.field private mSyncProgress:Landroid/widget/ProgressBar;

.field private mTargetVisibility:I

.field private mTitle:Landroid/widget/TextView;

.field private mToggleButton:Landroid/widget/ToggleButton;

.field private mTrackListingGroup:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "TopBar"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/TopBar;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    .line 106
    iput-object p1, p0, Lcom/google/android/music/TopBar;->mContext:Landroid/content/Context;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attribute"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mMusicMenu:Ljava/util/concurrent/atomic/AtomicReference;

    .line 111
    iput-object p1, p0, Lcom/google/android/music/TopBar;->mContext:Landroid/content/Context;

    .line 112
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/TopBar;)Lcom/google/android/music/jumper/MusicPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/TopBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mNewPlaylistIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/TopBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mSearchIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/music/TopBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mTrackListingGroup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/TopBar;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mToggleButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/music/TopBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mMenuButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/music/TopBar;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mSearchField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/music/TopBar;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/music/TopBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/music/TopBar;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/google/android/music/TopBar;->LOGV:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/music/TopBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/music/TopBar;->chooseDisplayMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/TopBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/music/TopBar;->superSetVisibility(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/TopBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mHomeIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/TopBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mSecondaryTitleGroup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/TopBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mNowPlayingGroup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/TopBar;)Lcom/google/android/music/AsyncAlbumArtImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mNowPlayingIcon:Lcom/google/android/music/AsyncAlbumArtImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/TopBar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private chooseDisplayMode(I)V
    .locals 2
    .parameter "itemId"

    .prologue
    .line 297
    packed-switch p1, :pswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 299
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->setViewMode(I)V

    goto :goto_0

    .line 302
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->setViewMode(I)V

    goto :goto_0

    .line 305
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->setViewMode(I)V

    goto :goto_0

    .line 308
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->setViewMode(I)V

    goto :goto_0

    .line 311
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->setViewMode(I)V

    goto :goto_0

    .line 314
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->setViewMode(I)V

    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/android/music/TopBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 199
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/google/android/music/TopBar;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 200
    return-void
.end method

.method private initDisplayModeSelector()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 235
    iget-object v1, p0, Lcom/google/android/music/TopBar;->mDisplayModeSelector:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v1, p0, Lcom/google/android/music/TopBar;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    new-instance v0, Lcom/google/android/music/menu/MusicDropdownMenu;

    iget-object v1, p0, Lcom/google/android/music/TopBar;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/google/android/music/TopBar$ModeSelectorCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/music/TopBar$ModeSelectorCallback;-><init>(Lcom/google/android/music/TopBar;Lcom/google/android/music/TopBar$1;)V

    iget-object v3, p0, Lcom/google/android/music/TopBar;->mDisplayModeSelector:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/menu/MusicDropdownMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 240
    .local v0, dropdown:Lcom/google/android/music/menu/MusicDropdownMenu;
    iget-object v1, p0, Lcom/google/android/music/TopBar;->mDisplayModeSelector:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicDropdownMenu;->setButtonView(Landroid/view/View;)V

    .line 241
    iput-object v0, p0, Lcom/google/android/music/TopBar;->mModeSelectorMenu:Lcom/google/android/music/menu/MusicListMenu;

    .line 247
    .end local v0           #dropdown:Lcom/google/android/music/menu/MusicDropdownMenu;
    :goto_0
    iget-object v1, p0, Lcom/google/android/music/TopBar;->mModeSelectorMenu:Lcom/google/android/music/menu/MusicListMenu;

    const v2, 0x7f0c00bd

    invoke-virtual {v1, v5, v5, v2}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 248
    iget-object v1, p0, Lcom/google/android/music/TopBar;->mModeSelectorMenu:Lcom/google/android/music/menu/MusicListMenu;

    const v2, 0x7f0c00bf

    invoke-virtual {v1, v7, v7, v2}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 249
    iget-object v1, p0, Lcom/google/android/music/TopBar;->mModeSelectorMenu:Lcom/google/android/music/menu/MusicListMenu;

    const v2, 0x7f0c00c0

    invoke-virtual {v1, v9, v8, v2}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 250
    iget-object v1, p0, Lcom/google/android/music/TopBar;->mModeSelectorMenu:Lcom/google/android/music/menu/MusicListMenu;

    const v2, 0x7f0c00be

    invoke-virtual {v1, v6, v6, v2}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 251
    iget-object v1, p0, Lcom/google/android/music/TopBar;->mModeSelectorMenu:Lcom/google/android/music/menu/MusicListMenu;

    const v2, 0x7f0c00c1

    invoke-virtual {v1, v8, v9, v2}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 252
    iget-object v1, p0, Lcom/google/android/music/TopBar;->mModeSelectorMenu:Lcom/google/android/music/menu/MusicListMenu;

    const/4 v2, 0x5

    const/4 v3, 0x5

    const v4, 0x7f0c00c2

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 253
    return-void

    .line 243
    :cond_0
    new-instance v1, Lcom/google/android/music/menu/MusicPopupMenu;

    iget-object v2, p0, Lcom/google/android/music/TopBar;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/google/android/music/TopBar$ModeSelectorCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/music/TopBar$ModeSelectorCallback;-><init>(Lcom/google/android/music/TopBar;Lcom/google/android/music/TopBar$1;)V

    iget-object v4, p0, Lcom/google/android/music/TopBar;->mDisplayModeSelector:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/music/menu/MusicPopupMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    iput-object v1, p0, Lcom/google/android/music/TopBar;->mModeSelectorMenu:Lcom/google/android/music/menu/MusicListMenu;

    goto :goto_0
.end method

.method private launchNewPlaylist()V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->showDialog(ILandroid/os/Bundle;)V

    .line 370
    return-void
.end method

.method private launchSearch(Ljava/lang/String;)V
    .locals 1
    .parameter "searchString"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v0, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startLocalSearch(Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method private launchSettings()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startSettings()V

    .line 389
    return-void
.end method

.method private openCurrentPlaylist()V
    .locals 4

    .prologue
    .line 373
    sget-object v1, Lcom/google/android/music/MusicUtils;->sService:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;

    .line 374
    .local v1, service:Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;
    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {v1}, Lcom/google/android/music/MusicPlaybackService$IMusicPlaybackService;->getMediaList()Lcom/google/android/music/medialist/SongList;

    move-result-object v0

    .line 377
    .local v0, mediaList:Lcom/google/android/music/medialist/SongList;
    if-nez v0, :cond_1

    .line 385
    .end local v0           #mediaList:Lcom/google/android/music/medialist/SongList;
    :cond_0
    :goto_0
    return-void

    .line 383
    .restart local v0       #mediaList:Lcom/google/android/music/medialist/SongList;
    :cond_1
    iget-object v2, p0, Lcom/google/android/music/TopBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListing(Lcom/google/android/music/medialist/MediaList;Z)V

    goto :goto_0
.end method

.method private openDisplayModes()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mModeSelectorMenu:Lcom/google/android/music/menu/MusicListMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicListMenu;->show()V

    .line 393
    return-void
.end method

.method private superSetVisibility(I)V
    .locals 0
    .parameter "newVisibility"

    .prologue
    .line 320
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 321
    return-void
.end method

.method private toggleDisplayModes()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-object v1, p0, Lcom/google/android/music/TopBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getUseListViewsInLandscape()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->setUseListViewsInLandscape(Z)V

    .line 232
    return-void

    .line 231
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 177
    sget-boolean v0, Lcom/google/android/music/TopBar;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "TopBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "afterTextChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mSearchField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/music/TopBar;->mSearchField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/music/TopBar;->launchSearch(Ljava/lang/String;)V

    .line 182
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 184
    return-void
.end method

.method public getDefaultActionBarController()Lcom/google/android/music/TopBar$ActionBarController;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mDefaultActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    return-object v0
.end method

.method public getDisplayModeTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "id"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mModeSelectorMenu:Lcom/google/android/music/menu/MusicListMenu;

    invoke-virtual {v0, p1}, Lcom/google/android/music/menu/MusicListMenu;->findItem(I)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMenuButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mMenuButton:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mMenuButton:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->openMenu()V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mSearchIcon:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/music/TopBar;->launchSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mNewPlaylistIcon:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 208
    invoke-direct {p0}, Lcom/google/android/music/TopBar;->launchNewPlaylist()V

    goto :goto_0

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mDisplayModeSelector:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    .line 210
    invoke-direct {p0}, Lcom/google/android/music/TopBar;->openDisplayModes()V

    goto :goto_0

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mHomeIcon:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 212
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mCurrentState:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-static {v0}, Lcom/google/android/music/TopBar$ActionBarController;->access$000(Lcom/google/android/music/TopBar$ActionBarController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->returnToTop()V

    goto :goto_0

    .line 215
    :cond_5
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mSecondaryTitleGroup:Landroid/view/View;

    if-ne p1, v0, :cond_6

    .line 216
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->goBackOneLevel()V

    goto :goto_0

    .line 217
    :cond_6
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mTrackListingGroup:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 218
    invoke-direct {p0}, Lcom/google/android/music/TopBar;->openCurrentPlaylist()V

    goto :goto_0

    .line 219
    :cond_7
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mNowPlayingGroup:Landroid/view/View;

    if-ne p1, v0, :cond_8

    .line 220
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startNowPlayingScreen()V

    goto :goto_0

    .line 221
    :cond_8
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mDoneManageMusicGroup:Landroid/view/View;

    if-ne p1, v0, :cond_9

    .line 222
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isManageMusicMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getOfflineMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/OfflineMusicManager;->commitChanges()V

    goto :goto_0

    .line 225
    :cond_9
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mToggleButton:Landroid/widget/ToggleButton;

    if-ne p1, v0, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/google/android/music/TopBar;->toggleDisplayModes()V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 189
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/google/android/music/TopBar;->hideSoftKeyboard()V

    .line 191
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 119
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getMusicActivityManager(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 121
    const v0, 0x7f0f0089

    invoke-virtual {p0, v0}, Lcom/google/android/music/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mSearchIcon:Landroid/view/View;

    .line 122
    const v0, 0x7f0f0095

    invoke-virtual {p0, v0}, Lcom/google/android/music/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mNewPlaylistIcon:Landroid/view/View;

    .line 123
    const v0, 0x7f0f0086

    invoke-virtual {p0, v0}, Lcom/google/android/music/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mSearchField:Landroid/widget/EditText;

    .line 124
    const/high16 v0, 0x7f0f

    invoke-virtual {p0, v0}, Lcom/google/android/music/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mTitle:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0f0084

    invoke-virtual {p0, v0}, Lcom/google/android/music/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mSecondaryTitleGroup:Landroid/view/View;

    .line 126
    const v0, 0x7f0f0094

    invoke-virtual {p0, v0}, Lcom/google/android/music/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mSecondaryTitle:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f0f008a

    invoke-virtual {p0, v0}, Lcom/google/android/music/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mMenuButton:Landroid/view/View;

    .line 128
    const v0, 0x7f0f0085

    invoke-virtual {p0, v0}, Lcom/google/android/music/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mHomeIcon:Landroid/view/View;

    .line 129
    const v0, 0x7f0f008c

    invoke-virtual {p0, v0}, Lcom/google/android/music/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mSyncProgress:Landroid/widget/ProgressBar;

    .line 130
    const v0, 0x7f0f0088

    invoke-virtual {p0, v0}, Lcom/google/android/music/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mDisplayModeSelector:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0f008f

    invoke-virtual {p0, v0}, Lcom/google/android/music/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mNowPlayingGroup:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mNowPlayingGroup:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mNowPlayingGroup:Landroid/view/View;

    const v1, 0x7f0f0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mNowPlayingIcon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 135
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mNowPlayingGroup:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    :cond_0
    const v0, 0x7f0f008e

    invoke-virtual {p0, v0}, Lcom/google/android/music/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mTrackListingGroup:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mTrackListingGroup:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mTrackListingGroup:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    :cond_1
    const v0, 0x7f0f0091

    invoke-virtual {p0, v0}, Lcom/google/android/music/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mDoneManageMusicGroup:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mDoneManageMusicGroup:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mDoneManageMusicGroup:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :cond_2
    const v0, 0x7f0f008d

    invoke-virtual {p0, v0}, Lcom/google/android/music/TopBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mToggleButton:Landroid/widget/ToggleButton;

    .line 148
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mSearchIcon:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/music/TopBar;->mSearchIcon:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mNewPlaylistIcon:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/music/TopBar;->mNewPlaylistIcon:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mSearchField:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/music/TopBar;->mSearchField:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mMenuButton:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/music/TopBar;->mMenuButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    :cond_6
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mHomeIcon:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/music/TopBar;->mHomeIcon:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_7
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mSecondaryTitleGroup:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/music/TopBar;->mSecondaryTitleGroup:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_8
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/music/TopBar;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :cond_9
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mDisplayModeSelector:Landroid/widget/TextView;

    const v1, 0x7f0c00bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 158
    new-instance v0, Lcom/google/android/music/TopBar$ActionBarController;

    invoke-direct {v0, p0}, Lcom/google/android/music/TopBar$ActionBarController;-><init>(Lcom/google/android/music/TopBar;)V

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mDefaultActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    .line 159
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v0

    if-nez v0, :cond_a

    .line 160
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mDefaultActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v0}, Lcom/google/android/music/TopBar$ActionBarController;->hideSearchIcon()V

    .line 161
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mDefaultActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v0}, Lcom/google/android/music/TopBar$ActionBarController;->hideMenuIcon()V

    .line 163
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/music/TopBar;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/TopBar;->mTargetVisibility:I

    .line 165
    invoke-direct {p0}, Lcom/google/android/music/TopBar;->initDisplayModeSelector()V

    .line 166
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 186
    return-void
.end method

.method public setActionBarController(Lcom/google/android/music/TopBar$ActionBarController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 408
    if-nez p1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mDefaultActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    iput-object v0, p0, Lcom/google/android/music/TopBar;->mCurrentState:Lcom/google/android/music/TopBar$ActionBarController;

    .line 413
    :goto_0
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mCurrentState:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v0}, Lcom/google/android/music/TopBar$ActionBarController;->restoreVisibilities()V

    .line 414
    return-void

    .line 411
    :cond_0
    iput-object p1, p0, Lcom/google/android/music/TopBar;->mCurrentState:Lcom/google/android/music/TopBar$ActionBarController;

    goto :goto_0
.end method

.method public setDisplayModeText(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 274
    packed-switch p1, :pswitch_data_0

    .line 294
    :goto_0
    return-void

    .line 276
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mDisplayModeSelector:Landroid/widget/TextView;

    const v1, 0x7f0c00bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 279
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mDisplayModeSelector:Landroid/widget/TextView;

    const v1, 0x7f0c00be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 282
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mDisplayModeSelector:Landroid/widget/TextView;

    const v1, 0x7f0c00bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 285
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mDisplayModeSelector:Landroid/widget/TextView;

    const v1, 0x7f0c00c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 288
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mDisplayModeSelector:Landroid/widget/TextView;

    const v1, 0x7f0c00c1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 291
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mDisplayModeSelector:Landroid/widget/TextView;

    const v1, 0x7f0c00c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public setDoneMangeMusicVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mDoneManageMusicGroup:Landroid/view/View;

    if-nez v0, :cond_0

    .line 428
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mDoneManageMusicGroup:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public setNowPlayingVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mNowPlayingGroup:Landroid/view/View;

    if-nez v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mNowPlayingGroup:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public setSyncStatus(Z)V
    .locals 2
    .parameter "active"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mSyncProgress:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 170
    return-void

    .line 169
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setUseLisViewstInLandscape(Z)V
    .locals 1
    .parameter "useListViews"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mToggleButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 271
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 10
    .parameter "newVisibility"

    .prologue
    .line 325
    iget v2, p0, Lcom/google/android/music/TopBar;->mTargetVisibility:I

    if-ne v2, p1, :cond_0

    .line 362
    :goto_0
    return-void

    .line 329
    :cond_0
    iput p1, p0, Lcom/google/android/music/TopBar;->mTargetVisibility:I

    .line 330
    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    .line 331
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x4080

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 334
    .local v0, animOut:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 335
    new-instance v2, Lcom/google/android/music/TopBar$1;

    invoke-direct {v2, p0}, Lcom/google/android/music/TopBar$1;-><init>(Lcom/google/android/music/TopBar;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 345
    invoke-virtual {p0, v0}, Lcom/google/android/music/TopBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 347
    .end local v0           #animOut:Landroid/view/animation/TranslateAnimation;
    :cond_1
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, -0x4080

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 350
    .local v1, animIn:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 351
    new-instance v2, Lcom/google/android/music/TopBar$2;

    invoke-direct {v2, p0, p1}, Lcom/google/android/music/TopBar$2;-><init>(Lcom/google/android/music/TopBar;I)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 360
    invoke-virtual {p0, v1}, Lcom/google/android/music/TopBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public startNewState(Lcom/google/android/music/activitymanagement/AppState;)Lcom/google/android/music/TopBar$ActionBarController;
    .locals 2
    .parameter "state"

    .prologue
    .line 400
    new-instance v0, Lcom/google/android/music/TopBar$ActionBarController;

    iget-object v1, p0, Lcom/google/android/music/TopBar;->mDefaultActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/TopBar$ActionBarController;-><init>(Lcom/google/android/music/TopBar;Lcom/google/android/music/TopBar$ActionBarController;)V

    .line 401
    .local v0, newState:Lcom/google/android/music/TopBar$ActionBarController;
    iget-object v1, p0, Lcom/google/android/music/TopBar;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v1, p1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->isTopLevel(Lcom/google/android/music/activitymanagement/AppState;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    invoke-virtual {v0}, Lcom/google/android/music/TopBar$ActionBarController;->hideDisplayModes()V

    .line 404
    :cond_0
    return-object v0
.end method

.method public declared-synchronized updateTitles(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 5
    .parameter "primary"
    .parameter "secondary"
    .parameter "isAtTop"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 432
    monitor-enter p0

    if-eqz p3, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/TopBar;->mSecondaryTitleGroup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 433
    iget-object v1, p0, Lcom/google/android/music/TopBar;->mHomeIcon:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget-object v1, p0, Lcom/google/android/music/TopBar;->mSecondaryTitleGroup:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 436
    :cond_0
    if-nez p3, :cond_1

    iget-object v1, p0, Lcom/google/android/music/TopBar;->mSecondaryTitleGroup:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 437
    iget-object v1, p0, Lcom/google/android/music/TopBar;->mSecondaryTitleGroup:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object v1, p0, Lcom/google/android/music/TopBar;->mHomeIcon:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/TopBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v1, p0, Lcom/google/android/music/TopBar;->mSecondaryTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 443
    iget-object v1, p0, Lcom/google/android/music/TopBar;->mSecondaryTitle:Landroid/widget/TextView;

    if-nez p2, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    iget-object v1, p0, Lcom/google/android/music/TopBar;->mSecondaryTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mCurrentState:Lcom/google/android/music/TopBar$ActionBarController;

    .line 447
    .local v0, currentState:Lcom/google/android/music/TopBar$ActionBarController;
    if-nez v0, :cond_3

    .line 448
    iget-object v0, p0, Lcom/google/android/music/TopBar;->mDefaultActionBarController:Lcom/google/android/music/TopBar$ActionBarController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :cond_3
    monitor-exit p0

    return-void

    .end local v0           #currentState:Lcom/google/android/music/TopBar$ActionBarController;
    :cond_4
    move v2, v4

    .line 443
    goto :goto_0

    .line 432
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
