.class Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;
.super Ljava/lang/Object;
.source "BookBackgroundWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;,
        Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;,
        Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
    }
.end annotation


# static fields
.field public static FEATURE_NAME:Ljava/lang/String; = null

.field public static final MARGIN_X:I = 0x8

.field public static final MARGIN_Y:I = 0x4


# instance fields
.field private final backgroundThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private final bookBehavior:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;

.field private final currentPageRenderedEventProvider:Lcom/amazon/foundation/internal/EventProvider;

.field private final currentPageRenderedNotificationRunnable:Ljava/lang/Runnable;

.field private final enqueueRenderOperationsRunnable:Ljava/lang/Runnable;

.field private final followExternalLinkEventProvider:Lcom/amazon/foundation/internal/StringEventProvider;

.field private final globalCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

.field private final goBackOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

.field private final navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

.field private final nextLineOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

.field private final nextPageOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

.field private final positionChangedEventProvider:Lcom/amazon/foundation/internal/EventProvider;

.field private final positionChangedNotificationRunnable:Ljava/lang/Runnable;

.field private final prerenderNextPageCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

.field private final prerenderNextPageOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

.field private final prerenderPreviousPageCanceler:Lcom/amazon/foundation/internal/CountingCanceler;

.field private final prerenderPreviousPageOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

.field private final prevLineOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

.field private final prevPageOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

.field private final pushNotificationsOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

.field private final queuedNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final refreshOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

.field private final renderCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

.field private final renderOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

.field private renderRequested:Z

.field private final showBookBuyEventProvider:Lcom/amazon/foundation/internal/EventProvider;

.field private final showBookBuyNotificationRunnable:Ljava/lang/Runnable;

.field private final showBookDetailsEventProvider:Lcom/amazon/foundation/internal/EventProvider;

.field private final showBookDetailsNotificationRunnable:Ljava/lang/Runnable;

.field private final stateQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;",
            ">;"
        }
    .end annotation
.end field

.field private final swapStateRunnable:Ljava/lang/Runnable;

.field private final synchronizationUtilities:Lcom/amazon/system/Utilities;

.field private uiThreadState:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

.field private final updateStateOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "PRERENDERING"

    sput-object v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->FEATURE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;Lcom/amazon/system/Utilities;)V
    .locals 7
    .parameter "behavior"
    .parameter "synchronizationUtilities"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    new-instance v0, Lcom/amazon/foundation/internal/CountingCanceler;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/CountingCanceler;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->prerenderPreviousPageCanceler:Lcom/amazon/foundation/internal/CountingCanceler;

    .line 331
    new-instance v0, Lcom/amazon/foundation/internal/ChainingCanceler;

    new-instance v1, Lcom/amazon/foundation/internal/CountingCanceler;

    invoke-direct {v1}, Lcom/amazon/foundation/internal/CountingCanceler;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->prerenderPreviousPageCanceler:Lcom/amazon/foundation/internal/CountingCanceler;

    invoke-direct {v0, v1, v2}, Lcom/amazon/foundation/internal/ChainingCanceler;-><init>(Lcom/amazon/foundation/internal/ICanceler;Lcom/amazon/foundation/internal/ICancelable;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->prerenderNextPageCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    .line 334
    new-instance v0, Lcom/amazon/foundation/internal/ChainingCanceler;

    new-instance v1, Lcom/amazon/foundation/internal/CountingCanceler;

    invoke-direct {v1}, Lcom/amazon/foundation/internal/CountingCanceler;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->prerenderNextPageCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    invoke-direct {v0, v1, v2}, Lcom/amazon/foundation/internal/ChainingCanceler;-><init>(Lcom/amazon/foundation/internal/ICanceler;Lcom/amazon/foundation/internal/ICancelable;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->renderCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    .line 338
    new-instance v0, Lcom/amazon/foundation/internal/ChainingCanceler;

    new-instance v1, Lcom/amazon/foundation/internal/CountingCanceler;

    invoke-direct {v1}, Lcom/amazon/foundation/internal/CountingCanceler;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->renderCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    invoke-direct {v0, v1, v2}, Lcom/amazon/foundation/internal/ChainingCanceler;-><init>(Lcom/amazon/foundation/internal/ICanceler;Lcom/amazon/foundation/internal/ICancelable;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    .line 341
    new-instance v0, Lcom/amazon/foundation/internal/ChainingCanceler;

    new-instance v1, Lcom/amazon/foundation/internal/CountingCanceler;

    invoke-direct {v1}, Lcom/amazon/foundation/internal/CountingCanceler;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    invoke-direct {v0, v1, v2}, Lcom/amazon/foundation/internal/ChainingCanceler;-><init>(Lcom/amazon/foundation/internal/ICanceler;Lcom/amazon/foundation/internal/ICancelable;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->globalCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    .line 344
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->positionChangedEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    .line 347
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$1;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->positionChangedNotificationRunnable:Ljava/lang/Runnable;

    .line 357
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->currentPageRenderedEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    .line 360
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$2;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->currentPageRenderedNotificationRunnable:Ljava/lang/Runnable;

    .line 370
    new-instance v0, Lcom/amazon/foundation/internal/StringEventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/StringEventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->followExternalLinkEventProvider:Lcom/amazon/foundation/internal/StringEventProvider;

    .line 373
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->showBookDetailsEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    .line 376
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$3;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->showBookDetailsNotificationRunnable:Ljava/lang/Runnable;

    .line 386
    new-instance v0, Lcom/amazon/foundation/internal/EventProvider;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/EventProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->showBookBuyEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    .line 389
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$4;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->showBookBuyNotificationRunnable:Ljava/lang/Runnable;

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->queuedNotifications:Ljava/util/List;

    .line 402
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$5;

    const-string v2, "goBack"

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->positionChangedNotificationRunnable:Ljava/lang/Runnable;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$5;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->goBackOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    .line 411
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$6;

    const-string v2, "nextPage"

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->positionChangedNotificationRunnable:Ljava/lang/Runnable;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$6;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->nextPageOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    .line 420
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$7;

    const-string v2, "nextLine"

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->positionChangedNotificationRunnable:Ljava/lang/Runnable;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$7;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->nextLineOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    .line 429
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$8;

    const-string v2, "prevPage"

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->positionChangedNotificationRunnable:Ljava/lang/Runnable;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$8;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->prevPageOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    .line 438
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$9;

    const-string v2, "prevLine"

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->positionChangedNotificationRunnable:Ljava/lang/Runnable;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$9;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->prevLineOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    .line 447
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$10;

    const-string v2, "render"

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->prerenderNextPageCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->renderCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->currentPageRenderedNotificationRunnable:Ljava/lang/Runnable;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$10;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->renderOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    .line 458
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$11;

    const-string v2, "prerenderNextPage"

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->prerenderNextPageCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->prerenderNextPageCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    move-object v1, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$11;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->prerenderNextPageOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    .line 467
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$12;

    const-string v2, "prerenderPrevPage"

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->prerenderPreviousPageCanceler:Lcom/amazon/foundation/internal/CountingCanceler;

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->prerenderNextPageCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    move-object v1, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$12;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->prerenderPreviousPageOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    .line 476
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$13;

    const-string v2, "updateState"

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->renderCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    move-object v1, p0

    move-object v3, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$13;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->updateStateOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    .line 497
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$14;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$14;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->swapStateRunnable:Ljava/lang/Runnable;

    .line 520
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$15;

    const-string v2, "pushNotifications"

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->renderCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    move-object v1, p0

    move-object v3, v6

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$15;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->pushNotificationsOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    .line 534
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$16;

    const-string v2, "refresh"

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->renderCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->renderCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    move-object v1, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$16;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->refreshOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    .line 551
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$17;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$17;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->enqueueRenderOperationsRunnable:Ljava/lang/Runnable;

    .line 573
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->backgroundThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 581
    new-instance v0, Lcom/amazon/foundation/util/internal/CircularArrayList;

    invoke-direct {v0}, Lcom/amazon/foundation/util/internal/CircularArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->stateQueue:Ljava/util/List;

    .line 594
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->bookBehavior:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;

    .line 595
    iput-object p2, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->synchronizationUtilities:Lcom/amazon/system/Utilities;

    .line 596
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->bookBehavior:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;

    new-instance v1, Lcom/amazon/foundation/internal/SimpleCanceler;

    invoke-direct {v1}, Lcom/amazon/foundation/internal/SimpleCanceler;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;->getState(Lcom/amazon/foundation/internal/ICancelRequester;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->uiThreadState:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    .line 597
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->backgroundThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->stateQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->swapStateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/system/Utilities;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->synchronizationUtilities:Lcom/amazon/system/Utilities;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->uiThreadState:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->uiThreadState:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->pushQueuedNotifications()V

    return-void
.end method

.method static synthetic access$1500(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->renderOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->updateStateOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->pushNotificationsOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->prerenderNextPageOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->prerenderPreviousPageOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->requestRender()V

    return-void
.end method

.method static synthetic access$2002(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->renderRequested:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->positionChangedNotificationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->showBookDetailsNotificationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->showBookBuyNotificationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/foundation/internal/StringEventProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->followExternalLinkEventProvider:Lcom/amazon/foundation/internal/StringEventProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertWorkerThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->enqueueNotification(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/foundation/internal/EventProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->positionChangedEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/foundation/internal/EventProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->currentPageRenderedEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/foundation/internal/EventProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->showBookDetailsEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method static synthetic access$800(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/foundation/internal/EventProvider;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->showBookBuyEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method static synthetic access$900(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->bookBehavior:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;

    return-object v0
.end method

.method private assertUIThread(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 982
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->synchronizationUtilities:Lcom/amazon/system/Utilities;

    invoke-interface {v0}, Lcom/amazon/system/Utilities;->isEventThread()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was called on a non-UI thread!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    return-void
.end method

.method private assertWorkerThread(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 988
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->synchronizationUtilities:Lcom/amazon/system/Utilities;

    invoke-interface {v0}, Lcom/amazon/system/Utilities;->isEventThread()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was called on the UI thread!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    return-void
.end method

.method private enqueueNotification(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 963
    const-string v0, "BookBackgroundWorker.enqueueNotification"

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertWorkerThread(Ljava/lang/String;)V

    .line 964
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->queuedNotifications:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 965
    return-void
.end method

.method private pushQueuedNotifications()V
    .locals 3

    .prologue
    .line 970
    const-string v1, "BookBackgroundWorker.pushQueuedNotifications"

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertWorkerThread(Ljava/lang/String;)V

    .line 971
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->queuedNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 972
    .local v0, notificationsIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Runnable;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 974
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->synchronizationUtilities:Lcom/amazon/system/Utilities;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v2, v1}, Lcom/amazon/system/Utilities;->invokeLater(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 976
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->queuedNotifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 977
    return-void
.end method

.method private requestRender()V
    .locals 2

    .prologue
    .line 952
    const-string v0, "BookBackgroundWorker.requestRender"

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    .line 953
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->renderRequested:Z

    if-nez v0, :cond_0

    .line 955
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->renderRequested:Z

    .line 956
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->synchronizationUtilities:Lcom/amazon/system/Utilities;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->enqueueRenderOperationsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/amazon/system/Utilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 958
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    .line 916
    const-string v0, "dispose"

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->globalCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/ChainingCanceler;->requestCancel()V

    .line 919
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->backgroundThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 920
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->backgroundThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    .line 921
    :goto_0
    if-nez v0, :cond_0

    .line 932
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->backgroundThreadExecutor:Ljava/util/concurrent/ExecutorService;

    const-wide v2, 0x7fffffffffffffffL

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->uiThreadState:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->dispose()V

    .line 942
    return-void

    .line 937
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public executeActiveArea(Ljava/lang/Object;)V
    .locals 7
    .parameter "activeArea"

    .prologue
    .line 845
    const-string v1, "executeActiveArea"

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    .line 846
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;

    const-string v2, "executeActiveArea"

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$26;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 883
    .local v0, executeActiveAreaOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->enqueue()V

    .line 884
    return-void
.end method

.method public getCurrentPageRenderedEvent()Lcom/amazon/foundation/internal/EventProvider;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->currentPageRenderedEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getFollowExternalLinkEvent()Lcom/amazon/foundation/internal/StringEventProvider;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->followExternalLinkEventProvider:Lcom/amazon/foundation/internal/StringEventProvider;

    return-object v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 701
    const-string v0, "getFontSize"

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->uiThreadState:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    iget v0, v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->fontSize:I

    return v0
.end method

.method public getLineSpacing()I
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->uiThreadState:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    iget v0, v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->lineSpacing:I

    return v0
.end method

.method public getMarginX()I
    .locals 1

    .prologue
    .line 896
    const/16 v0, 0x8

    return v0
.end method

.method public getMarginY()I
    .locals 1

    .prologue
    .line 902
    const/4 v0, 0x4

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 734
    const-string v0, "getPosition"

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->uiThreadState:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    iget v0, v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->position:I

    return v0
.end method

.method public getPositionChangedEvent()Lcom/amazon/foundation/internal/EventProvider;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->positionChangedEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getShowBookBuyEvent()Lcom/amazon/foundation/internal/EventProvider;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->showBookBuyEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getShowBookDetailsEvent()Lcom/amazon/foundation/internal/EventProvider;
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->showBookDetailsEventProvider:Lcom/amazon/foundation/internal/EventProvider;

    return-object v0
.end method

.method public getState()Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->uiThreadState:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    return-object v0
.end method

.method public goBack()Z
    .locals 1

    .prologue
    .line 776
    const-string v0, "goBack"

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->uiThreadState:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    iget-boolean v0, v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->backAvailable:Z

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->goBackOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->enqueue()V

    .line 781
    const/4 v0, 0x1

    .line 784
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gotoPosition(IZ)V
    .locals 8
    .parameter "position"
    .parameter "saveCurrentPosition"

    .prologue
    .line 719
    const-string v1, "gotoPosition"

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    .line 720
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$22;

    const-string v2, "setPosition"

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->positionChangedNotificationRunnable:Ljava/lang/Runnable;

    move-object v1, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$22;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;IZ)V

    .line 728
    .local v0, gotoPositionOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->enqueue()V

    .line 729
    return-void
.end method

.method public gotoStartReadingPosition(Z)V
    .locals 7
    .parameter "saveCurrentPosition"

    .prologue
    .line 741
    const-string v1, "gotoStartReadingPosition"

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    .line 742
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$23;

    const-string v2, "gotoStartReadingPosition"

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->positionChangedNotificationRunnable:Ljava/lang/Runnable;

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$23;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;Z)V

    .line 749
    .local v0, gotoStartReadingPositionOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->enqueue()V

    .line 750
    return-void
.end method

.method public gotoTOC(Z)V
    .locals 7
    .parameter "saveCurrentPosition"

    .prologue
    .line 755
    const-string v1, "gotoTOC"

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    .line 756
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$24;

    const-string v2, "gotoTOC"

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->navCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v5, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->positionChangedNotificationRunnable:Ljava/lang/Runnable;

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$24;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;Z)V

    .line 763
    .local v0, gotoTOCOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->enqueue()V

    .line 764
    return-void
.end method

.method public isBackAvailable()Z
    .locals 1

    .prologue
    .line 769
    const-string v0, "isBackAvailable"

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->uiThreadState:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;

    iget-boolean v0, v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;->backAvailable:Z

    return v0
.end method

.method public nextLine()V
    .locals 1

    .prologue
    .line 797
    const-string v0, "nextLine"

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->nextLineOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->enqueue()V

    .line 799
    return-void
.end method

.method public nextPage()V
    .locals 1

    .prologue
    .line 790
    const-string v0, "nextPage"

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->nextPageOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->enqueue()V

    .line 792
    return-void
.end method

.method public prevLine()V
    .locals 1

    .prologue
    .line 811
    const-string v0, "prevLine"

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->prevLineOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->enqueue()V

    .line 813
    return-void
.end method

.method public previousPage()V
    .locals 1

    .prologue
    .line 804
    const-string v0, "prevPage"

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    .line 805
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->prevPageOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->enqueue()V

    .line 806
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 889
    const-string v0, "refresh"

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    .line 890
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->refreshOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->enqueue()V

    .line 891
    return-void
.end method

.method public search(Ljava/lang/String;Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;Ljava/lang/Runnable;Lcom/amazon/foundation/IStatusTracker;Lcom/amazon/foundation/internal/ICancelRequester;)V
    .locals 9
    .parameter "query"
    .parameter "resultCallback"
    .parameter "completeRunnable"
    .parameter "statusTracker"
    .parameter "cancelRequester"

    .prologue
    .line 825
    const-string v1, "search"

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    .line 826
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$25;

    const-string v2, "search"

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->renderCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    move-object v1, p0

    move-object v4, p5

    move-object v5, p3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$25;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;Ljava/lang/String;Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;Lcom/amazon/foundation/IStatusTracker;)V

    .line 837
    .local v0, searchOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->enqueue()V

    .line 838
    return-void
.end method

.method public setColors(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Color;)V
    .locals 8
    .parameter "textColor"
    .parameter "backgroundColor"

    .prologue
    .line 686
    const-string v1, "setColors"

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    .line 687
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$21;

    const-string v2, "setColors"

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->renderCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->globalCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$21;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Color;)V

    .line 695
    .local v0, setColorsOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->enqueue()V

    .line 696
    return-void
.end method

.method public setFontSize(I)V
    .locals 7
    .parameter "newSize"

    .prologue
    .line 647
    const-string v1, "setFontSize"

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    .line 648
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$19;

    const-string v2, "setFontSize"

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->renderCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->globalCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$19;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;I)V

    .line 656
    .local v0, setFontSizeOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->enqueue()V

    .line 657
    return-void
.end method

.method public setLineSpacing(I)V
    .locals 7
    .parameter "newSpacing"

    .prologue
    .line 666
    const-string v1, "setLineSpacing"

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    .line 667
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$20;

    const-string v2, "setLineSpacing"

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->renderCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->globalCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$20;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;I)V

    .line 675
    .local v0, setLineSpacingOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->enqueue()V

    .line 677
    return-void
.end method

.method public setSize(II)V
    .locals 8
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 632
    const-string v1, "setSize"

    invoke-direct {p0, v1}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->assertUIThread(Ljava/lang/String;)V

    .line 633
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$18;

    const-string v2, "setSize"

    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->renderCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;->globalCanceler:Lcom/amazon/foundation/internal/ChainingCanceler;

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$18;-><init>(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;Ljava/lang/String;Lcom/amazon/foundation/internal/ICancelable;Lcom/amazon/foundation/internal/ICancelRequester;Ljava/lang/Runnable;II)V

    .line 641
    .local v0, setSizeOperation:Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$Operation;->enqueue()V

    .line 642
    return-void
.end method
