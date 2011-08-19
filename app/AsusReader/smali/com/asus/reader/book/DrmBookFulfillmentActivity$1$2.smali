.class Lcom/asus/reader/book/DrmBookFulfillmentActivity$1$2;
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
    .line 182
    iput-object p1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1$2;->this$1:Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1$2;->this$1:Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->access$800(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 185
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1$2;->this$1:Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    iget-object v0, v0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1$2;->this$1:Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;

    iget-object v1, v1, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;->this$0:Lcom/asus/reader/book/DrmBookFulfillmentActivity;

    iget-object v1, v1, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    return-void
.end method
