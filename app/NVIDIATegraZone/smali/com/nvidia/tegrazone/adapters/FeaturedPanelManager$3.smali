.class final Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager$3;
.super Ljava/lang/Object;
.source "FeaturedPanelManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->updatePanelContents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager$3;->this$0:Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager$3;->this$0:Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;

    iget-object v0, v0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager$3;->this$0:Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;

    iget-object v1, v1, Lcom/nvidia/tegrazone/adapters/FeaturedPanelManager;->game:Lcom/nvidia/tegrazone/model/vo/SmallGameVO;

    invoke-virtual {v1}, Lcom/nvidia/tegrazone/model/vo/SmallGameVO;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchApp(Landroid/app/Activity;Ljava/lang/String;)V

    .line 103
    return-void
.end method
