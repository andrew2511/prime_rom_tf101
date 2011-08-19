.class public Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;
.super Landroid/content/BroadcastReceiver;
.source "WeatherFragmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/weather/WeatherFragmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Msg_Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/WeatherFragmentSettings;


# direct methods
.method public constructor <init>(Lcom/asus/weather/WeatherFragmentSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 777
    iput-object p1, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 783
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 785
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.asus.weather.weatherIntentAction"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 787
    const-string v3, "CONTENT"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 789
    .local v1, intContent:I
    packed-switch v1, :pswitch_data_0

    .line 837
    .end local v1           #intContent:I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 795
    .restart local v1       #intContent:I
    :pswitch_1
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v3}, Lcom/asus/weather/WeatherFragmentSettings;->access$700(Lcom/asus/weather/WeatherFragmentSettings;)Lcom/asus/weather/ButtonPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/asus/weather/ButtonPreference;->setEnabled(Z)V

    .line 796
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v3}, Lcom/asus/weather/WeatherFragmentSettings;->access$700(Lcom/asus/weather/WeatherFragmentSettings;)Lcom/asus/weather/ButtonPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/asus/weather/ButtonPreference;->setButton(Z)V

    .line 799
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 801
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-virtual {v3}, Lcom/asus/weather/WeatherFragmentSettings;->cancelDialog()V

    .line 802
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v3}, Lcom/asus/weather/WeatherFragmentSettings;->access$800(Lcom/asus/weather/WeatherFragmentSettings;)V

    goto :goto_0

    .line 806
    :cond_1
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-virtual {v3}, Lcom/asus/weather/WeatherFragmentSettings;->cancelDialog()V

    .line 807
    const-string v3, "SHOWTOAST"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 808
    .local v2, showToast:Z
    if-eqz v2, :cond_0

    .line 810
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    const v4, 0x7f05000b

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 817
    .end local v2           #showToast:Z
    :pswitch_2
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    const v4, 0x7f050023

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 823
    :pswitch_3
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    const v4, 0x7f050024

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 829
    :pswitch_4
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v3}, Lcom/asus/weather/WeatherFragmentSettings;->access$900(Lcom/asus/weather/WeatherFragmentSettings;)V

    .line 830
    iget-object v3, p0, Lcom/asus/weather/WeatherFragmentSettings$Msg_Receiver;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-static {v3}, Lcom/asus/weather/WeatherFragmentSettings;->access$1000(Lcom/asus/weather/WeatherFragmentSettings;)V

    goto :goto_0

    .line 789
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
