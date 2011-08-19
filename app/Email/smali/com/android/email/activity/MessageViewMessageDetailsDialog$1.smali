.class Lcom/android/email/activity/MessageViewMessageDetailsDialog$1;
.super Ljava/lang/Object;
.source "MessageViewMessageDetailsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewMessageDetailsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewMessageDetailsDialog;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewMessageDetailsDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/email/activity/MessageViewMessageDetailsDialog$1;->this$0:Lcom/android/email/activity/MessageViewMessageDetailsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/email/activity/MessageViewMessageDetailsDialog$1;->this$0:Lcom/android/email/activity/MessageViewMessageDetailsDialog;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewMessageDetailsDialog;->dismiss()V

    .line 68
    return-void
.end method
