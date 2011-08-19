.class Lcom/android/email/activity/AttachmentInfoDialog$1;
.super Ljava/lang/Object;
.source "AttachmentInfoDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/AttachmentInfoDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/AttachmentInfoDialog;

.field final synthetic val$actionIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/email/activity/AttachmentInfoDialog;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/email/activity/AttachmentInfoDialog$1;->this$0:Lcom/android/email/activity/AttachmentInfoDialog;

    iput-object p2, p0, Lcom/android/email/activity/AttachmentInfoDialog$1;->val$actionIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 98
    packed-switch p2, :pswitch_data_0

    .line 106
    :goto_0
    :pswitch_0
    return-void

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/android/email/activity/AttachmentInfoDialog$1;->this$0:Lcom/android/email/activity/AttachmentInfoDialog;

    iget-object v1, p0, Lcom/android/email/activity/AttachmentInfoDialog$1;->val$actionIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/AttachmentInfoDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 103
    :pswitch_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
