.class public Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
.super Ljava/lang/Object;
.source "EmailAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/EmailAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tracker"
.end annotation


# instance fields
.field private final mTasks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<***>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->add(Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->remove(Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    return-void
.end method

.method private add(Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, task:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private remove(Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/utility/EmailAsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, task:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    monitor-enter v0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public cancellAllInterrupt()V
    .locals 4

    .prologue
    .line 61
    iget-object v2, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    monitor-enter v2

    .line 62
    :try_start_0
    iget-object v3, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 63
    .local v1, task:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/emailcommon/utility/EmailAsyncTask;->cancel(Z)Z

    goto :goto_0

    .line 66
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #task:Lcom/android/emailcommon/utility/EmailAsyncTask;,"Lcom/android/emailcommon/utility/EmailAsyncTask<***>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 65
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 66
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    return-void
.end method

.method getTaskCountForTest()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
