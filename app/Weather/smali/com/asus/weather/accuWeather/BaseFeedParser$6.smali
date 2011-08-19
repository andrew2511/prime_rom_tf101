.class Lcom/asus/weather/accuWeather/BaseFeedParser$6;
.super Ljava/lang/Object;
.source "BaseFeedParser.java"

# interfaces
.implements Landroid/sax/EndElementListener;


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

.field final synthetic val$messages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Ljava/util/List;Lcom/asus/weather/accuWeather/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$6;->this$0:Lcom/asus/weather/accuWeather/BaseFeedParser;

    iput-object p2, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$6;->val$messages:Ljava/util/List;

    iput-object p3, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$6;->val$currentMessage:Lcom/asus/weather/accuWeather/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    iget-object v0, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$6;->val$messages:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/weather/accuWeather/Message;

    iget-object v1, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$6;->val$currentMessage:Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v1}, Lcom/asus/weather/accuWeather/Message;->getTemperature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/weather/accuWeather/Message;->setTemperature(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$6;->val$messages:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/weather/accuWeather/Message;

    iget-object v1, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$6;->val$currentMessage:Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v1}, Lcom/asus/weather/accuWeather/Message;->getWeathertext()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/weather/accuWeather/Message;->setWeathertext(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$6;->val$messages:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/weather/accuWeather/Message;

    iget-object v1, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$6;->val$currentMessage:Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v1}, Lcom/asus/weather/accuWeather/Message;->getWeathericon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/weather/accuWeather/Message;->setWeathericon(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$6;->val$messages:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/weather/accuWeather/Message;

    iget-object v1, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$6;->val$currentMessage:Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v1}, Lcom/asus/weather/accuWeather/Message;->getRealfeel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/weather/accuWeather/Message;->setRealfeel(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$6;->val$messages:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/weather/accuWeather/Message;

    iget-object v1, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$6;->val$currentMessage:Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v1}, Lcom/asus/weather/accuWeather/Message;->getWindspeed()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/weather/accuWeather/Message;->setWindspeed(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$6;->val$messages:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/weather/accuWeather/Message;

    iget-object v1, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$6;->val$currentMessage:Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v1}, Lcom/asus/weather/accuWeather/Message;->getWinddirection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/weather/accuWeather/Message;->setWinddirection(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$6;->val$messages:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/weather/accuWeather/Message;

    iget-object v1, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$6;->val$currentMessage:Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v1}, Lcom/asus/weather/accuWeather/Message;->getHumidity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/weather/accuWeather/Message;->setHumidity(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$6;->val$messages:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/weather/accuWeather/Message;

    iget-object v1, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$6;->val$currentMessage:Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v1}, Lcom/asus/weather/accuWeather/Message;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/weather/accuWeather/Message;->setUrl(Ljava/lang/String;)V

    .line 199
    return-void
.end method
