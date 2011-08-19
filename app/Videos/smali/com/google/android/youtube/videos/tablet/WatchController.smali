.class public Lcom/google/android/youtube/videos/tablet/WatchController;
.super Lcom/google/android/youtube/core/tablet/Controller;
.source "WatchController.java"

# interfaces
.implements Lcom/google/android/youtube/videos/player/Director$Listener;
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
.implements Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;
.implements Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/tablet/WatchController$1;,
        Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;,
        Lcom/google/android/youtube/videos/tablet/WatchController$AudioBecomingNoisyReceiver;
    }
.end annotation


# instance fields
.field private accountName:Ljava/lang/String;

.field private final application:Lcom/google/android/youtube/videos/VideosApplication;

.field private audioBecomingNoisyReceiver:Lcom/google/android/youtube/videos/tablet/WatchController$AudioBecomingNoisyReceiver;

.field private audioManager:Landroid/media/AudioManager;

.field private director:Lcom/google/android/youtube/videos/player/Director;

.field private fullscreen:Z

.field private fullscreenTitle:Ljava/lang/String;

.field private isControllerVisible:Z

.field private isMenuVisible:Z

.field private final navigation:Lcom/google/android/youtube/videos/Navigation;

.field private preferences:Landroid/content/SharedPreferences;

.field private streamingWarningHelper:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;

.field private suggestionsHelper:Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

.field private tabHost:Landroid/widget/TabHost;

.field private userAuth:Lcom/google/android/youtube/core/model/UserAuth;

.field private userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private viewHolder:Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;

.field private watchInfo:Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V
    .locals 1
    .parameter "application"
    .parameter "activity"
    .parameter "navigation"
    .parameter "launchBundle"

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, p1, p1, p2, p4}, Lcom/google/android/youtube/core/tablet/Controller;-><init>(Landroid/app/Application;Lcom/google/android/youtube/core/Analytics;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 93
    iput-boolean v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->isControllerVisible:Z

    .line 94
    iput-boolean v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->isMenuVisible:Z

    .line 138
    iput-object p1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    .line 139
    if-eqz p4, :cond_0

    const-string v0, "authAccount"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->accountName:Ljava/lang/String;

    .line 141
    iput-object p3, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->navigation:Lcom/google/android/youtube/videos/Navigation;

    .line 142
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/tablet/WatchController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/tablet/WatchController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/videos/tablet/WatchController;)Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->viewHolder:Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/videos/tablet/WatchController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/videos/tablet/WatchController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/videos/tablet/WatchController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static createArguments(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "videoId"

    .prologue
    .line 107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "video_id"

    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-object v0
.end method

.method public static createArguments(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 2
    .parameter "videoId"
    .parameter "fullscreen"

    .prologue
    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "video_id"

    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "fullscreen"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 120
    return-object v0
.end method

.method public static createArgumentsForUri(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 2
    .parameter "uri"

    .prologue
    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "intercepted_uri"

    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 129
    return-object v0
.end method

.method private isLandscape()Z
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x1

    return v0
.end method

.method private setWindowFullscreen(Z)V
    .locals 3
    .parameter "fullscreen"

    .prologue
    .line 453
    iget-object v2, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 454
    .local v1, window:Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 456
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_1

    .line 457
    const/4 v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 461
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 463
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    .line 459
    .restart local v0       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v2, 0x0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    goto :goto_0
.end method


# virtual methods
.method protected getContentViewId()I
    .locals 1

    .prologue
    .line 146
    const v0, 0x7f040016

    return v0
.end method

.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 7
    .parameter "userAuth"

    .prologue
    const/4 v6, 0x0

    .line 229
    iput-object p1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 230
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/tablet/WatchController;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 231
    .local v0, args:Landroid/os/Bundle;
    const-string v5, "video_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, videoId:Ljava/lang/String;
    const-string v5, "intercepted_uri"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 233
    .local v1, interceptedUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 235
    .local v3, streamParams:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 236
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->parseYouTubeWatchUri(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, parsed:[Ljava/lang/String;
    aget-object v5, v2, v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 238
    aget-object v4, v2, v6

    .line 239
    const/4 v5, 0x1

    aget-object v3, v2, v5

    .line 251
    .end local v2           #parsed:[Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v5, v4, p1, v3}, Lcom/google/android/youtube/videos/player/Director;->initVideo(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;)V

    .line 252
    :goto_0
    return-void

    .line 241
    .restart local v2       #parsed:[Ljava/lang/String;
    :cond_1
    const-string v5, "invalid intercepted URI"

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 242
    iget-object v5, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 245
    .end local v2           #parsed:[Ljava/lang/String;
    :cond_2
    if-nez v4, :cond_0

    .line 246
    const-string v5, "invalid arguments format"

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 247
    iget-object v5, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 260
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 261
    return-void
.end method

.method protected onBackPressed()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 445
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->fullscreen:Z

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/player/Director;->setFullscreen(Z)V

    .line 447
    const/4 v0, 0x1

    .line 449
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onBranding(Lcom/google/android/youtube/core/model/Branding;)V
    .locals 0
    .parameter "branding"

    .prologue
    .line 382
    return-void
.end method

.method public onControllerHidden()V
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->isControllerVisible:Z

    .line 407
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->fullscreen:Z

    if-eqz v0, :cond_0

    .line 408
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/tablet/WatchController;->setWindowFullscreen(Z)V

    .line 409
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->isMenuVisible:Z

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 413
    :cond_0
    return-void
.end method

.method public onControllerShown()V
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->isControllerVisible:Z

    .line 417
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->fullscreen:Z

    if-eqz v0, :cond_0

    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/tablet/WatchController;->setWindowFullscreen(Z)V

    .line 419
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 421
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 25
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 151
    invoke-super/range {p0 .. p2}, Lcom/google/android/youtube/core/tablet/Controller;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v5, v0

    const v6, 0x7f0c00a0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setTitle(I)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 155
    new-instance v5, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;-><init>(Lcom/google/android/youtube/videos/tablet/WatchController;Landroid/view/View;F)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/tablet/WatchController;->viewHolder:Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->viewHolder:Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;

    move-object v5, v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/youtube/videos/tablet/WatchController;->isLandscape()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->layoutForOrientation(Z)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/youtube/videos/VideosApplication;->getRequesters()Lcom/google/android/youtube/videos/Requesters;

    move-result-object v9

    .line 160
    .local v9, requesters:Lcom/google/android/youtube/videos/Requesters;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/youtube/videos/VideosApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/tablet/WatchController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/youtube/videos/VideosApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/tablet/WatchController;->preferences:Landroid/content/SharedPreferences;

    .line 163
    new-instance v5, Lcom/google/android/youtube/videos/player/Director;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->viewHolder:Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->preferences:Landroid/content/SharedPreferences;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/android/youtube/videos/VideosApplication;->getDrmManager()Lcom/google/android/youtube/videos/DrmManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->application:Lcom/google/android/youtube/videos/VideosApplication;

    move-object v11, v0

    move-object/from16 v12, p0

    invoke-direct/range {v5 .. v12}, Lcom/google/android/youtube/videos/player/Director;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/videos/Requesters;Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/videos/player/Director$Listener;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/tablet/WatchController;->director:Lcom/google/android/youtube/videos/player/Director;

    .line 166
    const/16 v23, 0x0

    .line 167
    .local v23, selectedTab:I
    if-eqz p2, :cond_0

    .line 168
    const-string v5, "selected_tab_index"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 169
    const-string v5, "fullscreen"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/youtube/videos/tablet/WatchController;->fullscreen:Z

    .line 174
    :goto_0
    const v5, 0x1020012

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/TabHost;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/tablet/WatchController;->tabHost:Landroid/widget/TabHost;

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->tabHost:Landroid/widget/TabHost;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TabHost;->setup()V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v22

    .line 179
    .local v22, inflater:Landroid/view/LayoutInflater;
    const v5, 0x1020011

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup;

    .line 180
    .local v18, container:Landroid/view/ViewGroup;
    invoke-virtual/range {v18 .. v18}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    .line 181
    .local v17, childCount:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 182
    invoke-virtual/range {v18 .. v19}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 183
    .local v16, child:Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 184
    .local v24, text:Ljava/lang/String;
    const v5, 0x7f040013

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->tabHost:Landroid/widget/TabHost;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, v22

    move v1, v5

    move-object v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 185
    .local v20, indicator:Landroid/view/View;
    const v5, 0x7f08003a

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 186
    .local v21, indicatorText:Landroid/widget/TextView;
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->tabHost:Landroid/widget/TabHost;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->tabHost:Landroid/widget/TabHost;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 181
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 171
    .end local v16           #child:Landroid/view/View;
    .end local v17           #childCount:I
    .end local v18           #container:Landroid/view/ViewGroup;
    .end local v19           #i:I
    .end local v20           #indicator:Landroid/view/View;
    .end local v21           #indicatorText:Landroid/widget/TextView;
    .end local v22           #inflater:Landroid/view/LayoutInflater;
    .end local v24           #text:Ljava/lang/String;
    .restart local p2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/tablet/WatchController;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "fullscreen"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/youtube/videos/tablet/WatchController;->fullscreen:Z

    goto/16 :goto_0

    .line 190
    .end local p2
    .restart local v17       #childCount:I
    .restart local v18       #container:Landroid/view/ViewGroup;
    .restart local v19       #i:I
    .restart local v22       #inflater:Landroid/view/LayoutInflater;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->tabHost:Landroid/widget/TabHost;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 192
    new-instance v5, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v6, v0

    invoke-interface {v9}, Lcom/google/android/youtube/videos/Requesters;->getPosterArtRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v7

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    move-object v3, v7

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/tablet/WatchController;->watchInfo:Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;

    .line 193
    new-instance v10, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v11, v0

    const v5, 0x7f08004f

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/google/android/youtube/core/ui/PagedView;

    new-instance v13, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v5, v0

    const v6, 0x7f040007

    invoke-direct {v13, v5, v6}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;-><init>(Landroid/content/Context;I)V

    invoke-interface {v9}, Lcom/google/android/youtube/videos/Requesters;->getSuggestedMoviesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v14

    invoke-interface {v9}, Lcom/google/android/youtube/videos/Requesters;->getPosterArtRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v15

    invoke-direct/range {v10 .. v15}, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/videos/adapter/MovieListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/tablet/WatchController;->suggestionsHelper:Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/media/AudioManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/tablet/WatchController;->audioManager:Landroid/media/AudioManager;

    .line 203
    new-instance v5, Lcom/google/android/youtube/videos/tablet/WatchController$AudioBecomingNoisyReceiver;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/videos/tablet/WatchController$AudioBecomingNoisyReceiver;-><init>(Lcom/google/android/youtube/videos/tablet/WatchController;Lcom/google/android/youtube/videos/tablet/WatchController$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/tablet/WatchController;->audioBecomingNoisyReceiver:Lcom/google/android/youtube/videos/tablet/WatchController$AudioBecomingNoisyReceiver;

    .line 205
    new-instance v5, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController;->preferences:Landroid/content/SharedPreferences;

    move-object v7, v0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/videos/ui/StreamingWarningHelper$Listener;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/tablet/WatchController;->streamingWarningHelper:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;

    .line 206
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 327
    packed-switch p1, :pswitch_data_0

    .line 331
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 329
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->streamingWarningHelper:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->onCreateDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 386
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/core/tablet/Controller;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 387
    const/high16 v0, 0x7f10

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 388
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 320
    invoke-super {p0}, Lcom/google/android/youtube/core/tablet/Controller;->onDestroy()V

    .line 321
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/player/Director;->release()V

    .line 322
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 323
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->watchInfo:Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/core/ErrorHelper;->humanize(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->showError(Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/videos/player/Director;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 472
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/videos/player/Director;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMenuVisibilityChanged(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 399
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->isMenuVisible:Z

    .line 400
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->fullscreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->isControllerVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->isMenuVisible:Z

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 403
    :cond_0
    return-void
.end method

.method public onNotAuthenticated()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 256
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->navigation:Lcom/google/android/youtube/videos/Navigation;

    invoke-static {p1, v0, v1}, Lcom/google/android/youtube/videos/VideosApplication;->onCommonOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    const/4 v0, 0x1

    .line 395
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(Z)V
    .locals 0
    .parameter "landscape"

    .prologue
    .line 351
    return-void
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->watchInfo:Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->showLoading()V

    .line 275
    return-void
.end method

.method public onRetry()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/player/Director;->reinit()V

    .line 304
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/tablet/Controller;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 266
    const-string v0, "selected_tab_index"

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    const-string v0, "fullscreen"

    iget-boolean v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->fullscreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 268
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 210
    invoke-super {p0}, Lcom/google/android/youtube/core/tablet/Controller;->onStart()V

    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/high16 v2, -0x8000

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->audioBecomingNoisyReceiver:Lcom/google/android/youtube/videos/tablet/WatchController$AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/tablet/WatchController$AudioBecomingNoisyReceiver;->register()V

    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->streamingWarningHelper:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->register()V

    .line 219
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->director:Lcom/google/android/youtube/videos/player/Director;

    iget-boolean v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->fullscreen:Z

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/player/Director;->setFullscreen(Z)V

    .line 220
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->accountName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/tablet/WatchController;->reset(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 309
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->audioBecomingNoisyReceiver:Lcom/google/android/youtube/videos/tablet/WatchController$AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/tablet/WatchController$AudioBecomingNoisyReceiver;->unregister()V

    .line 310
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->streamingWarningHelper:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->unregister()V

    .line 311
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/player/Director;->setStopped()V

    .line 312
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->viewHolder:Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;

    iget-object v0, v0, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->stopVideo()V

    .line 313
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->suggestionsHelper:Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->reset()V

    .line 314
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/tablet/WatchController;->setWindowFullscreen(Z)V

    .line 315
    invoke-super {p0}, Lcom/google/android/youtube/core/tablet/Controller;->onStop()V

    .line 316
    return-void
.end method

.method public onStream(Lcom/google/android/youtube/core/model/Stream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->streamingWarningHelper:Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/ui/StreamingWarningHelper;->init(Lcom/google/android/youtube/core/model/Stream;)V

    .line 425
    return-void
.end method

.method public onStreamingAccepted(Lcom/google/android/youtube/core/model/Stream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/player/Director;->onStream(Lcom/google/android/youtube/core/model/Stream;)V

    .line 429
    return-void
.end method

.method public onStreamingDeclined()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 433
    return-void
.end method

.method public onToggleFullscreen(Z)V
    .locals 5
    .parameter "fullscreen"

    .prologue
    const/4 v4, 0x0

    .line 354
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->fullscreen:Z

    .line 355
    if-nez p1, :cond_1

    .line 356
    invoke-direct {p0, v4}, Lcom/google/android/youtube/videos/tablet/WatchController;->setWindowFullscreen(Z)V

    .line 357
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    const v2, 0x7f0c00a0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 358
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 359
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    .line 366
    :goto_0
    invoke-direct {p0}, Lcom/google/android/youtube/videos/tablet/WatchController;->isLandscape()Z

    move-result v0

    .line 367
    .local v0, landscape:Z
    if-eqz p1, :cond_2

    .line 369
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 370
    if-eqz v0, :cond_0

    .line 371
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->viewHolder:Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->layoutForFullscreen()V

    .line 378
    :cond_0
    :goto_1
    return-void

    .line 361
    .end local v0           #landscape:Z
    :cond_1
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->fullscreenTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 376
    .restart local v0       #landscape:Z
    :cond_2
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->viewHolder:Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/videos/tablet/WatchController$ViewHolder;->layoutForOrientation(Z)V

    goto :goto_1
.end method

.method public onVideo(Lcom/google/android/youtube/core/model/Video;)V
    .locals 6
    .parameter "video"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 281
    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->fullscreenTitle:Ljava/lang/String;

    .line 282
    iget-boolean v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->fullscreen:Z

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->fullscreenTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->watchInfo:Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/videos/tablet/WatchInfoHelper;->showVideo(Lcom/google/android/youtube/core/model/Video;)V

    .line 288
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, suggestionsTabView:Landroid/view/View;
    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 290
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->suggestionsHelper:Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

    iget-object v2, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    new-array v3, v3, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v4, p1, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/google/android/youtube/core/async/GDataRequests;->getSuggestedMoviesRequest(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->init(Lcom/google/android/youtube/core/model/UserAuth;[Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 296
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v5}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 294
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onWifiConnected()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/player/Director;->play()V

    .line 441
    return-void
.end method

.method public onWifiDisconnected()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/player/Director;->pause()V

    .line 437
    return-void
.end method

.method public reset(Ljava/lang/String;)V
    .locals 1
    .parameter "accountName"

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->accountName:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->peek(Ljava/lang/String;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 226
    return-void
.end method
