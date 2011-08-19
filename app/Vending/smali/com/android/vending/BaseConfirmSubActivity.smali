.class public abstract Lcom/android/vending/BaseConfirmSubActivity;
.super Lcom/android/vending/BaseActivity;
.source "BaseConfirmSubActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/vending/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNegativeButtonId()I
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f080054

    return v0
.end method

.method protected getPositiveButtonId()I
    .locals 1

    .prologue
    .line 26
    const v0, 0x7f0800b8

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/vending/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/vending/BaseConfirmSubActivity;->setupContentView()V

    .line 51
    invoke-virtual {p0}, Lcom/android/vending/BaseConfirmSubActivity;->getPositiveButtonId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseConfirmSubActivity;->setViewOnClickListener(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/vending/BaseConfirmSubActivity;->getNegativeButtonId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/vending/BaseConfirmSubActivity;->setViewOnClickListener(I)V

    .line 54
    new-instance v0, Lcom/android/vending/BaseConfirmSubActivity$1;

    invoke-direct {v0, p0}, Lcom/android/vending/BaseConfirmSubActivity$1;-><init>(Lcom/android/vending/BaseConfirmSubActivity;)V

    iput-object v0, p0, Lcom/android/vending/BaseConfirmSubActivity;->mController:Lcom/android/vending/controller/Controller;

    .line 67
    return-void
.end method

.method protected abstract setupContentView()V
.end method
