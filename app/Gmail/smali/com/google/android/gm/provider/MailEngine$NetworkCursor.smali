.class Lcom/google/android/gm/provider/MailEngine$NetworkCursor;
.super Landroid/database/sqlite/SQLiteCursor;
.source "MailEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkCursor"
.end annotation


# instance fields
.field mLogic:Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;

.field protected final mLogicLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;)V
    .locals 1
    .parameter
    .parameter "db"
    .parameter "driver"
    .parameter "editTable"
    .parameter "query"
    .parameter "logic"

    .prologue
    .line 5207
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->this$0:Lcom/google/android/gm/provider/MailEngine;

    .line 5208
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    .line 5204
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->mLogicLock:Ljava/lang/Object;

    .line 5209
    iput-object p6, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->mLogic:Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;

    .line 5210
    return-void
.end method


# virtual methods
.method public final getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 5214
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->mLogicLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5215
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->mLogic:Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 2

    .prologue
    .line 5228
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->mLogicLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5229
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->mLogic:Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->getWantsAllOnMoveCalls()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 5230
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .parameter "extras"

    .prologue
    .line 5221
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->mLogicLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5222
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->mLogic:Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;

    invoke-virtual {v1, p1}, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 5223
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5221
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
