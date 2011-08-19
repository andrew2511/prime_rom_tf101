.class public Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;
.super Ljava/lang/Object;
.source "MyPurchasesHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/videos/PinManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$4;,
        Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;,
        Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/Page",
        "<",
        "Lcom/google/android/youtube/core/model/Purchase;",
        ">;>;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/android/youtube/videos/PinManager$Listener;"
    }
.end annotation


# instance fields
.field private activeRequest:Lcom/google/android/youtube/core/async/GDataRequest;

.field private final activity:Landroid/app/Activity;

.field private final adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

.field private bytesFree:J

.field private downloadPolicyDialogHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;

.field private downloadPolicyDialogShown:Z

.field private enterOfflineModeWhenPossible:Z

.field private final navigation:Lcom/google/android/youtube/videos/Navigation;

.field private final offlineChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineFooter:Landroid/view/View;

.field private final offlineManagementModeListener:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;

.field private final onlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/VideoStreams;",
            ">;"
        }
    .end annotation
.end field

.field private final pagedView:Lcom/google/android/youtube/core/ui/PagedView;

.field private final pinManager:Lcom/google/android/youtube/videos/PinManager;

.field private pinManagerRestored:Z

.field private final posterArtRequester:Lcom/google/android/youtube/core/async/Requester;
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

.field private final preferences:Landroid/content/SharedPreferences;

.field private final sequentialPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;>;"
        }
    .end annotation
.end field

.field private final storageIndicator:Landroid/widget/ProgressBar;

.field private final storageLabel:Landroid/widget/TextView;

.field private userAuth:Lcom/google/android/youtube/core/model/UserAuth;

.field private final videoSizes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final videosSeen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/content/SharedPreferences;Landroid/view/View;Lcom/google/android/youtube/core/ui/PagedView;Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;Lcom/google/android/youtube/videos/Requesters;Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;)V
    .locals 6
    .parameter "activity"
    .parameter "navigation"
    .parameter "preferences"
    .parameter "contentView"
    .parameter "view"
    .parameter "adapter"
    .parameter "requesters"
    .parameter "drmManager"
    .parameter "offlineManagementModeListener"

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->bytesFree:J

    .line 101
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManagerRestored:Z

    .line 102
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->enterOfflineModeWhenPossible:Z

    .line 127
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    .line 128
    iput-object p2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->navigation:Lcom/google/android/youtube/videos/Navigation;

    .line 129
    iput-object p6, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    .line 130
    iput-object p5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    invoke-interface {v0, p6}, Lcom/google/android/youtube/core/ui/PagedView;->setAdapter(Lcom/google/android/youtube/core/adapter/ArrayListAdapter;)V

    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    invoke-interface {v0, p0}, Lcom/google/android/youtube/core/ui/PagedView;->setOnRetryClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iput-object p3, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->preferences:Landroid/content/SharedPreferences;

    .line 135
    const-string v0, "download_policy_dialog_shown"

    invoke-interface {p3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->downloadPolicyDialogShown:Z

    .line 138
    invoke-interface {p7}, Lcom/google/android/youtube/videos/Requesters;->getPosterArtRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->posterArtRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 139
    invoke-interface {p7}, Lcom/google/android/youtube/videos/Requesters;->getFastOnlineStreamsRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 140
    invoke-interface {p7}, Lcom/google/android/youtube/videos/Requesters;->getSequentialMyPurchasesRequester()Lcom/google/android/youtube/core/async/Requester;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->sequentialPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    .line 142
    new-instance v0, Lcom/google/android/youtube/videos/PinManager;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p7

    move-object v4, p8

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/videos/PinManager;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/youtube/videos/Requesters;Lcom/google/android/youtube/videos/DrmManager;Lcom/google/android/youtube/videos/PinManager$Listener;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    .line 143
    iput-object p9, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineManagementModeListener:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    .line 146
    const v0, 0x7f08002f

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineFooter:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineFooter:Landroid/view/View;

    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$1;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$1;-><init>(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineFooter:Landroid/view/View;

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->storageLabel:Landroid/widget/TextView;

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineFooter:Landroid/view/View;

    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->storageIndicator:Landroid/widget/ProgressBar;

    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->storageIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    .line 160
    new-instance v0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;-><init>(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->downloadPolicyDialogHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;

    .line 162
    invoke-interface {p5, p0}, Lcom/google/android/youtube/core/ui/PagedView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->commitOfflineChanges()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updateOfflineFooter()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->preferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->downloadPolicyDialogShown:Z

    return p1
.end method

.method private cancelOfflineChanges()V
    .locals 3

    .prologue
    .line 372
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 373
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 375
    .local v1, videoId:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 376
    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updatePinState(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    .end local v1           #videoId:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private commitOfflineChanges()V
    .locals 6

    .prologue
    .line 381
    const/4 v1, 0x0

    .line 382
    .local v1, pinningSomething:Z
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 383
    .local v3, videoId:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 384
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v4, v3}, Lcom/google/android/youtube/videos/PinManager;->getState(Ljava/lang/String;)Lcom/google/android/youtube/videos/PinManager$PinState;

    move-result-object v2

    .line 385
    .local v2, state:Lcom/google/android/youtube/videos/PinManager$PinState;
    invoke-virtual {v2}, Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned()Z

    move-result v4

    if-nez v4, :cond_0

    .line 386
    const/4 v1, 0x1

    .line 392
    .end local v2           #state:Lcom/google/android/youtube/videos/PinManager$PinState;
    .end local v3           #videoId:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    iget-boolean v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->downloadPolicyDialogShown:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/youtube/core/utils/Util;->isMobileNetworkCapable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 393
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const/16 v5, 0x16

    invoke-virtual {v4, v5}, Landroid/app/Activity;->showDialog(I)V

    .line 396
    :cond_2
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 397
    .restart local v3       #videoId:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5, v3, v4}, Lcom/google/android/youtube/videos/PinManager;->setPinned(Ljava/lang/String;Z)V

    .line 398
    invoke-direct {p0, v3}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updatePinState(Ljava/lang/String;)V

    goto :goto_0

    .line 400
    .end local v3           #videoId:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 401
    return-void
.end method

.method private getDownloadStatus(Lcom/google/android/youtube/videos/PinManager$PinState;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;
    .locals 5
    .parameter "state"

    .prologue
    .line 430
    invoke-virtual {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->getBytesDownloaded()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->fileExists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 431
    sget-object v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->MISSING:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    .line 448
    :goto_0
    return-object v1

    .line 434
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->getDownloadStatus()Lcom/google/android/youtube/core/transfer/Transfer$Status;

    move-result-object v0

    .line 435
    .local v0, downloadStatus:Lcom/google/android/youtube/core/transfer/Transfer$Status;
    if-eqz v0, :cond_1

    .line 436
    sget-object v1, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$4;->$SwitchMap$com$google$android$youtube$core$transfer$Transfer$Status:[I

    invoke-virtual {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->getDownloadStatus()Lcom/google/android/youtube/core/transfer/Transfer$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/youtube/core/transfer/Transfer$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 448
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->PENDING:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    goto :goto_0

    .line 438
    :pswitch_0
    sget-object v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->RUNNING:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    goto :goto_0

    .line 440
    :pswitch_1
    sget-object v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->PENDING:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    goto :goto_0

    .line 442
    :pswitch_2
    sget-object v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->FAILED:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    goto :goto_0

    .line 444
    :pswitch_3
    sget-object v1, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;->COMPLETED:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    goto :goto_0

    .line 448
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 436
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isPinned(Ljava/lang/String;)Z
    .locals 2
    .parameter "videoId"

    .prologue
    .line 452
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 453
    .local v0, pendingPinState:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/videos/PinManager;->getState(Ljava/lang/String;)Lcom/google/android/youtube/videos/PinManager$PinState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned()Z

    move-result v1

    goto :goto_0
.end method

.method private makeRequest(Lcom/google/android/youtube/core/async/GDataRequest;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activeRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 185
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/PagedView;->showLoading()V

    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->sequentialPurchasesRequester:Lcom/google/android/youtube/core/async/Requester;

    new-instance v1, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2, p0}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 188
    return-void
.end method

.method private onPurchase(Lcom/google/android/youtube/core/model/Purchase;Z)V
    .locals 6
    .parameter "purchase"
    .parameter "expired"

    .prologue
    .line 261
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    .line 263
    .local v0, video:Lcom/google/android/youtube/core/model/Video;
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video$Movie;->posterUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->posterArtRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->movie:Lcom/google/android/youtube/core/model/Video$Movie;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video$Movie;->posterUri:Landroid/net/Uri;

    new-instance v3, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$2;

    invoke-direct {v5, p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$2;-><init>(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 279
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 280
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onlineStreamsRequester:Lcom/google/android/youtube/core/async/Requester;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/async/GDataRequests;->getStreamsRequest(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/async/ActivityCallback;

    iget-object v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    new-instance v5, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;

    invoke-direct {v5, p0, v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;-><init>(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;Lcom/google/android/youtube/core/model/Video;)V

    invoke-direct {v3, v4, v5}, Lcom/google/android/youtube/core/async/ActivityCallback;-><init>(Landroid/app/Activity;Lcom/google/android/youtube/core/async/Callback;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 295
    :cond_1
    return-void
.end method

.method private setPinState(Ljava/lang/String;Z)V
    .locals 10
    .parameter "videoId"
    .parameter "pin"

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 349
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isOfflineManagement()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->bytesFree:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const v4, 0x7f0c008e

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 369
    :goto_0
    return-void

    .line 357
    .restart local p0
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v2, p1}, Lcom/google/android/youtube/videos/PinManager;->getState(Ljava/lang/String;)Lcom/google/android/youtube/videos/PinManager$PinState;

    move-result-object v0

    .line 358
    .local v0, state:Lcom/google/android/youtube/videos/PinManager$PinState;
    if-nez p2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/PinManager$PinState;->isPinned()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/PinManager$PinState;->getDownloadStatus()Lcom/google/android/youtube/core/transfer/Transfer$Status;

    move-result-object v2

    sget-object v3, Lcom/google/android/youtube/core/transfer/Transfer$Status;->FAILED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/PinManager$PinState;->getDownloadStatus()Lcom/google/android/youtube/core/transfer/Transfer$Status;

    move-result-object v2

    sget-object v3, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/PinManager$PinState;->fileExists()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v1, v6

    .line 361
    .local v1, unpinningFromErrorState:Z
    :goto_1
    if-eqz v1, :cond_3

    .line 363
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v2, p1, v9}, Lcom/google/android/youtube/videos/PinManager;->setPinned(Ljava/lang/String;Z)V

    .line 367
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updatePinState(Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updateOfflineFooter()V

    goto :goto_0

    .end local v1           #unpinningFromErrorState:Z
    :cond_2
    move v1, v9

    .line 358
    goto :goto_1

    .line 365
    .restart local v1       #unpinningFromErrorState:Z
    :cond_3
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private updateOfflineFooter()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    .line 404
    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v5}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isOfflineManagement()Z

    move-result v5

    if-nez v5, :cond_0

    .line 419
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v5}, Lcom/google/android/youtube/videos/PinManager;->getTotalBytes()J

    move-result-wide v2

    .line 409
    .local v2, totalBytes:J
    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v5}, Lcom/google/android/youtube/videos/PinManager;->getAvailableBytes()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->bytesFree:J

    .line 410
    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 411
    .local v4, videoId:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->isPinned(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 412
    iget-wide v6, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->bytesFree:J

    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v5, v6, v8

    iput-wide v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->bytesFree:J

    goto :goto_1

    .line 415
    .end local v4           #videoId:Ljava/lang/String;
    :cond_2
    iget-wide v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->bytesFree:J

    cmp-long v5, v5, v13

    if-gtz v5, :cond_3

    const/16 v5, 0x64

    move v1, v5

    .line 416
    .local v1, progress:I
    :goto_2
    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->storageIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 417
    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->storageLabel:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const v7, 0x7f0c008d

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget-wide v11, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->bytesFree:J

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 415
    .end local v1           #progress:I
    :cond_3
    const-wide/high16 v5, 0x4059

    iget-wide v7, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->bytesFree:J

    sub-long v7, v2, v7

    long-to-double v7, v7

    mul-double/2addr v5, v7

    long-to-double v7, v2

    div-double/2addr v5, v7

    double-to-int v5, v5

    move v1, v5

    goto :goto_2
.end method

.method private updatePinState(Ljava/lang/String;)V
    .locals 9
    .parameter "videoId"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/PinManager;->getState(Ljava/lang/String;)Lcom/google/android/youtube/videos/PinManager$PinState;

    move-result-object v8

    .line 423
    .local v8, state:Lcom/google/android/youtube/videos/PinManager$PinState;
    invoke-virtual {v8}, Lcom/google/android/youtube/videos/PinManager$PinState;->getBytesTotal()J

    move-result-wide v6

    .line 424
    .local v6, bytesTotal:J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v4, v0

    .line 425
    .local v4, progress:I
    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->isPinned(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {p0, v8}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->getDownloadStatus(Lcom/google/android/youtube/videos/PinManager$PinState;)Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/android/youtube/videos/PinManager$PinState;->getLicenseExpirationDate()Ljava/util/Date;

    move-result-object v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->setPinState(Ljava/lang/String;ZLcom/google/android/youtube/videos/adapter/MyPurchasesAdapter$DownloadStatus;ILjava/util/Date;)V

    .line 427
    return-void

    .line 424
    .end local v4           #progress:I
    :cond_0
    invoke-virtual {v8}, Lcom/google/android/youtube/videos/PinManager$PinState;->getBytesDownloaded()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    div-long/2addr v0, v6

    long-to-int v0, v0

    move v4, v0

    goto :goto_0
.end method


# virtual methods
.method public getUserAuth()Lcom/google/android/youtube/core/model/UserAuth;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    return-object v0
.end method

.method public final init(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 1
    .parameter "userAuth"

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->reset()V

    .line 167
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserAuth;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 168
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/PagedView;->showLoading()V

    .line 169
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/PinManager;->init(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 171
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activeRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activeRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->makeRequest(Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 181
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 547
    const/16 v0, 0x16

    if-ne p1, v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->downloadPolicyDialogHelper:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;

    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->access$400(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 550
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/PinManager;->onDestroy()V

    .line 458
    return-void
.end method

.method public onDirectoryMountedChange()V
    .locals 3

    .prologue
    .line 478
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/PinManager;->isDownloadDirectoryMounted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 479
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->setOfflineManagement(Z)V

    .line 481
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/PinManager;->getStates()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/videos/PinManager$PinState;

    .line 482
    .local v1, state:Lcom/google/android/youtube/videos/PinManager$PinState;
    invoke-virtual {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updatePinState(Ljava/lang/String;)V

    goto :goto_0

    .line 484
    .end local v1           #state:Lcom/google/android/youtube/videos/PinManager$PinState;
    :cond_1
    return-void
.end method

.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error for request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    invoke-static {v1, p2}, Lcom/google/android/youtube/core/ErrorHelper;->humanize(Landroid/content/Context;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/ui/PagedView;->showRecoverableError(Ljava/lang/String;)V

    .line 258
    :cond_1
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 332
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v1, p3}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Purchase;

    iget-object v0, v1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    .line 333
    .local v0, video:Lcom/google/android/youtube/core/model/Video;
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v1, p3}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isExpired(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v1, v2, v3}, Lcom/google/android/youtube/core/utils/ExternalIntents;->startShopForVideoDetails(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 345
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isOfflineManagement()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 338
    iget-object v1, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->isPinned(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->setPinState(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 339
    :cond_2
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/videos/PinManager;->getState(Ljava/lang/String;)Lcom/google/android/youtube/videos/PinManager$PinState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->isOperationInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 340
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->isPinned(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0c0089

    :goto_2
    invoke-static {v1, v2}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    const v2, 0x7f0c008a

    goto :goto_2

    .line 343
    :cond_4
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->navigation:Lcom/google/android/youtube/videos/Navigation;

    iget-object v2, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/youtube/videos/Navigation;->toWatch(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onNoEntries()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    invoke-interface {v0}, Lcom/google/android/youtube/core/ui/PagedView;->showEmpty()V

    .line 299
    return-void
.end method

.method public onPinErrorInsufficientSpace(Ljava/lang/String;)V
    .locals 9
    .parameter "videoId"

    .prologue
    .line 493
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 494
    .local v0, video:Lcom/google/android/youtube/core/model/Video;
    if-eqz v0, :cond_0

    .line 495
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const v3, 0x7f0c008e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    iget-object v8, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/youtube/videos/PinManager;->getState(Ljava/lang/String;)Lcom/google/android/youtube/videos/PinManager$PinState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/youtube/videos/PinManager$PinState;->getBytesTotal()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 499
    :cond_0
    return-void
.end method

.method public onPinErrorLicenseException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 10
    .parameter "videoId"
    .parameter "exception"

    .prologue
    .line 510
    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/model/Video;

    .line 511
    .local v4, video:Lcom/google/android/youtube/core/model/Video;
    if-eqz v4, :cond_1

    .line 512
    const v3, 0x7f0c0082

    .line 513
    .local v3, errorId:I
    const/4 v1, -0x1

    .line 514
    .local v1, cgiError:I
    instance-of v5, p2, Lcom/google/android/youtube/videos/DrmException;

    if-eqz v5, :cond_0

    .line 515
    move-object v0, p2

    check-cast v0, Lcom/google/android/youtube/videos/DrmException;

    move-object v2, v0

    .line 516
    .local v2, drmException:Lcom/google/android/youtube/videos/DrmException;
    sget-object v5, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$4;->$SwitchMap$com$google$android$youtube$videos$DrmException$DrmError:[I

    iget-object v6, v2, Lcom/google/android/youtube/videos/DrmException;->drmError:Lcom/google/android/youtube/videos/DrmException$DrmError;

    invoke-virtual {v6}, Lcom/google/android/youtube/videos/DrmException$DrmError;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 529
    :goto_0
    iget v1, v2, Lcom/google/android/youtube/videos/DrmException;->errorCode:I

    .line 531
    .end local v2           #drmException:Lcom/google/android/youtube/videos/DrmException;
    :cond_0
    iget-object v5, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v4, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v3, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-static {v5, v6}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 535
    .end local v1           #cgiError:I
    .end local v3           #errorId:I
    :cond_1
    return-void

    .line 518
    .restart local v1       #cgiError:I
    .restart local v2       #drmException:Lcom/google/android/youtube/videos/DrmException;
    .restart local v3       #errorId:I
    :pswitch_0
    const v3, 0x7f0c0084

    .line 519
    goto :goto_0

    .line 521
    :pswitch_1
    const v3, 0x7f0c0086

    .line 522
    goto :goto_0

    .line 526
    :pswitch_2
    const v3, 0x7f0c0087

    goto :goto_0

    .line 531
    .end local v2           #drmException:Lcom/google/android/youtube/videos/DrmException;
    :cond_2
    iget-object v6, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const v7, 0x7f0c009a

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 516
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onPinErrorUnsupportedVideoFormat(Ljava/lang/String;)V
    .locals 7
    .parameter "videoId"

    .prologue
    .line 538
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 539
    .local v0, video:Lcom/google/android/youtube/core/model/Video;
    if-eqz v0, :cond_0

    .line 540
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const v3, 0x7f0c0085

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v1, v2}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 544
    :cond_0
    return-void

    .line 540
    :cond_1
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const v3, 0x7f0c009a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onPinStateChange(Lcom/google/android/youtube/videos/PinManager$PinState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 487
    invoke-virtual {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->getVideoId()Ljava/lang/String;

    move-result-object v0

    .line 488
    .local v0, videoId:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/youtube/videos/PinManager$PinState;->getVideoId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updatePinState(Ljava/lang/String;)V

    .line 489
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updateOfflineFooter()V

    .line 490
    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V
    .locals 17
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p2, response:Lcom/google/android/youtube/core/model/Page;,"Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activeRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    move-object v11, v0

    move-object/from16 v0, p1

    move-object v1, v11

    if-eq v0, v1, :cond_0

    .line 243
    :goto_0
    return-void

    .line 205
    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    move-object v9, v0

    .line 206
    .local v9, responseEntries:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Purchase;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 207
    .local v3, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/youtube/core/model/Purchase;>;"
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 209
    .local v7, now:Ljava/util/Date;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_7

    .line 210
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/youtube/core/model/Purchase;

    .line 211
    .local v8, purchase:Lcom/google/android/youtube/core/model/Purchase;
    iget-object v11, v8, Lcom/google/android/youtube/core/model/Purchase;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    sget-object v12, Lcom/google/android/youtube/core/model/Purchase$ItemType;->MOVIE:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    if-ne v11, v12, :cond_1

    iget-object v11, v8, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v11}, Lcom/google/android/youtube/core/model/Video;->isMovie()Z

    move-result v11

    if-nez v11, :cond_3

    .line 213
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "filtering out purchase with no movie "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    .line 209
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 214
    :cond_3
    iget-object v11, v8, Lcom/google/android/youtube/core/model/Purchase;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    if-nez v11, :cond_4

    .line 216
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "filtering out purchase with no pricePaid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/google/android/youtube/core/model/Purchase;->id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/youtube/core/L;->i(Ljava/lang/String;)V

    goto :goto_2

    .line 218
    :cond_4
    invoke-virtual {v8, v7}, Lcom/google/android/youtube/core/model/Purchase;->isExpired(Ljava/util/Date;)Z

    move-result v6

    .line 219
    .local v6, isExpired:Z
    iget-object v11, v8, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-static {v11}, Lcom/google/android/youtube/videos/utils/VideoUtil;->hasStreams(Lcom/google/android/youtube/core/model/Video;)Z

    move-result v4

    .line 222
    .local v4, hasStreams:Z
    iget-object v11, v8, Lcom/google/android/youtube/core/model/Purchase;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    sget-object v12, Lcom/google/android/youtube/core/model/Purchase$Status;->ACTIVE:Lcom/google/android/youtube/core/model/Purchase$Status;

    if-eq v11, v12, :cond_5

    if-eqz v6, :cond_6

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    iget-object v13, v8, Lcom/google/android/youtube/core/model/Purchase;->expirationDate:Ljava/util/Date;

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    const-wide/32 v15, 0x5265c00

    add-long/2addr v13, v15

    cmp-long v11, v11, v13

    if-gez v11, :cond_6

    iget-object v11, v8, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-static {v11}, Lcom/google/android/youtube/videos/utils/VideoUtil;->hasStreams(Lcom/google/android/youtube/core/model/Video;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_5
    const/4 v11, 0x1

    move v10, v11

    .line 226
    .local v10, showPurchase:Z
    :goto_3
    if-eqz v10, :cond_2

    .line 227
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onPurchase(Lcom/google/android/youtube/core/model/Purchase;Z)V

    goto :goto_2

    .line 222
    .end local v10           #showPurchase:Z
    :cond_6
    const/4 v11, 0x0

    move v10, v11

    goto :goto_3

    .line 233
    .end local v4           #hasStreams:Z
    .end local v6           #isExpired:Z
    .end local v8           #purchase:Lcom/google/android/youtube/core/model/Purchase;
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    move-object v11, v0

    invoke-virtual {v11, v3}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->internalAdd(Ljava/lang/Iterable;)V

    .line 236
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->sort()V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onNoEntries()V

    goto/16 :goto_0

    .line 241
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pagedView:Lcom/google/android/youtube/core/ui/PagedView;

    move-object v11, v0

    invoke-interface {v11}, Lcom/google/android/youtube/core/ui/PagedView;->showItems()V

    goto/16 :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    return-void
.end method

.method public onRestored()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 463
    iput-boolean v6, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManagerRestored:Z

    .line 464
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v2}, Lcom/google/android/youtube/videos/PinManager;->getStates()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/videos/PinManager$PinState;

    .line 465
    .local v1, state:Lcom/google/android/youtube/videos/PinManager$PinState;
    invoke-virtual {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updatePinState(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->getBytesTotal()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 467
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->getVideoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/youtube/videos/PinManager$PinState;->getBytesTotal()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 470
    .end local v1           #state:Lcom/google/android/youtube/videos/PinManager$PinState;
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->enterOfflineModeWhenPossible:Z

    if-eqz v2, :cond_2

    .line 471
    invoke-virtual {p0, v6}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->setOfflineManagement(Z)V

    .line 472
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->enterOfflineModeWhenPossible:Z

    .line 474
    :cond_2
    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v2}, Lcom/google/android/youtube/core/async/GDataRequests;->getMyPurchasesRequest(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->makeRequest(Lcom/google/android/youtube/core/async/GDataRequest;)V

    .line 475
    return-void
.end method

.method public onUnpinError(Ljava/lang/String;)V
    .locals 7
    .parameter "videoId"

    .prologue
    .line 502
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    .line 503
    .local v0, video:Lcom/google/android/youtube/core/model/Video;
    if-eqz v0, :cond_0

    .line 504
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const v3, 0x7f0c0083

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/ErrorHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 507
    :cond_0
    return-void
.end method

.method public pinVideo(Ljava/lang/String;)V
    .locals 1
    .parameter "videoId"

    .prologue
    .line 325
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->setPinState(Ljava/lang/String;Z)V

    .line 326
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->isOfflineManagement()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->commitOfflineChanges()V

    .line 329
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 192
    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activeRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManagerRestored:Z

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->clear()V

    .line 195
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videosSeen:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 196
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->videoSizes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 197
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineChanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 198
    return-void
.end method

.method public setOfflineManagement(Z)V
    .locals 3
    .parameter "on"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 302
    if-eqz p1, :cond_3

    .line 303
    iget-boolean v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManagerRestored:Z

    if-nez v0, :cond_1

    .line 304
    iput-boolean v2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->enterOfflineModeWhenPossible:Z

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->pinManager:Lcom/google/android/youtube/videos/PinManager;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/PinManager;->isDownloadDirectoryMounted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->activity:Landroid/app/Activity;

    const v1, 0x7f0c008b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 317
    :goto_1
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->adapter:Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/videos/adapter/MyPurchasesAdapter;->setOfflineManagement(Z)V

    .line 318
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->updateOfflineFooter()V

    .line 319
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineManagementModeListener:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineManagementModeListener:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$OfflineManagementModeListener;->onModeChange(Z)V

    goto :goto_0

    .line 313
    :cond_3
    iput-boolean v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->enterOfflineModeWhenPossible:Z

    .line 314
    invoke-direct {p0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->cancelOfflineChanges()V

    .line 315
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->offlineFooter:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
