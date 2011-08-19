.class final Lcom/nvidia/tegrazone/utils/NVMarketManager$2;
.super Ljava/lang/Object;
.source "NVMarketManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/utils/NVMarketManager;->manageMarketAction(Lcom/nvidia/tegrazone/model/vo/LargeGameVO;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/utils/NVMarketManager;

.field private final synthetic val$finalActivity:Landroid/app/Activity;

.field private final synthetic val$finalIntents:[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/utils/NVMarketManager;Landroid/app/Activity;[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager$2;->this$0:Lcom/nvidia/tegrazone/utils/NVMarketManager;

    iput-object p2, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager$2;->val$finalActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager$2;->val$finalIntents:[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager$2;->val$finalActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/nvidia/tegrazone/utils/NVMarketManager$2;->val$finalIntents:[Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/MarketIntentVO;->getIntent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchGenericIntent(Landroid/app/Activity;Ljava/lang/String;)V

    .line 130
    return-void
.end method
