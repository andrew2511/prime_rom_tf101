.class Lcom/asus/dm/handler/BrowserPageHandler$2;
.super Ljava/lang/Thread;
.source "BrowserPageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/dm/handler/BrowserPageHandler;->bindProvService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dm/handler/BrowserPageHandler;


# direct methods
.method constructor <init>(Lcom/asus/dm/handler/BrowserPageHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/asus/dm/handler/BrowserPageHandler$2;->this$0:Lcom/asus/dm/handler/BrowserPageHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.browser"

    const-string v2, "com.android.browser.ProvisioningService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v1, "bindProvService()"

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/asus/dm/handler/BrowserPageHandler$2;->this$0:Lcom/asus/dm/handler/BrowserPageHandler;

    invoke-static {v1}, Lcom/asus/dm/handler/BrowserPageHandler;->access$200(Lcom/asus/dm/handler/BrowserPageHandler;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dm/handler/BrowserPageHandler$2;->this$0:Lcom/asus/dm/handler/BrowserPageHandler;

    invoke-static {v2}, Lcom/asus/dm/handler/BrowserPageHandler;->access$100(Lcom/asus/dm/handler/BrowserPageHandler;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 52
    return-void
.end method
