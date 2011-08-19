.class public Lcom/google/android/youtube/app/tablet/ChannelController;
.super Lcom/google/android/youtube/app/tablet/YouTubeController;
.source "ChannelController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/google/android/youtube/app/ui/CardLayoutHelper$CardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/tablet/ChannelController$UnsubscribeCallback;,
        Lcom/google/android/youtube/app/tablet/ChannelController$SubscribeCallback;,
        Lcom/google/android/youtube/app/tablet/ChannelController$SubscriptionsAuthenticatee;
    }
.end annotation


# instance fields
.field private authenticatee:Lcom/google/android/youtube/app/tablet/ChannelController$SubscriptionsAuthenticatee;

.field private channelHeader:Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;

.field private channelName:Ljava/lang/String;

.field eventsHelper:Lcom/google/android/youtube/app/ui/EventPagedViewHelper;

.field private favoritesHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

.field private items:[Ljava/lang/String;

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

.field private final subscribeRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private subscriptionButton:Landroid/view/MenuItem;

.field private final unsubscribeRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private unsubscribeUri:Landroid/net/Uri;

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
    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/app/tablet/YouTubeController;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p1}, Lcom/google/android/youtube/app/YouTubeApplication;->getRequesters()Lcom/google/android/youtube/app/Requesters;

    move-result-object v0

    .line 125
    .local v0, requesters:Lcom/google/android/youtube/app/Requesters;
    invoke-interface {v0}, Lcom/google/android/youtube/app/Requesters;->getSubscribeRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->subscribeRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 126
    invoke-interface {v0}, Lcom/google/android/youtube/app/Requesters;->getUnsubscribeRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->unsubscribeRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 127
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/youtube/app/tablet/ChannelController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/youtube/app/tablet/ChannelController;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/model/UserAuth;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/youtube/app/tablet/ChannelController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/youtube/app/tablet/ChannelController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/app/tablet/ChannelController;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->unsubscribeUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/youtube/app/tablet/ChannelController;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->unsubscribeUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/youtube/app/tablet/ChannelController;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->unsubscribeRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/app/tablet/ChannelController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/app/tablet/ChannelController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/app/tablet/ChannelController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/youtube/app/tablet/ChannelController;->resetSubscriptionButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/youtube/app/tablet/ChannelController;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/tablet/ChannelController;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/youtube/app/tablet/ChannelController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/youtube/app/tablet/ChannelController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static createArguments(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "username"

    .prologue
    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-object v0
.end method

.method public static createArguments(Ljava/lang/String;ILandroid/net/Uri;)Landroid/os/Bundle;
    .locals 2
    .parameter "username"
    .parameter "selectedCardId"
    .parameter "unsubscribeUri"

    .prologue
    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "username"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "selected_tab_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    const-string v1, "unsubscribe_uri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 115
    return-object v0
.end method

.method private resetSubscriptionButton()V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->subscriptionButton:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->unsubscribeUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    const v1, 0x7f02004a

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 313
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->subscriptionButton:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->unsubscribeUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    const v1, 0x7f0d0069

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 314
    return-void

    .line 310
    :cond_0
    const v1, 0x7f020041

    goto :goto_0

    .line 313
    :cond_1
    const v1, 0x7f0d0068

    goto :goto_1
.end method

.method private setPlaylistClickListener(Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;)V
    .locals 1
    .parameter "list"
    .parameter "adapter"

    .prologue
    .line 317
    new-instance v0, Lcom/google/android/youtube/app/tablet/ChannelController$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/youtube/app/tablet/ChannelController$1;-><init>(Lcom/google/android/youtube/app/tablet/ChannelController;Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;)V

    invoke-interface {p1, v0}, Lcom/google/android/youtube/core/ui/PagedView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 324
    return-void
.end method


# virtual methods
.method protected getContentViewId()I
    .locals 1

    .prologue
    .line 131
    const v0, 0x7f040009

    return v0
.end method

.method public onCardSelected(I)V
    .locals 5
    .parameter "id"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 247
    packed-switch p1, :pswitch_data_0

    .line 261
    :goto_0
    return-void

    .line 249
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->uploadsHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->channelName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/youtube/core/async/GDataRequests;->getUploadsRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->init([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_0

    .line 252
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->favoritesHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->channelName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/youtube/core/async/GDataRequests;->getFavoritesRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->init([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_0

    .line 255
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->eventsHelper:Lcom/google/android/youtube/app/ui/EventPagedViewHelper;

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->channelName:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/youtube/core/async/GDataRequests;->getEventsRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->init([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_0

    .line 258
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->playlistsHelper:Lcom/google/android/youtube/core/ui/PagedViewHelper;

    new-array v1, v1, [Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->channelName:Ljava/lang/String;

    const/16 v3, 0x17

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequests;->getPlaylistsRequest(Ljava/lang/String;I)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->init([Lcom/google/android/youtube/core/async/GDataRequest;)V

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x7f08001a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCardUnselected(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 264
    packed-switch p1, :pswitch_data_0

    .line 278
    :goto_0
    return-void

    .line 266
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->uploadsHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->reset()V

    goto :goto_0

    .line 269
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->favoritesHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->reset()V

    goto :goto_0

    .line 272
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->eventsHelper:Lcom/google/android/youtube/app/ui/EventPagedViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;->reset()V

    goto :goto_0

    .line 275
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->playlistsHelper:Lcom/google/android/youtube/core/ui/PagedViewHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/ui/PagedViewHelper;->reset()V

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x7f08001a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 346
    packed-switch p2, :pswitch_data_0

    .line 368
    :goto_0
    return-void

    .line 348
    :pswitch_0
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->channelName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequests;->getSubscribeToActivityRequest(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    .line 349
    .local v0, request:Lcom/google/android/youtube/core/async/GDataRequest;
    const v2, 0x7f0d0072

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->channelName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/google/android/youtube/app/tablet/ChannelController;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    const-string v3, "SubscribeToActivity"

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/YouTubeApplication;->trackEvent(Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->subscribeRequester:Lcom/google/android/youtube/core/async/Requester;

    new-instance v3, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v4, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/google/android/youtube/app/tablet/ChannelController$SubscribeCallback;

    invoke-direct {v5, p0, v1}, Lcom/google/android/youtube/app/tablet/ChannelController$SubscribeCallback;-><init>(Lcom/google/android/youtube/app/tablet/ChannelController;Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v2, v0, v3}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 353
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 357
    .end local v0           #request:Lcom/google/android/youtube/core/async/GDataRequest;
    .end local v1           #text:Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->channelName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequests;->getSubscribeToUploadsRequest(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    .line 358
    .restart local v0       #request:Lcom/google/android/youtube/core/async/GDataRequest;
    const v2, 0x7f0d0073

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->channelName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/google/android/youtube/app/tablet/ChannelController;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .restart local v1       #text:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    const-string v3, "SubscribeToUploads"

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/YouTubeApplication;->trackEvent(Ljava/lang/String;)V

    .line 360
    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->subscribeRequester:Lcom/google/android/youtube/core/async/Requester;

    new-instance v3, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v4, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/google/android/youtube/app/tablet/ChannelController$SubscribeCallback;

    invoke-direct {v5, p0, v1}, Lcom/google/android/youtube/app/tablet/ChannelController$SubscribeCallback;-><init>(Lcom/google/android/youtube/app/tablet/ChannelController;Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v2, v0, v3}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 362
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 346
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 38
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 136
    invoke-super/range {p0 .. p2}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    move-object v5, v0

    const v6, 0x7f0d00e6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setTitle(I)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/youtube/app/YouTubeApplication;->getUserAuthorizer()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/ChannelController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/youtube/app/YouTubeApplication;->getRequesters()Lcom/google/android/youtube/app/Requesters;

    move-result-object v35

    .line 141
    .local v35, requesters:Lcom/google/android/youtube/app/Requesters;
    invoke-interface/range {v35 .. v35}, Lcom/google/android/youtube/app/Requesters;->getVideoRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v25

    .line 142
    .local v25, videoRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Video;>;"
    invoke-interface/range {v35 .. v35}, Lcom/google/android/youtube/app/Requesters;->getUserProfileRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v37

    .line 144
    .local v37, userProfileRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserProfile;>;"
    invoke-interface/range {v35 .. v35}, Lcom/google/android/youtube/app/Requesters;->getUploadsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v10

    .line 145
    .local v10, uploadsRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    invoke-interface/range {v35 .. v35}, Lcom/google/android/youtube/app/Requesters;->getThumbnailRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v12

    .line 146
    .local v12, thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    invoke-interface/range {v35 .. v35}, Lcom/google/android/youtube/app/Requesters;->getAvatarRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v34

    .line 147
    .local v34, avatarRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    invoke-interface/range {v35 .. v35}, Lcom/google/android/youtube/app/Requesters;->getFavoritesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v18

    .line 148
    .local v18, favoritesRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    invoke-interface/range {v35 .. v35}, Lcom/google/android/youtube/app/Requesters;->getEventsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v24

    .line 149
    .local v24, eventsRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Event;>;>;"
    invoke-interface/range {v35 .. v35}, Lcom/google/android/youtube/app/Requesters;->getPlaylistsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v31

    .line 150
    .local v31, playlistsRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Playlist;>;>;"
    invoke-interface/range {v35 .. v35}, Lcom/google/android/youtube/app/Requesters;->getPlaylistThumbnailRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v32

    .line 152
    .local v32, playlistsThumbnailRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Landroid/graphics/Bitmap;>;"
    invoke-interface/range {v35 .. v35}, Lcom/google/android/youtube/app/Requesters;->getMusicVideosRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v11

    .line 158
    .local v11, musicVideosRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/app/tablet/ChannelController;->getArguments()Landroid/os/Bundle;

    move-result-object v33

    .line 159
    .local v33, args:Landroid/os/Bundle;
    const-string v5, "username"

    move-object/from16 v0, v33

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/ChannelController;->channelName:Ljava/lang/String;

    .line 160
    const-string v5, "unsubscribe_uri"

    move-object/from16 v0, v33

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/ChannelController;->unsubscribeUri:Landroid/net/Uri;

    .line 162
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/ChannelController;->items:[Ljava/lang/String;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->items:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x0

    const v7, 0x7f0d0070

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->channelName:Ljava/lang/String;

    move-object v13, v0

    aput-object v13, v8, v9

    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/tablet/ChannelController;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->items:[Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x1

    const v7, 0x7f0d0071

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->channelName:Ljava/lang/String;

    move-object v13, v0

    aput-object v13, v8, v9

    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/tablet/ChannelController;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 166
    new-instance v5, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p1

    move-object/from16 v3, v37

    move-object/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/ChannelController;->channelHeader:Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->channelHeader:Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->channelName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->init(Ljava/lang/String;)V

    .line 169
    new-instance v5, Lcom/google/android/youtube/app/tablet/ChannelController$SubscriptionsAuthenticatee;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/tablet/ChannelController$SubscriptionsAuthenticatee;-><init>(Lcom/google/android/youtube/app/tablet/ChannelController;Landroid/app/Activity;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/ChannelController;->authenticatee:Lcom/google/android/youtube/app/tablet/ChannelController$SubscriptionsAuthenticatee;

    .line 171
    new-instance v5, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->navigation:Lcom/google/android/youtube/app/Navigation;

    move-object v7, v0

    const v8, 0x7f08001a

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/youtube/core/ui/PagedGridView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    move-object v9, v0

    invoke-static {v9}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->create(Landroid/content/Context;)Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    move-result-object v9

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object v14, v0

    sget-object v15, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelUploads:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-direct/range {v5 .. v15}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/ChannelController;->uploadsHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    .line 183
    new-instance v13, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->navigation:Lcom/google/android/youtube/app/Navigation;

    move-object v15, v0

    const v5, 0x7f08001b

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/google/android/youtube/core/ui/PagedGridView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->create(Landroid/content/Context;)Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    move-result-object v17

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object/from16 v22, v0

    sget-object v23, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelFavorites:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    invoke-direct/range {v13 .. v23}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/VideoListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;ZLcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/ChannelController;->favoritesHelper:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    .line 195
    new-instance v19, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->navigation:Lcom/google/android/youtube/app/Navigation;

    move-object/from16 v21, v0

    const v5, 0x7f08001c

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/google/android/youtube/core/ui/PagedListView;

    new-instance v23, Lcom/google/android/youtube/app/adapter/EventListAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    move-object v5, v0

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/youtube/app/adapter/EventListAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->application:Lcom/google/android/youtube/app/YouTubeApplication;

    move-object/from16 v26, v0

    sget-object v27, Lcom/google/android/youtube/core/Analytics$VideoCategory;->ChannelActivity:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-direct/range {v19 .. v27}, Lcom/google/android/youtube/app/ui/EventPagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/EventListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/Analytics$VideoCategory;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/ChannelController;->eventsHelper:Lcom/google/android/youtube/app/ui/EventPagedViewHelper;

    .line 205
    new-instance v30, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    move-object v5, v0

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;-><init>(Landroid/content/Context;)V

    .line 206
    .local v30, playlistsAdapter:Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;
    const v5, 0x7f08001d

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Lcom/google/android/youtube/core/ui/PagedGridView;

    .line 207
    .local v29, playlists:Lcom/google/android/youtube/core/ui/PagedGridView;
    new-instance v26, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->navigation:Lcom/google/android/youtube/app/Navigation;

    move-object/from16 v28, v0

    invoke-direct/range {v26 .. v32}, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/ChannelController;->playlistsHelper:Lcom/google/android/youtube/core/ui/PagedViewHelper;

    .line 214
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/app/tablet/ChannelController;->setPlaylistClickListener(Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;)V

    .line 216
    const v36, 0x7f08001a

    .line 217
    .local v36, selectedCardId:I
    if-eqz p2, :cond_1

    .line 218
    const-string v5, "previous_tab_id"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/youtube/app/tablet/ChannelController;->previousCardId:I

    .line 219
    const-string v5, "selected_tab_id"

    move-object/from16 v0, p2

    move-object v1, v5

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v36

    .line 220
    const-string v5, "selected_playlist"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/google/android/youtube/core/model/Playlist;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/ChannelController;->selectedPlaylist:Lcom/google/android/youtube/core/model/Playlist;

    .line 224
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

    move/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->createCardLayoutHelper(Landroid/widget/ListView;ILandroid/widget/FrameLayout;I)Lcom/google/android/youtube/app/ui/CardLayoutHelper;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/youtube/app/tablet/ChannelController;->sidebarHelper:Lcom/google/android/youtube/app/ui/CardLayoutHelper;

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/app/tablet/ChannelController;->sidebarHelper:Lcom/google/android/youtube/app/ui/CardLayoutHelper;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->setCardListener(Lcom/google/android/youtube/app/ui/CardLayoutHelper$CardListener;)V

    .line 230
    return-void

    .line 221
    .restart local p1
    .restart local p2
    :cond_1
    if-eqz v33, :cond_0

    .line 222
    const-string v5, "selected_tab_id"

    move-object/from16 v0, v33

    move-object v1, v5

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v36

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 331
    sparse-switch p1, :sswitch_data_0

    .line 341
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 333
    :sswitch_0
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->onCreateDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 335
    :sswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d006f

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/app/tablet/ChannelController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->items:[Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 338
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 331
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 289
    invoke-super {p0, p1, p2}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 290
    const/high16 v0, 0x7f10

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 291
    return-void
.end method

.method protected onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 302
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f080081

    if-ne v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->userAuthorizer:Lcom/google/android/youtube/core/async/UserAuthorizer;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->authenticatee:Lcom/google/android/youtube/app/tablet/ChannelController$SubscriptionsAuthenticatee;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    .line 304
    const/4 v0, 0x1

    .line 306
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 295
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 296
    const v0, 0x7f080081

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->subscriptionButton:Landroid/view/MenuItem;

    .line 297
    invoke-direct {p0}, Lcom/google/android/youtube/app/tablet/ChannelController;->resetSubscriptionButton()V

    .line 298
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 234
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 235
    const-string v0, "previous_tab_id"

    iget v1, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->previousCardId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    const-string v0, "selected_tab_id"

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->sidebarHelper:Lcom/google/android/youtube/app/ui/CardLayoutHelper;

    invoke-virtual {v1}, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->getSelectedCard()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    const-string v0, "selected_playlist"

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->selectedPlaylist:Lcom/google/android/youtube/core/model/Playlist;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 238
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onStart()V

    .line 243
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->sidebarHelper:Lcom/google/android/youtube/app/ui/CardLayoutHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->getSelectedCard()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/tablet/ChannelController;->onCardSelected(I)V

    .line 244
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->sidebarHelper:Lcom/google/android/youtube/app/ui/CardLayoutHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->getSelectedCard()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/tablet/ChannelController;->onCardUnselected(I)V

    .line 283
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/ChannelController;->sidebarHelper:Lcom/google/android/youtube/app/ui/CardLayoutHelper;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/CardLayoutHelper;->notifyDataSetInvalidated()V

    .line 284
    invoke-super {p0}, Lcom/google/android/youtube/app/tablet/YouTubeController;->onStop()V

    .line 285
    return-void
.end method
