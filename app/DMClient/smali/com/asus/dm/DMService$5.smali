.class Lcom/asus/dm/DMService$5;
.super Landroid/content/BroadcastReceiver;
.source "DMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/DMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dm/DMService;


# direct methods
.method constructor <init>(Lcom/asus/dm/DMService;)V
    .locals 0
    .parameter

    .prologue
    .line 1733
    iput-object p1, p0, Lcom/asus/dm/DMService$5;->this$0:Lcom/asus/dm/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 1738
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1739
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1741
    const-string v3, "level"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1742
    .local v1, level:I
    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1744
    .local v2, scale:I
    iget-object v3, p0, Lcom/asus/dm/DMService$5;->this$0:Lcom/asus/dm/DMService;

    const-string v4, "status"

    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/asus/dm/DMService;->access$2002(Lcom/asus/dm/DMService;I)I

    .line 1746
    iget-object v3, p0, Lcom/asus/dm/DMService$5;->this$0:Lcom/asus/dm/DMService;

    const-string v4, "debug.dm.battery"

    const-string v5, "-1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/asus/dm/DMService;->access$2102(Lcom/asus/dm/DMService;I)I

    .line 1747
    iget-object v3, p0, Lcom/asus/dm/DMService$5;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v3}, Lcom/asus/dm/DMService;->access$2100(Lcom/asus/dm/DMService;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 1748
    iget-object v3, p0, Lcom/asus/dm/DMService$5;->this$0:Lcom/asus/dm/DMService;

    mul-int/lit8 v4, v1, 0x64

    div-int/2addr v4, v2

    invoke-static {v3, v4}, Lcom/asus/dm/DMService;->access$2102(Lcom/asus/dm/DMService;I)I

    .line 1751
    :cond_0
    iget-object v3, p0, Lcom/asus/dm/DMService$5;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v3}, Lcom/asus/dm/DMService;->access$2200(Lcom/asus/dm/DMService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1753
    iget-object v3, p0, Lcom/asus/dm/DMService$5;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v3}, Lcom/asus/dm/DMService;->access$2300(Lcom/asus/dm/DMService;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1754
    iget-object v3, p0, Lcom/asus/dm/DMService$5;->this$0:Lcom/asus/dm/DMService;

    const-string v4, "mBatteryInfoReceiver battery >= 15% show update UI"

    invoke-static {v3, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1755
    iget-object v3, p0, Lcom/asus/dm/DMService$5;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v3, v6}, Lcom/asus/dm/DMService;->access$2202(Lcom/asus/dm/DMService;Z)Z

    .line 1756
    iget-object v3, p0, Lcom/asus/dm/DMService$5;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v3}, Lcom/asus/dm/DMService;->access$500(Lcom/asus/dm/DMService;)Lcom/asus/dm/DMCRegistryManager;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/dm/DMService$5;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v4}, Lcom/asus/dm/DMService;->access$2200(Lcom/asus/dm/DMService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/asus/dm/DMCRegistryManager;->setBatteryNotEnoughFlag(Z)V

    .line 1757
    iget-object v3, p0, Lcom/asus/dm/DMService$5;->this$0:Lcom/asus/dm/DMService;

    invoke-virtual {v3}, Lcom/asus/dm/DMService;->showConfirmUpdateUI()V

    .line 1763
    .end local v1           #level:I
    .end local v2           #scale:I
    :cond_1
    :goto_0
    return-void

    .line 1759
    .restart local v1       #level:I
    .restart local v2       #scale:I
    :cond_2
    iget-object v3, p0, Lcom/asus/dm/DMService$5;->this$0:Lcom/asus/dm/DMService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBatteryInfoReceiver battery"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/dm/DMService$5;->this$0:Lcom/asus/dm/DMService;

    invoke-static {v5}, Lcom/asus/dm/DMService;->access$2100(Lcom/asus/dm/DMService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "% < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "% check fail"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
