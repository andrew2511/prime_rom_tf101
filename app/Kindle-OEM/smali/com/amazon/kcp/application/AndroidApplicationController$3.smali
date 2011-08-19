.class Lcom/amazon/kcp/application/AndroidApplicationController$3;
.super Landroid/content/BroadcastReceiver;
.source "AndroidApplicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AndroidApplicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/AndroidApplicationController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/AndroidApplicationController;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidApplicationController$3;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController$3;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-static {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->access$100(Lcom/amazon/kcp/application/AndroidApplicationController;)I

    move-result v0

    if-lez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidApplicationController$3;->this$0:Lcom/amazon/kcp/application/AndroidApplicationController;

    invoke-static {v0}, Lcom/amazon/kcp/application/AndroidApplicationController;->access$300(Lcom/amazon/kcp/application/AndroidApplicationController;)V

    .line 178
    :cond_0
    return-void
.end method
