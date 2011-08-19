.class Lcom/asus/weather/WeatherFragmentSettings$1;
.super Ljava/lang/Object;
.source "WeatherFragmentSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/weather/WeatherFragmentSettings;->setIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/WeatherFragmentSettings;


# direct methods
.method constructor <init>(Lcom/asus/weather/WeatherFragmentSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/asus/weather/WeatherFragmentSettings$1;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 217
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 218
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v1, "http://accuweather.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 221
    iget-object v1, p0, Lcom/asus/weather/WeatherFragmentSettings$1;->this$0:Lcom/asus/weather/WeatherFragmentSettings;

    invoke-virtual {v1, v0}, Lcom/asus/weather/WeatherFragmentSettings;->startActivity(Landroid/content/Intent;)V

    .line 222
    return-void
.end method
