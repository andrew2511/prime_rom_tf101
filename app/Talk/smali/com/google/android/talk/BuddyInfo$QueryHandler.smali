.class final Lcom/google/android/talk/BuddyInfo$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "BuddyInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/BuddyInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/BuddyInfo;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/BuddyInfo;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/talk/BuddyInfo$QueryHandler;->this$0:Lcom/google/android/talk/BuddyInfo;

    .line 111
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 112
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 117
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const-string v0, "talk"

    const-string v1, "[BuddyInfo] QueryHandler: empty cursor, bail!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo$QueryHandler;->this$0:Lcom/google/android/talk/BuddyInfo;

    invoke-virtual {v0}, Lcom/google/android/talk/BuddyInfo;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 127
    :goto_0
    return-void

    .line 123
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/talk/BuddyInfo$QueryHandler;->this$0:Lcom/google/android/talk/BuddyInfo;

    invoke-static {v0, p3}, Lcom/google/android/talk/BuddyInfo;->access$100(Lcom/google/android/talk/BuddyInfo;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v0
.end method
