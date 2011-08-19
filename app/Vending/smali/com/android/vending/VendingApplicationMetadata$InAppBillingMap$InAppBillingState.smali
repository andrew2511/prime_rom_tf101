.class public Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;
.super Ljava/lang/Object;
.source "VendingApplicationMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InAppBillingState"
.end annotation


# instance fields
.field private volatile mEnabled:Z

.field private mHasBeenSetLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$1:Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;


# direct methods
.method public constructor <init>(Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;)V
    .locals 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;->this$1:Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;->mHasBeenSetLatch:Ljava/util/concurrent/CountDownLatch;

    .line 176
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;->mHasBeenSetLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    const-string v1, "IAB latch timeout expired while waiting for metadata response."

    invoke-static {v1}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v5

    .line 192
    :goto_0
    return v1

    .line 188
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 189
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "IAB latch interrupted"

    invoke-static {v1}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    move v1, v5

    .line 190
    goto :goto_0

    .line 192
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    iget-boolean v1, p0, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;->mEnabled:Z

    goto :goto_0
.end method

.method public isSet()Z
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;->mHasBeenSetLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;->mEnabled:Z

    .line 197
    iget-object v0, p0, Lcom/android/vending/VendingApplicationMetadata$InAppBillingMap$InAppBillingState;->mHasBeenSetLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 198
    return-void
.end method
