.class Lcom/asus/cm/CMService$6;
.super Landroid/content/BroadcastReceiver;
.source "CMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/CMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/cm/CMService;


# direct methods
.method constructor <init>(Lcom/asus/cm/CMService;)V
    .locals 0
    .parameter

    .prologue
    .line 1930
    iput-object p1, p0, Lcom/asus/cm/CMService$6;->this$0:Lcom/asus/cm/CMService;

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

    .line 1935
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1936
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1938
    const-string v3, "level"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1939
    .local v1, level:I
    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1941
    .local v2, scale:I
    iget-object v3, p0, Lcom/asus/cm/CMService$6;->this$0:Lcom/asus/cm/CMService;

    const-string v4, "status"

    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/asus/cm/CMService;->access$2502(Lcom/asus/cm/CMService;I)I

    .line 1942
    iget-object v3, p0, Lcom/asus/cm/CMService$6;->this$0:Lcom/asus/cm/CMService;

    mul-int/lit8 v4, v1, 0x64

    div-int/2addr v4, v2

    invoke-static {v3, v4}, Lcom/asus/cm/CMService;->access$2602(Lcom/asus/cm/CMService;I)I

    .line 1945
    iget-object v3, p0, Lcom/asus/cm/CMService$6;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$2700(Lcom/asus/cm/CMService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1947
    iget-object v3, p0, Lcom/asus/cm/CMService$6;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$2800(Lcom/asus/cm/CMService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1948
    const-string v3, "mBatteryInfoReceiver battery >= 50% show update UI"

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1949
    iget-object v3, p0, Lcom/asus/cm/CMService$6;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3, v6}, Lcom/asus/cm/CMService;->access$2702(Lcom/asus/cm/CMService;Z)Z

    .line 1950
    iget-object v3, p0, Lcom/asus/cm/CMService$6;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v3}, Lcom/asus/cm/CMService;->access$500(Lcom/asus/cm/CMService;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/cm/CMService$6;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v4}, Lcom/asus/cm/CMService;->access$2700(Lcom/asus/cm/CMService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/asus/cm/CMCRegistryManager;->setBatteryNotEnoughFlag(Z)V

    .line 1951
    iget-object v3, p0, Lcom/asus/cm/CMService$6;->this$0:Lcom/asus/cm/CMService;

    invoke-virtual {v3}, Lcom/asus/cm/CMService;->showConfirmUpdateUI()V

    .line 1957
    .end local v1           #level:I
    .end local v2           #scale:I
    :cond_0
    :goto_0
    return-void

    .line 1953
    .restart local v1       #level:I
    .restart local v2       #scale:I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBatteryInfoReceiver battery"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/cm/CMService$6;->this$0:Lcom/asus/cm/CMService;

    invoke-static {v4}, Lcom/asus/cm/CMService;->access$2600(Lcom/asus/cm/CMService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "% < 50% check fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
