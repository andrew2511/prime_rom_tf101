.class Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;
.super Landroid/os/AsyncTask;
.source "AccountSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AccountSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadUnreadMessageCounts"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentResolver;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/talk/AccountSelectionActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/AccountSelectionActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p2, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    iput-object p1, p0, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 408
    iput-object p2, p0, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->mAccountList:Ljava/util/List;

    .line 409
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 403
    check-cast p1, [Landroid/content/ContentResolver;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->doInBackground([Landroid/content/ContentResolver;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/ContentResolver;)Ljava/lang/Void;
    .locals 13
    .parameter "contentResolvers"

    .prologue
    const/4 v2, 0x0

    .line 413
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->mAccountList:Ljava/util/List;

    monitor-enter v0

    .line 415
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->mAccountList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 416
    .local v6, accountCnt:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v6, :cond_0

    .line 417
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 418
    .local v11, info:Lcom/google/android/talk/TalkApp$AccountInfo;
    const/4 v1, 0x0

    iput v1, v11, Lcom/google/android/talk/TalkApp$AccountInfo;->unreadCount:I

    .line 416
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 420
    .end local v11           #info:Lcom/google/android/talk/TalkApp$AccountInfo;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/AccountSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountStatus;->CONTENT_URI_UNREAD_CHATS:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 428
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_1

    move-object v0, v2

    .line 457
    :goto_1
    return-object v0

    .line 420
    .end local v6           #accountCnt:I
    .end local v9           #c:Landroid/database/Cursor;
    .end local v10           #i:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 439
    .restart local v6       #accountCnt:I
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v10       #i:I
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->mAccountList:Ljava/util/List;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 440
    :cond_2
    :goto_2
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 441
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 442
    .local v7, accountId:J
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 444
    .local v12, unreadChatsCount:I
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->mAccountList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 445
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v6, :cond_2

    .line 446
    iget-object v1, p0, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->mAccountList:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 447
    .restart local v11       #info:Lcom/google/android/talk/TalkApp$AccountInfo;
    iget-wide v3, v11, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    cmp-long v1, v3, v7

    if-nez v1, :cond_3

    .line 448
    iput v12, v11, Lcom/google/android/talk/TalkApp$AccountInfo;->unreadCount:I

    goto :goto_2

    .line 453
    .end local v7           #accountId:J
    .end local v11           #info:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v12           #unreadChatsCount:I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 455
    :catchall_2
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 445
    .restart local v7       #accountId:J
    .restart local v11       #info:Lcom/google/android/talk/TalkApp$AccountInfo;
    .restart local v12       #unreadChatsCount:I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 453
    .end local v7           #accountId:J
    .end local v11           #info:Lcom/google/android/talk/TalkApp$AccountInfo;
    .end local v12           #unreadChatsCount:I
    :cond_4
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 455
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 457
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 403
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "x"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$LoadUnreadMessageCounts;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-virtual {v0}, Lcom/google/android/talk/AccountSelectionActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/talk/AccountListAdapter;

    invoke-virtual {p0}, Lcom/google/android/talk/AccountListAdapter;->notifyDataSetChanged()V

    .line 466
    return-void
.end method
