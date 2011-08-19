.class public Lcom/asus/weather/WeatherManualActivity$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "WeatherManualActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/weather/WeatherManualActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/WeatherManualActivity;


# direct methods
.method public constructor <init>(Lcom/asus/weather/WeatherManualActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/asus/weather/WeatherManualActivity$Receiver;->this$0:Lcom/asus/weather/WeatherManualActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 282
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 284
    const-string v1, "com.asus.weather.weatherIntentAction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const-string v0, "CONTENT"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 287
    packed-switch v0, :pswitch_data_0

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 291
    :pswitch_0
    const-string v0, "[WeatherManualActivity]"

    const-string v1, "P.SEARCH_CITY_REPLY_SUCCESS:Receive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity$Receiver;->this$0:Lcom/asus/weather/WeatherManualActivity;

    invoke-static {v0, v2}, Lcom/asus/weather/WeatherManualActivity;->access$200(Lcom/asus/weather/WeatherManualActivity;I)V

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/weather/WeatherService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 294
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 295
    const-string v0, "[WeatherMaunalActivity]"

    const-string v1, "P.SEARCH_CITY_REPLY_SUCCESS:Receive stopService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity$Receiver;->this$0:Lcom/asus/weather/WeatherManualActivity;

    invoke-virtual {v0}, Lcom/asus/weather/WeatherManualActivity;->enableSearchBtn()V

    .line 299
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity$Receiver;->this$0:Lcom/asus/weather/WeatherManualActivity;

    invoke-virtual {v0}, Lcom/asus/weather/WeatherManualActivity;->cancelDialog()V

    goto :goto_0

    .line 305
    :pswitch_1
    const-string v0, "[WeatherMaunalActivity]"

    const-string v1, "P.SEARCH_CITY_REPLY_FAIL:Receive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/weather/WeatherService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 309
    const-string v0, "[WeatherMaunalActivity]"

    const-string v1, "P.SEARCH_CITY_REPLY_FAIL:Receive stopService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity$Receiver;->this$0:Lcom/asus/weather/WeatherManualActivity;

    invoke-virtual {v0}, Lcom/asus/weather/WeatherManualActivity;->enableSearchBtn()V

    .line 313
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity$Receiver;->this$0:Lcom/asus/weather/WeatherManualActivity;

    invoke-virtual {v0}, Lcom/asus/weather/WeatherManualActivity;->cancelDialog()V

    .line 314
    iget-object v0, p0, Lcom/asus/weather/WeatherManualActivity$Receiver;->this$0:Lcom/asus/weather/WeatherManualActivity;

    const v1, 0x7f05000c

    const/16 v2, 0x1770

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 320
    :pswitch_2
    const-string v0, "ITEM"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 321
    const-string v1, "[WeatherManualActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P.CHOICE_CITY_REPLY_SUCCESS:Receive itemChoice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v1, p0, Lcom/asus/weather/WeatherManualActivity$Receiver;->this$0:Lcom/asus/weather/WeatherManualActivity;

    invoke-static {v1, v0}, Lcom/asus/weather/WeatherManualActivity;->access$200(Lcom/asus/weather/WeatherManualActivity;I)V

    goto :goto_0

    .line 328
    :pswitch_3
    const-string v0, "[WeatherManualActivity]"

    const-string v1, "P.CHOICE_CITY_REPLY_FAIL:Receive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
