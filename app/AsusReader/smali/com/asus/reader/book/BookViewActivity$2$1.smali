.class Lcom/asus/reader/book/BookViewActivity$2$1;
.super Ljava/lang/Object;
.source "BookViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/BookViewActivity$2;->onKeyUp(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/asus/reader/book/BookViewActivity$2;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/asus/reader/book/BookViewActivity$2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$2$1;->this$1:Lcom/asus/reader/book/BookViewActivity$2;

    iput p2, p0, Lcom/asus/reader/book/BookViewActivity$2$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 441
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$2$1;->this$1:Lcom/asus/reader/book/BookViewActivity$2;

    iget-object v1, v1, Lcom/asus/reader/book/BookViewActivity$2;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v1

    iget v2, p0, Lcom/asus/reader/book/BookViewActivity$2$1;->val$progress:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/asus/reader/book/BookSurfaceView;->navigateToPageNative(I)V

    .line 442
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$2$1;->this$1:Lcom/asus/reader/book/BookViewActivity$2;

    iget-object v1, v1, Lcom/asus/reader/book/BookViewActivity$2;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$500(Lcom/asus/reader/book/BookViewActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 443
    .local v0, msg:Landroid/os/Message;
    iget v1, p0, Lcom/asus/reader/book/BookViewActivity$2$1;->val$progress:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 444
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$2$1;->this$1:Lcom/asus/reader/book/BookViewActivity$2;

    iget-object v1, v1, Lcom/asus/reader/book/BookViewActivity$2;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$500(Lcom/asus/reader/book/BookViewActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x258

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 445
    return-void
.end method
