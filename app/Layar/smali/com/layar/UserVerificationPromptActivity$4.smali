.class Lcom/layar/UserVerificationPromptActivity$4;
.super Ljava/lang/Object;
.source "UserVerificationPromptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/UserVerificationPromptActivity;->showDialogVerificationLinkSent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/UserVerificationPromptActivity;


# direct methods
.method constructor <init>(Lcom/layar/UserVerificationPromptActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/UserVerificationPromptActivity$4;->this$0:Lcom/layar/UserVerificationPromptActivity;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 136
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 137
    iget-object v0, p0, Lcom/layar/UserVerificationPromptActivity$4;->this$0:Lcom/layar/UserVerificationPromptActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/layar/UserVerificationPromptActivity;->setResult(I)V

    .line 138
    iget-object v0, p0, Lcom/layar/UserVerificationPromptActivity$4;->this$0:Lcom/layar/UserVerificationPromptActivity;

    invoke-virtual {v0}, Lcom/layar/UserVerificationPromptActivity;->finish()V

    .line 139
    return-void
.end method
