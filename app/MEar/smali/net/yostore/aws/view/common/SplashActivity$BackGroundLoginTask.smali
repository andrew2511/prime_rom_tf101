.class Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;
.super Landroid/os/AsyncTask;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/common/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackGroundLoginTask"
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
.field final synthetic this$0:Lnet/yostore/aws/view/common/SplashActivity;


# direct methods
.method static synthetic $SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I
    .locals 3

    .prologue
    .line 509
    sget-object v0, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I

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
    sput-object v0, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus:[I

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

.method private constructor <init>(Lnet/yostore/aws/view/common/SplashActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 509
    iput-object p1, p0, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/yostore/aws/view/common/SplashActivity;Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;-><init>(Lnet/yostore/aws/view/common/SplashActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6
    .parameter "params"

    .prologue
    const/4 v5, -0x1

    .line 516
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->publishProgress([Ljava/lang/Object;)V

    .line 517
    sget-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->Err:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    .line 518
    .local v0, as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    invoke-static {}, Lcom/ecareme/mear/Mear;->haveInternet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 519
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/common/SplashActivity;->access$12(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/yostore/aws/handler/LoginHandler;->doBackgroundLogin(Landroid/content/Context;Landroid/content/SharedPreferences;)Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    move-result-object v0

    .line 523
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->publishProgress([Ljava/lang/Object;)V

    .line 524
    invoke-static {}, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->$SWITCH_TABLE$net$yostore$aws$handler$LoginHandler$AAAStatus()[I

    move-result-object v2

    invoke-virtual {v0}, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 537
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 545
    .end local v0           #as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :goto_1
    return-object v2

    .line 521
    .restart local v0       #as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :cond_0
    sget-object v0, Lnet/yostore/aws/handler/LoginHandler$AAAStatus;->NG:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;

    goto :goto_0

    .line 528
    :pswitch_0
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/yostore/aws/view/common/SplashActivity;->access$13(Lnet/yostore/aws/view/common/SplashActivity;Z)V

    .line 529
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 531
    :pswitch_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 533
    :pswitch_2
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 535
    :pswitch_3
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 542
    .end local v0           #as:Lnet/yostore/aws/handler/LoginHandler$AAAStatus;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 544
    .local v1, e:Ljava/lang/Exception;
    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$14(Lnet/yostore/aws/view/common/SplashActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    .line 524
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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/16 v2, 0x3c

    .line 563
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 564
    .local v0, _msg:Landroid/os/Message;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 590
    :goto_0
    return-void

    .line 566
    :pswitch_0
    iput v2, v0, Landroid/os/Message;->what:I

    .line 567
    iget-object v1, p0, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/SplashActivity;->access$0(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 570
    :pswitch_1
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 571
    iget-object v1, p0, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/SplashActivity;->access$0(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 574
    :pswitch_2
    const/16 v1, 0x5a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 575
    iget-object v1, p0, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/SplashActivity;->access$0(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 578
    :pswitch_3
    iput v2, v0, Landroid/os/Message;->what:I

    .line 579
    iget-object v1, p0, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/SplashActivity;->access$0(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 582
    :pswitch_4
    const/16 v1, 0x46

    iput v1, v0, Landroid/os/Message;->what:I

    .line 583
    iget-object v1, p0, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/SplashActivity;->access$0(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 564
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

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    const/4 v5, 0x1

    .line 554
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 555
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 556
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    iget-object v1, p0, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v1}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v2}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x7f06

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v3}, Lnet/yostore/aws/view/common/SplashActivity;->access$1(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v5, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/yostore/aws/view/common/SplashActivity;->access$6(Lnet/yostore/aws/view/common/SplashActivity;Landroid/app/ProgressDialog;)V

    .line 559
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->this$0:Lnet/yostore/aws/view/common/SplashActivity;

    invoke-static {v0}, Lnet/yostore/aws/view/common/SplashActivity;->access$7(Lnet/yostore/aws/view/common/SplashActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/view/common/SplashActivity$BackGroundLoginTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
