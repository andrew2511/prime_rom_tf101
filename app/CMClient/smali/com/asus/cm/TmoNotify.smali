.class Lcom/asus/cm/TmoNotify;
.super Lcom/asus/cm/CMDownloadProgress;
.source "CMDownloadProgress.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/asus/cm/CMDownloadProgress;-><init>()V

    return-void
.end method


# virtual methods
.method createNotifyBody(IILandroid/app/PendingIntent;)V
    .locals 6
    .parameter "max"
    .parameter "progress"
    .parameter "contentIntent"

    .prologue
    const v5, 0x1080082

    .line 162
    iget-object v2, p0, Lcom/asus/cm/TmoNotify;->mService:Lcom/asus/cm/CMService;

    const v3, 0x7f060023

    invoke-virtual {v2, v3}, Lcom/asus/cm/CMService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/asus/cm/TmoNotify;->mService:Lcom/asus/cm/CMService;

    const v3, 0x7f060024

    invoke-virtual {v2, v3}, Lcom/asus/cm/CMService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, message:Ljava/lang/String;
    sget-object v2, Lcom/asus/cm/TmoNotify;->dmDLNotify:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 167
    sget-object v2, Lcom/asus/cm/TmoNotify;->dmDLNotify:Landroid/app/Notification;

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 168
    sget-object v2, Lcom/asus/cm/TmoNotify;->dmDLNotify:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 170
    sget-object v2, Lcom/asus/cm/TmoNotify;->dmDLNotify:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 172
    sget-object v2, Lcom/asus/cm/TmoNotify;->dmDLNotify:Landroid/app/Notification;

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 173
    sget-object v2, Lcom/asus/cm/TmoNotify;->dmDLNotify:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 175
    sget-object v2, Lcom/asus/cm/TmoNotify;->dmDLNotify:Landroid/app/Notification;

    iget-object v3, p0, Lcom/asus/cm/TmoNotify;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v2, v3, v1, v0, p3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 176
    return-void
.end method

.method updtetProgress(II)V
    .locals 0
    .parameter "pTotal"
    .parameter "pCurrent"

    .prologue
    .line 180
    return-void
.end method
