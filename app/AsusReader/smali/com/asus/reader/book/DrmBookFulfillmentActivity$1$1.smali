.class Lcom/asus/reader/book/DrmBookFulfillmentActivity$1$1;
.super Ljava/lang/Object;
.source "DrmBookFulfillmentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1$1;->this$1:Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 168
    iget-object v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1$1;->this$1:Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;

    iget-object v2, v2, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v2}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$800(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->cancel()V

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1$1;->this$1:Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;

    iget-object v2, v2, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v2}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$900(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 172
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1$1;->this$1:Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;

    iget-object v2, v2, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v2}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$1000(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    iget-object v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1$1;->this$1:Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;

    iget-object v2, v2, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-virtual {v2, v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 176
    const-string v2, "DrmBookFullfillActivity"

    const-string v3, "send intent to open book"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1$1;->this$1:Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;

    iget-object v2, v2, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    iget-object v2, v2, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1$1;->this$1:Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;

    iget-object v3, v3, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    iget-object v3, v3, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    return-void
.end method
