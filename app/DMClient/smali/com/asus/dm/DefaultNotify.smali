.class Lcom/asus/dm/DefaultNotify;
.super Lcom/asus/dm/DMDownloadProgress;
.source "DMDownloadProgress.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/asus/dm/DMDownloadProgress;-><init>()V

    return-void
.end method


# virtual methods
.method createNotifyBody(IILandroid/app/PendingIntent;)V
    .locals 5
    .parameter "max"
    .parameter "progress"
    .parameter "contentIntent"

    .prologue
    const v4, 0x7f020002

    .line 112
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/asus/dm/DefaultNotify;->mService:Lcom/asus/dm/DMService;

    invoke-virtual {v1}, Lcom/asus/dm/DMService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030006

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/asus/dm/DefaultNotify;->dmDLRmView:Landroid/widget/RemoteViews;

    .line 115
    iget-object v0, p0, Lcom/asus/dm/DefaultNotify;->dmDLRmView:Landroid/widget/RemoteViews;

    const v1, 0x7f080020

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 116
    iget-object v0, p0, Lcom/asus/dm/DefaultNotify;->dmDLRmView:Landroid/widget/RemoteViews;

    const v1, 0x7f080021

    iget-object v2, p0, Lcom/asus/dm/DefaultNotify;->mService:Lcom/asus/dm/DMService;

    const v3, 0x7f06002f

    invoke-virtual {v2, v3}, Lcom/asus/dm/DMService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/asus/dm/DefaultNotify;->dmDLRmView:Landroid/widget/RemoteViews;

    const v1, 0x7f080022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 119
    sget-object v0, Lcom/asus/dm/DefaultNotify;->dmDLNotify:Landroid/app/Notification;

    iget-object v1, p0, Lcom/asus/dm/DefaultNotify;->dmDLRmView:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 120
    sget-object v0, Lcom/asus/dm/DefaultNotify;->dmDLNotify:Landroid/app/Notification;

    iput-object p3, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 121
    sget-object v0, Lcom/asus/dm/DefaultNotify;->dmDLNotify:Landroid/app/Notification;

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 122
    return-void
.end method

.method updtetProgress(II)V
    .locals 7
    .parameter "pTotal"
    .parameter "pCurrent"

    .prologue
    const v6, 0x7f080021

    const/4 v5, 0x0

    .line 127
    if-nez p1, :cond_1

    move v0, v5

    .line 129
    .local v0, current:I
    :goto_0
    iget v1, p0, Lcom/asus/dm/DefaultNotify;->current_percentage:I

    if-eq v1, v0, :cond_0

    .line 130
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

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iput v0, p0, Lcom/asus/dm/DefaultNotify;->current_percentage:I

    .line 135
    if-ne p2, p1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/asus/dm/DefaultNotify;->dmDLRmView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/asus/dm/DefaultNotify;->mService:Lcom/asus/dm/DMService;

    const v3, 0x7f060019

    invoke-virtual {v2, v3}, Lcom/asus/dm/DMService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 140
    sget-object v1, Lcom/asus/dm/DefaultNotify;->dmDLNotify:Landroid/app/Notification;

    iget-object v2, p0, Lcom/asus/dm/DefaultNotify;->mService:Lcom/asus/dm/DMService;

    invoke-virtual {v2}, Lcom/asus/dm/DMService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 143
    sget-object v1, Lcom/asus/dm/DefaultNotify;->dmDLNotify:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 152
    :goto_1
    iget-object v1, p0, Lcom/asus/dm/DefaultNotify;->dmDLRmView:Landroid/widget/RemoteViews;

    const v2, 0x7f080022

    invoke-virtual {v1, v2, p1, p2, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 154
    iget-object v1, p0, Lcom/asus/dm/DefaultNotify;->notifyMgr:Landroid/app/NotificationManager;

    const/4 v2, 0x1

    sget-object v3, Lcom/asus/dm/DefaultNotify;->dmDLNotify:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 157
    :cond_0
    return-void

    .line 127
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

    .line 146
    .restart local v0       #current:I
    :cond_2
    iget-object v1, p0, Lcom/asus/dm/DefaultNotify;->dmDLRmView:Landroid/widget/RemoteViews;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/asus/dm/DefaultNotify;->mService:Lcom/asus/dm/DMService;

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Lcom/asus/dm/DMService;->getString(I)Ljava/lang/String;

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
