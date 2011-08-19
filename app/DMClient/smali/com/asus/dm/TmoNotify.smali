.class Lcom/asus/dm/TmoNotify;
.super Lcom/asus/dm/DMDownloadProgress;
.source "DMDownloadProgress.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/asus/dm/DMDownloadProgress;-><init>()V

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

    .line 164
    iget-object v2, p0, Lcom/asus/dm/TmoNotify;->mService:Lcom/asus/dm/DMService;

    const v3, 0x7f060027

    invoke-virtual {v2, v3}, Lcom/asus/dm/DMService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/asus/dm/TmoNotify;->mService:Lcom/asus/dm/DMService;

    const v3, 0x7f06001a

    invoke-virtual {v2, v3}, Lcom/asus/dm/DMService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, message:Ljava/lang/String;
    sget-object v2, Lcom/asus/dm/TmoNotify;->dmDLNotify:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 169
    sget-object v2, Lcom/asus/dm/TmoNotify;->dmDLNotify:Landroid/app/Notification;

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 170
    sget-object v2, Lcom/asus/dm/TmoNotify;->dmDLNotify:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 172
    sget-object v2, Lcom/asus/dm/TmoNotify;->dmDLNotify:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 174
    sget-object v2, Lcom/asus/dm/TmoNotify;->dmDLNotify:Landroid/app/Notification;

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 175
    sget-object v2, Lcom/asus/dm/TmoNotify;->dmDLNotify:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 177
    sget-object v2, Lcom/asus/dm/TmoNotify;->dmDLNotify:Landroid/app/Notification;

    iget-object v3, p0, Lcom/asus/dm/TmoNotify;->mService:Lcom/asus/dm/DMService;

    invoke-virtual {v2, v3, v1, v0, p3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 178
    return-void
.end method

.method updtetProgress(II)V
    .locals 0
    .parameter "pTotal"
    .parameter "pCurrent"

    .prologue
    .line 182
    return-void
.end method
