.class Lcom/asus/weather/accuWeather/BaseFeedParser$10;
.super Ljava/lang/Object;
.source "BaseFeedParser.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/weather/accuWeather/BaseFeedParser;->parse()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/accuWeather/BaseFeedParser;

.field final synthetic val$currentMessage:Lcom/asus/weather/accuWeather/Message;


# direct methods
.method constructor <init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$10;->this$0:Lcom/asus/weather/accuWeather/BaseFeedParser;

    iput-object p2, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$10;->val$currentMessage:Lcom/asus/weather/accuWeather/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$10;->val$currentMessage:Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v0, p1}, Lcom/asus/weather/accuWeather/Message;->setRealfeel(Ljava/lang/String;)V

    .line 231
    return-void
.end method
