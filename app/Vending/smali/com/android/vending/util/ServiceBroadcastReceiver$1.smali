.class Lcom/android/vending/util/ServiceBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "ServiceBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/util/ServiceBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/util/ServiceBroadcastReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$serviceIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/vending/util/ServiceBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/vending/util/ServiceBroadcastReceiver$1;->this$0:Lcom/android/vending/util/ServiceBroadcastReceiver;

    iput-object p2, p0, Lcom/android/vending/util/ServiceBroadcastReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/vending/util/ServiceBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/vending/util/ServiceBroadcastReceiver$1;->val$serviceIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/vending/util/ServiceBroadcastReceiver$1;->this$0:Lcom/android/vending/util/ServiceBroadcastReceiver;

    iget-object v1, p0, Lcom/android/vending/util/ServiceBroadcastReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/vending/util/ServiceBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/android/vending/util/ServiceBroadcastReceiver;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 49
    iget-object v0, p0, Lcom/android/vending/util/ServiceBroadcastReceiver$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/vending/util/ServiceBroadcastReceiver$1;->val$serviceIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 50
    return-void
.end method
