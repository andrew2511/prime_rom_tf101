.class public Lcom/google/android/gsf/login/TermsOfServiceActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "TermsOfServiceActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/TermsOfServiceActivity$1;,
        Lcom/google/android/gsf/login/TermsOfServiceActivity$DownloadTosTask;,
        Lcom/google/android/gsf/login/TermsOfServiceActivity$Tos;
    }
.end annotation


# static fields
.field private static final sLOCK:Ljava/lang/Object;


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mHelper:Lcom/google/android/common/GoogleWebContentHelper;

.field private mHttpHelper:Lcom/google/android/gsf/login/HttpHelper;

.field private mNextButton:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->sLOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 101
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/login/TermsOfServiceActivity;)Lcom/google/android/gsf/login/HttpHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mHttpHelper:Lcom/google/android/gsf/login/HttpHelper;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->sLOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/login/TermsOfServiceActivity;)Lcom/google/android/common/GoogleWebContentHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    return-object v0
.end method


# virtual methods
.method protected initViews()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, -0x1

    .line 63
    const v4, 0x7f0c0007

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mNextButton:Landroid/view/View;

    .line 64
    iget-object v4, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mNextButton:Landroid/view/View;

    invoke-virtual {p0, v4, v7}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 66
    const v4, 0x7f0c000d

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mBackButton:Landroid/view/View;

    .line 67
    iget-object v4, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mBackButton:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->setBackButton(Landroid/view/View;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 70
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v4, Lcom/google/android/common/GoogleWebContentHelper;

    invoke-direct {v4, p0}, Lcom/google/android/common/GoogleWebContentHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    .line 72
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gsf/login/HttpHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/gsf/login/HttpHelper;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mHttpHelper:Lcom/google/android/gsf/login/HttpHelper;
    :try_end_0
    .catch Lcom/google/android/gsf/login/HttpHelperException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    sget-object v3, Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;->GOOGLE_TERMS_OF_SERVICE:Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;

    .line 79
    .local v3, policy:Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;
    const-string v4, "GoogleLoginService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ToS URL is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v1, p0}, Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;->getSecureUrl(Landroid/content/ContentResolver;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v4, Lcom/google/android/gsf/login/TermsOfServiceActivity$DownloadTosTask;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/google/android/gsf/login/TermsOfServiceActivity$DownloadTosTask;-><init>(Lcom/google/android/gsf/login/TermsOfServiceActivity;Lcom/google/android/gsf/login/TermsOfServiceActivity$1;)V

    new-array v5, v7, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v1, p0}, Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;->getSecureUrl(Landroid/content/ContentResolver;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/google/android/gsf/login/TermsOfServiceActivity$DownloadTosTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 83
    const v4, 0x7f0c0016

    invoke-virtual {p0, v4}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 84
    .local v0, container:Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mHelper:Lcom/google/android/common/GoogleWebContentHelper;

    invoke-virtual {v4}, Lcom/google/android/common/GoogleWebContentHelper;->getLayout()Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 86
    return-void

    .line 73
    .end local v0           #container:Landroid/widget/LinearLayout;
    .end local v3           #policy:Lcom/google/android/gsf/login/BaseActivity$AndroidPolicy;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 74
    .local v2, e:Lcom/google/android/gsf/login/HttpHelperException;
    const-string v4, "GoogleLoginService"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->setContentView(I)V

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->initViews()V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->updateWidgetState()V

    .line 60
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->start()V

    .line 93
    sget-object v0, Lcom/google/android/gsf/login/TermsOfServiceActivity;->mUserData:Ljava/util/HashMap;

    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GoogleLoginService"

    const-string v1, "username empty in TermsOfServiceActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/login/CreateAccountTask;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gsf/login/TermsOfServiceActivity;->finish()V

    .line 99
    return-void
.end method
