.class Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;
.super Landroid/os/AsyncTask;
.source "RegisterDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/dialog/RegisterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RegisterTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status:[I


# instance fields
.field email:Ljava/lang/String;

.field language:Ljava/lang/String;

.field pwd:Ljava/lang/String;

.field final synthetic this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

.field uid:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status()[I
    .locals 3

    .prologue
    .line 400
    sget-object v0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/handler/RegisterHandler$Status;->values()[Lnet/yostore/aws/handler/RegisterHandler$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->Dup:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->Err:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->NG:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/handler/RegisterHandler$Status;->OK:Lnet/yostore/aws/handler/RegisterHandler$Status;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "uid"
    .parameter "pwd"
    .parameter "email"
    .parameter "language"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    .line 407
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 408
    iput-object p2, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->uid:Ljava/lang/String;

    .line 409
    iput-object p3, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->pwd:Ljava/lang/String;

    .line 410
    iput-object p4, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->email:Ljava/lang/String;

    .line 411
    iput-object p5, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, -0x1

    .line 420
    :try_start_0
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->haveInternet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    sget-object v0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->uid:Ljava/lang/String;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->pwd:Ljava/lang/String;

    iget-object v3, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->email:Ljava/lang/String;

    iget-object v4, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->language:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v6}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$16(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lnet/yostore/aws/handler/RegisterHandler;->doRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/RegisterHandler$Status;

    move-result-object v8

    .line 425
    .local v8, registeras:Lnet/yostore/aws/handler/RegisterHandler$Status;
    :goto_0
    invoke-static {}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->$SWITCH_TABLE$net$yostore$aws$handler$RegisterHandler$Status()[I

    move-result-object v0

    invoke-virtual {v8}, Lnet/yostore/aws/handler/RegisterHandler$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 437
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 444
    .end local v8           #registeras:Lnet/yostore/aws/handler/RegisterHandler$Status;
    :goto_1
    return-object v0

    .line 423
    :cond_0
    sget-object v8, Lnet/yostore/aws/handler/RegisterHandler$Status;->Err:Lnet/yostore/aws/handler/RegisterHandler$Status;

    .restart local v8       #registeras:Lnet/yostore/aws/handler/RegisterHandler$Status;
    goto :goto_0

    .line 428
    :pswitch_0
    const-string v0, "LoginDialog"

    const-string v1, "Register OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 431
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 433
    :pswitch_2
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 435
    :pswitch_3
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 441
    .end local v8           #registeras:Lnet/yostore/aws/handler/RegisterHandler$Status;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 443
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "LoginDialog"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/16 v2, 0x3c

    .line 453
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 454
    .local v0, _msg:Landroid/os/Message;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 480
    :goto_0
    return-void

    .line 456
    :pswitch_0
    iput v2, v0, Landroid/os/Message;->what:I

    .line 457
    iget-object v1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$0(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 460
    :pswitch_1
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 461
    iget-object v1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$0(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 464
    :pswitch_2
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 465
    iget-object v1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$0(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 468
    :pswitch_3
    iput v2, v0, Landroid/os/Message;->what:I

    .line 469
    iget-object v1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$0(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 472
    :pswitch_4
    const/16 v1, 0x6e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 473
    iget-object v1, p0, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->this$0:Lcom/ecareme/pixwe/view/dialog/RegisterDialog;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog;->access$0(Lcom/ecareme/pixwe/view/dialog/RegisterDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/dialog/RegisterDialog$RegisterTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
