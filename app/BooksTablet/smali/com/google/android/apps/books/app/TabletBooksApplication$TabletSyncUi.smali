.class Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;
.super Ljava/lang/Object;
.source "TabletBooksApplication.java"

# interfaces
.implements Lcom/google/android/apps/books/service/SyncService$SyncUi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/TabletBooksApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabletSyncUi"
.end annotation


# static fields
.field private static final DOWNLOAD_PROGRESS_INTENT_REQUEST_ID:I

.field private static final DOWNLOAD_PROGRESS_NOTIFICATION_ID:I


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/TabletBooksApplication;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/TabletBooksApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;->this$0:Lcom/google/android/apps/books/app/TabletBooksApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/TabletBooksApplication;Lcom/google/android/apps/books/app/TabletBooksApplication$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;-><init>(Lcom/google/android/apps/books/app/TabletBooksApplication;)V

    return-void
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;->this$0:Lcom/google/android/apps/books/app/TabletBooksApplication;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/TabletBooksApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method


# virtual methods
.method public finishedAllVolumeDownloads()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 79
    return-void
.end method

.method public startingVolumeDownload(II)V
    .locals 17
    .parameter "volumeNumber"
    .parameter "volumeCount"

    .prologue
    .line 42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;->this$0:Lcom/google/android/apps/books/app/TabletBooksApplication;

    move-object v7, v0

    .line 43
    .local v7, context:Landroid/content/Context;
    invoke-virtual {v7}, Lcom/google/android/apps/books/app/BooksApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 46
    .local v10, res:Landroid/content/res/Resources;
    add-int/lit8 v9, p1, 0x1

    .line 48
    .local v9, readableVolumeNumber:I
    const v13, 0x7f0b005c

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 49
    .local v12, title:Ljava/lang/CharSequence;
    const/high16 v13, 0x7f0f

    move-object v0, v10

    move v1, v13

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v11

    .line 51
    .local v11, template:Ljava/lang/CharSequence;
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "%1$d"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "%2$d"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v11, v13, v14}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 56
    .local v6, content:Ljava/lang/CharSequence;
    new-instance v3, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v3, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v3, booksIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;->this$0:Lcom/google/android/apps/books/app/TabletBooksApplication;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/android/apps/books/app/TabletBooksApplication;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const/high16 v13, 0x1000

    invoke-virtual {v3, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v7, v13, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 62
    .local v5, clickIntent:Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    .local v4, builder:Landroid/app/Notification$Builder;
    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 64
    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 65
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 66
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 68
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 69
    const v13, 0x7f020047

    invoke-virtual {v4, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 70
    move-object v0, v4

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 72
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 73
    .local v8, notif:Landroid/app/Notification;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/books/app/TabletBooksApplication$TabletSyncUi;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 74
    return-void
.end method
