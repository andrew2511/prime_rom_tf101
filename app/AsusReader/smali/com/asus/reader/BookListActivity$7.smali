.class Lcom/asus/reader/BookListActivity$7;
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


# direct methods
.method constructor <init>(Lcom/asus/reader/BookListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1389
    iput-object p1, p0, Lcom/asus/reader/BookListActivity$7;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$7;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v0, v0, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$7;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v1, v1, Lcom/asus/reader/BookListActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4d5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1392
    return-void
.end method
