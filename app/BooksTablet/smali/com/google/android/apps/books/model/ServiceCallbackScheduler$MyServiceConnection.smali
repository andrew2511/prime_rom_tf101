.class Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;
.super Ljava/lang/Object;
.source "ServiceCallbackScheduler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/model/ServiceCallbackScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/model/ServiceCallbackScheduler;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    .local p0, this:Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;,"Lcom/google/android/apps/books/model/ServiceCallbackScheduler<TT;>.MyServiceConnection;"
    iput-object p1, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;->this$0:Lcom/google/android/apps/books/model/ServiceCallbackScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;Lcom/google/android/apps/books/model/ServiceCallbackScheduler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    .local p0, this:Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;,"Lcom/google/android/apps/books/model/ServiceCallbackScheduler<TT;>.MyServiceConnection;"
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;-><init>(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "binder"

    .prologue
    .line 48
    .local p0, this:Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;,"Lcom/google/android/apps/books/model/ServiceCallbackScheduler<TT;>.MyServiceConnection;"
    check-cast p2, Lcom/google/android/apps/books/service/ContentFetchService$MyBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/books/service/ContentFetchService$MyBinder;->getService()Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v2

    .line 49
    .local v2, service:Lcom/google/android/apps/books/service/ContentFetchService;
    iget-object v3, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;->this$0:Lcom/google/android/apps/books/model/ServiceCallbackScheduler;

    invoke-static {v3}, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->access$100(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;)Lcom/google/android/apps/books/model/ServiceCallable;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/android/apps/books/model/ServiceCallable;->setService(Lcom/google/android/apps/books/service/FetchService;)V

    .line 50
    move-object v0, p0

    .line 52
    .local v0, connection:Landroid/content/ServiceConnection;
    new-instance v1, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection$1;-><init>(Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;Landroid/content/ServiceConnection;)V

    .line 69
    .local v1, runnable:Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;->this$0:Lcom/google/android/apps/books/model/ServiceCallbackScheduler;

    invoke-static {v3}, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->access$400(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;)Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 70
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "className"

    .prologue
    .line 73
    .local p0, this:Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;,"Lcom/google/android/apps/books/model/ServiceCallbackScheduler<TT;>.MyServiceConnection;"
    return-void
.end method
