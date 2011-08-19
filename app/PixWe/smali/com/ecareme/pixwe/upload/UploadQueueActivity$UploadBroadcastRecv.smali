.class public Lcom/ecareme/pixwe/upload/UploadQueueActivity$UploadBroadcastRecv;
.super Landroid/content/BroadcastReceiver;
.source "UploadQueueActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/upload/UploadQueueActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadBroadcastRecv"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/upload/UploadQueueActivity;


# direct methods
.method public constructor <init>(Lcom/ecareme/pixwe/upload/UploadQueueActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity$UploadBroadcastRecv;->this$0:Lcom/ecareme/pixwe/upload/UploadQueueActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    .line 174
    :try_start_0
    const-string v2, "upload_status"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 175
    .local v1, ulStatus:I
    if-le v1, v4, :cond_0

    .line 182
    iget-object v2, p0, Lcom/ecareme/pixwe/upload/UploadQueueActivity$UploadBroadcastRecv;->this$0:Lcom/ecareme/pixwe/upload/UploadQueueActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/upload/UploadQueueActivity;->access$0(Lcom/ecareme/pixwe/upload/UploadQueueActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1           #ulStatus:I
    :cond_0
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 188
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "UploadQueueActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
