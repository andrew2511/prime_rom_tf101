.class public Lcom/nvidia/tegrazone/utils/NVMarketManager;
.super Ljava/lang/Object;
.source "NVMarketManager.java"


# instance fields
.field public callingActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public manageMarketAction(Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Landroid/app/Activity;)V
    .locals 12
    .parameter "game"
    .parameter "activity"

    .prologue
    .line 28
    iput-object p2, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager;->callingActivity:Landroid/app/Activity;

    .line 30
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->isTegra:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 31
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getOtherIntentURLs()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getOtherIntentURLs()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_5

    .line 34
    const/4 v6, 0x1

    .line 37
    .local v6, availableCount:I
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "market://details?id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/nvidia/tegrazone/utils/NVUtils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getOtherIntentURLs()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v4, v1, [Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;

    .line 42
    .local v4, availableIntents:[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;
    const/4 v1, 0x0

    new-instance v2, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;

    invoke-direct {v2}, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, "market://details?id="

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->copyFrom(Landroid/app/Activity;Ljava/lang/String;)Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;

    move-result-object v2

    aput-object v2, v4, v1

    .line 49
    :goto_0
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getOtherIntentURLs()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lt v8, v1, :cond_1

    .line 58
    const/4 v1, 0x1

    if-le v6, v1, :cond_4

    .line 60
    new-array v9, v6, [Ljava/lang/CharSequence;

    .line 61
    .local v9, intents:[Ljava/lang/CharSequence;
    const/4 v8, 0x0

    :goto_2
    if-lt v8, v6, :cond_3

    .line 64
    move-object v7, p2

    .line 65
    .local v7, finalActivity:Landroid/app/Activity;
    move-object v5, v4

    .line 73
    .local v5, finalIntents:[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;
    new-instance v0, Lcom/nvidia/tegrazone/utils/NVMarketManager$1;

    .line 74
    iget-object v1, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager;->callingActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030022

    move-object v1, p0

    .line 73
    invoke-direct/range {v0 .. v5}, Lcom/nvidia/tegrazone/utils/NVMarketManager$1;-><init>(Lcom/nvidia/tegrazone/utils/NVMarketManager;Landroid/content/Context;I[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;)V

    .line 118
    .local v0, adapter:Landroid/widget/ListAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager;->callingActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    iget-object v2, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager;->callingActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 126
    new-instance v2, Lcom/nvidia/tegrazone/utils/NVMarketManager$2;

    invoke-direct {v2, p0, v7, v5}, Lcom/nvidia/tegrazone/utils/NVMarketManager$2;-><init>(Lcom/nvidia/tegrazone/utils/NVMarketManager;Landroid/app/Activity;[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 145
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v4           #availableIntents:[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;
    .end local v5           #finalIntents:[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;
    .end local v6           #availableCount:I
    .end local v7           #finalActivity:Landroid/app/Activity;
    .end local v8           #i:I
    .end local v9           #intents:[Ljava/lang/CharSequence;
    :goto_3
    return-void

    .line 45
    .restart local v6       #availableCount:I
    :cond_0
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getOtherIntentURLs()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    new-array v4, v1, [Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;

    .restart local v4       #availableIntents:[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;
    goto :goto_0

    .line 50
    .restart local v8       #i:I
    :cond_1
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getOtherIntentURLs()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v8

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getOtherIntentURLs()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-static {p2, v1}, Lcom/nvidia/tegrazone/utils/NVUtils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    new-instance v1, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;

    invoke-direct {v1}, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;-><init>()V

    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getOtherIntentURLs()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v8

    invoke-virtual {v1, p2, v2}, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->copyFrom(Landroid/app/Activity;Ljava/lang/String;)Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;

    move-result-object v10

    .line 53
    .local v10, tempIntentVO:Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;
    aput-object v10, v4, v6

    .line 54
    add-int/lit8 v6, v6, 0x1

    .line 49
    .end local v10           #tempIntentVO:Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 62
    .restart local v9       #intents:[Ljava/lang/CharSequence;
    :cond_3
    aget-object v1, v4, v8

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->getIntentName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v8

    .line 61
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 135
    .end local v9           #intents:[Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchMarket(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_3

    .line 139
    .end local v4           #availableIntents:[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;
    .end local v6           #availableCount:I
    .end local v8           #i:I
    :cond_5
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getIntentURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchMarket(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_3

    .line 142
    :cond_6
    new-instance v1, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;

    iget-object v2, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager;->callingActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->showWindow()V

    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 149
    if-eqz p3, :cond_0

    .line 151
    iget-object v0, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager;->callingActivity:Landroid/app/Activity;

    invoke-virtual {v0, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 153
    :cond_0
    return-void
.end method
