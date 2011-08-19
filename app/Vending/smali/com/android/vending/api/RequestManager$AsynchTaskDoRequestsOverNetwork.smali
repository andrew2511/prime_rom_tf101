.class Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;
.super Lcom/android/vending/AsynchTask;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/api/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsynchTaskDoRequestsOverNetwork"
.end annotation


# instance fields
.field private mAccount:Ljava/lang/String;

.field protected mNotifiedRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/api/RequestManager$BatchRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

.field private final mRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/api/RequestManager$BatchRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/vending/api/RequestManager;


# direct methods
.method public constructor <init>(Lcom/android/vending/api/RequestManager;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/vending/api/RequestDispatcher$RequestContext;)V
    .locals 0
    .parameter
    .parameter "account"
    .parameter
    .parameter
    .parameter "requestContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/api/RequestManager$BatchRequest;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/vending/api/RequestManager$BatchRequest;",
            ">;",
            "Lcom/android/vending/api/RequestDispatcher$RequestContext;",
            ")V"
        }
    .end annotation

    .prologue
    .line 537
    .local p3, requests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/api/RequestManager$BatchRequest;>;"
    .local p4, notifiedRequests:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/api/RequestManager$BatchRequest;>;"
    iput-object p1, p0, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->this$0:Lcom/android/vending/api/RequestManager;

    invoke-direct {p0}, Lcom/android/vending/AsynchTask;-><init>()V

    .line 538
    iput-object p3, p0, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->mRequests:Ljava/util/ArrayList;

    .line 539
    iput-object p4, p0, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->mNotifiedRequests:Ljava/util/ArrayList;

    .line 540
    iput-object p5, p0, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

    .line 541
    iput-object p2, p0, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->mAccount:Ljava/lang/String;

    .line 542
    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 7

    .prologue
    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->this$0:Lcom/android/vending/api/RequestManager;

    iget-object v1, p0, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->mAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->mRequests:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->mNotifiedRequests:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->mRequestContext:Lcom/android/vending/api/RequestDispatcher$RequestContext;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/vending/api/RequestManager;->access$200(Lcom/android/vending/api/RequestManager;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/android/vending/api/RequestDispatcher$RequestContext;Z)V
    :try_end_0
    .catch Lcom/android/vending/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 554
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 550
    .local v6, e:Lcom/android/vending/api/ApiException;
    invoke-virtual {v6}, Lcom/android/vending/api/ApiException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 551
    .end local v6           #e:Lcom/android/vending/api/ApiException;
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 552
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/vending/api/RequestManager$AsynchTaskDoRequestsOverNetwork;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public onException(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 558
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vending/util/Log;->w(Ljava/lang/String;)V

    .line 559
    return-void
.end method
