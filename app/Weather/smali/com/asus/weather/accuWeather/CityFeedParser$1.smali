.class Lcom/asus/weather/accuWeather/CityFeedParser$1;
.super Ljava/lang/Object;
.source "CityFeedParser.java"

# interfaces
.implements Landroid/sax/StartElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/weather/accuWeather/CityFeedParser;->parse()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/weather/accuWeather/CityFeedParser;

.field final synthetic val$currentMessage:Lcom/asus/weather/accuWeather/MessageCityFind;

.field final synthetic val$messages:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/asus/weather/accuWeather/CityFeedParser;Lcom/asus/weather/accuWeather/MessageCityFind;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/asus/weather/accuWeather/CityFeedParser$1;->this$0:Lcom/asus/weather/accuWeather/CityFeedParser;

    iput-object p2, p0, Lcom/asus/weather/accuWeather/CityFeedParser$1;->val$currentMessage:Lcom/asus/weather/accuWeather/MessageCityFind;

    iput-object p3, p0, Lcom/asus/weather/accuWeather/CityFeedParser$1;->val$messages:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "attributes"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/asus/weather/accuWeather/CityFeedParser$1;->val$currentMessage:Lcom/asus/weather/accuWeather/MessageCityFind;

    const-string v1, ""

    const-string v2, "city"

    invoke-interface {p1, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/weather/accuWeather/MessageCityFind;->setCity(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/asus/weather/accuWeather/CityFeedParser$1;->val$currentMessage:Lcom/asus/weather/accuWeather/MessageCityFind;

    const-string v1, ""

    const-string v2, "country"

    invoke-interface {p1, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/weather/accuWeather/MessageCityFind;->setCountry(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/asus/weather/accuWeather/CityFeedParser$1;->val$currentMessage:Lcom/asus/weather/accuWeather/MessageCityFind;

    const-string v1, ""

    const-string v2, "adminArea"

    invoke-interface {p1, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/weather/accuWeather/MessageCityFind;->setAdminArea(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/asus/weather/accuWeather/CityFeedParser$1;->val$currentMessage:Lcom/asus/weather/accuWeather/MessageCityFind;

    const-string v1, ""

    const-string v2, "location"

    invoke-interface {p1, v1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/weather/accuWeather/MessageCityFind;->setLocation(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/asus/weather/accuWeather/CityFeedParser$1;->val$messages:Ljava/util/List;

    iget-object v1, p0, Lcom/asus/weather/accuWeather/CityFeedParser$1;->val$currentMessage:Lcom/asus/weather/accuWeather/MessageCityFind;

    invoke-virtual {v1}, Lcom/asus/weather/accuWeather/MessageCityFind;->copy()Lcom/asus/weather/accuWeather/MessageCityFind;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method
