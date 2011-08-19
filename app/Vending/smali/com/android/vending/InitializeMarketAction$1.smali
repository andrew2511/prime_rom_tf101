.class final Lcom/android/vending/InitializeMarketAction$1;
.super Ljava/lang/Thread;
.source "InitializeMarketAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/InitializeMarketAction;->reconstructDatabase(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$listeners:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/vending/InitializeMarketAction$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lcom/android/vending/InitializeMarketAction$1;->val$listeners:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 295
    :try_start_0
    iget-object v2, p0, Lcom/android/vending/InitializeMarketAction$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0xa

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    iget-object v2, p0, Lcom/android/vending/InitializeMarketAction$1;->val$listeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/android/vending/InitializeMarketAction$1;->val$listeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_0

    .line 303
    :try_start_1
    iget-object v2, p0, Lcom/android/vending/InitializeMarketAction$1;->val$listeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/VendingApplication$AccountListListener;

    invoke-interface {v2}, Lcom/android/vending/VendingApplication$AccountListListener;->accountListUpdateCompleted()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 301
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 296
    .end local v1           #i:I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 297
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Exception while waiting for data reconstruct."

    invoke-static {v2}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 305
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "Caught exception in accountListUpdateCompleted"

    invoke-static {v2, v0}, Lcom/android/vending/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 309
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i:I
    :cond_0
    return-void
.end method
