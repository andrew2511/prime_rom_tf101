.class public Lcom/android/vending/AsynchRequestRunner;
.super Ljava/lang/Object;
.source "AsynchRequestRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/AsynchRequestRunner$1;,
        Lcom/android/vending/AsynchRequestRunner$VendingThreadFactory;,
        Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequest;,
        Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;,
        Lcom/android/vending/AsynchRequestRunner$RequestRunnable;
    }
.end annotation


# static fields
.field private static final RETRY_PERIODS_MS:[I


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final mRequestManager:Lcom/android/vending/api/RequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/vending/AsynchRequestRunner;->RETRY_PERIODS_MS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xf4t 0x1t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0x88t 0x13t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/vending/api/RequestManager;)V
    .locals 2
    .parameter "requestManager"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/android/vending/AsynchRequestRunner$VendingThreadFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/vending/AsynchRequestRunner$VendingThreadFactory;-><init>(Lcom/android/vending/AsynchRequestRunner$1;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/AsynchRequestRunner;->executor:Ljava/util/concurrent/Executor;

    .line 81
    iput-object p1, p0, Lcom/android/vending/AsynchRequestRunner;->mRequestManager:Lcom/android/vending/api/RequestManager;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/vending/AsynchRequestRunner;->mRequestManager:Lcom/android/vending/api/RequestManager;

    return-object v0
.end method


# virtual methods
.method protected getRetryIntervals()[I
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/vending/AsynchRequestRunner;->RETRY_PERIODS_MS:[I

    return-object v0
.end method

.method public runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/vending/AsynchRequestRunner;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;-><init>(Lcom/android/vending/AsynchRequestRunner;Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method
