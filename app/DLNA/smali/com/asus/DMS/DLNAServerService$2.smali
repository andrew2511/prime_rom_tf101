.class Lcom/asus/DMS/DLNAServerService$2;
.super Landroid/content/BroadcastReceiver;
.source "DLNAServerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DMS/DLNAServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DMS/DLNAServerService;


# direct methods
.method constructor <init>(Lcom/asus/DMS/DLNAServerService;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/asus/DMS/DLNAServerService$2;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, act:Ljava/lang/String;
    const-string v1, "dms.cmd.enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 194
    const-string v1, "DMS"

    const-string v2, "broadcast -> enable DMS"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/asus/DMS/DLNAServerService$2;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-virtual {v1}, Lcom/asus/DMS/DLNAServerService;->doEnableDMS()V

    .line 203
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string v1, "dms.cmd.disable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 197
    const-string v1, "DMS"

    const-string v2, "broadcast -> disable DMS"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/asus/DMS/DLNAServerService$2;->this$0:Lcom/asus/DMS/DLNAServerService;

    invoke-virtual {v1}, Lcom/asus/DMS/DLNAServerService;->doDisableDMS()V

    goto :goto_0

    .line 200
    :cond_1
    const-string v1, "DMS"

    const-string v2, "Error! no this broadcast event! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
