.class Lcom/asus/reader/BookListActivity$10;
.super Ljava/lang/Object;
.source "BookListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/BookListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/BookListActivity;

.field final synthetic val$new_category_edittext:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/asus/reader/BookListActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/asus/reader/BookListActivity$10;->this$0:Lcom/asus/reader/BookListActivity;

    iput-object p2, p0, Lcom/asus/reader/BookListActivity$10;->val$new_category_edittext:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1432
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$10;->val$new_category_edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1433
    .local v0, categoryname:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1438
    :cond_0
    :goto_0
    return-void

    .line 1435
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1437
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$10;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v1, v1, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/asus/reader/BookListActivity$10;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v2, v2, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x4d2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
