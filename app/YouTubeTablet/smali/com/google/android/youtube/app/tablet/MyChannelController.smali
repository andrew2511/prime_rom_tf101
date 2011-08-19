.class public Lcom/google/android/youtube/app/tablet/MyChannelController;
.super Lcom/google/android/youtube/app/tablet/YouTubeController;
.source "MyChannelController.java"

# interfaces
.implements Lcom/google/android/youtube/app/ui/CardLayoutHelper$CardListener;
.implements Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/tablet/MyChannelController$6;,
        Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;
    }
.end annotation


# instance fields
.field private channelHeader:Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;

.field private deleteUploadRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private favoritesHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

.field private playlistsHelper:Lcom/google/android/youtube/core/ui/PagedViewHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/ui/PagedViewHelper",
            "<",
            "Lcom/google/android/youtube/core/model/Playlist;",
            ">;"
        }
    .end annotation
.end field

.field private previousCardId:I

.field private selectedPlaylist:Lcom/google/android/youtube/core/model/Playlist;

.field private sidebarHelper:Lcom/google/android/youtube/app/ui/CardLayoutHelper;

.field private subscriptionsHelper:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;

.field private final uploadsActionMode:Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;

.field private uploadsHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

.field private userAuth:Lcom/google/android/youtube/core/model/UserAuth;

.field private userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Landroid/os/Bundle;)V
    .locals 2
    .parameter "application"
    .parameter "activity"
    .parameter "navigation"
    .parameter "launchBundle"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/app/tablet/YouTubeController;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Landroid/os/Bundle;)V

    .line 95
    new-instance v0, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;-><init>(Lcom/google/android/youtube/app/tablet/MyChannelController;Lcom/google/android/youtube/app/tablet/MyChannelController$1;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->uploadsActionMode:Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;

    .line 96
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/app/tablet/MyChannelController;)Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->uploadsActionMode:Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/youtube/app/tablet/MyChannelController;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->deleteUploadRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/youtube/app/tablet/MyChannelController;)Lcom/google/android/youtube/core/async/UserAuthorizer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/app/tablet/MyChannelController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/app/tablet/MyChannelController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/app/tablet/MyChannelController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/app/tablet/MyChannelController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/youtube/app/tablet/MyChannelController;->onReset()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/youtube/app/tablet/MyChannelController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/youtube/app/tablet/MyChannelController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/youtube/app/tablet/MyChannelController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/youtube/app/tablet/MyChannelController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private onReset()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 241
    return-void
.end method

.method private setPlaylistClickListener(Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;)V
    .locals 1
    .parameter "list"
    .parameter "adapter"

    .prologue
    .line 355
    new-instance v0, Lcom/google/android/youtube/app/tablet/MyChannelController$4;

    invoke-direct {v0, p0, p2}, Lcom/google/android/youtube/app/tablet/MyChannelController$4;-><init>(Lcom/google/android/youtube/app/tablet/MyChannelController;Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;)V

    invoke-interface {p1, v0}, Lcom/google/android/youtube/core/ui/PagedView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 362
    return-void
.end method

.method private setSubscriptionClickListener(Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;)V
    .locals 1
    .parameter "list"
    .parameter "adapter"

    .prologue
    .line 366
    new-instance v0, Lcom/google/android/youtube/app/tablet/MyChannelController$5;

    invoke-direct {v0, p0, p2}, Lcom/google/android/youtube/app/tablet/MyChannelController$5;-><init>(Lcom/google/android/youtube/app/tablet/MyChannelController;Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;)V

    invoke-interface {p1, v0}, Lcom/google/android/youtube/core/ui/PagedView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 388
    return-void
.end method


# virtual methods
.method protected getContentViewId()I
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f040017

    return v0
.end method

.method public onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 1
    .parameter "userAuth"

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 245
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->channelHeader:Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->init(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 246
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->sidebarHelper:Lcom/google/android/youtube/app/ui/CardLayoutHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->getSelectedCard()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/tablet/MyChannelController;->onCardSelected(I)V

    .line 247
    return-void
.end method

.method public onAuthenticationError(Ljava/lang/Exception;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 256
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->navigation:Lcom/google/android/youtube/app/Navigation;

    invoke-interface {v0}, Lcom/google/android/youtube/app/Navigation;->toHome()V

    .line 258
    return-void
.end method

.method public onCardSelected(I)V
    .locals 5
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 264
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 266
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->uploadsHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v2}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyUploadsRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->init([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_0

    .line 269
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->favoritesHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v2}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyFavoritesRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->init([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_0

    .line 272
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->playlistsHelper:Lcom/google/android/youtube/core/ui/PagedViewHelper;

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    const/16 v3, 0x17

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyPlaylistsRequest(Lcom/google/android/youtube/core/model/UserAuth;I)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->init([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_0

    .line 275
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->subscriptionsHelper:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v2}, Lcom/google/android/youtube/core/async/GDataRequests;->getMySubscriptionsRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->init([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_0

    .line 264
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08001a -> :sswitch_0
        0x7f08001b -> :sswitch_1
        0x7f08001d -> :sswitch_2
        0x7f080035 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCardUnselected(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 281
    sparse-switch p1, :sswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 283
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->uploadsActionMode:Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/tablet/MyChannelController$UploadsActionModeCallback;->maybeFinishUploadsActionMode()V

    .line 284
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->uploadsHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->reset()V

    goto :goto_0

    .line 287
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->favoritesHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->reset()V

    goto :goto_0

    .line 290
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->playlistsHelper:Lcom/google/android/youtube/core/ui/PagedViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->reset()V

    goto :goto_0

    .line 293
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->subscriptionsHelper:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->reset()V

    goto :goto_0

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08001a -> :sswitch_0
        0x7f08001b -> :sswitch_1
        0x7f08001d -> :sswitch_2
        0x7f080035 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 41
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-super/range {p0 .. p2}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/youtube/app/YouTubeApplication;->getRequesters()Lcom/google/android/youtube/app/Requesters;

    move-result-object v39

    .line 107
    .local v39, requesters:Lcom/google/android/youtube/app/Requesters;
    invoke-interface/range {v39 .. v39}, Lcom/google/android/youtube/app/Requesters;->getDeleteUploadRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/MyChannelController;->deleteUploadRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/youtube/app/YouTubeApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/MyChannelController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 110
    invoke-interface/range {v39 .. v39}, Lcom/google/android/youtube/app/Requesters;->getThumbnailRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v13

    .line 111
    .local v13, thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    invoke-interface/range {v39 .. v39}, Lcom/google/android/youtube/app/Requesters;->getAvatarRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v36

    .line 112
    .local v36, avatarRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    invoke-interface/range {v39 .. v39}, Lcom/google/android/youtube/app/Requesters;->getMyProfileRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v38

    .line 113
    .local v38, myProfileRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserProfile;>;"
    invoke-interface/range {v39 .. v39}, Lcom/google/android/youtube/app/Requesters;->getMyUploadsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v11

    .line 114
    .local v11, myUploadsRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    invoke-interface/range {v39 .. v39}, Lcom/google/android/youtube/app/Requesters;->getUploadsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v33

    .line 115
    .local v33, uploadsRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    invoke-interface/range {v39 .. v39}, Lcom/google/android/youtube/app/Requesters;->getEventsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v34

    .line 116
    .local v34, eventsRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Event;>;>;"
    invoke-interface/range {v39 .. v39}, Lcom/google/android/youtube/app/Requesters;->getMyFavoritesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v20

    .line 117
    .local v20, favoritesRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    invoke-interface/range {v39 .. v39}, Lcom/google/android/youtube/app/Requesters;->getMyPlaylistsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v26

    .line 119
    .local v26, playlistsRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Playlist;>;>;"
    invoke-interface/range {v39 .. v39}, Lcom/google/android/youtube/app/Requesters;->getMyPlaylistThumbnailRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v27

    .line 121
    .local v27, playlistsThumbnailRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Landroid/graphics/Bitmap;>;"
    invoke-interface/range {v39 .. v39}, Lcom/google/android/youtube/app/Requesters;->getMySubscriptionsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v32

    .line 123
    .local v32, subscriptionsRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Subscription;>;>;"
    invoke-interface/range {v39 .. v39}, Lcom/google/android/youtube/app/Requesters;->getMusicVideosRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v12

    .line 125
    .local v12, musicVideosRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;>;"
    invoke-interface/range {v39 .. v39}, Lcom/google/android/youtube/app/Requesters;->getUserProfileRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v35

    .line 131
    .local v35, userProfileRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserProfile;>;"
    new-instance v5, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    move-object/from16 v3, v38

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/MyChannelController;->channelHeader:Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;

    .line 133
    const v5, 0x7f08001a

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 134
    .local v9, uploads:Lcom/google/android/youtube/core/ui/PagedGridView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->create(Landroid/content/Context;)Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    move-result-object v10

    .line 135
    .local v10, uploadsListAdapter:Lcom/google/android/youtube/app/adapter/VideoListAdapter;
    new-instance v5, Lcom/google/android/youtube/app/tablet/MyChannelController$1;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController;->navigation:Lcom/google/android/youtube/app/Navigation;

    move-object v8, v0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v15, v0

    sget-object v16, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Uploads:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    move-object/from16 v6, p0

    move-object/from16 v17, v9

    invoke-direct/range {v5 .. v17}, Lcom/google/android/youtube/app/tablet/MyChannelController$1;-><init>(Lcom/google/android/youtube/app/tablet/MyChannelController;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;Lcom/google/android/youtube/core/ui/PagedGridView;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/MyChannelController;->uploadsHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    .line 166
    const v5, 0x7f08001b

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 167
    .local v18, favorites:Lcom/google/android/youtube/core/ui/PagedGridView;
    new-instance v14, Lcom/google/android/youtube/app/tablet/MyChannelController$2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController;->navigation:Lcom/google/android/youtube/app/Navigation;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->create(Landroid/content/Context;)Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    move-result-object v19

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object/from16 v24, v0

    sget-object v25, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Favorites:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    move-object/from16 v15, p0

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    invoke-direct/range {v14 .. v25}, Lcom/google/android/youtube/app/tablet/MyChannelController$2;-><init>(Lcom/google/android/youtube/app/tablet/MyChannelController;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/MyChannelController;->favoritesHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    .line 184
    new-instance v25, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    move-object v5, v0

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;-><init>(Landroid/content/Context;)V

    .line 185
    .local v25, playlistsAdapter:Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;
    const v5, 0x7f08001d

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 186
    .local v24, playlists:Lcom/google/android/youtube/core/ui/PagedGridView;
    new-instance v21, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController;->navigation:Lcom/google/android/youtube/app/Navigation;

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v27}, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/MyChannelController;->playlistsHelper:Lcom/google/android/youtube/core/ui/PagedViewHelper;

    .line 193
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/tablet/MyChannelController;->setPlaylistClickListener(Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;)V

    .line 195
    new-instance v31, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    move-object v5, v0

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;-><init>(Landroid/content/Context;)V

    .line 196
    .local v31, subscriptionsAdapter:Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;
    const v5, 0x7f080035

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 197
    .local v30, subscriptions:Lcom/google/android/youtube/core/ui/PagedGridView;
    new-instance v28, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v36}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/MyChannelController;->subscriptionsHelper:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;

    .line 206
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/tablet/MyChannelController;->setSubscriptionClickListener(Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/tablet/MyChannelController;->getArguments()Landroid/os/Bundle;

    move-result-object v37

    .line 209
    .local v37, args:Landroid/os/Bundle;
    const v40, 0x7f08001a

    .line 210
    .local v40, selectedCardId:I
    if-eqz p2, :cond_1

    .line 211
    const-string v5, "previous_tab_id"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/youtube/app/tablet/MyChannelController;->previousCardId:I

    .line 212
    const-string v5, "selected_tab_id"

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v40

    .line 213
    const-string v5, "selected_playlist"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/google/android/youtube/core/model/Playlist;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/MyChannelController;->selectedPlaylist:Lcom/google/android/youtube/core/model/Playlist;

    .line 217
    :cond_0
    :goto_0
    const v5, 0x7f080026

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    const v5, 0x7f040027

    const v6, 0x7f08001f

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/FrameLayout;

    move-object/from16 v0, p2

    move v1, v5

    move-object/from16 v2, p1

    move/from16 v3, v40

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->createCardLayoutHelper(Landroid/widget/ListView;ILandroid/widget/FrameLayout;I)Lcom/google/android/youtube/app/ui/CardLayoutHelper;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/MyChannelController;->sidebarHelper:Lcom/google/android/youtube/app/ui/CardLayoutHelper;

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/MyChannelController;->sidebarHelper:Lcom/google/android/youtube/app/ui/CardLayoutHelper;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->setCardListener(Lcom/google/android/youtube/app/ui/CardLayoutHelper$CardListener;)V

    .line 223
    return-void

    .line 214
    .restart local p1
    .restart local p2
    :cond_1
    if-eqz v37, :cond_0

    .line 215
    const-string v5, "selected_tab_id"

    move-object/from16 v0, v37

    move-object v1, v5

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v40

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 328
    sparse-switch p1, :sswitch_data_0

    .line 350
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 330
    :sswitch_0
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->onCreateDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 333
    :sswitch_1
    new-instance v0, Lcom/google/android/youtube/app/tablet/MyChannelController$3;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/app/tablet/MyChannelController$3;-><init>(Lcom/google/android/youtube/app/tablet/MyChannelController;)V

    .line 341
    .local v0, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d00cf

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d00d0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 328
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 308
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 309
    const v0, 0x7f100003

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 310
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/ExternalIntents;->isUploadAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    const v0, 0x7f080089

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 313
    :cond_0
    return-void
.end method

.method public onNotAuthenticated()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 251
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->navigation:Lcom/google/android/youtube/app/Navigation;

    invoke-interface {v0}, Lcom/google/android/youtube/app/Navigation;->toHome()V

    .line 252
    return-void
.end method

.method protected onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 317
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 323
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 319
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    const-string v1, "Upload"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/YouTubeApplication;->trackEvent(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/ExternalIntents;->startVideoPickerForUpload(Landroid/app/Activity;)V

    .line 321
    const/4 v0, 0x1

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x7f080089
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 227
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 228
    const-string v0, "previous_tab_id"

    iget v1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->previousCardId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 229
    const-string v0, "selected_tab_id"

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->sidebarHelper:Lcom/google/android/youtube/app/ui/CardLayoutHelper;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->getSelectedCard()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 230
    const-string v0, "selected_playlist"

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->selectedPlaylist:Lcom/google/android/youtube/core/model/Playlist;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 231
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onStart()V

    .line 236
    invoke-direct {p0}, Lcom/google/android/youtube/app/tablet/MyChannelController;->onReset()V

    .line 237
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->sidebarHelper:Lcom/google/android/youtube/app/ui/CardLayoutHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->getSelectedCard()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/tablet/MyChannelController;->onCardUnselected(I)V

    .line 301
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->sidebarHelper:Lcom/google/android/youtube/app/ui/CardLayoutHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->notifyDataSetInvalidated()V

    .line 302
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/MyChannelController;->channelHeader:Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->reset()V

    .line 303
    invoke-super {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onStop()V

    .line 304
    return-void
.end method
