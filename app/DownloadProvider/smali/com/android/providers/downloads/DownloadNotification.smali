.class Lcom/android/providers/downloads/DownloadNotification;
.super Ljava/lang/Object;
.source "DownloadNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadNotification$NotificationItem;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/downloads/DownloadNotification$NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemFacade:Lcom/android/providers/downloads/SystemFacade;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)V
    .locals 1
    .parameter "ctx"
    .parameter "systemFacade"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadNotification;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    .line 102
    return-void
.end method

.method private getDownloadingText(JJ)Ljava/lang/String;
    .locals 5
    .parameter "totalBytes"
    .parameter "currentBytes"

    .prologue
    .line 276
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_0

    .line 277
    const-string v3, ""

    .line 283
    :goto_0
    return-object v3

    .line 279
    :cond_0
    const-wide/16 v3, 0x64

    mul-long/2addr v3, p3

    div-long v0, v3, p1

    .line 280
    .local v0, progress:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 282
    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private isActiveAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z
    .locals 2
    .parameter "download"

    .prologue
    .line 263
    const/16 v0, 0x64

    iget v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCompleteAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z
    .locals 3
    .parameter "download"

    .prologue
    const/4 v2, 0x1

    .line 268
    iget v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateActiveNotification(Ljava/util/Collection;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 115
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/providers/downloads/DownloadInfo;

    .line 116
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadNotification;->isActiveAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v7, p1, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    .line 120
    iget-wide v4, p1, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    .line 121
    iget-wide v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    .line 122
    iget-wide v8, p1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    .line 123
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 124
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 130
    :goto_1
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;

    .line 132
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->addItem(Ljava/lang/String;JJ)V

    .line 141
    :goto_2
    iget v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v2, 0xc4

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    goto :goto_0

    .line 134
    :cond_2
    new-instance v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;

    invoke-direct {v0}, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;-><init>()V

    .line 135
    long-to-int v8, v8

    iput v8, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mId:I

    .line 136
    iput-object v7, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPackageName:Ljava/lang/String;

    .line 137
    iget-object v8, p1, Lcom/android/providers/downloads/DownloadInfo;->mDescription:Ljava/lang/String;

    iput-object v8, v0, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mDescription:Ljava/lang/String;

    .line 138
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->addItem(Ljava/lang/String;JJ)V

    .line 139
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;

    .line 151
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 153
    iget-object v2, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    .line 154
    :goto_4
    const v3, 0x1080081

    .line 155
    if-eqz v2, :cond_4

    .line 156
    const v3, 0x108008a

    .line 158
    :cond_4
    iput v3, v1, Landroid/app/Notification;->icon:I

    .line 160
    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 163
    new-instance v4, Landroid/widget/RemoteViews;

    const-string v5, "com.android.providers.downloads"

    const/high16 v6, 0x7f02

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitles:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    iget v6, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_7

    .line 168
    iget-object v6, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    const v7, 0x7f030010

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v6, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitles:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget v6, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    iput v6, v1, Landroid/app/Notification;->number:I

    .line 171
    iget v6, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    const/4 v7, 0x2

    if-le v6, v7, :cond_5

    .line 172
    iget-object v6, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    const v7, 0x7f030011

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    const/4 v11, 0x2

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_5
    :goto_5
    const v6, 0x7f050002

    invoke-virtual {v4, v6, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 181
    if-eqz v2, :cond_8

    .line 182
    const v2, 0x7f050004

    const/16 v5, 0x8

    invoke-virtual {v4, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 183
    const v2, 0x7f050005

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 191
    :goto_6
    const v2, 0x7f050001

    iget-wide v5, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalTotal:J

    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalCurrent:J

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/providers/downloads/DownloadNotification;->getDownloadingText(JJ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 193
    const/high16 v2, 0x7f05

    invoke-virtual {v4, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 194
    iput-object v4, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 196
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    const-string v3, "com.android.providers.downloads"

    const-class v4, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget v4, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mId:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 201
    const-string v3, "multiple"

    iget v4, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_a

    const/4 v4, 0x1

    :goto_7
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 205
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadNotification;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget v3, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mId:I

    int-to-long v3, v3

    invoke-interface {v2, v3, v4, v1}, Lcom/android/providers/downloads/SystemFacade;->postNotification(JLandroid/app/Notification;)V

    goto/16 :goto_3

    .line 153
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 176
    :cond_7
    const v6, 0x7f050003

    iget-object v7, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_5

    .line 185
    :cond_8
    const v2, 0x7f050005

    const/16 v5, 0x8

    invoke-virtual {v4, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 186
    const v2, 0x7f050004

    iget-wide v5, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalTotal:J

    long-to-int v5, v5

    iget-wide v6, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalCurrent:J

    long-to-int v6, v6

    iget-wide v7, p1, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalTotal:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_9

    const/4 v7, 0x1

    :goto_8
    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    goto :goto_6

    :cond_9
    const/4 v7, 0x0

    goto :goto_8

    .line 201
    :cond_a
    const/4 v4, 0x0

    goto :goto_7

    .line 208
    :cond_b
    return-void

    :cond_c
    move-object v1, v0

    goto/16 :goto_1
.end method

.method private updateCompletedNotification(Ljava/util/Collection;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, downloads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/providers/downloads/DownloadInfo;

    .line 212
    .local v8, download:Lcom/android/providers/downloads/DownloadInfo;
    invoke-direct {p0, v8}, Lcom/android/providers/downloads/DownloadNotification;->isCompleteAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-wide v1, v8, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    iget-object v3, v8, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    iget v4, v8, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    iget v5, v8, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-wide v6, v8, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/downloads/DownloadNotification;->notificationForCompletedDownload(JLjava/lang/String;IIJ)V

    goto :goto_0

    .line 218
    .end local v8           #download:Lcom/android/providers/downloads/DownloadInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method notificationForCompletedDownload(JLjava/lang/String;IIJ)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 223
    const v4, 0x1080082

    iput v4, v3, Landroid/app/Notification;->icon:I

    .line 224
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 225
    :cond_0
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f03000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 228
    :goto_0
    sget-object v5, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 232
    invoke-static/range {p4 .. p4}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 233
    iget-object v6, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f030013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 235
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    .line 245
    :goto_1
    const-string v8, "com.android.providers.downloads"

    const-class v9, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 249
    move-wide/from16 v0, p6

    move-object v2, v3

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 250
    iget-object v8, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v6, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v3, v8, v4, v7, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 253
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.DOWNLOAD_HIDE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    const-string v6, "com.android.providers.downloads"

    const-class v7, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 257
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 259
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadNotification;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v4, p1, p2, v3}, Lcom/android/providers/downloads/SystemFacade;->postNotification(JLandroid/app/Notification;)V

    .line 260
    return-void

    .line 237
    :cond_1
    iget-object v6, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f030012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 239
    const/4 v7, 0x5

    move/from16 v0, p5

    move v1, v7

    if-eq v0, v1, :cond_2

    .line 240
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.DOWNLOAD_OPEN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    goto :goto_1

    .line 242
    :cond_2
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v7

    move-object v7, v6

    move-object v6, v12

    goto :goto_1

    :cond_3
    move-object/from16 v4, p3

    goto/16 :goto_0
.end method

.method public updateNotification(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, downloads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadNotification;->updateActiveNotification(Ljava/util/Collection;)V

    .line 109
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadNotification;->updateCompletedNotification(Ljava/util/Collection;)V

    .line 110
    return-void
.end method
