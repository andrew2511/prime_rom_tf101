.class Lcom/asus/reader/book/DrmNotificationDialogActivity$4;
.super Ljava/lang/Object;
.source "DrmNotificationDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/DrmNotificationDialogActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/DrmNotificationDialogActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/DrmNotificationDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/asus/reader/book/DrmNotificationDialogActivity$4;->this$0:Lcom/asus/reader/book/DrmNotificationDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/asus/reader/book/DrmNotificationDialogActivity$4;->this$0:Lcom/asus/reader/book/DrmNotificationDialogActivity;

    const-class v2, Lcom/asus/reader/BookListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    const-string v1, "showDrmMenu"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/asus/reader/book/DrmNotificationDialogActivity$4;->this$0:Lcom/asus/reader/book/DrmNotificationDialogActivity;

    invoke-virtual {v1, v0}, Lcom/asus/reader/book/DrmNotificationDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 112
    iget-object v0, p0, Lcom/asus/reader/book/DrmNotificationDialogActivity$4;->this$0:Lcom/asus/reader/book/DrmNotificationDialogActivity;

    iget-object v0, v0, Lcom/asus/reader/book/DrmNotificationDialogActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/book/DrmNotificationDialogActivity$4;->this$0:Lcom/asus/reader/book/DrmNotificationDialogActivity;

    iget-object v1, v1, Lcom/asus/reader/book/DrmNotificationDialogActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    return-void
.end method
