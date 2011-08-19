.class public Lorg/apache/xml/utils/ThreadControllerWrapper;
.super Ljava/lang/Object;
.source "ThreadControllerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;
    }
.end annotation


# static fields
.field private static m_tpool:Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;

    invoke-direct {v0}, Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;-><init>()V

    sput-object v0, Lorg/apache/xml/utils/ThreadControllerWrapper;->m_tpool:Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static runThread(Ljava/lang/Runnable;I)Ljava/lang/Thread;
    .registers 3
    .parameter "runnable"
    .parameter "priority"

    .prologue
    .line 35
    sget-object v0, Lorg/apache/xml/utils/ThreadControllerWrapper;->m_tpool:Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;

    invoke-virtual {v0, p0, p1}, Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;->run(Ljava/lang/Runnable;I)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public static waitThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .registers 3
    .parameter "worker"
    .parameter "task"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lorg/apache/xml/utils/ThreadControllerWrapper;->m_tpool:Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;

    invoke-virtual {v0, p0, p1}, Lorg/apache/xml/utils/ThreadControllerWrapper$ThreadController;->waitThread(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method
