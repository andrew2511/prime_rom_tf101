.class Lcom/asus/reader/book/BookViewActivity$21;
.super Ljava/lang/Object;
.source "BookViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/BookViewActivity;->onPrepareDialog(ILandroid/app/Dialog;)V
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
    .line 2188
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$21;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$21;->this$0:Lcom/asus/reader/book/BookViewActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$21;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$1202(Lcom/asus/reader/book/BookViewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 2191
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$21;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$1200(Lcom/asus/reader/book/BookViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const v1, 0x7f07005d

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 2192
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$21;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$1200(Lcom/asus/reader/book/BookViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Waiting for result!"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2193
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$21;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$1200(Lcom/asus/reader/book/BookViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2194
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$21;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$1200(Lcom/asus/reader/book/BookViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2195
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$21;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$1200(Lcom/asus/reader/book/BookViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 2196
    return-void
.end method
