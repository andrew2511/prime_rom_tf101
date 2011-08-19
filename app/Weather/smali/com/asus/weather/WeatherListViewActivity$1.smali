.class Lcom/asus/weather/WeatherListViewActivity$1;
.super Ljava/lang/Object;
.source "WeatherListViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/weather/WeatherListViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/WeatherListViewActivity;


# direct methods
.method constructor <init>(Lcom/asus/weather/WeatherListViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/asus/weather/WeatherListViewActivity$1;->this$0:Lcom/asus/weather/WeatherListViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, a:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.asus.weather.weatherIntentAction"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CONTENT"

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ITEM"

    const/4 v3, 0x1

    sub-int v3, p3, v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 41
    .local v0, broadcastintent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/asus/weather/WeatherListViewActivity$1;->this$0:Lcom/asus/weather/WeatherListViewActivity;

    invoke-virtual {v1, v0}, Lcom/asus/weather/WeatherListViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    iget-object v1, p0, Lcom/asus/weather/WeatherListViewActivity$1;->this$0:Lcom/asus/weather/WeatherListViewActivity;

    invoke-virtual {v1}, Lcom/asus/weather/WeatherListViewActivity;->finish()V

    .line 43
    return-void
.end method
