.class public Lcom/google/android/gsf/login/NonGmailCreateActivity;
.super Lcom/google/android/gsf/login/SuggestUsernameActivity;
.source "NonGmailCreateActivity.java"


# instance fields
.field private LDEBUG:Z

.field private mAgreementTextView:Landroid/widget/TextView;

.field private mExternalUsername:Ljava/lang/String;

.field private mUsernameLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/login/NonGmailCreateActivity;->LDEBUG:Z

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f03001a

    return v0
.end method

.method protected initViews()V
    .locals 5

    .prologue
    .line 51
    invoke-super {p0}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->initViews()V

    .line 52
    sget-object v1, Lcom/google/android/gsf/login/NonGmailCreateActivity;->mUserData:Ljava/util/HashMap;

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->EXTERNAL_USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gsf/login/NonGmailCreateActivity;->mExternalUsername:Ljava/lang/String;

    .line 53
    const v1, 0x7f0c005e

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NonGmailCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/gsf/login/NonGmailCreateActivity;->mUsernameLabel:Landroid/widget/TextView;

    .line 54
    iget-object v1, p0, Lcom/google/android/gsf/login/NonGmailCreateActivity;->mExternalUsername:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gsf/login/NonGmailCreateActivity;->mUsernameLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 55
    const v1, 0x7f080076

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NonGmailCreateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gsf/login/NonGmailCreateActivity;->mExternalUsername:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 57
    .local v0, msg:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/google/android/gsf/login/NonGmailCreateActivity;->mUsernameLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .end local v0           #msg:Ljava/lang/CharSequence;
    :cond_0
    const v1, 0x7f0c0042

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/NonGmailCreateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/gsf/login/NonGmailCreateActivity;->mAgreementTextView:Landroid/widget/TextView;

    .line 60
    iget-object v1, p0, Lcom/google/android/gsf/login/NonGmailCreateActivity;->mAgreementTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 61
    const v1, 0x7f08005c

    invoke-static {p0, v1}, Lcom/google/android/gsf/login/BaseActivity$LinkSpan;->linkify(Lcom/google/android/gsf/login/BaseActivity;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 62
    .restart local v0       #msg:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/google/android/gsf/login/NonGmailCreateActivity;->mAgreementTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, p0, Lcom/google/android/gsf/login/NonGmailCreateActivity;->mAgreementTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 65
    .end local v0           #msg:Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/android/gsf/login/NonGmailCreateActivity;->LDEBUG:Z

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/google/android/gsf/login/NonGmailCreateActivity;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->EXTERNAL_USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    const-string v2, "joe@foo.com"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/google/android/gsf/login/NonGmailCreateActivity;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->SUGGESTIONS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "beagle@bark.com"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "sparky@bark.com"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/SuggestUsernameActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    return-void
.end method
