.class Lcom/asus/reader/book/BookViewActivity$16;
.super Ljava/lang/Object;
.source "BookViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/BookViewActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/BookViewActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/BookViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2047
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$16;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 2050
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$16;->this$0:Lcom/asus/reader/book/BookViewActivity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Lcom/asus/reader/book/BookViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 2052
    .local v0, clipManager:Landroid/text/ClipboardManager;
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$16;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$6200(Lcom/asus/reader/book/BookViewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 2053
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$16;->this$0:Lcom/asus/reader/book/BookViewActivity;

    const v2, 0x7f070063

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2054
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$16;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$6300(Lcom/asus/reader/book/BookViewActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 2055
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$16;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$6300(Lcom/asus/reader/book/BookViewActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 2056
    return-void
.end method
