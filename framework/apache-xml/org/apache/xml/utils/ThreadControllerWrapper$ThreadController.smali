.class public Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;
.super Ljava/lang/Object;
.source "ThreadControllerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/utils/ThreadControllerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadController"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Runnable;I)Ljava/lang/Thread;
    .registers 4
    .parameter "task"
    .parameter "priority"

    .prologue
    .line 69
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 71
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 75
    return-object v0
.end method

.method public waitThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .registers 3
    .parameter "worker"
    .parameter "task"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p1}, Ljava/lang/Thread;->join()V

    .line 93
    return-void
.end method
