.class public Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;
.super Lcom/google/android/youtube/core/ui/PagedViewHelper;
.source "SubscriptionPagedViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$3;,
        Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;,
        Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$ThumbnailCallback;,
        Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$UserProfileCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/ui/PagedViewHelper",
        "<",
        "Lcom/google/android/youtube/core/model/Subscription;",
        ">;"
    }
.end annotation


# static fields
.field public static final RECENT_EVENT_PREDICATE:Lcom/google/android/youtube/core/utils/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/utils/Predicate",
            "<",
            "Lcom/google/android/youtube/core/model/Event;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECENT_VIDEO_PREDICATE:Lcom/google/android/youtube/core/utils/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/utils/Predicate",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final eventsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field private final subscriptionsListAdapter:Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;

.field private final thumbnailCallback:Lcom/google/android/youtube/core/async/ActivityCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/ActivityCallback",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final uploadsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation
.end field

.field private final userProfileCallback:Lcom/google/android/youtube/core/async/ActivityCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/ActivityCallback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final userProfileRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/UserProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$1;

    invoke-direct {v0}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$1;-><init>()V

    sput-object v0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->RECENT_EVENT_PREDICATE:Lcom/google/android/youtube/core/utils/Predicate;

    .line 38
    new-instance v0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$2;

    invoke-direct {v0}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$2;-><init>()V

    sput-object v0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->RECENT_VIDEO_PREDICATE:Lcom/google/android/youtube/core/utils/Predicate;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/Requester;)V
    .locals 3
    .parameter "activity"
    .parameter "list"
    .parameter "adapter"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/youtube/core/ui/PagedView;",
            "Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Subscription;",
            ">;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Event;",
            ">;>;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/UserProfile;",
            ">;",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, subscriptionRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Subscription;>;>;"
    .local p5, uploadsRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    .local p6, eventsRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Event;>;>;"
    .local p7, userProfileRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/UserProfile;>;"
    .local p8, thumnailRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/youtube/core/ui/PagedViewHelper;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/core/adapter/ArrayListAdapter;Lcom/google/android/youtube/core/async/Requester;)V

    .line 65
    iput-object p3, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->subscriptionsListAdapter:Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;

    .line 66
    iput-object p8, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 67
    iput-object p7, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->userProfileRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 68
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    new-instance v1, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$UserProfileCallback;

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$UserProfileCallback;-><init>(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$1;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->userProfileCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    .line 70
    new-instance v0, Lcom/google/android/youtube/core/async/ActivityCallback;

    new-instance v1, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$ThumbnailCallback;

    invoke-direct {v1, p0, v2}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$ThumbnailCallback;-><init>(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$1;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->thumbnailCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    .line 72
    iput-object p6, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->eventsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 73
    iput-object p5, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->uploadsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 74
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;)Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->subscriptionsListAdapter:Lcom/google/android/youtube/app/adapter/SubscriptionsListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;)Lcom/google/android/youtube/core/async/ActivityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->thumbnailCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->thumbnailRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->activity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected onEntries(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/List;)V
    .locals 14
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p2, entries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Subscription;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/youtube/core/model/Subscription;

    .line 79
    .local v5, subscription:Lcom/google/android/youtube/core/model/Subscription;
    invoke-virtual {v5}, Lcom/google/android/youtube/core/model/Subscription;->isUserRelated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v13, v5, Lcom/google/android/youtube/core/model/Subscription;->title:Ljava/lang/String;

    .line 82
    .local v13, username:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->userProfileRequester:Lcom/google/android/youtube/core/async/Requester;

    invoke-static {v13}, Lcom/google/android/youtube/core/async/GDataRequests;->getUserProfileRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->userProfileCallback:Lcom/google/android/youtube/core/async/ActivityCallback;

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 84
    sget-object v1, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$3;->$SwitchMap$com$google$android$youtube$core$model$Subscription$Type:[I

    iget-object v2, v5, Lcom/google/android/youtube/core/model/Subscription;->type:Lcom/google/android/youtube/core/model/Subscription$Type;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Subscription$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    invoke-static {v13}, Lcom/google/android/youtube/core/async/GDataRequests;->getEventsRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    .line 87
    .local v3, eventsRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    new-instance v0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;

    iget-object v2, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->eventsRequester:Lcom/google/android/youtube/core/async/Requester;

    sget-object v4, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->RECENT_EVENT_PREDICATE:Lcom/google/android/youtube/core/utils/Predicate;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;-><init>(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/utils/Predicate;Lcom/google/android/youtube/core/model/Subscription;)V

    .line 92
    .local v0, recentEventsCounter:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;,"Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter<Lcom/google/android/youtube/core/model/Event;>;"
    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->init()V

    goto :goto_0

    .line 95
    .end local v0           #recentEventsCounter:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;,"Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter<Lcom/google/android/youtube/core/model/Event;>;"
    .end local v3           #eventsRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    :pswitch_1
    invoke-static {v13}, Lcom/google/android/youtube/core/async/GDataRequests;->getUploadsRequest(Ljava/lang/String;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v9

    .line 96
    .local v9, uploadsRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    new-instance v6, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;

    iget-object v8, p0, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->uploadsRequester:Lcom/google/android/youtube/core/async/Requester;

    sget-object v10, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;->RECENT_VIDEO_PREDICATE:Lcom/google/android/youtube/core/utils/Predicate;

    move-object v7, p0

    move-object v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;-><init>(Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper;Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/utils/Predicate;Lcom/google/android/youtube/core/model/Subscription;)V

    .line 101
    .local v6, recentUploadsHelper:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;,"Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter<Lcom/google/android/youtube/core/model/Video;>;"
    invoke-virtual {v6}, Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;->init()V

    goto :goto_0

    .line 109
    .end local v5           #subscription:Lcom/google/android/youtube/core/model/Subscription;
    .end local v6           #recentUploadsHelper:Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter;,"Lcom/google/android/youtube/app/ui/SubscriptionPagedViewHelper$RecentItemsCounter<Lcom/google/android/youtube/core/model/Video;>;"
    .end local v9           #uploadsRequest:Lcom/google/android/youtube/core/async/GDataRequest;
    .end local v13           #username:Ljava/lang/String;
    :cond_1
    return-void

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
