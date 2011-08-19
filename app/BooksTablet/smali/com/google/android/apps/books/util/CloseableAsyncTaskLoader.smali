.class public abstract Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;
.super Landroid/content/AsyncTaskLoader;
.source "CloseableAsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/apps/books/util/Closeable;",
        ">",
        "Landroid/content/AsyncTaskLoader",
        "<TR;>;"
    }
.end annotation


# instance fields
.field mReset:Z

.field mResult:Lcom/google/android/apps/books/util/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field mStopped:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 39
    .local p0, this:Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;,"Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader<TR;>;"
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/google/android/apps/books/util/Closeable;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, this:Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;,"Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader<TR;>;"
    .local p1, result:Lcom/google/android/apps/books/util/Closeable;,"TR;"
    iget-boolean v1, p0, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;->mReset:Z

    if-eqz v1, :cond_1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    invoke-interface {p1}, Lcom/google/android/apps/books/util/Closeable;->close()V

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;->mResult:Lcom/google/android/apps/books/util/Closeable;

    .line 27
    .local v0, oldResult:Lcom/google/android/apps/books/util/Closeable;,"TR;"
    iput-object p1, p0, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;->mResult:Lcom/google/android/apps/books/util/Closeable;

    .line 29
    iget-boolean v1, p0, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;->mStopped:Z

    if-nez v1, :cond_2

    .line 30
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 33
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Lcom/google/android/apps/books/util/Closeable;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    invoke-interface {v0}, Lcom/google/android/apps/books/util/Closeable;->close()V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8
    .local p0, this:Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;,"Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader<TR;>;"
    check-cast p1, Lcom/google/android/apps/books/util/Closeable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;->deliverResult(Lcom/google/android/apps/books/util/Closeable;)V

    return-void
.end method

.method public onCanceled(Lcom/google/android/apps/books/util/Closeable;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;,"Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader<TR;>;"
    .local p1, result:Lcom/google/android/apps/books/util/Closeable;,"TR;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/apps/books/util/Closeable;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-interface {p1}, Lcom/google/android/apps/books/util/Closeable;->close()V

    .line 68
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 8
    .local p0, this:Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;,"Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader<TR;>;"
    check-cast p1, Lcom/google/android/apps/books/util/Closeable;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;->onCanceled(Lcom/google/android/apps/books/util/Closeable;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 72
    .local p0, this:Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;,"Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader<TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;->mReset:Z

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;->stopLoading()V

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;->mResult:Lcom/google/android/apps/books/util/Closeable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;->mResult:Lcom/google/android/apps/books/util/Closeable;

    invoke-interface {v0}, Lcom/google/android/apps/books/util/Closeable;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;->mResult:Lcom/google/android/apps/books/util/Closeable;

    invoke-interface {v0}, Lcom/google/android/apps/books/util/Closeable;->close()V

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;->mResult:Lcom/google/android/apps/books/util/Closeable;

    .line 81
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .local p0, this:Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;,"Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader<TR;>;"
    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;->mStopped:Z

    .line 45
    iput-boolean v0, p0, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;->mReset:Z

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;->mResult:Lcom/google/android/apps/books/util/Closeable;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;->mResult:Lcom/google/android/apps/books/util/Closeable;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;->deliverResult(Lcom/google/android/apps/books/util/Closeable;)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;->forceLoad()V

    goto :goto_0
.end method

.method protected onStopLoading()V
    .locals 1

    .prologue
    .line 57
    .local p0, this:Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;,"Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader<TR;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;->cancelLoad()Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/util/CloseableAsyncTaskLoader;->mStopped:Z

    .line 61
    return-void
.end method
