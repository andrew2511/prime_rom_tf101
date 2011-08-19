.class public Lcom/android/contacts/vcard/ImportProgressNotifier;
.super Ljava/lang/Object;
.source "ImportProgressNotifier.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentCount:I

.field private final mDisplayName:Ljava/lang/String;

.field private final mJobId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mTotalCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/NotificationManager;ILjava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "notificationManager"
    .parameter "jobId"
    .parameter "displayName"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportProgressNotifier;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportProgressNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 46
    iput p3, p0, Lcom/android/contacts/vcard/ImportProgressNotifier;->mJobId:I

    .line 47
    iput-object p4, p0, Lcom/android/contacts/vcard/ImportProgressNotifier;->mDisplayName:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public declared-synchronized addTotalCount(I)V
    .locals 1
    .parameter "additionalCount"

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/contacts/vcard/ImportProgressNotifier;->mTotalCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/contacts/vcard/ImportProgressNotifier;->mTotalCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 11
    .parameter "contactStruct"

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x1

    .line 54
    iget v0, p0, Lcom/android/contacts/vcard/ImportProgressNotifier;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/contacts/vcard/ImportProgressNotifier;->mCurrentCount:I

    .line 55
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->isIgnorable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 60
    :cond_0
    monitor-enter p0

    .line 61
    :try_start_0
    iget v0, p0, Lcom/android/contacts/vcard/ImportProgressNotifier;->mTotalCount:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 62
    .local v9, totalCountString:Ljava/lang/String;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProgressNotifier;->mContext:Landroid/content/Context;

    const v4, 0x7f0c00c1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/contacts/vcard/ImportProgressNotifier;->mCurrentCount:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    aput-object v9, v5, v1

    const/4 v6, 0x2

    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, tickerText:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProgressNotifier;->mContext:Landroid/content/Context;

    const v4, 0x7f0c00c2

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, description:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProgressNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v4, p0, Lcom/android/contacts/vcard/ImportProgressNotifier;->mJobId:I

    iget-object v5, p0, Lcom/android/contacts/vcard/ImportProgressNotifier;->mDisplayName:Ljava/lang/String;

    iget v6, p0, Lcom/android/contacts/vcard/ImportProgressNotifier;->mTotalCount:I

    iget v7, p0, Lcom/android/contacts/vcard/ImportProgressNotifier;->mCurrentCount:I

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/vcard/VCardService;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 74
    .local v8, notification:Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportProgressNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/android/contacts/vcard/ImportProgressNotifier;->mJobId:I

    invoke-virtual {v0, v1, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 62
    .end local v2           #description:Ljava/lang/String;
    .end local v3           #tickerText:Ljava/lang/String;
    .end local v8           #notification:Landroid/app/Notification;
    .end local v9           #totalCountString:Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
