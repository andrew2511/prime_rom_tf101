.class public interface abstract Lcom/google/android/apps/books/util/pool/PoolableManager;
.super Ljava/lang/Object;
.source "PoolableManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/apps/books/util/pool/Poolable",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract newInstance()Lcom/google/android/apps/books/util/pool/Poolable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract onAcquired(Lcom/google/android/apps/books/util/pool/Poolable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onReleased(Lcom/google/android/apps/books/util/pool/Poolable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
