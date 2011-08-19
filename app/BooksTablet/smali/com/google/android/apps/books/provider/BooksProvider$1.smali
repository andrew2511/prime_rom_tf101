.class final Lcom/google/android/apps/books/provider/BooksProvider$1;
.super Ljava/lang/Object;
.source "BooksProvider.java"

# interfaces
.implements Lcom/google/android/apps/books/util/pool/PoolableManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/provider/BooksProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/books/util/pool/PoolableManager",
        "<",
        "Lcom/google/android/apps/books/util/SelectionBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance()Lcom/google/android/apps/books/util/SelectionBuilder;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/google/android/apps/books/util/SelectionBuilder;

    invoke-direct {v0}, Lcom/google/android/apps/books/util/SelectionBuilder;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newInstance()Lcom/google/android/apps/books/util/pool/Poolable;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/android/apps/books/provider/BooksProvider$1;->newInstance()Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    return-object v0
.end method

.method public onAcquired(Lcom/google/android/apps/books/util/SelectionBuilder;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 132
    return-void
.end method

.method public bridge synthetic onAcquired(Lcom/google/android/apps/books/util/pool/Poolable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    check-cast p1, Lcom/google/android/apps/books/util/SelectionBuilder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/provider/BooksProvider$1;->onAcquired(Lcom/google/android/apps/books/util/SelectionBuilder;)V

    return-void
.end method

.method public onReleased(Lcom/google/android/apps/books/util/SelectionBuilder;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/google/android/apps/books/util/SelectionBuilder;->reset()Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 136
    return-void
.end method

.method public bridge synthetic onReleased(Lcom/google/android/apps/books/util/pool/Poolable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 125
    check-cast p1, Lcom/google/android/apps/books/util/SelectionBuilder;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/provider/BooksProvider$1;->onReleased(Lcom/google/android/apps/books/util/SelectionBuilder;)V

    return-void
.end method
