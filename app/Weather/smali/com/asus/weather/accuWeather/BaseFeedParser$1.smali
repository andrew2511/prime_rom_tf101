.class Lcom/asus/weather/accuWeather/BaseFeedParser$1;
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
    .line 146
    iput-object p1, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$1;->this$0:Lcom/asus/weather/accuWeather/BaseFeedParser;

    iput-object p2, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$1;->val$messages:Ljava/util/List;

    iput-object p3, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$1;->val$currentMessage:Lcom/asus/weather/accuWeather/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$1;->val$messages:Ljava/util/List;

    iget-object v1, p0, Lcom/asus/weather/accuWeather/BaseFeedParser$1;->val$currentMessage:Lcom/asus/weather/accuWeather/Message;

    invoke-virtual {v1}, Lcom/asus/weather/accuWeather/Message;->copy()Lcom/asus/weather/accuWeather/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method
