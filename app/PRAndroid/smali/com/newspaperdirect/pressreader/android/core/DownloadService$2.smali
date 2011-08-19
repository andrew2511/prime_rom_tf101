.class Lcom/newspaperdirect/pressreader/android/core/DownloadService$2;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/DownloadService;->startItemDownloading(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;

.field private final synthetic val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/DownloadService;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$2;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(I)V
    .locals 14
    .parameter "progress"

    .prologue
    const v13, 0x7f0900b3

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 115
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$2;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isReady()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$2;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isAdvice()Z

    move-result v7

    if-nez v7, :cond_0

    .line 116
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 117
    .local v5, mgr:Landroid/app/NotificationManager;
    new-instance v6, Landroid/app/Notification;

    const v7, 0x7f020056

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;

    invoke-virtual {v8, v13}, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$2;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 118
    .local v6, note:Landroid/app/Notification;
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;

    invoke-virtual {v7}, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 119
    .local v1, context:Landroid/content/Context;
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/newspaperdirect/pressreader/android/Main;

    invoke-direct {v4, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "tab"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    invoke-static {v1, v11, v4, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 122
    .local v3, i:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;

    const v8, 0x7f09004a

    invoke-virtual {v7, v8}, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;

    invoke-virtual {v8, v13}, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$2;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v1, v7, v8, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 123
    invoke-virtual {v5, v12, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 125
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #i:Landroid/app/PendingIntent;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #mgr:Landroid/app/NotificationManager;
    .end local v6           #note:Landroid/app/Notification;
    :cond_0
    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;

    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->access$0(Lcom/newspaperdirect/pressreader/android/core/DownloadService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_2

    .line 135
    return-void

    .line 125
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 127
    .local v0, client:Landroid/os/Messenger;
    const/4 v8, 0x0

    const/4 v9, 0x5

    :try_start_0
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$2;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getId()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-static {v8, v9, v10, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 128
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$2;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v8}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isReady()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 129
    const/4 v8, 0x0

    const/4 v9, 0x6

    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$2;->val$item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getId()J

    move-result-wide v10

    long-to-int v10, v10

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 132
    .local v2, e:Landroid/os/RemoteException;
    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/DownloadService$2;->this$0:Lcom/newspaperdirect/pressreader/android/core/DownloadService;

    invoke-static {v8}, Lcom/newspaperdirect/pressreader/android/core/DownloadService;->access$0(Lcom/newspaperdirect/pressreader/android/core/DownloadService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
