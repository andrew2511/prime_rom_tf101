.class Ljava/util/Collections$SynchronizedSortedSet;
.super Ljava/util/Collections$SynchronizedSet;
.source "Collections.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSortedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$SynchronizedSet",
        "<TE;>;",
        "Ljava/util/SortedSet",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x78adb1384b50312eL


# instance fields
.field private final ss:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/SortedSet;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 913
    .local p0, this:Ljava/util/Collections$SynchronizedSortedSet;,"Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    .local p1, set:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;)V

    .line 914
    iput-object p1, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    .line 915
    return-void
.end method

.method constructor <init>(Ljava/util/SortedSet;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter "mutex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 918
    .local p0, this:Ljava/util/Collections$SynchronizedSortedSet;,"Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    .local p1, set:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    .line 919
    iput-object p1, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    .line 920
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 960
    .local p0, this:Ljava/util/Collections$SynchronizedSortedSet;,"Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 961
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 962
    monitor-exit v0

    .line 963
    return-void

    .line 962
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 923
    .local p0, this:Ljava/util/Collections$SynchronizedSortedSet;,"Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 924
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 925
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public first()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 929
    .local p0, this:Ljava/util/Collections$SynchronizedSortedSet;,"Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 930
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 931
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 935
    .local p0, this:Ljava/util/Collections$SynchronizedSortedSet;,"Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    .local p1, end:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 936
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedSortedSet;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v2, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 937
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public last()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 941
    .local p0, this:Ljava/util/Collections$SynchronizedSortedSet;,"Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 942
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 943
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 947
    .local p0, this:Ljava/util/Collections$SynchronizedSortedSet;,"Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    .local p1, start:Ljava/lang/Object;,"TE;"
    .local p2, end:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 948
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedSortedSet;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v2, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 950
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 954
    .local p0, this:Ljava/util/Collections$SynchronizedSortedSet;,"Ljava/util/Collections$SynchronizedSortedSet<TE;>;"
    .local p1, start:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 955
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedSortedSet;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedSet;->ss:Ljava/util/SortedSet;

    invoke-interface {v2, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedSet;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 956
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
