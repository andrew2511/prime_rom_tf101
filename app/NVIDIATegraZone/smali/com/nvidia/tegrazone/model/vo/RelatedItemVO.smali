.class public Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;
.super Ljava/lang/Object;
.source "RelatedItemVO.java"


# static fields
.field public static GAME_TYPE:Ljava/lang/String;

.field public static NEWS_TYPE:Ljava/lang/String;


# instance fields
.field public game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

.field public itemType:Ljava/lang/String;

.field public news:Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "gameType"

    sput-object v0, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->GAME_TYPE:Ljava/lang/String;

    .line 12
    const-string v0, "newsType"

    sput-object v0, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->NEWS_TYPE:Ljava/lang/String;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 43
    const-string v1, "_explicitType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmallGameVO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    sget-object v1, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->GAME_TYPE:Ljava/lang/String;

    iput-object v1, p0, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->itemType:Ljava/lang/String;

    .line 47
    :try_start_0
    new-instance v1, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    invoke-direct {v1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;-><init>()V

    invoke-virtual {v1, p1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    move-result-object v1

    iput-object v1, p0, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-object p0

    .line 48
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 50
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 53
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    sget-object v1, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->NEWS_TYPE:Ljava/lang/String;

    iput-object v1, p0, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->itemType:Ljava/lang/String;

    .line 55
    :try_start_1
    new-instance v1, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    invoke-direct {v1}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;-><init>()V

    invoke-virtual {v1, p1}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    move-result-object v1

    iput-object v1, p0, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->news:Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 56
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 58
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getGame()Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->itemType:Ljava/lang/String;

    return-object v0
.end method

.method public getNews()Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->news:Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    return-object v0
.end method

.method public setGame(Lcom/nvidia/tegrazone/model/vo/SmallGameVO;)V
    .locals 0
    .parameter "game"

    .prologue
    .line 21
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 22
    return-void
.end method

.method public setItemType(Ljava/lang/String;)V
    .locals 0
    .parameter "itemType"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->itemType:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setNews(Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;)V
    .locals 0
    .parameter "news"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/nvidia/tegrazone/model/vo/RelatedItemVO;->news:Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    .line 30
    return-void
.end method
