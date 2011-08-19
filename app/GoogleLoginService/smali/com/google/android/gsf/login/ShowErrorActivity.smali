.class public final Lcom/google/android/gsf/login/ShowErrorActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "ShowErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBack:Landroid/widget/Button;

.field private mExplanation:Landroid/widget/TextView;

.field private mNewIntent:Landroid/content/Intent;

.field private mSetupWifi:Landroid/widget/Button;

.field private mSubmissionTitle:Landroid/widget/TextView;

.field private mTryAgain:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "intentToRun"

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/android/gsf/login/ShowErrorActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    const-class v1, Lcom/google/android/gsf/login/ShowErrorActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 130
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v1, "intent"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 133
    const-string v1, "wifi"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mTryAgain:Landroid/widget/Button;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mBack:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 101
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ShowErrorActivity;->setResult(I)V

    .line 102
    iget-object v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mNewIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mNewIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ShowErrorActivity;->startActivity(Landroid/content/Intent;)V

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->finish()V

    .line 111
    :cond_2
    :goto_0
    return-void

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSetupWifi:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/SetupWirelessActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/ShowErrorActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 50
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v4, 0x7f030020

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/ShowErrorActivity;->setContentView(I)V

    .line 52
    const v4, 0x7f0c006a

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/ShowErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSubmissionTitle:Landroid/widget/TextView;

    .line 53
    const v4, 0x7f0c006b

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/ShowErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    .line 54
    const v4, 0x7f0c006c

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/ShowErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mTryAgain:Landroid/widget/Button;

    .line 55
    iget-object v4, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mTryAgain:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v4, 0x7f0c000d

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/ShowErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mBack:Landroid/widget/Button;

    .line 57
    iget-object v4, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mBack:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v4, 0x7f0c0069

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/ShowErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSetupWifi:Landroid/widget/Button;

    .line 59
    iget-object v4, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSetupWifi:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 62
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "wifi"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    iget-object v4, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSetupWifi:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 66
    :cond_0
    const-string v4, "title"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, title:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->isXLargeScreen()Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f08008e

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/ShowErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 72
    iget-object v4, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSubmissionTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/ShowErrorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 81
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 82
    const v4, 0x7f0800b8

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 85
    :cond_2
    const-string v4, "message"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, explanation:Ljava/lang/String;
    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mExplanation:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_3
    const-string v4, "intent"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    check-cast v4, Landroid/content/Intent;

    iput-object v4, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mNewIntent:Landroid/content/Intent;

    .line 89
    iget-object v4, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mNewIntent:Landroid/content/Intent;

    if-eqz v4, :cond_5

    .line 90
    iget-object v4, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mBack:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    iget-object v4, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mTryAgain:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    :goto_1
    return-void

    .line 74
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #explanation:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSubmissionTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v4, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mSubmissionTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 93
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    .restart local v1       #explanation:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mBack:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 94
    iget-object v4, p0, Lcom/google/android/gsf/login/ShowErrorActivity;->mTryAgain:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method
