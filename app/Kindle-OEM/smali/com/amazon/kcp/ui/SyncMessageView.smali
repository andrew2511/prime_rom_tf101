.class public Lcom/amazon/kcp/ui/SyncMessageView;
.super Landroid/widget/FrameLayout;
.source "SyncMessageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;,
        Lcom/amazon/kcp/ui/SyncMessageView$Style;
    }
.end annotation


# static fields
.field private static final MESSAGE_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESULT_CANCELED:Ljava/lang/String; = "CANCELED"

.field private static final RESULT_ERROR:Ljava/lang/String; = "ERROR"

.field private static final RESULT_IN_PROGRESS:Ljava/lang/String; = "IN_PROGRESS"

.field private static final RESULT_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field private static final SYNC_DOWNLOAD:Ljava/lang/String; = "DOWNLOAD:"

.field private static final SYNC_FINISHED_MESSAGE_TIME:J = 0xfa0L

.field private static final SYNC_FULL:Ljava/lang/String; = "FULL:"

.field private static final SYNC_METADATA:Ljava/lang/String; = "METADATA:"

.field private static final SYNC_UPLOAD:Ljava/lang/String; = "UPLOAD:"


# instance fields
.field private progressIndicator:Landroid/view/View;

.field private shown:Z

.field private style:Lcom/amazon/kcp/ui/SyncMessageView$Style;

.field private final syncFinishedCallback:Lcom/amazon/foundation/ICallback;

.field private syncId:J

.field private syncListener:Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;

.field private syncManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

.field private final syncStartedCallback:Lcom/amazon/foundation/ICallback;

.field private textView:Landroid/widget/TextView;

.field private textViewTypeface:Landroid/graphics/Typeface;

.field private unfinishedMessageSyncType:Lcom/amazon/kcp/application/sync/internal/SyncType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/ui/SyncMessageView;->MESSAGE_MAP:Ljava/util/Map;

    .line 86
    sget-object v0, Lcom/amazon/kcp/ui/SyncMessageView;->MESSAGE_MAP:Ljava/util/Map;

    const-string v1, "FULL:IN_PROGRESS"

    const v2, 0x7f0b0123

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/amazon/kcp/ui/SyncMessageView;->MESSAGE_MAP:Ljava/util/Map;

    const-string v1, "FULL:SUCCESS"

    const v2, 0x7f0b0124

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/amazon/kcp/ui/SyncMessageView;->MESSAGE_MAP:Ljava/util/Map;

    const-string v1, "FULL:ERROR"

    const v2, 0x7f0b0125

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/amazon/kcp/ui/SyncMessageView;->MESSAGE_MAP:Ljava/util/Map;

    const-string v1, "FULL:CANCELED"

    const v2, 0x7f0b0126

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/amazon/kcp/ui/SyncMessageView;->MESSAGE_MAP:Ljava/util/Map;

    const-string v1, "UPLOAD:IN_PROGRESS"

    const v2, 0x7f0b0127

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/amazon/kcp/ui/SyncMessageView;->MESSAGE_MAP:Ljava/util/Map;

    const-string v1, "UPLOAD:SUCCESS"

    const v2, 0x7f0b0128

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/amazon/kcp/ui/SyncMessageView;->MESSAGE_MAP:Ljava/util/Map;

    const-string v1, "UPLOAD:ERROR"

    const v2, 0x7f0b0129

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/amazon/kcp/ui/SyncMessageView;->MESSAGE_MAP:Ljava/util/Map;

    const-string v1, "UPLOAD:CANCELED"

    const v2, 0x7f0b012a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/amazon/kcp/ui/SyncMessageView;->MESSAGE_MAP:Ljava/util/Map;

    const-string v1, "DOWNLOAD:IN_PROGRESS"

    const v2, 0x7f0b012b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/amazon/kcp/ui/SyncMessageView;->MESSAGE_MAP:Ljava/util/Map;

    const-string v1, "DOWNLOAD:SUCCESS"

    const v2, 0x7f0b012c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/amazon/kcp/ui/SyncMessageView;->MESSAGE_MAP:Ljava/util/Map;

    const-string v1, "DOWNLOAD:ERROR"

    const v2, 0x7f0b012d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/amazon/kcp/ui/SyncMessageView;->MESSAGE_MAP:Ljava/util/Map;

    const-string v1, "DOWNLOAD:CANCELED"

    const v2, 0x7f0b012e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/amazon/kcp/ui/SyncMessageView;->MESSAGE_MAP:Ljava/util/Map;

    const-string v1, "METADATA:IN_PROGRESS"

    const v2, 0x7f0b012f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/amazon/kcp/ui/SyncMessageView;->MESSAGE_MAP:Ljava/util/Map;

    const-string v1, "METADATA:SUCCESS"

    const v2, 0x7f0b0130

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/amazon/kcp/ui/SyncMessageView;->MESSAGE_MAP:Ljava/util/Map;

    const-string v1, "METADATA:ERROR"

    const v2, 0x7f0b0131

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/amazon/kcp/ui/SyncMessageView;->MESSAGE_MAP:Ljava/util/Map;

    const-string v1, "METADATA:CANCELED"

    const v2, 0x7f0b0132

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    sget-object v0, Lcom/amazon/kcp/ui/SyncMessageView$Style;->STANDARD:Lcom/amazon/kcp/ui/SyncMessageView$Style;

    iput-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->style:Lcom/amazon/kcp/ui/SyncMessageView$Style;

    .line 117
    new-instance v0, Lcom/amazon/kcp/ui/SyncMessageView$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/ui/SyncMessageView$1;-><init>(Lcom/amazon/kcp/ui/SyncMessageView;)V

    iput-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncStartedCallback:Lcom/amazon/foundation/ICallback;

    .line 124
    new-instance v0, Lcom/amazon/kcp/ui/SyncMessageView$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/ui/SyncMessageView$2;-><init>(Lcom/amazon/kcp/ui/SyncMessageView;)V

    iput-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/ui/SyncMessageView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/amazon/kcp/ui/SyncMessageView;->syncStarted(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/ui/SyncMessageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/amazon/kcp/ui/SyncMessageView;->syncFinished()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/ui/SyncMessageView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncId:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/amazon/kcp/ui/SyncMessageView;Lcom/amazon/kcp/application/sync/internal/SyncType;)Lcom/amazon/kcp/application/sync/internal/SyncType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/ui/SyncMessageView;->unfinishedMessageSyncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    return-object p1
.end method

.method static synthetic access$400(Lcom/amazon/kcp/ui/SyncMessageView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->shown:Z

    return v0
.end method

.method static synthetic access$402(Lcom/amazon/kcp/ui/SyncMessageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/amazon/kcp/ui/SyncMessageView;->shown:Z

    return p1
.end method

.method static synthetic access$500(Lcom/amazon/kcp/ui/SyncMessageView;)Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncListener:Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;

    return-object v0
.end method

.method private hideMessageAfterDelay()V
    .locals 4

    .prologue
    .line 365
    iget-wide v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncId:J

    .line 366
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/amazon/kcp/ui/SyncMessageView$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/amazon/kcp/ui/SyncMessageView$4;-><init>(Lcom/amazon/kcp/ui/SyncMessageView;J)V

    const-wide/16 v0, 0xfa0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 379
    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;)Lcom/amazon/kcp/ui/SyncMessageView;
    .locals 3
    .parameter "context"
    .parameter "syncManager"

    .prologue
    .line 140
    const v1, 0x7f030046

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/ui/SyncMessageView;

    .line 141
    .local v0, syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;
    iput-object p1, v0, Lcom/amazon/kcp/ui/SyncMessageView;->syncManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    .line 142
    return-object v0
.end method

.method private syncFinished()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 320
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->getSyncParameters()Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getResult()Lcom/amazon/kcp/application/sync/internal/SyncResult;

    move-result-object v0

    .line 321
    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncResult;->SUCCESS:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncResult;->ERROR:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/amazon/kcp/application/sync/internal/SyncResult;->CANCELED:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne v0, v1, :cond_4

    :cond_0
    const/4 v1, 0x1

    .line 322
    :goto_0
    if-nez v1, :cond_1

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected sync finished result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 328
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/ui/SyncMessageView;->getCurrentSyncType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->unfinishedMessageSyncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 329
    iget-wide v2, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncId:J

    .line 330
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/amazon/kcp/ui/SyncMessageView$3;

    invoke-direct {v4, p0, v2, v3}, Lcom/amazon/kcp/ui/SyncMessageView$3;-><init>(Lcom/amazon/kcp/ui/SyncMessageView;J)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 342
    invoke-direct {p0}, Lcom/amazon/kcp/ui/SyncMessageView;->updateView()Z

    move-result v0

    .line 343
    iget-object v2, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncListener:Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/amazon/kcp/ui/SyncMessageView;->shown:Z

    if-eqz v2, :cond_3

    .line 345
    if-eqz v0, :cond_2

    if-nez v1, :cond_5

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncListener:Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;

    invoke-interface {v0, p0}, Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;->onHideSyncMessage(Lcom/amazon/kcp/ui/SyncMessageView;)V

    .line 348
    iput-boolean v5, p0, Lcom/amazon/kcp/ui/SyncMessageView;->shown:Z

    .line 355
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v1, v5

    .line 321
    goto :goto_0

    .line 352
    :cond_5
    invoke-direct {p0}, Lcom/amazon/kcp/ui/SyncMessageView;->hideMessageAfterDelay()V

    goto :goto_1
.end method

.method private syncStarted(Z)V
    .locals 4
    .parameter "inProgress"

    .prologue
    .line 309
    iget-wide v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncId:J

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->unfinishedMessageSyncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 312
    invoke-direct {p0}, Lcom/amazon/kcp/ui/SyncMessageView;->updateView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncListener:Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->shown:Z

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncListener:Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;

    invoke-interface {v0, p0, p1}, Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;->onShowSyncMessage(Lcom/amazon/kcp/ui/SyncMessageView;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->shown:Z

    .line 316
    :cond_0
    return-void
.end method

.method private updateView()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 388
    invoke-virtual {p0}, Lcom/amazon/kcp/ui/SyncMessageView;->getCurrentSyncType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v0

    .line 389
    const-string v1, ""

    .line 390
    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->LAUNCH:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->LIBRARY_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-ne v0, v2, :cond_3

    .line 392
    :cond_0
    const-string v0, "FULL:"

    .line 411
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->getSyncParameters()Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getResult()Lcom/amazon/kcp/application/sync/internal/SyncResult;

    move-result-object v1

    .line 412
    const-string v2, ""

    .line 413
    const/4 v3, 0x4

    .line 416
    sget-object v4, Lcom/amazon/kcp/application/sync/internal/SyncResult;->NOT_STARTED:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-eq v1, v4, :cond_1

    sget-object v4, Lcom/amazon/kcp/application/sync/internal/SyncResult;->IN_PROGRESS:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne v1, v4, :cond_8

    .line 418
    :cond_1
    const-string v1, "IN_PROGRESS"

    move-object v2, v1

    move v1, v6

    .line 438
    :goto_1
    iget-object v3, p0, Lcom/amazon/kcp/ui/SyncMessageView;->progressIndicator:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v1, v3, :cond_2

    .line 440
    iget-object v3, p0, Lcom/amazon/kcp/ui/SyncMessageView;->progressIndicator:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 441
    invoke-virtual {p0}, Lcom/amazon/kcp/ui/SyncMessageView;->requestLayout()V

    .line 444
    :cond_2
    sget-object v1, Lcom/amazon/kcp/ui/SyncMessageView;->MESSAGE_MAP:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 445
    if-eqz v0, :cond_c

    .line 447
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/amazon/kcp/ui/SyncMessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x7f0b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 448
    iget-object v2, p0, Lcom/amazon/kcp/ui/SyncMessageView;->textView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amazon/kcp/ui/SyncMessageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v7

    .line 451
    :goto_2
    return v0

    .line 394
    :cond_3
    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->LOGIN:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-ne v0, v2, :cond_4

    .line 396
    const-string v0, "METADATA:"

    goto :goto_0

    .line 398
    :cond_4
    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->SLEEP:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-eq v0, v2, :cond_5

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-eq v0, v2, :cond_5

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_EXIT:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-ne v0, v2, :cond_6

    .line 400
    :cond_5
    const-string v0, "UPLOAD:"

    goto/16 :goto_0

    .line 402
    :cond_6
    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->BOOK_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-ne v0, v2, :cond_7

    .line 404
    const-string v0, "DOWNLOAD:"

    goto/16 :goto_0

    .line 408
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object v0, v1

    goto/16 :goto_0

    .line 421
    :cond_8
    sget-object v4, Lcom/amazon/kcp/application/sync/internal/SyncResult;->SUCCESS:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne v1, v4, :cond_9

    .line 423
    const-string v1, "SUCCESS"

    move-object v2, v1

    move v1, v3

    goto/16 :goto_1

    .line 425
    :cond_9
    sget-object v4, Lcom/amazon/kcp/application/sync/internal/SyncResult;->ERROR:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne v1, v4, :cond_a

    .line 427
    const-string v1, "ERROR"

    move-object v2, v1

    move v1, v3

    goto/16 :goto_1

    .line 429
    :cond_a
    sget-object v4, Lcom/amazon/kcp/application/sync/internal/SyncResult;->CANCELED:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne v1, v4, :cond_b

    .line 431
    const-string v1, "CANCELED"

    move-object v2, v1

    move v1, v3

    goto/16 :goto_1

    .line 435
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown sync result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v1, v3

    goto/16 :goto_1

    :cond_c
    move v0, v6

    .line 451
    goto :goto_2
.end method


# virtual methods
.method public getCurrentSyncType()Lcom/amazon/kcp/application/sync/internal/SyncType;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->unfinishedMessageSyncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->unfinishedMessageSyncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 303
    :goto_0
    return-object v0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->getSyncParameters()Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->getSyncParameters()Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getType()Lcom/amazon/kcp/application/sync/internal/SyncType;

    move-result-object v0

    goto :goto_0

    .line 303
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnSyncMessageListener()Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncListener:Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;

    return-object v0
.end method

.method public getStyle()Lcom/amazon/kcp/ui/SyncMessageView$Style;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->style:Lcom/amazon/kcp/ui/SyncMessageView$Style;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->shown:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 457
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 458
    const v0, 0x7f0c00be

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/ui/SyncMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->textView:Landroid/widget/TextView;

    .line 459
    const v0, 0x7f0c00bf

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/ui/SyncMessageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->progressIndicator:Landroid/view/View;

    .line 465
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->textViewTypeface:Landroid/graphics/Typeface;

    .line 466
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 471
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 478
    iget-object v11, p0, Lcom/amazon/kcp/ui/SyncMessageView;->style:Lcom/amazon/kcp/ui/SyncMessageView$Style;

    sget-object v12, Lcom/amazon/kcp/ui/SyncMessageView$Style;->SMALL:Lcom/amazon/kcp/ui/SyncMessageView$Style;

    if-ne v11, v12, :cond_0

    .line 480
    const/4 v9, 0x1

    .line 481
    .local v9, textStyle:I
    const v8, 0x7f0a0030

    .line 482
    .local v8, textSizeId:I
    const v5, 0x7f0a0033

    .line 483
    .local v5, progressIndicatorSizeId:I
    const v3, 0x7f0a0032

    .line 484
    .local v3, paddingId:I
    const v1, 0x7f0a0031

    .line 502
    .local v1, heightId:I
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/ui/SyncMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 503
    .local v7, textSize:I
    iget-object v11, p0, Lcom/amazon/kcp/ui/SyncMessageView;->progressIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_2

    const/4 v11, 0x1

    move v6, v11

    .line 504
    .local v6, progressIndicatorVisible:Z
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kcp/ui/SyncMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 505
    .local v4, progressIndicatorSize:I
    invoke-virtual {p0}, Lcom/amazon/kcp/ui/SyncMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 506
    .local v2, padding:I
    invoke-virtual {p0}, Lcom/amazon/kcp/ui/SyncMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 510
    .local v0, height:I
    if-eqz v6, :cond_3

    .line 512
    invoke-virtual {p0}, Lcom/amazon/kcp/ui/SyncMessageView;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v11, v4

    mul-int/lit8 v12, v2, 0x3

    sub-int v10, v11, v12

    .line 518
    .local v10, textWidth:I
    :goto_2
    iget-object v11, p0, Lcom/amazon/kcp/ui/SyncMessageView;->textView:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/amazon/kcp/ui/SyncMessageView;->textViewTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v11, v12, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 519
    iget-object v11, p0, Lcom/amazon/kcp/ui/SyncMessageView;->textView:Landroid/widget/TextView;

    const/4 v12, 0x0

    int-to-float v13, v7

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 520
    iget-object v11, p0, Lcom/amazon/kcp/ui/SyncMessageView;->textView:Landroid/widget/TextView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v2, v12, v2, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 521
    iget-object v11, p0, Lcom/amazon/kcp/ui/SyncMessageView;->textView:Landroid/widget/TextView;

    mul-int/lit8 v12, v2, 0x2

    add-int/2addr v12, v10

    const/high16 v13, 0x4000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->measure(II)V

    .line 522
    iget-object v11, p0, Lcom/amazon/kcp/ui/SyncMessageView;->progressIndicator:Landroid/view/View;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v2, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 523
    iget-object v11, p0, Lcom/amazon/kcp/ui/SyncMessageView;->progressIndicator:Landroid/view/View;

    add-int v12, v4, v2

    const/high16 v13, 0x4000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    const/high16 v13, 0x4000

    invoke-static {v4, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->measure(II)V

    .line 524
    invoke-virtual {p0}, Lcom/amazon/kcp/ui/SyncMessageView;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {p0, v11, v0}, Lcom/amazon/kcp/ui/SyncMessageView;->setMeasuredDimension(II)V

    .line 525
    return-void

    .line 486
    .end local v0           #height:I
    .end local v1           #heightId:I
    .end local v2           #padding:I
    .end local v3           #paddingId:I
    .end local v4           #progressIndicatorSize:I
    .end local v5           #progressIndicatorSizeId:I
    .end local v6           #progressIndicatorVisible:Z
    .end local v7           #textSize:I
    .end local v8           #textSizeId:I
    .end local v9           #textStyle:I
    .end local v10           #textWidth:I
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/ui/SyncMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 488
    const/4 v9, 0x0

    .line 489
    .restart local v9       #textStyle:I
    const v8, 0x7f0a002c

    .line 490
    .restart local v8       #textSizeId:I
    const v5, 0x7f0a002f

    .line 491
    .restart local v5       #progressIndicatorSizeId:I
    const v3, 0x7f0a002e

    .line 492
    .restart local v3       #paddingId:I
    const v1, 0x7f0a002d

    .restart local v1       #heightId:I
    goto/16 :goto_0

    .line 496
    .end local v1           #heightId:I
    .end local v3           #paddingId:I
    .end local v5           #progressIndicatorSizeId:I
    .end local v8           #textSizeId:I
    .end local v9           #textStyle:I
    :cond_1
    const/4 v9, 0x0

    .line 497
    .restart local v9       #textStyle:I
    const v8, 0x7f0a0028

    .line 498
    .restart local v8       #textSizeId:I
    const v5, 0x7f0a002b

    .line 499
    .restart local v5       #progressIndicatorSizeId:I
    const v3, 0x7f0a002a

    .line 500
    .restart local v3       #paddingId:I
    const v1, 0x7f0a0029

    .restart local v1       #heightId:I
    goto/16 :goto_0

    .line 503
    .restart local v7       #textSize:I
    :cond_2
    const/4 v11, 0x0

    move v6, v11

    goto/16 :goto_1

    .line 516
    .restart local v0       #height:I
    .restart local v2       #padding:I
    .restart local v4       #progressIndicatorSize:I
    .restart local v6       #progressIndicatorVisible:Z
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kcp/ui/SyncMessageView;->getMeasuredWidth()I

    move-result v11

    mul-int/lit8 v12, v2, 0x2

    sub-int v10, v11, v12

    .restart local v10       #textWidth:I
    goto/16 :goto_2
.end method

.method public requestHide()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 281
    iget-boolean v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->shown:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncListener:Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncListener:Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;

    invoke-interface {v0, p0}, Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;->onHideSyncMessage(Lcom/amazon/kcp/ui/SyncMessageView;)V

    .line 284
    iput-boolean v1, p0, Lcom/amazon/kcp/ui/SyncMessageView;->shown:Z

    .line 286
    :cond_0
    return v1
.end method

.method public requestShow(Z)Z
    .locals 5
    .parameter "inProgress"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 240
    iget-object v2, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncListener:Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/amazon/kcp/ui/SyncMessageView;->shown:Z

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 271
    :goto_0
    return v2

    .line 246
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->isSyncing()Z

    move-result v1

    .line 247
    .local v1, syncing:Z
    if-eqz v1, :cond_3

    .line 250
    iget-object v2, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->getSyncParameters()Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;->getResult()Lcom/amazon/kcp/application/sync/internal/SyncResult;

    move-result-object v0

    .line 251
    .local v0, result:Lcom/amazon/kcp/application/sync/internal/SyncResult;
    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncResult;->NOT_STARTED:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncResult;->IN_PROGRESS:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    if-ne v0, v2, :cond_4

    :cond_2
    move v1, v4

    .line 254
    .end local v0           #result:Lcom/amazon/kcp/application/sync/internal/SyncResult;
    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    .line 256
    invoke-direct {p0}, Lcom/amazon/kcp/ui/SyncMessageView;->updateView()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 258
    iget-object v2, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncListener:Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;

    invoke-interface {v2, p0, p1}, Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;->onShowSyncMessage(Lcom/amazon/kcp/ui/SyncMessageView;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/amazon/kcp/ui/SyncMessageView;->shown:Z

    move v2, v4

    .line 259
    goto :goto_0

    .restart local v0       #result:Lcom/amazon/kcp/application/sync/internal/SyncResult;
    :cond_4
    move v1, v3

    .line 251
    goto :goto_1

    .line 262
    .end local v0           #result:Lcom/amazon/kcp/application/sync/internal/SyncResult;
    :cond_5
    iget-object v2, p0, Lcom/amazon/kcp/ui/SyncMessageView;->unfinishedMessageSyncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    if-eqz v2, :cond_7

    .line 264
    iget-object v2, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncListener:Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;

    invoke-interface {v2, p0, p1}, Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;->onShowSyncMessage(Lcom/amazon/kcp/ui/SyncMessageView;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/amazon/kcp/ui/SyncMessageView;->shown:Z

    .line 265
    iget-boolean v2, p0, Lcom/amazon/kcp/ui/SyncMessageView;->shown:Z

    if-eqz v2, :cond_6

    .line 267
    invoke-direct {p0}, Lcom/amazon/kcp/ui/SyncMessageView;->hideMessageAfterDelay()V

    :cond_6
    move v2, v4

    .line 269
    goto :goto_0

    :cond_7
    move v2, v3

    .line 271
    goto :goto_0
.end method

.method public setOnSyncMessageListener(Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;)V
    .locals 2
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncListener:Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;

    if-ne p1, v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 177
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncListener:Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;

    .line 178
    if-nez p1, :cond_1

    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->getSyncStartedEvent()Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncStartedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/EventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 181
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->getSyncFinishedEvent()Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/EventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->getSyncStartedEvent()Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncStartedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/EventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 186
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->getSyncFinishedEvent()Lcom/amazon/foundation/internal/EventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/ui/SyncMessageView;->syncFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/EventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/ui/SyncMessageView;->requestShow(Z)Z

    goto :goto_0
.end method

.method public setStyle(Lcom/amazon/kcp/ui/SyncMessageView$Style;)V
    .locals 1
    .parameter "style"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->style:Lcom/amazon/kcp/ui/SyncMessageView$Style;

    if-eq p1, v0, :cond_0

    .line 217
    iput-object p1, p0, Lcom/amazon/kcp/ui/SyncMessageView;->style:Lcom/amazon/kcp/ui/SyncMessageView$Style;

    .line 218
    invoke-virtual {p0}, Lcom/amazon/kcp/ui/SyncMessageView;->requestLayout()V

    .line 220
    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/amazon/kcp/ui/SyncMessageView;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    return-void
.end method
