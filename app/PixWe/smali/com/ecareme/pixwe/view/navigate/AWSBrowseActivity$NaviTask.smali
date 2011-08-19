.class Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;
.super Landroid/os/AsyncTask;
.source "AWSBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NaviTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$ecareme$pixwe$view$navigate$AWSBrowseActivity$NAVI:[I


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;


# direct methods
.method static synthetic $SWITCH_TABLE$com$ecareme$pixwe$view$navigate$AWSBrowseActivity$NAVI()[I
    .locals 3

    .prologue
    .line 313
    sget-object v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->$SWITCH_TABLE$com$ecareme$pixwe$view$navigate$AWSBrowseActivity$NAVI:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->values()[Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->DEEP:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->FLOAT:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->HERE:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->TOP:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->$SWITCH_TABLE$com$ecareme$pixwe$view$navigate$AWSBrowseActivity$NAVI:[I

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

.method private constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)V

    return-void
.end method

.method static synthetic access$5(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;)Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;
    .locals 1
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;)Ljava/lang/Long;
    .locals 4
    .parameter "na"

    .prologue
    .line 319
    invoke-static {}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->$SWITCH_TABLE$com$ecareme$pixwe$view$navigate$AWSBrowseActivity$NAVI()[I

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    iget-object v1, v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->naviStat:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 335
    :goto_0
    new-instance v0, Ljava/lang/Long;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 321
    :pswitch_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$4(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Lnet/yostore/aws/handler/NavigateHandler;

    move-result-object v1

    invoke-virtual {v1}, Lnet/yostore/aws/handler/NavigateHandler;->diveTop()Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$6(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;)V

    goto :goto_0

    .line 324
    :pswitch_1
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$4(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Lnet/yostore/aws/handler/NavigateHandler;

    move-result-object v1

    invoke-virtual {v1}, Lnet/yostore/aws/handler/NavigateHandler;->diveFloat()Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$6(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;)V

    goto :goto_0

    .line 327
    :pswitch_2
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$4(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Lnet/yostore/aws/handler/NavigateHandler;

    move-result-object v1

    sget-object v2, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v2, v2, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    sget-object v3, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->fi:Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v3, v3, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/handler/NavigateHandler;->diveDeep(Ljava/lang/String;Ljava/lang/String;)Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$6(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;)V

    goto :goto_0

    .line 330
    :pswitch_3
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$4(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Lnet/yostore/aws/handler/NavigateHandler;

    move-result-object v1

    invoke-virtual {v1}, Lnet/yostore/aws/handler/NavigateHandler;->diveHere()Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$6(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;)V

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->doInBackground([Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$7(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    const v3, 0x7f06008a

    invoke-virtual {v2, v3}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v2}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$4(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Lnet/yostore/aws/handler/NavigateHandler;

    move-result-object v2

    iget-object v2, v2, Lnet/yostore/aws/handler/NavigateHandler;->errMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$8(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$5(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$9(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 361
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;

    invoke-static {v0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;->access$5(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask$1;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask$1;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 341
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NaviTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
