.class Lcom/asus/cm/CMService$1;
.super Landroid/os/Handler;
.source "CMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/cm/CMService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/cm/CMService;


# direct methods
.method constructor <init>(Lcom/asus/cm/CMService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/asus/cm/CMService$1;->this$0:Lcom/asus/cm/CMService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 235
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 266
    :goto_0
    return-void

    .line 237
    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/asus/cm/CMService$1;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v1}, Lcom/asus/cm/CMService;->access$000(Lcom/asus/cm/CMService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 244
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/asus/cm/CMService$1;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v1}, Lcom/asus/cm/CMService;->access$100(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/VdmEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/VdmEngine;->isIdle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 246
    const-wide/16 v1, 0xbb8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 247
    :catch_1
    move-exception v0

    .line 248
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 251
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lcom/asus/cm/CMService$1;->this$0:Lcom/asus/cm/CMService;

    iget-object v1, v1, Lcom/asus/cm/CMService;->mFumoHandler:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    invoke-virtual {v1}, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->getDLResume()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/asus/cm/CMService$1;->this$0:Lcom/asus/cm/CMService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/asus/cm/CMService;->access$002(Lcom/asus/cm/CMService;Z)Z

    .line 253
    iget-object v1, p0, Lcom/asus/cm/CMService$1;->this$0:Lcom/asus/cm/CMService;

    iget-object v1, v1, Lcom/asus/cm/CMService;->mFumoHandler:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    invoke-virtual {v1}, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->readDLTotalSizefromReg()V

    .line 254
    iget-object v1, p0, Lcom/asus/cm/CMService$1;->this$0:Lcom/asus/cm/CMService;

    iget-object v1, v1, Lcom/asus/cm/CMService;->mFumoHandler:Lcom/asus/cm/fumoHandler/DefaultFumoHandler;

    invoke-virtual {v1}, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;->readPackagePriorityfromReg()V

    .line 256
    :try_start_2
    iget-object v1, p0, Lcom/asus/cm/CMService$1;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v1}, Lcom/asus/cm/CMService;->access$200(Lcom/asus/cm/CMService;)Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->resumeDLSession()V
    :try_end_2
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 257
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 258
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_0

    .line 261
    .end local v0           #e:Lcom/asus/dmlib/vdm/VdmException;
    :cond_2
    iget-object v1, p0, Lcom/asus/cm/CMService$1;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v1}, Lcom/asus/cm/CMService;->access$300(Lcom/asus/cm/CMService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 235
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
