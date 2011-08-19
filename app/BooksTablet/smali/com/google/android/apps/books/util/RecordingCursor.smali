.class public Lcom/google/android/apps/books/util/RecordingCursor;
.super Landroid/database/CursorWrapper;
.source "RecordingCursor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordingCursor"


# instance fields
.field private mCloseTrace:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 24
    return-void
.end method

.method public static logIfClosed(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    const-string v5, "RecordingCursor"

    .line 45
    instance-of v3, p0, Lcom/google/android/apps/books/util/RecordingCursor;

    if-eqz v3, :cond_1

    .line 46
    new-instance v1, Ljava/lang/Throwable;

    move-object v0, p0

    check-cast v0, Lcom/google/android/apps/books/util/RecordingCursor;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/apps/books/util/RecordingCursor;->getCloseTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    .line 52
    .local v1, closeTrace:Ljava/lang/Throwable;
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    const-string v3, "RecordingCursor"

    const-string v3, "cursor unexpectedly found to be closed"

    invoke-static {v5, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    :cond_0
    return-void

    .line 48
    .end local v1           #closeTrace:Ljava/lang/Throwable;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected a RecordingCursor, but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, msg:Ljava/lang/String;
    const-string v3, "RecordingCursor"

    const-string v3, ""

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v5, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    const/4 v1, 0x0

    .restart local v1       #closeTrace:Ljava/lang/Throwable;
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "cursor closed"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/books/util/RecordingCursor;->mCloseTrace:Ljava/lang/Throwable;

    .line 29
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 30
    return-void
.end method

.method public getCloseTrace()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/apps/books/util/RecordingCursor;->mCloseTrace:Ljava/lang/Throwable;

    return-object v0
.end method
