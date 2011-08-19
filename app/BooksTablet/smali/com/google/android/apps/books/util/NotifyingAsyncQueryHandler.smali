.class public Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "NotifyingAsyncQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler$AsyncQueryListener;
    }
.end annotation


# static fields
.field private static final TOKEN:I = -0x1


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler$AsyncQueryListener;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryRunning:Z


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V
    .locals 0
    .parameter "resolver"
    .parameter "listener"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 53
    invoke-virtual {p0, p2}, Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler;->setQueryListener(Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method public cancelOperation()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler;->cancelOperation(I)V

    .line 77
    return-void
.end method

.method public clearQueryListener()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    .line 70
    return-void
.end method

.method public isQueryRunning()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler;->mQueryRunning:Z

    return v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 93
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler;->mQueryRunning:Z

    .line 94
    iget-object v1, p0, Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    .line 95
    .end local p0
    .local v0, listener:Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler$AsyncQueryListener;
    :goto_0
    if-eqz v0, :cond_2

    .line 96
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler$AsyncQueryListener;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 100
    :cond_0
    :goto_1
    return-void

    .line 94
    .end local v0           #listener:Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler$AsyncQueryListener;
    .restart local p0
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler$AsyncQueryListener;

    move-object v0, p0

    goto :goto_0

    .line 97
    .restart local v0       #listener:Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler$AsyncQueryListener;
    :cond_2
    if-eqz p3, :cond_0

    .line 98
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public setQueryListener(Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 61
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    .line 62
    return-void
.end method

.method public startQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/books/util/NotifyingAsyncQueryHandler;->mQueryRunning:Z

    .line 87
    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-super/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method
