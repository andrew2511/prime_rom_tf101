.class public Lcom/google/android/gsf/login/ReactivateAccountActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "ReactivateAccountActivity.java"


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mMessageLabel:Landroid/widget/TextView;

.field private mNextButton:Landroid/view/View;

.field private mOldUsername:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 46
    const v1, 0x7f0c0066

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/ReactivateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/gsf/login/ReactivateAccountActivity;->mTitle:Landroid/widget/TextView;

    .line 47
    iget-object v1, p0, Lcom/google/android/gsf/login/ReactivateAccountActivity;->mTitle:Landroid/widget/TextView;

    const v2, 0x7f08000a

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/login/ReactivateAccountActivity;->getStringWithDeviceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v1, 0x7f0c0007

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/ReactivateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/ReactivateAccountActivity;->mNextButton:Landroid/view/View;

    .line 50
    iget-object v1, p0, Lcom/google/android/gsf/login/ReactivateAccountActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {p0, v1, v3}, Lcom/google/android/gsf/login/ReactivateAccountActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 52
    const v1, 0x7f0c000d

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/ReactivateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/login/ReactivateAccountActivity;->mBackButton:Landroid/view/View;

    .line 53
    iget-object v1, p0, Lcom/google/android/gsf/login/ReactivateAccountActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/ReactivateAccountActivity;->setBackButton(Landroid/view/View;)V

    .line 55
    const v1, 0x7f08009c

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/ReactivateAccountActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 56
    .local v0, msg:Ljava/lang/CharSequence;
    sget-object v1, Lcom/google/android/gsf/login/ReactivateAccountActivity;->mUserData:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->OLD_USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/login/ReactivateAccountActivity;->mOldUsername:Ljava/lang/String;

    .line 57
    new-array v1, v3, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gsf/login/ReactivateAccountActivity;->mOldUsername:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 58
    const v1, 0x7f0c0067

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/ReactivateAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/gsf/login/ReactivateAccountActivity;->mMessageLabel:Landroid/widget/TextView;

    .line 59
    iget-object v1, p0, Lcom/google/android/gsf/login/ReactivateAccountActivity;->mMessageLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ReactivateAccountActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ReactivateAccountActivity;->initViews()V

    .line 43
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->start()V

    .line 67
    sget-object v0, Lcom/google/android/gsf/login/ReactivateAccountActivity;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/login/ReactivateAccountActivity;->mOldUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/ReactivateAccountTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ReactivateAccountActivity;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method
