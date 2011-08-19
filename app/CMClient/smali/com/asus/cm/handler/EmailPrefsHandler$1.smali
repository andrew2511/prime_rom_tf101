.class Lcom/asus/cm/handler/EmailPrefsHandler$1;
.super Ljava/lang/Thread;
.source "EmailPrefsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/cm/handler/EmailPrefsHandler;->createEmailService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/cm/handler/EmailPrefsHandler;


# direct methods
.method constructor <init>(Lcom/asus/cm/handler/EmailPrefsHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/asus/cm/handler/EmailPrefsHandler$1;->this$0:Lcom/asus/cm/handler/EmailPrefsHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 271
    iget-object v0, p0, Lcom/asus/cm/handler/EmailPrefsHandler$1;->this$0:Lcom/asus/cm/handler/EmailPrefsHandler;

    invoke-static {v0}, Lcom/asus/cm/handler/EmailPrefsHandler;->access$000(Lcom/asus/cm/handler/EmailPrefsHandler;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/asus/cm/handler/EmailPrefsHandler$1;->this$0:Lcom/asus/cm/handler/EmailPrefsHandler;

    iget-object v1, p0, Lcom/asus/cm/handler/EmailPrefsHandler$1;->this$0:Lcom/asus/cm/handler/EmailPrefsHandler;

    invoke-static {v1}, Lcom/asus/cm/handler/EmailPrefsHandler;->access$200(Lcom/asus/cm/handler/EmailPrefsHandler;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/asus/dm/IManageEMail;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/asus/cm/handler/EmailPrefsHandler$1;->this$0:Lcom/asus/cm/handler/EmailPrefsHandler;

    invoke-static {v3}, Lcom/asus/cm/handler/EmailPrefsHandler;->access$100(Lcom/asus/cm/handler/EmailPrefsHandler;)Landroid/content/ServiceConnection;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/asus/cm/handler/EmailPrefsHandler;->access$002(Lcom/asus/cm/handler/EmailPrefsHandler;Z)Z

    .line 277
    iget-object v0, p0, Lcom/asus/cm/handler/EmailPrefsHandler$1;->this$0:Lcom/asus/cm/handler/EmailPrefsHandler;

    invoke-static {v0}, Lcom/asus/cm/handler/EmailPrefsHandler;->access$000(Lcom/asus/cm/handler/EmailPrefsHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate(), bind service fail!"

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
