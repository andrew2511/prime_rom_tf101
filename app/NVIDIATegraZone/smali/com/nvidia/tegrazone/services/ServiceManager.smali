.class public Lcom/nvidia/tegrazone/services/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# instance fields
.field public methodName:I

.field public mode:Ljava/lang/String;

.field public params:Ljava/lang/String;

.field public serviceComplete:Z

.field public serviceEvent:Lcom/nvidia/tegrazone/services/events/NVServiceEvent;

.field public srv:Lcom/nvidia/tegrazone/services/NVServices;


# direct methods
.method public constructor <init>(Lcom/nvidia/tegrazone/services/events/NVServiceEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->serviceEvent:Lcom/nvidia/tegrazone/services/events/NVServiceEvent;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->serviceComplete:Z

    .line 35
    iput-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->mode:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->params:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->serviceEvent:Lcom/nvidia/tegrazone/services/events/NVServiceEvent;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/nvidia/tegrazone/services/ServiceManager;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/nvidia/tegrazone/services/ServiceManager;->setGamesArray()V

    return-void
.end method

.method private setGamesArray()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xc8

    .line 353
    iget-object v4, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v4, v4, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v4, v4, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 354
    iget-object v4, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v1, v4, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;

    .line 355
    .local v1, gamesArray:Lorg/json/JSONArray;
    const/4 v0, 0x0

    check-cast v0, [Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 356
    .local v0, games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    if-eqz v1, :cond_2

    .line 357
    new-instance v3, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    invoke-direct {v3}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;-><init>()V

    .line 358
    .local v3, tempSmallGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v0, v4, [Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 359
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 371
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v4

    iput-object v0, v4, Lcom/nvidia/tegrazone/model/NVModel;->games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 374
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleServiceComplete()V

    .line 379
    .end local v0           #games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    .end local v1           #gamesArray:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #tempSmallGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    :goto_1
    return-void

    .line 361
    .restart local v0       #games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    .restart local v1       #gamesArray:Lorg/json/JSONArray;
    .restart local v2       #i:I
    .restart local v3       #tempSmallGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    :cond_0
    new-instance v3, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .end local v3           #tempSmallGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    invoke-direct {v3}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;-><init>()V

    .line 362
    .restart local v3       #tempSmallGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 363
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    move-result-object v4

    aput-object v4, v0, v2

    .line 359
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    .end local v2           #i:I
    .end local v3           #tempSmallGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    :cond_2
    invoke-virtual {p0, v5}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleError(I)V

    goto :goto_1

    .line 376
    .end local v0           #games:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    .end local v1           #gamesArray:Lorg/json/JSONArray;
    :cond_3
    invoke-virtual {p0, v5}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleError(I)V

    goto :goto_1
.end method


# virtual methods
.method public callService(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "methodName"
    .parameter "params"
    .parameter "serviceMode"

    .prologue
    .line 55
    iput-object p3, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->mode:Ljava/lang/String;

    .line 56
    iput p1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->methodName:I

    .line 58
    packed-switch p1, :pswitch_data_0

    .line 242
    :goto_0
    :pswitch_0
    return-void

    .line 60
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->serverURL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/tegra_webservices/controller.php?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.nvidia.app.AppNews.getAllNews/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager$1;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager$1;-><init>(Lcom/nvidia/tegrazone/services/ServiceManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->serviceCaller(Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0

    .line 80
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->serverURL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/tegra_webservices/controller.php?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.nvidia.app.AppNews.getSelectedNews/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager$2;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager$2;-><init>(Lcom/nvidia/tegrazone/services/ServiceManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->serviceCaller(Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0

    .line 99
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->serverURL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/tegra_webservices/controller.php?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.nvidia.app.AppGames.getAllGames/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager$3;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager$3;-><init>(Lcom/nvidia/tegrazone/services/ServiceManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->serviceCaller(Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 118
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->serverURL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/tegra_webservices/controller.php?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.nvidia.app.AppGames.getAllGames/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager$4;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager$4;-><init>(Lcom/nvidia/tegrazone/services/ServiceManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->serviceCaller(Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 137
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->serverURL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/tegra_webservices/controller.php?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.nvidia.app.AppGames.getSelectedGame/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager$5;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager$5;-><init>(Lcom/nvidia/tegrazone/services/ServiceManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->serviceCaller(Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 156
    :pswitch_6
    iput-object p2, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->params:Ljava/lang/String;

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->serverURL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/tegra_webservices/post.php?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.nvidia.app.AppFeedback.addFeedback/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager$6;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager$6;-><init>(Lcom/nvidia/tegrazone/services/ServiceManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->serviceCaller(Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 175
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->serverURL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/tegra_webservices/controller.php?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.nvidia.app.AppFeedback.getComments/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager$7;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager$7;-><init>(Lcom/nvidia/tegrazone/services/ServiceManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->serviceCaller(Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 194
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->serverURL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/tegra_webservices/controller.php?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.nvidia.app.AppUtility.checkVersion/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager$8;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager$8;-><init>(Lcom/nvidia/tegrazone/services/ServiceManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->serviceCaller(Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 213
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->serverURL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/tegra_webservices/controller.php?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.nvidia.app.AppGames.getGameGenres/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager$9;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager$9;-><init>(Lcom/nvidia/tegrazone/services/ServiceManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->serviceCaller(Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 227
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->serverURL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/tegra_webservices/controller.php?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.nvidia.app.AppUtility.getURLConstants/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/nvidia/tegrazone/services/ServiceManager$10;

    invoke-direct {v1, p0}, Lcom/nvidia/tegrazone/services/ServiceManager$10;-><init>(Lcom/nvidia/tegrazone/services/ServiceManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->serviceCaller(Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public handleError(I)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error code:- "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nvidia/tegrazone/model/vo/ErrorVO;->getTypeFromCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->serviceComplete:Z

    .line 274
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->serviceEvent:Lcom/nvidia/tegrazone/services/events/NVServiceEvent;

    iget v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->methodName:I

    invoke-interface {v0, v1, p1}, Lcom/nvidia/tegrazone/services/events/NVServiceEvent;->serviceFault(II)V

    .line 275
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    .line 276
    :cond_0
    return-void
.end method

.method public handleServiceComplete()V
    .locals 2

    .prologue
    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->serviceComplete:Z

    .line 263
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->serviceEvent:Lcom/nvidia/tegrazone/services/events/NVServiceEvent;

    iget v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->methodName:I

    invoke-interface {v0, v1}, Lcom/nvidia/tegrazone/services/events/NVServiceEvent;->serviceResult(I)V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    .line 266
    return-void
.end method

.method public isRunning()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 522
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 523
    .local v0, isRunning:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v0, v1, Lcom/nvidia/tegrazone/services/NVServices;->isRunning:Ljava/lang/Boolean;

    .line 526
    :cond_0
    return-object v0
.end method

.method public serviceCaller(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .parameter "url"
    .parameter "handler"

    .prologue
    .line 246
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->lastDataLanguage:Ljava/lang/String;

    .line 247
    new-instance v0, Lcom/nvidia/tegrazone/services/NVServices;

    invoke-direct {v0}, Lcom/nvidia/tegrazone/services/NVServices;-><init>()V

    iput-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    .line 248
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->mode:Ljava/lang/String;

    sget-object v1, Lcom/nvidia/tegrazone/services/NVServices;->ARRAY_MODE:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    invoke-virtual {v0, p1, p2}, Lcom/nvidia/tegrazone/services/NVServices;->callArrayService(Ljava/lang/String;Landroid/os/Handler;)Lorg/json/JSONArray;

    .line 256
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->mode:Ljava/lang/String;

    sget-object v1, Lcom/nvidia/tegrazone/services/NVServices;->OBJECT_MODE:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    .line 251
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    invoke-virtual {v0, p1, p2}, Lcom/nvidia/tegrazone/services/NVServices;->callObjectService(Ljava/lang/String;Landroid/os/Handler;)Lorg/json/JSONObject;

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->params:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/nvidia/tegrazone/services/NVServices;->callPostService(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public setCommentsArray()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 408
    iget-object v4, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v4, v4, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v4, v4, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 409
    iget-object v4, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v3, v4, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;

    .line 410
    .local v3, userReviewsArray:Lorg/json/JSONArray;
    const/4 v0, 0x0

    check-cast v0, [Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    .line 411
    .local v0, commentItems:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
    if-eqz v3, :cond_0

    .line 412
    new-instance v2, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    invoke-direct {v2}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;-><init>()V

    .line 413
    .local v2, tempCommentItem:Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v0, v4, [Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    .line 414
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 422
    .end local v1           #i:I
    .end local v2           #tempCommentItem:Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
    :cond_0
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v4

    iput-object v0, v4, Lcom/nvidia/tegrazone/model/NVModel;->comments:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    .line 425
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleServiceComplete()V

    .line 430
    .end local v0           #commentItems:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
    .end local v3           #userReviewsArray:Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 416
    .restart local v0       #commentItems:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
    .restart local v1       #i:I
    .restart local v2       #tempCommentItem:Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
    .restart local v3       #userReviewsArray:Lorg/json/JSONArray;
    :cond_1
    new-instance v2, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    .end local v2           #tempCommentItem:Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
    invoke-direct {v2}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;-><init>()V

    .line 417
    .restart local v2       #tempCommentItem:Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 418
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;

    move-result-object v4

    aput-object v4, v0, v1

    .line 414
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v0           #commentItems:[Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
    .end local v1           #i:I
    .end local v2           #tempCommentItem:Lcom/nvidia/tegrazone/model/vo/LargeFeedbackVO;
    .end local v3           #userReviewsArray:Lorg/json/JSONArray;
    :cond_3
    const/16 v4, 0xc8

    invoke-virtual {p0, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleError(I)V

    goto :goto_1
.end method

.method public setFeaturedArray()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0xc8

    .line 288
    iget-object v6, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v6, v6, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v6, v6, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 289
    iget-object v6, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v1, v6, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;

    .line 290
    .local v1, featuredArray:Lorg/json/JSONArray;
    move-object v0, v5

    check-cast v0, [Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    move-object v2, v0

    .line 291
    .local v2, featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    if-eqz v1, :cond_2

    .line 292
    new-instance v4, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    invoke-direct {v4}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;-><init>()V

    .line 293
    .local v4, tempSmallGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v2, v6, [Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 294
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v3, v6, :cond_0

    .line 306
    iput-object v5, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    .line 307
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v5

    iput-object v2, v5, Lcom/nvidia/tegrazone/model/NVModel;->featuredGames:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .line 310
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleServiceComplete()V

    .line 315
    .end local v1           #featuredArray:Lorg/json/JSONArray;
    .end local v2           #featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    .end local v3           #i:I
    .end local v4           #tempSmallGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    :goto_1
    return-void

    .line 296
    .restart local v1       #featuredArray:Lorg/json/JSONArray;
    .restart local v2       #featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    .restart local v3       #i:I
    .restart local v4       #tempSmallGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    :cond_0
    new-instance v4, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    .end local v4           #tempSmallGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    invoke-direct {v4}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;-><init>()V

    .line 297
    .restart local v4       #tempSmallGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 298
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    move-result-object v6

    aput-object v6, v2, v3

    .line 294
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 302
    .end local v3           #i:I
    .end local v4           #tempSmallGame:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    :cond_2
    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleError(I)V

    goto :goto_1

    .line 312
    .end local v1           #featuredArray:Lorg/json/JSONArray;
    .end local v2           #featuredItems:[Lcom/nvidia/tegrazone/model/vo/SmallGameVO;
    :cond_3
    invoke-virtual {p0, v7}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleError(I)V

    goto :goto_1
.end method

.method public setFeedbackResult()V
    .locals 3

    .prologue
    .line 433
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v1, v1, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v1, v1, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    new-instance v1, Lcom/nvidia/tegrazone/model/vo/CommentResponseVO;

    invoke-direct {v1}, Lcom/nvidia/tegrazone/model/vo/CommentResponseVO;-><init>()V

    iget-object v2, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v2, v2, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/nvidia/tegrazone/model/vo/CommentResponseVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/CommentResponseVO;

    move-result-object v0

    .line 435
    .local v0, response:Lcom/nvidia/tegrazone/model/vo/CommentResponseVO;
    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/CommentResponseVO;->getCid()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 436
    const/16 v1, 0x1fa

    invoke-virtual {p0, v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleError(I)V

    .line 445
    .end local v0           #response:Lcom/nvidia/tegrazone/model/vo/CommentResponseVO;
    :goto_0
    return-void

    .line 441
    .restart local v0       #response:Lcom/nvidia/tegrazone/model/vo/CommentResponseVO;
    :cond_0
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleServiceComplete()V

    goto :goto_0

    .line 443
    .end local v0           #response:Lcom/nvidia/tegrazone/model/vo/CommentResponseVO;
    :cond_1
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleError(I)V

    goto :goto_0
.end method

.method public setGame()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v0, v0, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v0, v0, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    new-instance v1, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-direct {v1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;-><init>()V

    iget-object v2, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v2, v2, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    .line 387
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleServiceComplete()V

    .line 393
    :goto_0
    return-void

    .line 389
    :cond_0
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleError(I)V

    goto :goto_0
.end method

.method public setGenres()V
    .locals 8

    .prologue
    .line 476
    iget-object v4, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v4, v4, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v4, v4, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 477
    new-instance v3, Lcom/nvidia/tegrazone/model/vo/GenreVO;

    invoke-direct {v3}, Lcom/nvidia/tegrazone/model/vo/GenreVO;-><init>()V

    .line 478
    .local v3, temp:Lcom/nvidia/tegrazone/model/vo/GenreVO;
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v4

    iget-object v5, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v5, v5, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    new-array v5, v5, [Lcom/nvidia/tegrazone/model/vo/GenreVO;

    iput-object v5, v4, Lcom/nvidia/tegrazone/model/NVModel;->genres:[Lcom/nvidia/tegrazone/model/vo/GenreVO;

    .line 479
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->serviceEvent:Lcom/nvidia/tegrazone/services/events/NVServiceEvent;

    check-cast v0, Landroid/app/Activity;

    .line 482
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06002c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nvidia/tegrazone/model/vo/GenreVO;->setCategory(Ljava/lang/String;)V

    .line 484
    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/nvidia/tegrazone/model/vo/GenreVO;->setValue(Ljava/lang/String;)V

    .line 485
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v4

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->genres:[Lcom/nvidia/tegrazone/model/vo/GenreVO;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 487
    new-instance v3, Lcom/nvidia/tegrazone/model/vo/GenreVO;

    .end local v3           #temp:Lcom/nvidia/tegrazone/model/vo/GenreVO;
    invoke-direct {v3}, Lcom/nvidia/tegrazone/model/vo/GenreVO;-><init>()V

    .line 488
    .restart local v3       #temp:Lcom/nvidia/tegrazone/model/vo/GenreVO;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nvidia/tegrazone/model/vo/GenreVO;->setCategory(Ljava/lang/String;)V

    .line 489
    const-string v4, "featured"

    invoke-virtual {v3, v4}, Lcom/nvidia/tegrazone/model/vo/GenreVO;->setValue(Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v4

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->genres:[Lcom/nvidia/tegrazone/model/vo/GenreVO;

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 492
    new-instance v3, Lcom/nvidia/tegrazone/model/vo/GenreVO;

    .end local v3           #temp:Lcom/nvidia/tegrazone/model/vo/GenreVO;
    invoke-direct {v3}, Lcom/nvidia/tegrazone/model/vo/GenreVO;-><init>()V

    .line 493
    .restart local v3       #temp:Lcom/nvidia/tegrazone/model/vo/GenreVO;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06002d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nvidia/tegrazone/model/vo/GenreVO;->setCategory(Ljava/lang/String;)V

    .line 495
    const-string v4, "available"

    invoke-virtual {v3, v4}, Lcom/nvidia/tegrazone/model/vo/GenreVO;->setValue(Ljava/lang/String;)V

    .line 496
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v4

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->genres:[Lcom/nvidia/tegrazone/model/vo/GenreVO;

    const/4 v5, 0x2

    aput-object v3, v4, v5

    .line 498
    new-instance v3, Lcom/nvidia/tegrazone/model/vo/GenreVO;

    .end local v3           #temp:Lcom/nvidia/tegrazone/model/vo/GenreVO;
    invoke-direct {v3}, Lcom/nvidia/tegrazone/model/vo/GenreVO;-><init>()V

    .line 499
    .restart local v3       #temp:Lcom/nvidia/tegrazone/model/vo/GenreVO;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nvidia/tegrazone/model/vo/GenreVO;->setCategory(Ljava/lang/String;)V

    .line 501
    const-string v4, "unavailable"

    invoke-virtual {v3, v4}, Lcom/nvidia/tegrazone/model/vo/GenreVO;->setValue(Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v4

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->genres:[Lcom/nvidia/tegrazone/model/vo/GenreVO;

    const/4 v5, 0x3

    aput-object v3, v4, v5

    .line 504
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v4, v4, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleServiceComplete()V

    .line 518
    .end local v0           #a:Landroid/app/Activity;
    .end local v2           #i:I
    .end local v3           #temp:Lcom/nvidia/tegrazone/model/vo/GenreVO;
    :goto_1
    return-void

    .line 506
    .restart local v0       #a:Landroid/app/Activity;
    .restart local v2       #i:I
    .restart local v3       #temp:Lcom/nvidia/tegrazone/model/vo/GenreVO;
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v4

    iget-object v4, v4, Lcom/nvidia/tegrazone/model/NVModel;->genres:[Lcom/nvidia/tegrazone/model/vo/GenreVO;

    add-int/lit8 v5, v2, 0x4

    new-instance v6, Lcom/nvidia/tegrazone/model/vo/GenreVO;

    invoke-direct {v6}, Lcom/nvidia/tegrazone/model/vo/GenreVO;-><init>()V

    iget-object v7, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v7, v7, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nvidia/tegrazone/model/vo/GenreVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/GenreVO;

    move-result-object v6

    aput-object v6, v4, v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 507
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 508
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 515
    .end local v0           #a:Landroid/app/Activity;
    .end local v1           #e:Lorg/json/JSONException;
    .end local v2           #i:I
    .end local v3           #temp:Lcom/nvidia/tegrazone/model/vo/GenreVO;
    :cond_1
    const/16 v4, 0xc8

    invoke-virtual {p0, v4}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleError(I)V

    goto :goto_1
.end method

.method public setLocalizedURLs()V
    .locals 4

    .prologue
    .line 531
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v1, v1, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v1, v1, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 533
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v1, v1, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    const-string v2, "feedbackURL"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    :try_start_0
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v2, v2, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    const-string v3, "feedbackURL"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nvidia/tegrazone/model/NVModel;->feedbackURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v1, v1, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    const-string v2, "shareURL"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 543
    :try_start_1
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v2, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v2, v2, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    const-string v3, "shareURL"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nvidia/tegrazone/model/NVModel;->shareURL:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 549
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleServiceComplete()V

    .line 555
    :goto_2
    return-void

    .line 536
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 537
    .local v0, e1:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 544
    .end local v0           #e1:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 545
    .restart local v0       #e1:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 552
    .end local v0           #e1:Ljava/lang/Exception;
    :cond_2
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleError(I)V

    goto :goto_2
.end method

.method public setNews()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v0, v0, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v0, v0, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    new-instance v1, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    invoke-direct {v1}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;-><init>()V

    iget-object v2, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v2, v2, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    invoke-virtual {v1, v2}, Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->currentNews:Lcom/nvidia/tegrazone/model/vo/LargeNewsVO;

    .line 400
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleServiceComplete()V

    .line 405
    :goto_0
    return-void

    .line 402
    :cond_0
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleError(I)V

    goto :goto_0
.end method

.method public setNewsArray()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 319
    iget-object v7, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v7, v7, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v7, v7, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 320
    iget-object v7, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v3, v7, Lcom/nvidia/tegrazone/services/NVServices;->responseArray:Lorg/json/JSONArray;

    .line 321
    .local v3, newsArray:Lorg/json/JSONArray;
    move-object v0, v6

    check-cast v0, [Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    move-object v4, v0

    .line 322
    .local v4, newsItems:[Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;
    if-eqz v3, :cond_3

    .line 323
    new-instance v5, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    invoke-direct {v5}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;-><init>()V

    .line 324
    .local v5, tempSmallNews:Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    new-array v4, v7, [Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    .line 325
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 326
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 341
    iput-object v6, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    .line 342
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v6

    iput-object v4, v6, Lcom/nvidia/tegrazone/model/NVModel;->news:[Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    .line 345
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleServiceComplete()V

    .line 349
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #newsArray:Lorg/json/JSONArray;
    .end local v4           #newsItems:[Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;
    .end local v5           #tempSmallNews:Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;
    :cond_0
    :goto_1
    return-void

    .line 328
    .restart local v1       #i:I
    .restart local v2       #len:I
    .restart local v3       #newsArray:Lorg/json/JSONArray;
    .restart local v4       #newsItems:[Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;
    .restart local v5       #tempSmallNews:Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;
    :cond_1
    new-instance v5, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    .end local v5           #tempSmallNews:Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;
    invoke-direct {v5}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;-><init>()V

    .line 329
    .restart local v5       #tempSmallNews:Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 330
    new-instance v7, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    invoke-direct {v7}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;-><init>()V

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    move-result-object v5

    .line 331
    invoke-virtual {v5}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->getTitle()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->getTitle()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 332
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;->copyFrom(Lorg/json/JSONObject;)Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;

    move-result-object v7

    aput-object v7, v4, v1

    .line 326
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 337
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v5           #tempSmallNews:Lcom/nvidia/tegrazone/model/vo/SmallNewsVO;
    :cond_3
    const/16 v6, 0xc8

    invoke-virtual {p0, v6}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleError(I)V

    goto :goto_1
.end method

.method public setVersionResult()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 448
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v1, v1, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v1, v1, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 450
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v1, v1, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    const-string v2, "success"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    :try_start_0
    iget-object v1, p0, Lcom/nvidia/tegrazone/services/ServiceManager;->srv:Lcom/nvidia/tegrazone/services/NVServices;

    iget-object v1, v1, Lcom/nvidia/tegrazone/services/NVServices;->responseObject:Lorg/json/JSONObject;

    const-string v2, "success"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/nvidia/tegrazone/model/NVModel;->isCurrentVersion:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :cond_0
    :goto_0
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/nvidia/tegrazone/model/NVModel;->checkedForVersion:Ljava/lang/Boolean;

    .line 464
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleServiceComplete()V

    .line 471
    :goto_1
    return-void

    .line 455
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/nvidia/tegrazone/model/NVModel;->isCurrentVersion:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 457
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 458
    .local v0, e1:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 467
    .end local v0           #e1:Ljava/lang/Exception;
    :cond_2
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/nvidia/tegrazone/services/ServiceManager;->handleError(I)V

    goto :goto_1
.end method
