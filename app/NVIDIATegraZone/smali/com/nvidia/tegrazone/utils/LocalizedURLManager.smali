.class public Lcom/nvidia/tegrazone/utils/LocalizedURLManager;
.super Ljava/lang/Object;
.source "LocalizedURLManager.java"

# interfaces
.implements Lcom/nvidia/tegrazone/services/events/NVServiceEvent;


# instance fields
.field public handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResume(Landroid/os/Handler;)V
    .locals 5
    .parameter "_handler"

    .prologue
    .line 34
    iget-object v2, p0, Lcom/nvidia/tegrazone/utils/LocalizedURLManager;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iput-object p1, p0, Lcom/nvidia/tegrazone/utils/LocalizedURLManager;->handler:Landroid/os/Handler;

    .line 35
    :cond_0
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v2

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->feedbackURL:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v2

    iget-object v2, v2, Lcom/nvidia/tegrazone/model/NVModel;->feedbackURL:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    :cond_1
    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager;-><init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V

    .line 39
    .local v1, mgr:Lcom/nvidia/tegrazone/services/ServiceManager;
    const/16 v2, 0xb

    :try_start_0
    invoke-static {}, Lcom/nvidia/tegrazone/utils/NVParamBuilder;->buildLocalizedUrls()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/nvidia/tegrazone/services/NVServices;->OBJECT_MODE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->callService(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1           #mgr:Lcom/nvidia/tegrazone/services/ServiceManager;
    :cond_2
    :goto_0
    return-void

    .line 40
    .restart local v1       #mgr:Lcom/nvidia/tegrazone/services/ServiceManager;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 42
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public serviceFault(II)V
    .locals 2
    .parameter "methodName"
    .parameter "errorCode"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nvidia/tegrazone/utils/LocalizedURLManager;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/utils/LocalizedURLManager;->handler:Landroid/os/Handler;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 23
    :cond_0
    return-void
.end method

.method public serviceResult(I)V
    .locals 2
    .parameter "methodName"

    .prologue
    .line 27
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/nvidia/tegrazone/utils/LocalizedURLManager;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/utils/LocalizedURLManager;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 30
    :cond_0
    return-void
.end method
