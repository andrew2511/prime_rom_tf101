.class public Lcom/android/browser/PageDialogsHandler;
.super Ljava/lang/Object;
.source "PageDialogsHandler.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/browser/Controller;

.field private mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

.field private mPageInfoDialog:Landroid/app/AlertDialog;

.field private mPageInfoFromShowSSLCertificateOnError:Z

.field private mPageInfoView:Lcom/android/browser/Tab;

.field private mSSLCertificateDialog:Landroid/app/AlertDialog;

.field private mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

.field private mSSLCertificateOnErrorError:Landroid/net/http/SslError;

.field private mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

.field private mSSLCertificateOnErrorView:Landroid/webkit/WebView;

.field private mSSLCertificateView:Lcom/android/browser/Tab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/Controller;)V
    .locals 0
    .parameter "context"
    .parameter "controller"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/browser/PageDialogsHandler;->mController:Lcom/android/browser/Controller;

    .line 64
    return-void
.end method

.method static synthetic access$002(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/HttpAuthenticationDialog;)Lcom/android/browser/HttpAuthenticationDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/browser/PageDialogsHandler;)Lcom/android/browser/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mController:Lcom/android/browser/Controller;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/browser/PageDialogsHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/browser/PageDialogsHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoView:Lcom/android/browser/Tab;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/browser/PageDialogsHandler;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/browser/PageDialogsHandler;)Landroid/webkit/SslErrorHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/SslErrorHandler;)Landroid/webkit/SslErrorHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/browser/PageDialogsHandler;)Landroid/net/http/SslError;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/browser/PageDialogsHandler;Landroid/net/http/SslError;)Landroid/net/http/SslError;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/browser/PageDialogsHandler;->showSSLCertificate(Lcom/android/browser/Tab;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/browser/PageDialogsHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateView:Lcom/android/browser/Tab;

    return-object p1
.end method

.method private formatCertificateDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "certificateDate"

    .prologue
    .line 442
    if-nez p1, :cond_0

    .line 443
    const-string v1, ""

    .line 450
    :goto_0
    return-object v1

    .line 445
    :cond_0
    iget-object v1, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, formattedDate:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 448
    const-string v1, ""

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 450
    goto :goto_0
.end method

.method private inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;
    .locals 8
    .parameter "certificate"

    .prologue
    const/4 v7, 0x0

    .line 390
    if-nez p1, :cond_0

    move-object v6, v7

    .line 433
    .end local p0
    :goto_0
    return-object v6

    .line 394
    .restart local p0
    :cond_0
    iget-object v6, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 396
    .local v2, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f040024

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 400
    .local v0, certificateView:Landroid/view/View;
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v5

    .line 401
    .local v5, issuedTo:Landroid/net/http/SslCertificate$DName;
    if-eqz v5, :cond_1

    .line 402
    const v6, 0x7f10005f

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    const v6, 0x7f100061

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    const v6, 0x7f100063

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    :cond_1
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    .line 412
    .local v3, issuedBy:Landroid/net/http/SslCertificate$DName;
    if-eqz v3, :cond_2

    .line 413
    const v6, 0x7f100065

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    const v6, 0x7f100067

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    const v6, 0x7f100069

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    :cond_2
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getValidNotBeforeDate()Ljava/util/Date;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/browser/PageDialogsHandler;->formatCertificateDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 424
    .local v4, issuedOn:Ljava/lang/String;
    const v6, 0x7f10006c

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getValidNotAfterDate()Ljava/util/Date;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/browser/PageDialogsHandler;->formatCertificateDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, expiresOn:Ljava/lang/String;
    const v6, 0x7f10006e

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v6, v0

    .line 433
    goto/16 :goto_0
.end method

.method private showSSLCertificate(Lcom/android/browser/Tab;)V
    .locals 7
    .parameter "tab"

    .prologue
    .line 237
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/browser/PageDialogsHandler;->inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;

    move-result-object v0

    .line 239
    .local v0, certificateView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v4, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 245
    .local v1, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f10005b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 248
    .local v3, placeholder:Landroid/widget/LinearLayout;
    const v4, 0x7f040025

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 250
    .local v2, ll:Landroid/widget/LinearLayout;
    const v4, 0x7f10006f

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09002a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 253
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateView:Lcom/android/browser/Tab;

    .line 254
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090029

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f020034

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09001b

    new-instance v6, Lcom/android/browser/PageDialogsHandler$7;

    invoke-direct {v6, p0, p1}, Lcom/android/browser/PageDialogsHandler$7;-><init>(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/Tab;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/browser/PageDialogsHandler$6;

    invoke-direct {v5, p0, p1}, Lcom/android/browser/PageDialogsHandler$6;-><init>(Lcom/android/browser/PageDialogsHandler;Lcom/android/browser/Tab;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "config"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 69
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoView:Lcom/android/browser/Tab;

    iget-boolean v1, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoFromShowSSLCertificateOnError:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/PageDialogsHandler;->showPageInfo(Lcom/android/browser/Tab;Z)V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 73
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateView:Lcom/android/browser/Tab;

    invoke-direct {p0, v0}, Lcom/android/browser/PageDialogsHandler;->showSSLCertificate(Lcom/android/browser/Tab;)V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 77
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    iget-object v2, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/browser/PageDialogsHandler;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    invoke-virtual {v0}, Lcom/android/browser/HttpAuthenticationDialog;->reshow()V

    .line 83
    :cond_3
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/browser/PageDialogsHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v1}, Lcom/android/browser/Controller;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 120
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method showHttpAuthentication(Lcom/android/browser/Tab;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tab"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 89
    new-instance v0, Lcom/android/browser/HttpAuthenticationDialog;

    iget-object v1, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p4}, Lcom/android/browser/HttpAuthenticationDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    .line 90
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    new-instance v1, Lcom/android/browser/PageDialogsHandler$1;

    invoke-direct {v1, p0, p2}, Lcom/android/browser/PageDialogsHandler$1;-><init>(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/HttpAuthenticationDialog;->setOkListener(Lcom/android/browser/HttpAuthenticationDialog$OkListener;)V

    .line 97
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    new-instance v1, Lcom/android/browser/PageDialogsHandler$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/browser/PageDialogsHandler$2;-><init>(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/HttpAuthHandler;Lcom/android/browser/Tab;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/HttpAuthenticationDialog;->setCancelListener(Lcom/android/browser/HttpAuthenticationDialog$CancelListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/browser/PageDialogsHandler;->mHttpAuthenticationDialog:Lcom/android/browser/HttpAuthenticationDialog;

    invoke-virtual {v0}, Lcom/android/browser/HttpAuthenticationDialog;->show()V

    .line 105
    return-void
.end method

.method showPageInfo(Lcom/android/browser/Tab;Z)V
    .locals 9
    .parameter "tab"
    .parameter "fromShowSSLCertificateOnError"

    .prologue
    .line 135
    iget-object v6, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 137
    .local v1, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f04001c

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 139
    .local v2, pageInfoView:Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    .line 141
    .local v5, view:Landroid/webkit/WebView;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, url:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, title:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 145
    const-string v4, ""

    .line 147
    :cond_0
    if-nez v3, :cond_1

    .line 148
    const-string v3, ""

    .line 151
    :cond_1
    const v6, 0x7f10002d

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const v6, 0x7f100002

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoView:Lcom/android/browser/Tab;

    .line 155
    iput-boolean p2, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoFromShowSSLCertificateOnError:Z

    .line 157
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f09001d

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x108009b

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f09001b

    new-instance v8, Lcom/android/browser/PageDialogsHandler$4;

    invoke-direct {v8, p0, p2}, Lcom/android/browser/PageDialogsHandler$4;-><init>(Lcom/android/browser/PageDialogsHandler;Z)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/browser/PageDialogsHandler$3;

    invoke-direct {v7, p0, p2}, Lcom/android/browser/PageDialogsHandler$3;-><init>(Lcom/android/browser/PageDialogsHandler;Z)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 199
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    if-nez p2, :cond_2

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 202
    :cond_2
    const v6, 0x7f090023

    new-instance v7, Lcom/android/browser/PageDialogsHandler$5;

    invoke-direct {v7, p0, p2, v5, p1}, Lcom/android/browser/PageDialogsHandler$5;-><init>(Lcom/android/browser/PageDialogsHandler;ZLandroid/webkit/WebView;Lcom/android/browser/Tab;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 228
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/PageDialogsHandler;->mPageInfoDialog:Landroid/app/AlertDialog;

    .line 229
    return-void
.end method

.method showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 8
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    const v7, 0x7f100070

    const v6, 0x7f040026

    .line 292
    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/browser/PageDialogsHandler;->inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;

    move-result-object v0

    .line 294
    .local v0, certificateView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v4, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 300
    .local v1, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f10005b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 303
    .local v3, placeholder:Landroid/widget/LinearLayout;
    const/4 v4, 0x3

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 304
    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 306
    .local v2, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090025

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 310
    .end local v2           #ll:Landroid/widget/LinearLayout;
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 311
    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 313
    .restart local v2       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090026

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 317
    .end local v2           #ll:Landroid/widget/LinearLayout;
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 318
    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 320
    .restart local v2       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090027

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 324
    .end local v2           #ll:Landroid/widget/LinearLayout;
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 325
    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 327
    .restart local v2       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090028

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 331
    .end local v2           #ll:Landroid/widget/LinearLayout;
    :cond_4
    iput-object p2, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    .line 332
    iput-object p1, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    .line 333
    iput-object p3, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    .line 334
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/browser/PageDialogsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090029

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f020033

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09001b

    new-instance v6, Lcom/android/browser/PageDialogsHandler$10;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/browser/PageDialogsHandler$10;-><init>(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09001e

    new-instance v6, Lcom/android/browser/PageDialogsHandler$9;

    invoke-direct {v6, p0, p1}, Lcom/android/browser/PageDialogsHandler$9;-><init>(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/WebView;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/browser/PageDialogsHandler$8;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/android/browser/PageDialogsHandler$8;-><init>(Lcom/android/browser/PageDialogsHandler;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/PageDialogsHandler;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method
