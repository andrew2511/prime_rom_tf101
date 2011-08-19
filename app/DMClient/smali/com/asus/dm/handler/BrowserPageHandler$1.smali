.class Lcom/asus/dm/handler/BrowserPageHandler$1;
.super Ljava/lang/Object;
.source "BrowserPageHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/handler/BrowserPageHandler;
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
    .line 32
    iput-object p1, p0, Lcom/asus/dm/handler/BrowserPageHandler$1;->this$0:Lcom/asus/dm/handler/BrowserPageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/asus/dm/handler/BrowserPageHandler$1;->this$0:Lcom/asus/dm/handler/BrowserPageHandler;

    invoke-static {p2}, Lcom/asus/dm/IManageBrowser$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/dm/IManageBrowser;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/dm/handler/BrowserPageHandler;->access$002(Lcom/asus/dm/handler/BrowserPageHandler;Lcom/asus/dm/IManageBrowser;)Lcom/asus/dm/IManageBrowser;

    .line 36
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/asus/dm/handler/BrowserPageHandler$1;->this$0:Lcom/asus/dm/handler/BrowserPageHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/dm/handler/BrowserPageHandler;->access$002(Lcom/asus/dm/handler/BrowserPageHandler;Lcom/asus/dm/IManageBrowser;)Lcom/asus/dm/IManageBrowser;

    .line 41
    return-void
.end method
