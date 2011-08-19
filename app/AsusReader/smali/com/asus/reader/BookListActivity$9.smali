.class Lcom/asus/reader/BookListActivity$9;
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

.field final synthetic val$rename_category_edittext:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/asus/reader/BookListActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1415
    iput-object p1, p0, Lcom/asus/reader/BookListActivity$9;->this$0:Lcom/asus/reader/BookListActivity;

    iput-object p2, p0, Lcom/asus/reader/BookListActivity$9;->val$rename_category_edittext:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1417
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$9;->val$rename_category_edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1418
    .local v0, newname:Ljava/lang/String;
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$9;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v1, v1, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/asus/reader/BookListActivity$9;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v2, v2, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x4d3

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1419
    return-void
.end method
