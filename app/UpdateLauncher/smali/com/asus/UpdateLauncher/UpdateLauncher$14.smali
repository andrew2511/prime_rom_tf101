.class Lcom/asus/UpdateLauncher/UpdateLauncher$14;
.super Landroid/content/BroadcastReceiver;
.source "UpdateLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/UpdateLauncher/UpdateLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;


# direct methods
.method constructor <init>(Lcom/asus/UpdateLauncher/UpdateLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 985
    iput-object p1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$14;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 988
    invoke-static {}, Lcom/asus/UpdateLauncher/UpdateLauncher;->access$000()Z

    move-result v1

    if-ne v1, v3, :cond_0

    .line 990
    const-string v1, "UpdateLauncher"

    const-string v2, "mBootReceiver.onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.asus.UpdateLauncher.boot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 996
    iget-object v1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$14;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-static {v1}, Lcom/asus/UpdateLauncher/UpdateLauncher;->access$900(Lcom/asus/UpdateLauncher/UpdateLauncher;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1009
    :cond_1
    :goto_0
    return-void

    .line 1000
    :cond_2
    iget-object v1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$14;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-static {v1}, Lcom/asus/UpdateLauncher/UpdateLauncher;->access$500(Lcom/asus/UpdateLauncher/UpdateLauncher;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$14;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-static {v1}, Lcom/asus/UpdateLauncher/UpdateLauncher;->access$1000(Lcom/asus/UpdateLauncher/UpdateLauncher;)I

    move-result v1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$14;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-static {v1}, Lcom/asus/UpdateLauncher/UpdateLauncher;->access$1100(Lcom/asus/UpdateLauncher/UpdateLauncher;)I

    move-result v1

    if-nez v1, :cond_3

    .line 1002
    iget-object v2, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$14;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    iget-object v1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$14;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-static {v1}, Lcom/asus/UpdateLauncher/UpdateLauncher;->access$500(Lcom/asus/UpdateLauncher/UpdateLauncher;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;

    iget-object v1, v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->recovery_path:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/asus/UpdateLauncher/UpdateLauncher;->access$602(Lcom/asus/UpdateLauncher/UpdateLauncher;Ljava/lang/String;)Ljava/lang/String;

    .line 1003
    iget-object v2, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$14;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    iget-object v1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$14;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-static {v1}, Lcom/asus/UpdateLauncher/UpdateLauncher;->access$500(Lcom/asus/UpdateLauncher/UpdateLauncher;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;

    iget-object v1, v1, Lcom/asus/UpdateLauncher/UpdateLauncher$UpdateInfo;->android_path:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/asus/UpdateLauncher/UpdateLauncher;->access$702(Lcom/asus/UpdateLauncher/UpdateLauncher;Ljava/lang/String;)Ljava/lang/String;

    .line 1004
    iget-object v1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$14;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-static {v1}, Lcom/asus/UpdateLauncher/UpdateLauncher;->access$300(Lcom/asus/UpdateLauncher/UpdateLauncher;)V

    goto :goto_0

    .line 1007
    :cond_3
    iget-object v1, p0, Lcom/asus/UpdateLauncher/UpdateLauncher$14;->this$0:Lcom/asus/UpdateLauncher/UpdateLauncher;

    invoke-static {v1}, Lcom/asus/UpdateLauncher/UpdateLauncher;->access$200(Lcom/asus/UpdateLauncher/UpdateLauncher;)V

    goto :goto_0
.end method
