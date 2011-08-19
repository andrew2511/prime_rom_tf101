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

.method static synthetic access$100(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->remove(Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    return-void
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
.method getTaskCountForTest()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->mTasks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
