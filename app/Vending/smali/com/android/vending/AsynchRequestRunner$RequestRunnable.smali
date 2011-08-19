.class public Lcom/android/vending/AsynchRequestRunner$RequestRunnable;
.super Ljava/lang/Object;
.source "AsynchRequestRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AsynchRequestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RequestRunnable"
.end annotation


# instance fields
.field private final mRequest:Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;

.field final synthetic this$0:Lcom/android/vending/AsynchRequestRunner;


# direct methods
.method public constructor <init>(Lcom/android/vending/AsynchRequestRunner;Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V
    .locals 0
    .parameter
    .parameter "request"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->mRequest:Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;

    .line 29
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 32
    const/4 v5, 0x0

    .line 34
    .local v5, requestException:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-virtual {v7}, Lcom/android/vending/AsynchRequestRunner;->getRetryIntervals()[I

    move-result-object v6

    .line 35
    .local v6, retryPeriodMs:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v7, v6

    if-gt v4, v7, :cond_3

    .line 36
    const/4 v5, 0x0

    .line 39
    :try_start_0
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->mRequest:Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;

    iget-object v8, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v8}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;->doRequest(Lcom/android/vending/api/RequestManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/vending/api/AuthFailureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/vending/api/FatalCommunicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/vending/api/ApiException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 59
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v7}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 60
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v7}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->mRequest:Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;

    invoke-interface {v8}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;->getAccount()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/vending/api/RequestManager;->reset(Ljava/lang/String;)V

    .line 74
    :cond_0
    :goto_1
    return-void

    .line 41
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 42
    .local v1, afe:Lcom/android/vending/api/AuthFailureException;
    :try_start_1
    const-string v7, "Got auth failure from server -> invalidating auth tokens."

    invoke-static {v7}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v2

    .line 44
    .local v2, app:Lcom/android/vending/VendingApplication;
    sget-object v7, Lcom/android/vending/BaseActivity$AuthService;->ANDROID:Lcom/android/vending/BaseActivity$AuthService;

    iget-object v8, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->mRequest:Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;

    invoke-interface {v8}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;->getAccount()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/android/vending/VendingApplication;->invalidateAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V

    .line 45
    sget-object v7, Lcom/android/vending/BaseActivity$AuthService;->ANDROID_SECURE:Lcom/android/vending/BaseActivity$AuthService;

    iget-object v8, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->mRequest:Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;

    invoke-interface {v8}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;->getAccount()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/android/vending/VendingApplication;->invalidateAuthTokenBlocking(Lcom/android/vending/BaseActivity$AuthService;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    move-object v5, v1

    .line 59
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v7}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 60
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v7}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->mRequest:Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;

    invoke-interface {v8}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;->getAccount()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/vending/api/RequestManager;->reset(Ljava/lang/String;)V

    .line 65
    .end local v1           #afe:Lcom/android/vending/api/AuthFailureException;
    .end local v2           #app:Lcom/android/vending/VendingApplication;
    :cond_1
    :goto_2
    array-length v7, v6

    if-eq v4, v7, :cond_2

    .line 66
    aget v7, v6, v4

    int-to-long v7, v7

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 35
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 48
    :catch_1
    move-exception v7

    move-object v3, v7

    .line 49
    .local v3, e:Lcom/android/vending/api/FatalCommunicationException;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fatal error from server: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/vending/api/FatalCommunicationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    move-object v5, v3

    .line 59
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v7}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 60
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v7}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->mRequest:Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;

    invoke-interface {v8}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;->getAccount()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/vending/api/RequestManager;->reset(Ljava/lang/String;)V

    .line 71
    .end local v3           #e:Lcom/android/vending/api/FatalCommunicationException;
    :cond_3
    if-eqz v5, :cond_0

    .line 72
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->mRequest:Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;

    invoke-interface {v7, v5}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;->onException(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 52
    :catch_2
    move-exception v7

    move-object v0, v7

    .line 53
    .local v0, ae:Lcom/android/vending/api/ApiException;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got ApiException from async request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/vending/api/ApiException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    move-object v5, v0

    .line 59
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v7}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 60
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v7}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->mRequest:Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;

    invoke-interface {v8}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;->getAccount()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/vending/api/RequestManager;->reset(Ljava/lang/String;)V

    goto :goto_2

    .line 55
    .end local v0           #ae:Lcom/android/vending/api/ApiException;
    :catch_3
    move-exception v7

    move-object v3, v7

    .line 56
    .local v3, e:Ljava/io/IOException;
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got IOException from async request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    move-object v5, v3

    .line 59
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v7}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 60
    iget-object v7, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v7}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->mRequest:Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;

    invoke-interface {v8}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;->getAccount()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/vending/api/RequestManager;->reset(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 59
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v8}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 60
    iget-object v8, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->this$0:Lcom/android/vending/AsynchRequestRunner;

    invoke-static {v8}, Lcom/android/vending/AsynchRequestRunner;->access$000(Lcom/android/vending/AsynchRequestRunner;)Lcom/android/vending/api/RequestManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/vending/AsynchRequestRunner$RequestRunnable;->mRequest:Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;

    invoke-interface {v9}, Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;->getAccount()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/vending/api/RequestManager;->reset(Ljava/lang/String;)V

    :cond_4
    throw v7
.end method
