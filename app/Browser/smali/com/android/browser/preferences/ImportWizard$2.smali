.class Lcom/android/browser/preferences/ImportWizard$2;
.super Ljava/lang/Object;
.source "ImportWizard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/preferences/ImportWizard;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/preferences/ImportWizard;


# direct methods
.method constructor <init>(Lcom/android/browser/preferences/ImportWizard;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/browser/preferences/ImportWizard$2;->this$0:Lcom/android/browser/preferences/ImportWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard$2;->this$0:Lcom/android/browser/preferences/ImportWizard;

    iget-object v1, p0, Lcom/android/browser/preferences/ImportWizard$2;->this$0:Lcom/android/browser/preferences/ImportWizard;

    iget-object v1, v1, Lcom/android/browser/preferences/ImportWizard;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/preferences/ImportWizard;->mPositiveButton:Landroid/widget/Button;

    .line 121
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard$2;->this$0:Lcom/android/browser/preferences/ImportWizard;

    iget-object v1, p0, Lcom/android/browser/preferences/ImportWizard$2;->this$0:Lcom/android/browser/preferences/ImportWizard;

    iget-object v1, v1, Lcom/android/browser/preferences/ImportWizard;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/preferences/ImportWizard;->mNegativeButton:Landroid/widget/Button;

    .line 122
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard$2;->this$0:Lcom/android/browser/preferences/ImportWizard;

    iget-object v0, v0, Lcom/android/browser/preferences/ImportWizard;->mPositiveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/browser/preferences/ImportWizard$2;->this$0:Lcom/android/browser/preferences/ImportWizard;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard$2;->this$0:Lcom/android/browser/preferences/ImportWizard;

    iget-object v0, v0, Lcom/android/browser/preferences/ImportWizard;->mNegativeButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/browser/preferences/ImportWizard$2;->this$0:Lcom/android/browser/preferences/ImportWizard;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard$2;->this$0:Lcom/android/browser/preferences/ImportWizard;

    invoke-virtual {v0}, Lcom/android/browser/preferences/ImportWizard;->setupAnimations()V

    .line 125
    iget-object v0, p0, Lcom/android/browser/preferences/ImportWizard$2;->this$0:Lcom/android/browser/preferences/ImportWizard;

    invoke-virtual {v0}, Lcom/android/browser/preferences/ImportWizard;->updateNavigation()V

    .line 126
    return-void
.end method
