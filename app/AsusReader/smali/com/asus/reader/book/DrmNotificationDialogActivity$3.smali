.class Lcom/asus/reader/book/DrmNotificationDialogActivity$3;
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
    .line 115
    iput-object p1, p0, Lcom/asus/reader/book/DrmNotificationDialogActivity$3;->this$0:Lcom/asus/reader/book/DrmNotificationDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/asus/reader/book/DrmNotificationDialogActivity$3;->this$0:Lcom/asus/reader/book/DrmNotificationDialogActivity;

    invoke-static {v0}, Lcom/asus/reader/book/DrmNotificationDialogActivity;->access$000(Lcom/asus/reader/book/DrmNotificationDialogActivity;)V

    .line 121
    iget-object v0, p0, Lcom/asus/reader/book/DrmNotificationDialogActivity$3;->this$0:Lcom/asus/reader/book/DrmNotificationDialogActivity;

    iget-object v0, v0, Lcom/asus/reader/book/DrmNotificationDialogActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/book/DrmNotificationDialogActivity$3;->this$0:Lcom/asus/reader/book/DrmNotificationDialogActivity;

    iget-object v1, v1, Lcom/asus/reader/book/DrmNotificationDialogActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 122
    return-void
.end method
