.class public Lcom/google/android/apps/books/util/ConcurrentMutable;
.super Ljava/lang/Object;
.source "ConcurrentMutable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 8
    .local p0, this:Lcom/google/android/apps/books/util/ConcurrentMutable;,"Lcom/google/android/apps/books/util/ConcurrentMutable<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/google/android/apps/books/util/ConcurrentMutable;->mValue:Ljava/lang/Object;

    .line 10
    return-void
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, this:Lcom/google/android/apps/books/util/ConcurrentMutable;,"Lcom/google/android/apps/books/util/ConcurrentMutable<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/books/util/ConcurrentMutable;->mValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setValue(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, this:Lcom/google/android/apps/books/util/ConcurrentMutable;,"Lcom/google/android/apps/books/util/ConcurrentMutable<TT;>;"
    .local p1, t:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/apps/books/util/ConcurrentMutable;->mValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
