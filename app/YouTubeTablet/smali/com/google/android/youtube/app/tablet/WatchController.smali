.class public Lcom/google/android/youtube/app/tablet/WatchController;
.super Lcom/google/android/youtube/app/tablet/YouTubeController;
.source "WatchController.java"

# interfaces
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/app/player/Director$Listener;
.implements Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/tablet/WatchController$1;,
        Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;,
        Lcom/google/android/youtube/app/tablet/WatchController$AudioBecomingNoisyReceiver;
    }
.end annotation


# instance fields
.field private audioBecomingNoisyReceiver:Lcom/google/android/youtube/app/tablet/WatchController$AudioBecomingNoisyReceiver;

.field private audioManager:Landroid/media/AudioManager;

.field private director:Lcom/google/android/youtube/app/player/Director;

.field private dislikeButton:Landroid/widget/ImageButton;

.field private forceFullscreen:Z

.field private fullscreen:Z

.field private fullscreenTitle:Ljava/lang/String;

.field private isControllerVisible:Z

.field private isMenuVisible:Z

.field private likeButton:Landroid/widget/ImageButton;

.field private platform:Lcom/google/android/youtube/app/Platform;

.field private playPauseButton:Landroid/widget/ImageButton;

.field private preferences:Landroid/content/SharedPreferences;

.field private tabHost:Landroid/widget/TabHost;

.field private userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private videoActionsEnabled:Z

.field private videoActionsHelper:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

.field private viewHolder:Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;

.field private watchComments:Lcom/google/android/youtube/app/ui/WatchCommentsHelper;

.field private watchInfo:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

.field private watchRelated:Lcom/google/android/youtube/app/ui/WatchRelatedHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Landroid/os/Bundle;)V
    .locals 1
    .parameter "application"
    .parameter "activity"
    .parameter "navigation"
    .parameter "launchBundle"

    .prologue
    const/4 v0, 0x0

    .line 159
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/app/tablet/YouTubeController;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Landroid/os/Bundle;)V

    .line 107
    iput-boolean v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->isControllerVisible:Z

    .line 108
    iput-boolean v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->isMenuVisible:Z

    .line 160
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/app/tablet/WatchController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/app/tablet/WatchController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/app/tablet/WatchController;)Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->viewHolder:Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/app/tablet/WatchController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/app/tablet/WatchController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/app/tablet/WatchController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/youtube/app/tablet/WatchController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static createArguments(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "videoId"

    .prologue
    .line 118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "video_id"

    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-object v0
.end method

.method public static createArgumentsForFavourite(Ljava/lang/String;Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 2
    .parameter "videoId"
    .parameter "unfavoriteUri"

    .prologue
    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "video_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "unfavorite_uri"

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 151
    return-object v0
.end method

.method public static createArgumentsForPlaylist(Landroid/net/Uri;Z)Landroid/os/Bundle;
    .locals 2
    .parameter "playlistUri"
    .parameter "authenticate"

    .prologue
    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "playlist_uri"

    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    const-string v1, "authenticate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 140
    return-object v0
.end method

.method private isLandscape()Z
    .locals 2

    .prologue
    .line 446
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 447
    .local v0, orientation:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getContentViewId()I
    .locals 1

    .prologue
    .line 164
    const v0, 0x7f040035

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 528
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v3

    .line 545
    :goto_0
    return v0

    .line 530
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->playPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02005b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    move v0, v2

    .line 531
    goto :goto_0

    .line 536
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->playPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    move v0, v2

    .line 537
    goto :goto_0

    .line 540
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->playPauseButton:Landroid/widget/ImageButton;

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 541
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->playPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    move v0, v2

    .line 542
    goto :goto_0

    .line 528
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected onBackPressed()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 520
    iget-boolean v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->fullscreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->forceFullscreen:Z

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->director:Lcom/google/android/youtube/app/player/Director;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/player/Director;->setFullscreen(Z)V

    .line 522
    const/4 v0, 0x1

    .line 524
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onBranding(Lcom/google/android/youtube/core/model/Branding;)V
    .locals 1
    .parameter "branding"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->watchInfo:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->onBranding(Lcom/google/android/youtube/core/model/Branding;)V

    .line 490
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->watchRelated:Lcom/google/android/youtube/app/ui/WatchRelatedHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->onBranding(Lcom/google/android/youtube/core/model/Branding;)V

    .line 491
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 432
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 443
    :goto_0
    return-void

    .line 434
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsHelper:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->onLike()V

    goto :goto_0

    .line 437
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsHelper:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->onDislike()V

    goto :goto_0

    .line 440
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->director:Lcom/google/android/youtube/app/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/player/Director;->togglePlay()V

    goto :goto_0

    .line 432
    :pswitch_data_0
    .packed-switch 0x7f080066
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onControllerHidden()V
    .locals 3

    .prologue
    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->isControllerVisible:Z

    .line 502
    iget-boolean v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->fullscreen:Z

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->platform:Lcom/google/android/youtube/app/Platform;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/app/Platform;->setFullscreenMode(Landroid/app/Activity;Z)V

    .line 504
    iget-boolean v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->isMenuVisible:Z

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 508
    :cond_0
    return-void
.end method

.method public onControllerShown()V
    .locals 3

    .prologue
    .line 511
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->isControllerVisible:Z

    .line 512
    iget-boolean v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->fullscreen:Z

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->platform:Lcom/google/android/youtube/app/Platform;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/app/Platform;->setFullscreenMode(Landroid/app/Activity;Z)V

    .line 514
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 516
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 26
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 169
    invoke-super/range {p0 .. p2}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v4, v0

    const v5, 0x7f0d00e3

    invoke-virtual {v4, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 173
    new-instance v4, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;-><init>(Lcom/google/android/youtube/app/tablet/WatchController;Landroid/view/View;F)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/WatchController;->viewHolder:Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->viewHolder:Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;

    move-object v4, v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/youtube/app/tablet/WatchController;->isLandscape()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->layoutForOrientation(Z)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/youtube/app/YouTubeApplication;->getRequesters()Lcom/google/android/youtube/app/Requesters;

    move-result-object v8

    .line 178
    .local v8, requesters:Lcom/google/android/youtube/app/Requesters;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/youtube/app/YouTubeApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/WatchController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/youtube/app/YouTubeApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/WatchController;->preferences:Landroid/content/SharedPreferences;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/youtube/app/YouTubeApplication;->getPlatform()Lcom/google/android/youtube/app/Platform;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/WatchController;->platform:Lcom/google/android/youtube/app/Platform;

    .line 182
    new-instance v4, Lcom/google/android/youtube/app/player/Director;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->viewHolder:Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->preferences:Landroid/content/SharedPreferences;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/android/youtube/app/YouTubeApplication;->getRevShareClientId()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->viewHolder:Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;

    move-object v14, v0

    iget-object v14, v14, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v15, v0

    invoke-direct {v13, v12, v14, v15}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;-><init>(Landroid/content/Context;Lcom/google/android/youtube/core/player/YouTubePlayer;Lcom/google/android/youtube/core/Analytics;)V

    move-object/from16 v12, p0

    invoke-direct/range {v4 .. v13}, Lcom/google/android/youtube/app/player/Director;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/app/Requesters;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Ljava/lang/String;Lcom/google/android/youtube/app/player/Director$Listener;Lcom/google/android/youtube/core/player/ControllerOverlay;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/WatchController;->director:Lcom/google/android/youtube/app/player/Director;

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/youtube/app/YouTubeApplication;->areTermsAccepted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 197
    :cond_0
    new-instance v9, Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->navigation:Lcom/google/android/youtube/app/Navigation;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->director:Lcom/google/android/youtube/app/player/Director;

    move-object v14, v0

    move-object/from16 v11, p1

    move-object v15, v8

    move-object/from16 v16, p0

    invoke-direct/range {v9 .. v16}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/app/player/Director;Lcom/google/android/youtube/app/Requesters;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;)V

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/WatchController;->watchInfo:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    .line 199
    new-instance v9, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v10, v0

    const v4, 0x7f080055

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/google/android/youtube/core/ui/PagedView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v4, v0

    invoke-static {v4}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->create(Landroid/content/Context;)Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->navigation:Lcom/google/android/youtube/app/Navigation;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object/from16 v16, v0

    move-object v14, v8

    invoke-direct/range {v9 .. v16}, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/app/Requesters;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;)V

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/WatchController;->watchRelated:Lcom/google/android/youtube/app/ui/WatchRelatedHelper;

    .line 207
    new-instance v5, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v6, v0

    const v4, 0x7f080056

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/youtube/core/ui/PagedListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v10, v0

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedListView;Lcom/google/android/youtube/app/Requesters;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Z)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/WatchController;->watchComments:Lcom/google/android/youtube/app/ui/WatchCommentsHelper;

    .line 211
    new-instance v6, Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->watchInfo:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->platform:Lcom/google/android/youtube/app/Platform;

    move-object v12, v0

    invoke-direct/range {v6 .. v12}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Requesters;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/app/ui/WatchInfoHelper;Lcom/google/android/youtube/app/Platform;)V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsHelper:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    .line 214
    const/16 v24, 0x0

    .line 215
    .local v24, selectedTab:I
    if-eqz p2, :cond_1

    .line 216
    const-string v4, "selected_tab_index"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v24

    .line 217
    const-string v4, "fullscreen"

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/youtube/app/tablet/WatchController;->fullscreen:Z

    .line 220
    :cond_1
    const v4, 0x1020012

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/TabHost;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/WatchController;->tabHost:Landroid/widget/TabHost;

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->tabHost:Landroid/widget/TabHost;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v23

    .line 225
    .local v23, inflater:Landroid/view/LayoutInflater;
    const v4, 0x1020011

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    .line 226
    .local v19, container:Landroid/view/ViewGroup;
    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v18

    .line 227
    .local v18, childCount:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 228
    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 229
    .local v17, child:Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 230
    .local v25, text:Ljava/lang/String;
    const v4, 0x7f04002d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->tabHost:Landroid/widget/TabHost;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, v23

    move v1, v4

    move-object v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    .line 231
    .local v21, indicator:Landroid/view/View;
    const v4, 0x7f080042

    move-object/from16 v0, v21

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 232
    .local v22, indicatorText:Landroid/widget/TextView;
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->tabHost:Landroid/widget/TabHost;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->tabHost:Landroid/widget/TabHost;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 227
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 236
    .end local v17           #child:Landroid/view/View;
    .end local v21           #indicator:Landroid/view/View;
    .end local v22           #indicatorText:Landroid/widget/TextView;
    .end local v25           #text:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->tabHost:Landroid/widget/TabHost;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 238
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsEnabled:Z

    .line 239
    const v4, 0x7f080067

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/WatchController;->likeButton:Landroid/widget/ImageButton;

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->likeButton:Landroid/widget/ImageButton;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    const v4, 0x7f080066

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/WatchController;->dislikeButton:Landroid/widget/ImageButton;

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->dislikeButton:Landroid/widget/ImageButton;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsHelper:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->likeButton:Landroid/widget/ImageButton;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->dislikeButton:Landroid/widget/ImageButton;

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->setLikeDislikeViews(Landroid/view/View;Landroid/view/View;)V

    .line 245
    const v4, 0x7f080068

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/ImageButton;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/WatchController;->playPauseButton:Landroid/widget/ImageButton;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->playPauseButton:Landroid/widget/ImageButton;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->playPauseButton:Landroid/widget/ImageButton;

    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->viewHolder:Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    new-instance v5, Landroid/os/Handler;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    invoke-virtual {v4, v5}, Lcom/google/android/youtube/core/player/YouTubePlayer;->addListener(Landroid/os/Handler;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/WatchController;->audioManager:Landroid/media/AudioManager;

    .line 254
    new-instance v4, Lcom/google/android/youtube/app/tablet/WatchController$AudioBecomingNoisyReceiver;

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/tablet/WatchController$AudioBecomingNoisyReceiver;-><init>(Lcom/google/android/youtube/app/tablet/WatchController;Lcom/google/android/youtube/app/tablet/WatchController$1;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/WatchController;->audioBecomingNoisyReceiver:Lcom/google/android/youtube/app/tablet/WatchController$AudioBecomingNoisyReceiver;

    .line 255
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 396
    sparse-switch p1, :sswitch_data_0

    .line 401
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->director:Lcom/google/android/youtube/app/player/Director;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/player/Director;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 399
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsHelper:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 396
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 310
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 311
    const v0, 0x7f100006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 312
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 389
    invoke-super {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onDestroy()V

    .line 390
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->director:Lcom/google/android/youtube/app/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/player/Director;->release()V

    .line 391
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 392
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->watchInfo:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/core/ErrorHelper;->humanize(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->showError(Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->director:Lcom/google/android/youtube/app/player/Director;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/app/player/Director;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->director:Lcom/google/android/youtube/app/player/Director;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/app/player/Director;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMenuVisibilityChanged(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 494
    iput-boolean p1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->isMenuVisible:Z

    .line 495
    iget-boolean v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->fullscreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->isControllerVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->isMenuVisible:Z

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 498
    :cond_0
    return-void
.end method

.method protected onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 406
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 428
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 408
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsHelper:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->onShare()V

    move v0, v1

    .line 409
    goto :goto_0

    .line 413
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsHelper:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->onFavorite()V

    move v0, v1

    .line 414
    goto :goto_0

    .line 417
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsHelper:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->onFlag()V

    move v0, v1

    .line 418
    goto :goto_0

    .line 421
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsHelper:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->onSaveToPlaylist()V

    move v0, v1

    .line 422
    goto :goto_0

    .line 425
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsHelper:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->onCopyUrl()V

    move v0, v1

    .line 426
    goto :goto_0

    .line 406
    :pswitch_data_0
    .packed-switch 0x7f080090
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public onOrientationChanged(Z)V
    .locals 1
    .parameter "landscape"

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->fullscreen:Z

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->viewHolder:Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->layoutForFullscreen()V

    .line 456
    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 457
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->viewHolder:Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->layoutForOrientation(Z)V

    goto :goto_0
.end method

.method protected onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x7f080090

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 316
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 317
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/youtube/app/tablet/WatchController;->isLandscape()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->isExtraLargeScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x6

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 321
    iget-boolean v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsEnabled:Z

    if-eqz v1, :cond_2

    move v0, v3

    .line 322
    .local v0, visibility:I
    :goto_1
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->likeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 323
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->dislikeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 324
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsEnabled:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 325
    const v1, 0x7f080091

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsEnabled:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsHelper:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->isFavorite()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v4

    :goto_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 327
    const v1, 0x7f080092

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsEnabled:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsHelper:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-virtual {v2}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->isFavorite()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    :goto_3
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 329
    const v1, 0x7f080095

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsEnabled:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 330
    const v1, 0x7f080093

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsEnabled:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 331
    const v1, 0x7f080094

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsEnabled:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 332
    return-void

    .end local v0           #visibility:I
    :cond_1
    move v2, v3

    .line 317
    goto :goto_0

    .line 321
    :cond_2
    const/4 v1, 0x4

    move v0, v1

    goto :goto_1

    .restart local v0       #visibility:I
    :cond_3
    move v2, v3

    .line 325
    goto :goto_2

    :cond_4
    move v2, v3

    .line 327
    goto :goto_3
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsEnabled:Z

    .line 340
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 341
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsHelper:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->reset()V

    .line 342
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->watchInfo:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->showLoading()V

    .line 343
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->watchRelated:Lcom/google/android/youtube/app/ui/WatchRelatedHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->reset()V

    .line 344
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->watchComments:Lcom/google/android/youtube/app/ui/WatchCommentsHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->reset()V

    .line 345
    return-void
.end method

.method public onRetry()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->director:Lcom/google/android/youtube/app/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/player/Director;->reinit()V

    .line 373
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 303
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 304
    const-string v0, "selected_tab_index"

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    const-string v0, "fullscreen"

    iget-boolean v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->fullscreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 306
    return-void
.end method

.method protected onStart()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 259
    invoke-super {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onStart()V

    .line 260
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/WatchController;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 261
    .local v0, args:Landroid/os/Bundle;
    const-string v7, "video_id"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 262
    .local v6, videoId:Ljava/lang/String;
    const-string v7, "playlist_uri"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 263
    .local v5, playlistUri:Landroid/net/Uri;
    const-string v7, "artist_id"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, artistId:Ljava/lang/String;
    const-string v7, "intercepted_uri"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 267
    .local v3, interceptedUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/google/android/youtube/app/tablet/WatchController;->director:Lcom/google/android/youtube/app/player/Director;

    iget-boolean v8, p0, Lcom/google/android/youtube/app/tablet/WatchController;->fullscreen:Z

    invoke-virtual {v7, v8}, Lcom/google/android/youtube/app/player/Director;->setFullscreen(Z)V

    .line 268
    const-string v7, "force_fullscreen"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 269
    iput-boolean v10, p0, Lcom/google/android/youtube/app/tablet/WatchController;->forceFullscreen:Z

    .line 270
    iget-object v7, p0, Lcom/google/android/youtube/app/tablet/WatchController;->director:Lcom/google/android/youtube/app/player/Director;

    invoke-virtual {v7, v10}, Lcom/google/android/youtube/app/player/Director;->setForceFullscreen(Z)V

    .line 271
    iget-object v7, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v9}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 273
    :cond_0
    iget-object v7, p0, Lcom/google/android/youtube/app/tablet/WatchController;->director:Lcom/google/android/youtube/app/player/Director;

    const-string v8, "finish_on_ended"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/android/youtube/app/player/Director;->setFinishOnEnded(Z)V

    .line 275
    if-eqz v6, :cond_2

    .line 276
    iget-object v7, p0, Lcom/google/android/youtube/app/tablet/WatchController;->director:Lcom/google/android/youtube/app/player/Director;

    invoke-virtual {v7, v6}, Lcom/google/android/youtube/app/player/Director;->initVideo(Ljava/lang/String;)V

    .line 296
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/google/android/youtube/app/tablet/WatchController;->audioManager:Landroid/media/AudioManager;

    const/4 v8, 0x0

    const/high16 v9, -0x8000

    invoke-virtual {v7, v8, v9, v10}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 298
    iget-object v7, p0, Lcom/google/android/youtube/app/tablet/WatchController;->audioBecomingNoisyReceiver:Lcom/google/android/youtube/app/tablet/WatchController$AudioBecomingNoisyReceiver;

    invoke-virtual {v7}, Lcom/google/android/youtube/app/tablet/WatchController$AudioBecomingNoisyReceiver;->register()V

    .line 299
    return-void

    .line 277
    :cond_2
    if-eqz v5, :cond_3

    .line 278
    const-string v7, "authenticate"

    invoke-virtual {v0, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 279
    .local v2, authenticate:Z
    iget-object v7, p0, Lcom/google/android/youtube/app/tablet/WatchController;->director:Lcom/google/android/youtube/app/player/Director;

    invoke-virtual {v7, v5, v2}, Lcom/google/android/youtube/app/player/Director;->initPlaylist(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 280
    .end local v2           #authenticate:Z
    :cond_3
    if-nez v1, :cond_1

    .line 282
    if-eqz v3, :cond_5

    .line 283
    invoke-static {v3}, Lcom/google/android/youtube/core/utils/ExternalIntents;->parseYouTubeWatchUri(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v4

    .line 284
    .local v4, parsed:[Ljava/lang/String;
    aget-object v7, v4, v9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 285
    iget-object v7, p0, Lcom/google/android/youtube/app/tablet/WatchController;->director:Lcom/google/android/youtube/app/player/Director;

    aget-object v8, v4, v9

    aget-object v9, v4, v10

    invoke-virtual {v7, v8, v9}, Lcom/google/android/youtube/app/player/Director;->initVideo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_4
    const-string v7, "invalid intercepted URI"

    invoke-static {v7}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    .end local v4           #parsed:[Ljava/lang/String;
    :cond_5
    const-string v7, "invalid arguments format"

    invoke-static {v7}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 378
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->audioBecomingNoisyReceiver:Lcom/google/android/youtube/app/tablet/WatchController$AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/tablet/WatchController$AudioBecomingNoisyReceiver;->unregister()V

    .line 379
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->watchRelated:Lcom/google/android/youtube/app/ui/WatchRelatedHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->reset()V

    .line 380
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->watchComments:Lcom/google/android/youtube/app/ui/WatchCommentsHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->reset()V

    .line 381
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->director:Lcom/google/android/youtube/app/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/player/Director;->setStopped()V

    .line 382
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->viewHolder:Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->stopVideo()V

    .line 383
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->platform:Lcom/google/android/youtube/app/Platform;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/app/Platform;->setFullscreenMode(Landroid/app/Activity;Z)V

    .line 384
    invoke-super {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onStop()V

    .line 385
    return-void
.end method

.method public onToggleFullscreen(Z)V
    .locals 5
    .parameter "fullscreen"

    .prologue
    const/4 v4, 0x0

    .line 460
    iput-boolean p1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->fullscreen:Z

    .line 461
    if-nez p1, :cond_1

    .line 462
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->platform:Lcom/google/android/youtube/app/Platform;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-interface {v1, v2, v4}, Lcom/google/android/youtube/app/Platform;->setFullscreenMode(Landroid/app/Activity;Z)V

    .line 463
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    const v2, 0x7f0d00e3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 464
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 465
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    .line 467
    sget-object v1, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;->EXPANDED:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/tablet/WatchController;->setSearchMode(Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;)V

    .line 475
    :goto_0
    invoke-direct {p0}, Lcom/google/android/youtube/app/tablet/WatchController;->isLandscape()Z

    move-result v0

    .line 476
    .local v0, landscape:Z
    if-eqz p1, :cond_2

    .line 478
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 479
    if-eqz v0, :cond_0

    .line 480
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->viewHolder:Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->layoutForFullscreen()V

    .line 486
    :cond_0
    :goto_1
    return-void

    .line 469
    .end local v0           #landscape:Z
    :cond_1
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/WatchController;->fullscreenTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    sget-object v1, Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;->DISABLED:Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/tablet/WatchController;->setSearchMode(Lcom/google/android/youtube/app/tablet/YouTubeController$SearchMode;)V

    goto :goto_0

    .line 483
    .restart local v0       #landscape:Z
    :cond_2
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 484
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->viewHolder:Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/tablet/WatchController$ViewHolder;->layoutForOrientation(Z)V

    goto :goto_1
.end method

.method public onVideo(Lcom/google/android/youtube/core/model/Video;)V
    .locals 6
    .parameter "video"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 351
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    const v1, 0x7f0d00e7

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->fullscreenTitle:Ljava/lang/String;

    .line 352
    iget-boolean v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->fullscreen:Z

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->fullscreenTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 356
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->watchUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsEnabled:Z

    .line 358
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 359
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchController;->videoActionsHelper:Lcom/google/android/youtube/app/ui/VideoActionsHelper;

    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "unfavorite_uri"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/youtube/app/ui/VideoActionsHelper;->reset(Lcom/google/android/youtube/core/model/Video;Landroid/net/Uri;)V

    .line 362
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->watchInfo:Lcom/google/android/youtube/app/ui/WatchInfoHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/WatchInfoHelper;->reset(Lcom/google/android/youtube/core/model/Video;)V

    .line 363
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->watchRelated:Lcom/google/android/youtube/app/ui/WatchRelatedHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/WatchRelatedHelper;->reset(Lcom/google/android/youtube/core/model/Video;)V

    .line 364
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchController;->watchComments:Lcom/google/android/youtube/app/ui/WatchCommentsHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/WatchCommentsHelper;->reset(Lcom/google/android/youtube/core/model/Video;)V

    .line 365
    return-void

    :cond_1
    move v0, v4

    .line 356
    goto :goto_0
.end method
