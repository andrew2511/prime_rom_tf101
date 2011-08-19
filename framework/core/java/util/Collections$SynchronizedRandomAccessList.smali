.class Ljava/util/Collections$SynchronizedRandomAccessList;
.super Ljava/util/Collections$SynchronizedList;
.source "Collections.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedRandomAccessList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$SynchronizedList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x153e0c6c865668d2L


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 509
    .local p0, this:Ljava/util/Collections$SynchronizedRandomAccessList;,"Ljava/util/Collections$SynchronizedRandomAccessList<TE;>;"
    .local p1, l:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;)V

    .line 510
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter "mutex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 513
    .local p0, this:Ljava/util/Collections$SynchronizedRandomAccessList;,"Ljava/util/Collections$SynchronizedRandomAccessList<TE;>;"
    .local p1, l:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 514
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 536
    .local p0, this:Ljava/util/Collections$SynchronizedRandomAccessList;,"Ljava/util/Collections$SynchronizedRandomAccessList<TE;>;"
    new-instance v0, Ljava/util/Collections$SynchronizedList;

    iget-object v1, p0, Ljava/util/Collections$SynchronizedRandomAccessList;->list:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public subList(II)Ljava/util/List;
    .registers 7
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 518
    .local p0, this:Ljava/util/Collections$SynchronizedRandomAccessList;,"Ljava/util/Collections$SynchronizedRandomAccessList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedRandomAccessList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 519
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedRandomAccessList;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedRandomAccessList;->list:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedRandomAccessList;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 521
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
