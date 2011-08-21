.class Lcom/asus/weather/WeatherService$1;
.super Ljava/lang/Thread;
.source "WeatherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/weather/WeatherService;->_startService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/WeatherService;


# direct methods
.method constructor <init>(Lcom/asus/weather/WeatherService;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/asus/weather/WeatherService$1;->this$0:Lcom/asus/weather/WeatherService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/asus/weather/WeatherService$1;->this$0:Lcom/asus/weather/WeatherService;

    invoke-static {v0}, Lcom/asus/weather/WeatherService;->access$000(Lcom/asus/weather/WeatherService;)V

    .line 80
    return-void
.end method
