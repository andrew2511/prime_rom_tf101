.class public Lcom/google/android/apps/books/model/ServiceCallbackScheduler;
.super Ljava/lang/Object;
.source "ServiceCallbackScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/model/ServiceCallbackScheduler$1;,
        Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCallable:Lcom/google/android/apps/books/model/ServiceCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/model/ServiceCallable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mCallback:Lcom/google/android/apps/books/model/ServiceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/model/ServiceCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mExcecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/apps/books/model/ServiceCallable;Lcom/google/android/apps/books/model/ServiceCallback;)V
    .locals 2
    .parameter "context"
    .parameter "excecutor"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/apps/books/model/ServiceCallable",
            "<TT;>;",
            "Lcom/google/android/apps/books/model/ServiceCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, this:Lcom/google/android/apps/books/model/ServiceCallbackScheduler;,"Lcom/google/android/apps/books/model/ServiceCallbackScheduler<TT;>;"
    .local p3, callable:Lcom/google/android/apps/books/model/ServiceCallable;,"Lcom/google/android/apps/books/model/ServiceCallable<TT;>;"
    .local p4, callback:Lcom/google/android/apps/books/model/ServiceCallback;,"Lcom/google/android/apps/books/model/ServiceCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->mExcecutor:Ljava/util/concurrent/Executor;

    .line 35
    iput-object p3, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->mCallable:Lcom/google/android/apps/books/model/ServiceCallable;

    .line 36
    iput-object p4, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->mCallback:Lcom/google/android/apps/books/model/ServiceCallback;

    .line 37
    new-instance v0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/books/model/ServiceCallbackScheduler$MyServiceConnection;-><init>(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;Lcom/google/android/apps/books/model/ServiceCallbackScheduler$1;)V

    iput-object v0, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->mConnection:Landroid/content/ServiceConnection;

    .line 38
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;)Lcom/google/android/apps/books/model/ServiceCallable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->mCallable:Lcom/google/android/apps/books/model/ServiceCallable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;)Lcom/google/android/apps/books/model/ServiceCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->mCallback:Lcom/google/android/apps/books/model/ServiceCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/model/ServiceCallbackScheduler;)Ljava/util/concurrent/Executor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->mExcecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public schedule()V
    .locals 4

    .prologue
    .line 41
    .local p0, this:Lcom/google/android/apps/books/model/ServiceCallbackScheduler;,"Lcom/google/android/apps/books/model/ServiceCallbackScheduler<TT;>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/books/service/ContentFetchService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, svcIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/books/model/ServiceCallbackScheduler;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 43
    return-void
.end method
