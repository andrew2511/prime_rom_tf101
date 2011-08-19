.class Lcom/asus/dm/ConfirmUpdateNotification$2;
.super Ljava/lang/Thread;
.source "ConfirmUpdateNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/dm/ConfirmUpdateNotification;->bindDMService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dm/ConfirmUpdateNotification;


# direct methods
.method constructor <init>(Lcom/asus/dm/ConfirmUpdateNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/asus/dm/ConfirmUpdateNotification$2;->this$0:Lcom/asus/dm/ConfirmUpdateNotification;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 40
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/asus/dm/ConfirmUpdateNotification$2;->this$0:Lcom/asus/dm/ConfirmUpdateNotification;

    invoke-virtual {v1}, Lcom/asus/dm/ConfirmUpdateNotification;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/asus/dm/DMService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 41
    iget-object v1, p0, Lcom/asus/dm/ConfirmUpdateNotification$2;->this$0:Lcom/asus/dm/ConfirmUpdateNotification;

    iget-object v2, p0, Lcom/asus/dm/ConfirmUpdateNotification$2;->this$0:Lcom/asus/dm/ConfirmUpdateNotification;

    invoke-static {v2}, Lcom/asus/dm/ConfirmUpdateNotification;->access$100(Lcom/asus/dm/ConfirmUpdateNotification;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/asus/dm/ConfirmUpdateNotification;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 42
    return-void
.end method
