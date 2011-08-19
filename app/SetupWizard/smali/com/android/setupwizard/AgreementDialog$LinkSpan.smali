.class Lcom/android/setupwizard/AgreementDialog$LinkSpan;
.super Landroid/text/style/ClickableSpan;
.source "AgreementDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizard/AgreementDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LinkSpan"
.end annotation


# instance fields
.field private mParent:Lcom/android/setupwizard/BaseActivity;

.field private mPolicy:Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;


# direct methods
.method private constructor <init>(Lcom/android/setupwizard/BaseActivity;Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;)V
    .locals 0
    .parameter "parent"
    .parameter "policy"

    .prologue
    .line 233
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/android/setupwizard/AgreementDialog$LinkSpan;->mParent:Lcom/android/setupwizard/BaseActivity;

    .line 235
    iput-object p2, p0, Lcom/android/setupwizard/AgreementDialog$LinkSpan;->mPolicy:Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    .line 236
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/setupwizard/BaseActivity;Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;Lcom/android/setupwizard/AgreementDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizard/AgreementDialog$LinkSpan;-><init>(Lcom/android/setupwizard/BaseActivity;Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "widget"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/setupwizard/AgreementDialog$LinkSpan;->mParent:Lcom/android/setupwizard/BaseActivity;

    new-instance v1, Lcom/android/setupwizard/AgreementDialog;

    iget-object v2, p0, Lcom/android/setupwizard/AgreementDialog$LinkSpan;->mParent:Lcom/android/setupwizard/BaseActivity;

    iget-object v3, p0, Lcom/android/setupwizard/AgreementDialog$LinkSpan;->mPolicy:Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;

    invoke-direct {v1, v2, v3}, Lcom/android/setupwizard/AgreementDialog;-><init>(Lcom/android/setupwizard/BaseActivity;Lcom/android/setupwizard/AgreementDialog$AndroidPolicy;)V

    invoke-virtual {v0, v1}, Lcom/android/setupwizard/BaseActivity;->setAgreementDialog(Lcom/android/setupwizard/AgreementDialog;)V

    .line 241
    return-void
.end method
