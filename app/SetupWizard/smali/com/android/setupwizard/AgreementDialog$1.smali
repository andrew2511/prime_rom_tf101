.class Lcom/android/setupwizard/AgreementDialog$1;
.super Ljava/lang/Object;
.source "AgreementDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setupwizard/AgreementDialog;-><init>(Lcom/android/setupwizard/BaseActivity;Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizard/AgreementDialog;

.field final synthetic val$activity:Lcom/android/setupwizard/BaseActivity;


# direct methods
.method constructor <init>(Lcom/android/setupwizard/AgreementDialog;Lcom/android/setupwizard/BaseActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/setupwizard/AgreementDialog$1;->this$0:Lcom/android/setupwizard/AgreementDialog;

    iput-object p2, p0, Lcom/android/setupwizard/AgreementDialog$1;->val$activity:Lcom/android/setupwizard/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/setupwizard/AgreementDialog$1;->val$activity:Lcom/android/setupwizard/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/setupwizard/BaseActivity;->setAgreementDialog(Lcom/android/setupwizard/AgreementDialog;)V

    .line 258
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 259
    return-void
.end method
