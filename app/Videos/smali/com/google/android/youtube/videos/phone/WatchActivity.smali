.class public Lcom/google/android/youtube/videos/phone/WatchActivity;
.super Landroid/app/Activity;
.source "WatchActivity.java"

# interfaces
.implements Lcom/google/android/youtube/videos/player/Director$Listener;
.implements Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/phone/WatchActivity$AudioBecomingNoisyReceiver;
    }
.end annotation


# instance fields
.field private audioBecomingNoisyReceiver:Lcom/google/android/youtube/videos/phone/WatchActivity$AudioBecomingNoisyReceiver;

.field private audioManager:Landroid/media/AudioManager;

.field private director:Lcom/google/android/youtube/videos/player/Director;

.field private header:Landroid/view/View;

.field private navigation:Lcom/google/android/youtube/videos/Navigation;

.field private orientationHelper:Lcom/google/android/youtube/core/ui/OrientationHelper;

.field private player:Lcom/google/android/youtube/core/player/YouTubePlayer;

.field private preferences:Landroid/content/SharedPreferences;

.field private screenOffReceiver:Landroid/content/BroadcastReceiver;

.field private suggestionsHelper:Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

.field private suggestionsView:Lcom/google/android/youtube/core/ui/PagedGridView;

.field private tabRow:Lcom/google/android/youtube/core/ui/TabRow;

.field private upButton:Landroid/widget/ImageView;

.field private userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private watchInfo:Lcom/google/android/youtube/videos/phone/WatchInfoHelper;

.field private workspace:Lcom/google/android/youtube/core/ui/Workspace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 345
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/phone/WatchActivity;)Lcom/google/android/youtube/core/player/YouTubePlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    return-object v0
.end method

.method public static createFullscreenIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "videoId"

    .prologue
    .line 96
    invoke-static {p0, p1}, Lcom/google/android/youtube/videos/phone/WatchActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fullscreen"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "videoId"

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/videos/phone/WatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "video_id"

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createUriIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/videos/phone/WatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "intercepted_uri"

    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 7
    .parameter "userAuth"

    .prologue
    const/4 v6, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 188
    .local v0, args:Landroid/os/Bundle;
    const-string v5, "video_id"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, videoId:Ljava/lang/String;
    const-string v5, "intercepted_uri"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 190
    .local v1, interceptedUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 192
    .local v3, streamParams:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 193
    invoke-static {v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->parseYouTubeWatchUri(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, parsed:[Ljava/lang/String;
    aget-object v5, v2, v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 195
    aget-object v4, v2, v6

    .line 196
    const/4 v5, 0x1

    aget-object v3, v2, v5

    .line 208
    .end local v2           #parsed:[Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v5, v4, p1, v3}, Lcom/google/android/youtube/videos/player/Director;->initVideo(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Ljava/lang/String;)V

    .line 209
    :goto_0
    return-void

    .line 198
    .restart local v2       #parsed:[Ljava/lang/String;
    :cond_1
    const-string v5, "invalid intercepted URI"

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->finish()V

    goto :goto_0

    .line 202
    .end local v2           #parsed:[Ljava/lang/String;
    :cond_2
    if-nez v4, :cond_0

    .line 203
    const-string v5, "invalid arguments format"

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->finish()V

    goto :goto_0
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .locals 0
    .parameter "exception"

    .prologue
    .line 216
    invoke-static {p0, p1}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 217
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->finish()V

    .line 218
    return-void
.end method

.method public onBranding(Lcom/google/android/youtube/core/model/Branding;)V
    .locals 0
    .parameter "branding"

    .prologue
    .line 233
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "newConfig"

    .prologue
    const/4 v8, -0x1

    const/16 v7, 0x400

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 257
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 259
    .local v2, window:Landroid/view/Window;
    iget-object v3, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/player/YouTubePlayer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 260
    .local v0, playerParams:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 261
    invoke-virtual {v2, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 263
    iget-object v3, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->tabRow:Lcom/google/android/youtube/core/ui/TabRow;

    invoke-virtual {v3, v6}, Lcom/google/android/youtube/core/ui/TabRow;->setVisibility(I)V

    .line 264
    iget-object v3, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->workspace:Lcom/google/android/youtube/core/ui/Workspace;

    invoke-virtual {v3, v6}, Lcom/google/android/youtube/core/ui/Workspace;->setVisibility(I)V

    .line 265
    iget-object v3, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->header:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 266
    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 267
    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 269
    const-string v3, "search"

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/videos/phone/WatchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/SearchManager;

    invoke-virtual {v3}, Landroid/app/SearchManager;->stopSearch()V

    .line 279
    :goto_0
    iget-object v3, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v3, p1}, Lcom/google/android/youtube/videos/player/Director;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 281
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->closeOptionsMenu()V

    .line 282
    return-void

    .line 271
    :cond_0
    invoke-virtual {v2, v5, v7}, Landroid/view/Window;->setFlags(II)V

    .line 272
    iget-object v3, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->tabRow:Lcom/google/android/youtube/core/ui/TabRow;

    invoke-virtual {v3, v5}, Lcom/google/android/youtube/core/ui/TabRow;->setVisibility(I)V

    .line 273
    iget-object v3, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->workspace:Lcom/google/android/youtube/core/ui/Workspace;

    invoke-virtual {v3, v5}, Lcom/google/android/youtube/core/ui/Workspace;->setVisibility(I)V

    .line 274
    iget-object v3, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->header:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 275
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 276
    .local v1, screenWidth:I
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 277
    int-to-float v3, v1

    const v4, 0x3fe374bc

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public onControllerHidden()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public onControllerShown()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 106
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v18

    .line 109
    .local v18, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040015

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 111
    .local v19, view:Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/phone/WatchActivity;->setContentView(Landroid/view/View;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->getApplication()Landroid/app/Application;

    move-result-object v11

    check-cast v11, Lcom/google/android/youtube/videos/VideosApplication;

    .line 115
    .local v11, application:Lcom/google/android/youtube/videos/VideosApplication;
    invoke-virtual {v11}, Lcom/google/android/youtube/videos/VideosApplication;->getRequesters()Lcom/google/android/youtube/videos/Requesters;

    move-result-object v9

    .line 116
    .local v9, requesters:Lcom/google/android/youtube/videos/Requesters;
    invoke-virtual {v11}, Lcom/google/android/youtube/videos/VideosApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/phone/WatchActivity;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 117
    invoke-virtual {v11}, Lcom/google/android/youtube/videos/VideosApplication;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/phone/WatchActivity;->preferences:Landroid/content/SharedPreferences;

    .line 118
    new-instance v5, Lcom/google/android/youtube/videos/phone/PhoneNavigation;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/videos/phone/PhoneNavigation;-><init>(Landroid/app/Activity;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/phone/WatchActivity;->navigation:Lcom/google/android/youtube/videos/Navigation;

    .line 120
    const v5, 0x7f080047

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/phone/WatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/phone/WatchActivity;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    .line 122
    new-instance v5, Lcom/google/android/youtube/videos/player/Director;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/phone/WatchActivity;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/phone/WatchActivity;->preferences:Landroid/content/SharedPreferences;

    move-object v8, v0

    invoke-virtual {v11}, Lcom/google/android/youtube/videos/VideosApplication;->getDrmManager()Lcom/google/android/youtube/videos/DrmManager;

    move-result-object v10

    move-object/from16 v7, p0

    move-object/from16 v12, p0

    invoke-direct/range {v5 .. v12}, Lcom/google/android/youtube/videos/player/Director;-><init>(Lcom/google/android/youtube/core/player/YouTubePlayer;Landroid/app/Activity;Landroid/content/SharedPreferences;Lcom/google/android/youtube/videos/Requesters;Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/videos/player/Director$Listener;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/phone/WatchActivity;->director:Lcom/google/android/youtube/videos/player/Director;

    .line 125
    const v5, 0x7f080041

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/phone/WatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/phone/WatchActivity;->header:Landroid/view/View;

    .line 126
    const v5, 0x7f080048

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/phone/WatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/youtube/core/ui/TabRow;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/phone/WatchActivity;->tabRow:Lcom/google/android/youtube/core/ui/TabRow;

    .line 127
    const v5, 0x7f08003e

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/phone/WatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/youtube/core/ui/Workspace;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/phone/WatchActivity;->workspace:Lcom/google/android/youtube/core/ui/Workspace;

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/phone/WatchActivity;->workspace:Lcom/google/android/youtube/core/ui/Workspace;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/phone/WatchActivity;->tabRow:Lcom/google/android/youtube/core/ui/TabRow;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/google/android/youtube/core/ui/Workspace;->setTabRow(Lcom/google/android/youtube/core/ui/TabRow;)V

    .line 130
    const v5, 0x7f08003b

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/phone/WatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/phone/WatchActivity;->upButton:Landroid/widget/ImageView;

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/phone/WatchActivity;->upButton:Landroid/widget/ImageView;

    move-object v5, v0

    new-instance v6, Lcom/google/android/youtube/videos/phone/WatchActivity$1;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/videos/phone/WatchActivity$1;-><init>(Lcom/google/android/youtube/videos/phone/WatchActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    new-instance v5, Lcom/google/android/youtube/videos/phone/WatchInfoHelper;

    invoke-interface {v9}, Lcom/google/android/youtube/videos/Requesters;->getPosterArtRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object v3, v6

    move-object/from16 v4, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/videos/phone/WatchInfoHelper;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/ui/StatusHelper$OnRetryListener;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/phone/WatchActivity;->watchInfo:Lcom/google/android/youtube/videos/phone/WatchInfoHelper;

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/phone/WatchActivity;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    move-object v5, v0

    new-instance v6, Landroid/os/Handler;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    invoke-virtual {v5, v6}, Lcom/google/android/youtube/core/player/YouTubePlayer;->addListener(Landroid/os/Handler;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/phone/WatchActivity;->audioManager:Landroid/media/AudioManager;

    .line 142
    new-instance v5, Lcom/google/android/youtube/videos/phone/WatchActivity$AudioBecomingNoisyReceiver;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/videos/phone/WatchActivity$AudioBecomingNoisyReceiver;-><init>(Lcom/google/android/youtube/videos/phone/WatchActivity;Lcom/google/android/youtube/videos/phone/WatchActivity$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/phone/WatchActivity;->audioBecomingNoisyReceiver:Lcom/google/android/youtube/videos/phone/WatchActivity$AudioBecomingNoisyReceiver;

    .line 144
    const v5, 0x7f080049

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/phone/WatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/youtube/core/ui/PagedGridView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/phone/WatchActivity;->suggestionsView:Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 145
    new-instance v12, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/phone/WatchActivity;->suggestionsView:Lcom/google/android/youtube/core/ui/PagedGridView;

    move-object v14, v0

    new-instance v15, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;

    const v5, 0x7f040007

    move-object v0, v15

    move-object/from16 v1, p0

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/videos/adapter/MovieListAdapter;-><init>(Landroid/content/Context;I)V

    invoke-interface {v9}, Lcom/google/android/youtube/videos/Requesters;->getSuggestedMoviesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v16

    invoke-interface {v9}, Lcom/google/android/youtube/videos/Requesters;->getPosterArtRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v17

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v17}, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/videos/adapter/MovieListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/phone/WatchActivity;->suggestionsHelper:Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

    .line 152
    new-instance v5, Lcom/google/android/youtube/core/ui/OrientationHelper;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/ui/OrientationHelper;-><init>(Landroid/app/Activity;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/phone/WatchActivity;->orientationHelper:Lcom/google/android/youtube/core/ui/OrientationHelper;

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/phone/WatchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 156
    new-instance v5, Lcom/google/android/youtube/videos/phone/WatchActivity$2;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/youtube/videos/phone/WatchActivity$2;-><init>(Lcom/google/android/youtube/videos/phone/WatchActivity;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/videos/phone/WatchActivity;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    packed-switch p1, :pswitch_data_0

    .line 228
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 225
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->onCreateDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 223
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 287
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f10

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 288
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 341
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 342
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/player/Director;->release()V

    .line 343
    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->watchInfo:Lcom/google/android/youtube/videos/phone/WatchInfoHelper;

    invoke-static {p0, p1}, Lcom/google/android/youtube/core/ErrorHelper;->humanize(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/phone/WatchInfoHelper;->showError(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/phone/WatchActivity;->setIntent(Landroid/content/Intent;)V

    .line 182
    const-string v1, "authAccount"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, accountName:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v1, v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->peek(Ljava/lang/String;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 184
    return-void
.end method

.method public onNotAuthenticated()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->finish()V

    .line 213
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->navigation:Lcom/google/android/youtube/videos/Navigation;

    invoke-static {p1, p0, v0}, Lcom/google/android/youtube/videos/VideosApplication;->onCommonOptionsItemSelected(Landroid/view/MenuItem;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const/4 v0, 0x1

    .line 296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->watchInfo:Lcom/google/android/youtube/videos/phone/WatchInfoHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/phone/WatchInfoHelper;->showLoading()V

    .line 252
    return-void
.end method

.method public onRetry()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/player/Director;->reinit()V

    .line 319
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/high16 v2, -0x8000

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 170
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->audioBecomingNoisyReceiver:Lcom/google/android/youtube/videos/phone/WatchActivity$AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/phone/WatchActivity$AudioBecomingNoisyReceiver;->register()V

    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/videos/phone/WatchActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 328
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->audioBecomingNoisyReceiver:Lcom/google/android/youtube/videos/phone/WatchActivity$AudioBecomingNoisyReceiver;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/phone/WatchActivity$AudioBecomingNoisyReceiver;->unregister()V

    .line 329
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 330
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/player/Director;->setStopped()V

    .line 331
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->player:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/YouTubePlayer;->stopVideo()V

    .line 332
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 333
    return-void
.end method

.method public onStream(Lcom/google/android/youtube/core/model/Stream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 365
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->director:Lcom/google/android/youtube/videos/player/Director;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/player/Director;->onStream(Lcom/google/android/youtube/core/model/Stream;)V

    .line 366
    return-void
.end method

.method public onToggleFullscreen(Z)V
    .locals 1
    .parameter "fullscreen"

    .prologue
    .line 300
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->setRequestedOrientation(I)V

    .line 302
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->orientationHelper:Lcom/google/android/youtube/core/ui/OrientationHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/OrientationHelper;->enable()V

    .line 303
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onUpClicked()V
    .locals 1

    .prologue
    .line 336
    invoke-static {p0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/phone/WatchActivity;->startActivity(Landroid/content/Intent;)V

    .line 337
    return-void
.end method

.method public onVideo(Lcom/google/android/youtube/core/model/Video;)V
    .locals 4
    .parameter "video"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->watchInfo:Lcom/google/android/youtube/videos/phone/WatchInfoHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/phone/WatchInfoHelper;->showVideo(Lcom/google/android/youtube/core/model/Video;)V

    .line 310
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->suggestionsHelper:Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->initEmpty()V

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/WatchActivity;->suggestionsHelper:Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/youtube/core/model/Video;->relatedUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/google/android/youtube/core/async/GDataRequests;->getSuggestedMoviesRequest(Landroid/net/Uri;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/ui/MoviePagedViewHelper;->init([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_0
.end method
