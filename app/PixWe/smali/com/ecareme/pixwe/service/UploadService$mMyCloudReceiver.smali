.class public Lcom/ecareme/pixwe/service/UploadService$mMyCloudReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/service/UploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "mMyCloudReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/service/UploadService;


# direct methods
.method public constructor <init>(Lcom/ecareme/pixwe/service/UploadService;)V
    .locals 0
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/ecareme/pixwe/service/UploadService$mMyCloudReceiver;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 791
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 792
    .local v0, bunde:Landroid/os/Bundle;
    const-string v3, "MyCloud"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 793
    .local v2, str:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 794
    iget-object v3, p0, Lcom/ecareme/pixwe/service/UploadService$mMyCloudReceiver;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/service/UploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ecareme/pixwe/PixWe;->logout(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    .end local v0           #bunde:Landroid/os/Bundle;
    .end local v2           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 797
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 799
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    goto :goto_0
.end method
