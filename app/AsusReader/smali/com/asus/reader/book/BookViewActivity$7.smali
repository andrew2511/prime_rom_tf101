.class Lcom/asus/reader/book/BookViewActivity$7;
.super Ljava/lang/Object;
.source "BookViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/BookViewActivity;->createProgressDialog(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/BookViewActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$title_resid:I


# direct methods
.method constructor <init>(Lcom/asus/reader/book/BookViewActivity;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$7;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iput-object p2, p0, Lcom/asus/reader/book/BookViewActivity$7;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/asus/reader/book/BookViewActivity$7;->val$title_resid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$7;->this$0:Lcom/asus/reader/book/BookViewActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$7;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$1202(Lcom/asus/reader/book/BookViewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1275
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$7;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$1200(Lcom/asus/reader/book/BookViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p0, Lcom/asus/reader/book/BookViewActivity$7;->val$title_resid:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 1276
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$7;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$1200(Lcom/asus/reader/book/BookViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$7;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {v1}, Lcom/asus/reader/book/BookViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1277
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$7;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$1200(Lcom/asus/reader/book/BookViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1278
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$7;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$1200(Lcom/asus/reader/book/BookViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1279
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$7;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$1200(Lcom/asus/reader/book/BookViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1280
    return-void
.end method
