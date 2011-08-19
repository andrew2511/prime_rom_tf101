.class Lcom/asus/weather/WeatherManualActivity$1;
.super Ljava/lang/Object;
.source "WeatherManualActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/weather/WeatherManualActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/WeatherManualActivity;


# direct methods
.method constructor <init>(Lcom/asus/weather/WeatherManualActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/asus/weather/WeatherManualActivity$1;->this$0:Lcom/asus/weather/WeatherManualActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 120
    iget-object v1, p0, Lcom/asus/weather/WeatherManualActivity$1;->this$0:Lcom/asus/weather/WeatherManualActivity;

    invoke-static {v1}, Lcom/asus/weather/WeatherManualActivity;->access$000(Lcom/asus/weather/WeatherManualActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "[WeatherManualActivity]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Search City Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/asus/weather/WeatherManualActivity;->cityname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.asus.weather.weatherIntentAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "CONTENT"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const-string v1, "CITYNAME"

    sget-object v2, Lcom/asus/weather/WeatherManualActivity;->cityname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    iget-object v1, p0, Lcom/asus/weather/WeatherManualActivity$1;->this$0:Lcom/asus/weather/WeatherManualActivity;

    invoke-virtual {v1, v0}, Lcom/asus/weather/WeatherManualActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    iget-object v1, p0, Lcom/asus/weather/WeatherManualActivity$1;->this$0:Lcom/asus/weather/WeatherManualActivity;

    invoke-virtual {v1}, Lcom/asus/weather/WeatherManualActivity;->disableSearchBtn()V

    .line 132
    iget-object v1, p0, Lcom/asus/weather/WeatherManualActivity$1;->this$0:Lcom/asus/weather/WeatherManualActivity;

    invoke-virtual {v1}, Lcom/asus/weather/WeatherManualActivity;->showDialog()V

    .line 139
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/asus/weather/WeatherManualActivity$1;->this$0:Lcom/asus/weather/WeatherManualActivity;

    const v2, 0x7f050023

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
