.class public Lcom/android/providers/drm/DrmPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DrmPushReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, rightMimeType:Ljava/lang/String;
    const-string v5, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 43
    :cond_0
    const-string v5, "data"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    move-object v0, p0

    check-cast v0, [B

    move-object v2, v0

    .line 44
    .local v2, rightData:[B
    if-nez v2, :cond_1

    .line 45
    const-string v5, "DrmPushReceiver"

    const-string v6, "The rights data is invalid."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v2           #rightData:[B
    .end local v4           #rightMimeType:Ljava/lang/String;
    :goto_0
    return-void

    .line 48
    .restart local v2       #rightData:[B
    .restart local v4       #rightMimeType:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 50
    .local v3, rightDataStream:Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-static {}, Landroid/drm/mobile1/DrmRightsManager;->getInstance()Landroid/drm/mobile1/DrmRightsManager;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v3, v6, v4}, Landroid/drm/mobile1/DrmRightsManager;->installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    const-string v5, "DrmPushReceiver"

    const-string v6, "Install drm rights successfully."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 54
    .local v1, e:Landroid/drm/mobile1/DrmException;
    const-string v5, "DrmPushReceiver"

    const-string v6, "Install drm rights failed."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    .end local v1           #e:Landroid/drm/mobile1/DrmException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 57
    .local v1, e:Ljava/io/IOException;
    const-string v5, "DrmPushReceiver"

    const-string v6, "IOException occurs when install drm rights."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #rightData:[B
    .end local v3           #rightDataStream:Ljava/io/ByteArrayInputStream;
    .restart local p0
    :cond_2
    const-string v5, "DrmPushReceiver"

    const-string v6, "This is not drm rights push mimetype."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v4           #rightMimeType:Ljava/lang/String;
    :cond_3
    const-string v5, "DrmPushReceiver"

    const-string v6, "This is not wap push received action."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
