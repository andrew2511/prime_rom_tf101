.class Lcom/asus/reader/book/BookViewActivity$8;
.super Ljava/lang/Object;
.source "BookViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/BookViewActivity;->destroyProgressDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/BookViewActivity;

.field final synthetic val$isChangeFontSize:Z


# direct methods
.method constructor <init>(Lcom/asus/reader/book/BookViewActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1288
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$8;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iput-boolean p2, p0, Lcom/asus/reader/book/BookViewActivity$8;->val$isChangeFontSize:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$8;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$1200(Lcom/asus/reader/book/BookViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1291
    iget-boolean v0, p0, Lcom/asus/reader/book/BookViewActivity$8;->val$isChangeFontSize:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$8;->this$0:Lcom/asus/reader/book/BookViewActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$1302(Lcom/asus/reader/book/BookViewActivity;Z)Z

    .line 1292
    :cond_0
    return-void
.end method
