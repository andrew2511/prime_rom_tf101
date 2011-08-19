.class Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;


# direct methods
.method constructor <init>(Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController$1;->this$1:Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 428
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 432
    .local v1, dockMode:I
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 433
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController$1;->this$1:Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;

    iget-object v3, p0, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController$1;->this$1:Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;

    invoke-static {v3}, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->access$1600(Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;->access$1700(Lcom/asus/keyboard/KeyboardService$TouchpadFKeyController;Z)V

    .line 436
    .end local v1           #dockMode:I
    :cond_0
    return-void
.end method
