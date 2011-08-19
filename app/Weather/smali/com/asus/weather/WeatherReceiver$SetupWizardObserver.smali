.class Lcom/asus/weather/WeatherReceiver$SetupWizardObserver;
.super Landroid/database/ContentObserver;
.source "WeatherReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/weather/WeatherReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupWizardObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/WeatherReceiver;


# direct methods
.method public constructor <init>(Lcom/asus/weather/WeatherReceiver;)V
    .locals 1
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/asus/weather/WeatherReceiver$SetupWizardObserver;->this$0:Lcom/asus/weather/WeatherReceiver;

    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 231
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .parameter "selfChange"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 236
    iget-object v2, p0, Lcom/asus/weather/WeatherReceiver$SetupWizardObserver;->this$0:Lcom/asus/weather/WeatherReceiver;

    iget-object v2, v2, Lcom/asus/weather/WeatherReceiver;->receiverContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    move v0, v5

    .line 239
    .local v0, device_provisioned:Z
    :goto_0
    const-string v2, "[WeatherReceiver]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetupWizardObserver onChange():device_provisioned="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-ne v0, v5, :cond_0

    .line 243
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.weather.weatherIntentAction"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, intentUpdate:Landroid/content/Intent;
    const-string v2, "CONTENT"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    const-string v2, "CHECKNETWORK"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    iget-object v2, p0, Lcom/asus/weather/WeatherReceiver$SetupWizardObserver;->this$0:Lcom/asus/weather/WeatherReceiver;

    iget-object v2, v2, Lcom/asus/weather/WeatherReceiver;->receiverContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 247
    const-string v2, "[WeatherReceiver]"

    const-string v3, "SetupWizardObserver onChange():sendBroadcast(P.UPDATE_REQUEST)"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v1           #intentUpdate:Landroid/content/Intent;
    :cond_0
    return-void

    .end local v0           #device_provisioned:Z
    :cond_1
    move v0, v6

    .line 236
    goto :goto_0
.end method
