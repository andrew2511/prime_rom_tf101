.class Lnet/yostore/aws/view/common/LoginActivity$LoginTask;
.super Landroid/os/AsyncTask;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/common/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginTask"
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
.field private static synthetic $SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I


# instance fields
.field pwd:Ljava/lang/String;

.field final synthetic this$0:Lnet/yostore/aws/view/common/LoginActivity;

.field uid:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I
    .locals 3

    .prologue
    .line 608
    sget-object v0, Lnet/yostore/aws/view/common/LoginActivity$LoginTask;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->values()[Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->FREEZE:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->OK:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lnet/yostore/aws/view/common/LoginActivity$LoginTask;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I

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

.method public constructor <init>(Lnet/yostore/aws/view/common/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "uid"
    .parameter "pwd"

    .prologue
    .line 616
    iput-object p1, p0, Lnet/yostore/aws/view/common/LoginActivity$LoginTask;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    .line 613
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 614
    iput-object p2, p0, Lnet/yostore/aws/view/common/LoginActivity$LoginTask;->uid:Ljava/lang/String;

    .line 615
    iput-object p3, p0, Lnet/yostore/aws/view/common/LoginActivity$LoginTask;->pwd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 8
    .parameter "params"

    .prologue
    const/4 v7, -0x1

    .line 623
    :try_start_0
    sget-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 624
    .local v0, as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    invoke-static {}, Lcom/ecareme/mear/Mear;->haveInternet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 625
    iget-object v2, p0, Lnet/yostore/aws/view/common/LoginActivity$LoginTask;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    iget-object v3, p0, Lnet/yostore/aws/view/common/LoginActivity$LoginTask;->uid:Ljava/lang/String;

    iget-object v4, p0, Lnet/yostore/aws/view/common/LoginActivity$LoginTask;->pwd:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lnet/yostore/aws/view/common/LoginActivity$LoginTask;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v6}, Lnet/yostore/aws/view/common/LoginActivity;->access$12(Lnet/yostore/aws/view/common/LoginActivity;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lnet/yostore/aws/handler/LoginHandler;->doLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 629
    :goto_0
    invoke-static {}, Lnet/yostore/aws/view/common/LoginActivity$LoginTask;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I

    move-result-object v2

    invoke-virtual {v0}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 640
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 648
    .end local v0           #as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :goto_1
    return-object v2

    .line 627
    .restart local v0       #as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :cond_0
    sget-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 632
    :pswitch_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 634
    :pswitch_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 636
    :pswitch_2
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 638
    :pswitch_3
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 645
    .end local v0           #as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 647
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "LoginActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 629
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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/LoginActivity$LoginTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/16 v2, 0x3c

    .line 657
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 658
    .local v0, _msg:Landroid/os/Message;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 684
    :goto_0
    return-void

    .line 660
    :pswitch_0
    iput v2, v0, Landroid/os/Message;->what:I

    .line 661
    iget-object v1, p0, Lnet/yostore/aws/view/common/LoginActivity$LoginTask;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/LoginActivity;->access$0(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 664
    :pswitch_1
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 665
    iget-object v1, p0, Lnet/yostore/aws/view/common/LoginActivity$LoginTask;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/LoginActivity;->access$0(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 668
    :pswitch_2
    const/16 v1, 0x5a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 669
    iget-object v1, p0, Lnet/yostore/aws/view/common/LoginActivity$LoginTask;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/LoginActivity;->access$0(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 672
    :pswitch_3
    iput v2, v0, Landroid/os/Message;->what:I

    .line 673
    iget-object v1, p0, Lnet/yostore/aws/view/common/LoginActivity$LoginTask;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/LoginActivity;->access$0(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 676
    :pswitch_4
    const/16 v1, 0x46

    iput v1, v0, Landroid/os/Message;->what:I

    .line 677
    iget-object v1, p0, Lnet/yostore/aws/view/common/LoginActivity$LoginTask;->this$0:Lnet/yostore/aws/view/common/LoginActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/LoginActivity;->access$0(Lnet/yostore/aws/view/common/LoginActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 658
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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/LoginActivity$LoginTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
