.class public abstract Lcom/android/vending/AsynchTask;
.super Ljava/lang/Object;
.source "AsynchTask.java"

# interfaces
.implements Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doRequest(Lcom/android/vending/api/RequestManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/vending/AsynchTask;->doTask()V

    .line 37
    return-void
.end method

.method public abstract doTask()V
.end method

.method public execute()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getAsynchTaskRunner()Lcom/android/vending/AsynchRequestRunner;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/vending/AsynchRequestRunner;->runRequest(Lcom/android/vending/AsynchRequestRunner$ManagedAsynchRequestInterface;)V

    .line 31
    return-void
.end method
