.class Lcom/asus/cm/DefaultNotify;
.super Lcom/asus/cm/CMDownloadProgress;
.source "CMDownloadProgress.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/asus/cm/CMDownloadProgress;-><init>()V

    return-void
.end method


# virtual methods
.method createNotifyBody(IILandroid/app/PendingIntent;)V
    .locals 5
    .parameter "max"
    .parameter "progress"
    .parameter "contentIntent"

    .prologue
    const v4, 0x7f020003

    .line 110
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/asus/cm/DefaultNotify;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v1}, Lcom/asus/cm/CMService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030008

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/asus/cm/DefaultNotify;->dmDLRmView:Landroid/widget/RemoteViews;

    .line 113
    iget-object v0, p0, Lcom/asus/cm/DefaultNotify;->dmDLRmView:Landroid/widget/RemoteViews;

    const v1, 0x7f0b002e

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 114
    iget-object v0, p0, Lcom/asus/cm/DefaultNotify;->dmDLRmView:Landroid/widget/RemoteViews;

    const v1, 0x7f0b002f

    iget-object v2, p0, Lcom/asus/cm/DefaultNotify;->mService:Lcom/asus/cm/CMService;

    const v3, 0x7f060021

    invoke-virtual {v2, v3}, Lcom/asus/cm/CMService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/asus/cm/DefaultNotify;->dmDLRmView:Landroid/widget/RemoteViews;

    const v1, 0x7f0b0030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 117
    sget-object v0, Lcom/asus/cm/DefaultNotify;->dmDLNotify:Landroid/app/Notification;

    iget-object v1, p0, Lcom/asus/cm/DefaultNotify;->dmDLRmView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 118
    sget-object v0, Lcom/asus/cm/DefaultNotify;->dmDLNotify:Landroid/app/Notification;

    iput-object p3, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 119
    sget-object v0, Lcom/asus/cm/DefaultNotify;->dmDLNotify:Landroid/app/Notification;

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 120
    return-void
.end method

.method updtetProgress(II)V
    .locals 7
    .parameter "pTotal"
    .parameter "pCurrent"

    .prologue
    const v6, 0x7f0b002f

    const/4 v5, 0x0

    .line 125
    if-nez p1, :cond_1

    move v0, v5

    .line 127
    .local v0, current:I
    :goto_0
    iget v1, p0, Lcom/asus/cm/DefaultNotify;->current_percentage:I

    if-eq v1, v0, :cond_0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pCurrent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pTotal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iput v0, p0, Lcom/asus/cm/DefaultNotify;->current_percentage:I

    .line 133
    if-ne p2, p1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/asus/cm/DefaultNotify;->dmDLRmView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/asus/cm/DefaultNotify;->mService:Lcom/asus/cm/CMService;

    const v3, 0x7f060022

    invoke-virtual {v2, v3}, Lcom/asus/cm/CMService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 138
    sget-object v1, Lcom/asus/cm/DefaultNotify;->dmDLNotify:Landroid/app/Notification;

    iget-object v2, p0, Lcom/asus/cm/DefaultNotify;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v2}, Lcom/asus/cm/CMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 141
    sget-object v1, Lcom/asus/cm/DefaultNotify;->dmDLNotify:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 150
    :goto_1
    iget-object v1, p0, Lcom/asus/cm/DefaultNotify;->dmDLRmView:Landroid/widget/RemoteViews;

    const v2, 0x7f0b0030

    invoke-virtual {v1, v2, p1, p2, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 152
    iget-object v1, p0, Lcom/asus/cm/DefaultNotify;->notifyMgr:Landroid/app/NotificationManager;

    const/4 v2, 0x1

    sget-object v3, Lcom/asus/cm/DefaultNotify;->dmDLNotify:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 155
    :cond_0
    return-void

    .line 125
    .end local v0           #current:I
    :cond_1
    int-to-long v1, p2

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    int-to-long v3, p1

    div-long/2addr v1, v3

    long-to-int v1, v1

    move v0, v1

    goto :goto_0

    .line 144
    .restart local v0       #current:I
    :cond_2
    iget-object v1, p0, Lcom/asus/cm/DefaultNotify;->dmDLRmView:Landroid/widget/RemoteViews;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/asus/cm/DefaultNotify;->mService:Lcom/asus/cm/CMService;

    const v4, 0x7f060012

    invoke-virtual {v3, v4}, Lcom/asus/cm/CMService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1
.end method
