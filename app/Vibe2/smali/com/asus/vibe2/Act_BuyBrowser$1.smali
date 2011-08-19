.class Lcom/asus/vibe2/Act_BuyBrowser$1;
.super Landroid/os/Handler;
.source "Act_BuyBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/Act_BuyBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Act_BuyBrowser;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/Act_BuyBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/asus/vibe2/Act_BuyBrowser$1;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 41
    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser$1;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/asus/vibe2/Act_BuyBrowser;->access$002(Lcom/asus/vibe2/Act_BuyBrowser;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser$1;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v0}, Lcom/asus/vibe2/Act_BuyBrowser;->access$000(Lcom/asus/vibe2/Act_BuyBrowser;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser$1;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v0}, Lcom/asus/vibe2/Act_BuyBrowser;->access$000(Lcom/asus/vibe2/Act_BuyBrowser;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser$1;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser$1;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v1}, Lcom/asus/vibe2/Act_BuyBrowser;->access$000(Lcom/asus/vibe2/Act_BuyBrowser;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/vibe2/Act_BuyBrowser$1;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v2}, Lcom/asus/vibe2/Act_BuyBrowser;->access$000(Lcom/asus/vibe2/Act_BuyBrowser;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/asus/vibe2/Act_BuyBrowser;->access$002(Lcom/asus/vibe2/Act_BuyBrowser;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    :cond_0
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOrderInfoUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/vibe2/Act_BuyBrowser$1;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v2}, Lcom/asus/vibe2/Act_BuyBrowser;->access$000(Lcom/asus/vibe2/Act_BuyBrowser;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/asus/vibe2/Act_BuyBrowser$1;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v0}, Lcom/asus/vibe2/Act_BuyBrowser;->access$100(Lcom/asus/vibe2/Act_BuyBrowser;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser$1;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    invoke-static {v1}, Lcom/asus/vibe2/Act_BuyBrowser;->access$000(Lcom/asus/vibe2/Act_BuyBrowser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/asus/vibe2/Act_BuyBrowser$1;->this$0:Lcom/asus/vibe2/Act_BuyBrowser;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/asus/vibe2/VibeErr;->handleError(ILandroid/app/Activity;Z)V

    goto :goto_0
.end method
