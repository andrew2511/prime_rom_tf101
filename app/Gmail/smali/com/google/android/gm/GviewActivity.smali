.class public Lcom/google/android/gm/GviewActivity;
.super Lcom/google/android/gm/GmailBaseActivity;
.source "GviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/GviewActivity$GviewAsyncTask;
    }
.end annotation


# instance fields
.field private mGviewAsyncTask:Lcom/google/android/gm/GviewActivity$GviewAsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/gm/GmailBaseActivity;-><init>()V

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/GviewActivity;)Lcom/google/android/gm/GviewActivity$GviewAsyncTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity;->mGviewAsyncTask:Lcom/google/android/gm/GviewActivity$GviewAsyncTask;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0, v13}, Lcom/google/android/gm/GviewActivity;->requestWindowFeature(I)Z

    .line 84
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/google/android/gm/GviewActivity;->setContentView(I)V

    .line 85
    const v0, 0x7f0e0051

    invoke-virtual {p0, v0}, Lcom/google/android/gm/GviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    .line 86
    .local v4, webView:Landroid/webkit/WebView;
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v11

    .line 87
    .local v11, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v11, v12}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 88
    invoke-virtual {v11, v12}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 89
    invoke-virtual {v11, v13}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 90
    invoke-virtual {v11, v13}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 91
    invoke-virtual {v11, v12}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 92
    invoke-virtual {v4, v12}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 96
    new-instance v0, Lcom/google/android/gm/GviewActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/GviewActivity$1;-><init>(Lcom/google/android/gm/GviewActivity;)V

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gm/GviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 105
    .local v7, extras:Landroid/os/Bundle;
    const-string v0, "account"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, account:Ljava/lang/String;
    const-string v0, "threadId"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    .line 107
    .local v10, threadId:Ljava/lang/String;
    const-string v0, "attId"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 108
    .local v6, attachmentId:Ljava/lang/String;
    const-string v0, "mimeType"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 110
    .local v8, mimeType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/gm/GviewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_gview_url"

    const-string v2, "https://docs.google.com/viewer?embedded=true&a=v&pid=gmail&user=%s&thid=%s&attid=%s&mt=%s"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 112
    .local v9, pattern:Ljava/lang/String;
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v12

    aput-object v10, v0, v13

    const/4 v1, 0x2

    aput-object v6, v0, v1

    const/4 v1, 0x3

    aput-object v8, v0, v1

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, url:Ljava/lang/String;
    invoke-virtual {p0, v13}, Lcom/google/android/gm/GviewActivity;->showDialog(I)V

    .line 118
    new-instance v0, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;-><init>(Lcom/google/android/gm/GviewActivity;Landroid/app/Activity;Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/GviewActivity;->mGviewAsyncTask:Lcom/google/android/gm/GviewActivity$GviewAsyncTask;

    .line 119
    iget-object v0, p0, Lcom/google/android/gm/GviewActivity;->mGviewAsyncTask:Lcom/google/android/gm/GviewActivity$GviewAsyncTask;

    new-array v1, v12, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/GviewActivity$GviewAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    .line 124
    if-ne p1, v3, :cond_0

    .line 126
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0d00e6

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gm/GviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 130
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 131
    new-instance v1, Lcom/google/android/gm/GviewActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/gm/GviewActivity$2;-><init>(Lcom/google/android/gm/GviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v1, v0

    .line 144
    .end local v0           #progressDialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v1

    .line 142
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 144
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0023

    new-instance v3, Lcom/google/android/gm/GviewActivity$3;

    invoke-direct {v3, p0}, Lcom/google/android/gm/GviewActivity$3;-><init>(Lcom/google/android/gm/GviewActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gm/GviewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 153
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid dialog ID in GviewActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
