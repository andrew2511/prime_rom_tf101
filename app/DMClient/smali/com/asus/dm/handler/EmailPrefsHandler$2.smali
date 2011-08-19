.class Lcom/asus/dm/handler/EmailPrefsHandler$2;
.super Ljava/lang/Thread;
.source "EmailPrefsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/dm/handler/EmailPrefsHandler;->destroyEmailService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dm/handler/EmailPrefsHandler;


# direct methods
.method constructor <init>(Lcom/asus/dm/handler/EmailPrefsHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/asus/dm/handler/EmailPrefsHandler$2;->this$0:Lcom/asus/dm/handler/EmailPrefsHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/asus/dm/handler/EmailPrefsHandler$2;->this$0:Lcom/asus/dm/handler/EmailPrefsHandler;

    invoke-static {v0}, Lcom/asus/dm/handler/EmailPrefsHandler;->access$200(Lcom/asus/dm/handler/EmailPrefsHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/dm/handler/EmailPrefsHandler$2;->this$0:Lcom/asus/dm/handler/EmailPrefsHandler;

    invoke-static {v1}, Lcom/asus/dm/handler/EmailPrefsHandler;->access$100(Lcom/asus/dm/handler/EmailPrefsHandler;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 298
    iget-object v0, p0, Lcom/asus/dm/handler/EmailPrefsHandler$2;->this$0:Lcom/asus/dm/handler/EmailPrefsHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/dm/handler/EmailPrefsHandler;->access$002(Lcom/asus/dm/handler/EmailPrefsHandler;Z)Z

    .line 299
    iget-object v0, p0, Lcom/asus/dm/handler/EmailPrefsHandler$2;->this$0:Lcom/asus/dm/handler/EmailPrefsHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/dm/handler/EmailPrefsHandler;->access$302(Lcom/asus/dm/handler/EmailPrefsHandler;Lcom/asus/dm/IManageEMail;)Lcom/asus/dm/IManageEMail;

    .line 300
    return-void
.end method
