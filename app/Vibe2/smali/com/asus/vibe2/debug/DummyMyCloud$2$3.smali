.class Lcom/asus/vibe2/debug/DummyMyCloud$2$3;
.super Ljava/lang/Object;
.source "DummyMyCloud.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/vibe2/debug/DummyMyCloud$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/vibe2/debug/DummyMyCloud$2;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/debug/DummyMyCloud$2;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/asus/vibe2/debug/DummyMyCloud$2$3;->this$1:Lcom/asus/vibe2/debug/DummyMyCloud$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 79
    iget-object v2, p0, Lcom/asus/vibe2/debug/DummyMyCloud$2$3;->this$1:Lcom/asus/vibe2/debug/DummyMyCloud$2;

    iget-object v2, v2, Lcom/asus/vibe2/debug/DummyMyCloud$2;->this$0:Lcom/asus/vibe2/debug/DummyMyCloud;

    iget-object v3, p0, Lcom/asus/vibe2/debug/DummyMyCloud$2$3;->this$1:Lcom/asus/vibe2/debug/DummyMyCloud$2;

    iget-object v3, v3, Lcom/asus/vibe2/debug/DummyMyCloud$2;->this$0:Lcom/asus/vibe2/debug/DummyMyCloud;

    invoke-static {v3}, Lcom/asus/vibe2/debug/DummyMyCloud;->access$200(Lcom/asus/vibe2/debug/DummyMyCloud;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/vibe2/debug/DummyMyCloud;->unbindService(Landroid/content/ServiceConnection;)V

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/asus/vibe2/debug/DummyMyCloud$2$3;->this$1:Lcom/asus/vibe2/debug/DummyMyCloud$2;

    iget-object v2, v2, Lcom/asus/vibe2/debug/DummyMyCloud$2;->this$0:Lcom/asus/vibe2/debug/DummyMyCloud;

    iget-object v3, p0, Lcom/asus/vibe2/debug/DummyMyCloud$2$3;->this$1:Lcom/asus/vibe2/debug/DummyMyCloud$2;

    iget-object v3, v3, Lcom/asus/vibe2/debug/DummyMyCloud$2;->this$0:Lcom/asus/vibe2/debug/DummyMyCloud;

    invoke-static {v3}, Lcom/asus/vibe2/debug/DummyMyCloud;->access$300(Lcom/asus/vibe2/debug/DummyMyCloud;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/asus/vibe2/debug/DummyMyCloud;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.asus.vibe.action.MAINLIST_RESULT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/asus/vibe2/debug/DummyMyCloud$2$3;->this$1:Lcom/asus/vibe2/debug/DummyMyCloud$2;

    iget-object v2, v2, Lcom/asus/vibe2/debug/DummyMyCloud$2;->this$0:Lcom/asus/vibe2/debug/DummyMyCloud;

    iget-object v3, p0, Lcom/asus/vibe2/debug/DummyMyCloud$2$3;->this$1:Lcom/asus/vibe2/debug/DummyMyCloud$2;

    iget-object v3, v3, Lcom/asus/vibe2/debug/DummyMyCloud$2;->this$0:Lcom/asus/vibe2/debug/DummyMyCloud;

    invoke-static {v3}, Lcom/asus/vibe2/debug/DummyMyCloud;->access$300(Lcom/asus/vibe2/debug/DummyMyCloud;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/asus/vibe2/debug/DummyMyCloud;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.vibe.action.QUERY_MAINLIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/asus/vibe2/debug/DummyMyCloud$2$3;->this$1:Lcom/asus/vibe2/debug/DummyMyCloud$2;

    iget-object v2, v2, Lcom/asus/vibe2/debug/DummyMyCloud$2;->this$0:Lcom/asus/vibe2/debug/DummyMyCloud;

    iget-object v3, p0, Lcom/asus/vibe2/debug/DummyMyCloud$2$3;->this$1:Lcom/asus/vibe2/debug/DummyMyCloud$2;

    iget-object v3, v3, Lcom/asus/vibe2/debug/DummyMyCloud$2;->this$0:Lcom/asus/vibe2/debug/DummyMyCloud;

    invoke-static {v3}, Lcom/asus/vibe2/debug/DummyMyCloud;->access$200(Lcom/asus/vibe2/debug/DummyMyCloud;)Landroid/content/ServiceConnection;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Lcom/asus/vibe2/debug/DummyMyCloud;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 89
    return-void

    .line 82
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
