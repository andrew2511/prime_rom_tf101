.class public Lcom/android/certinstaller/CertInstaller;
.super Landroid/app/Activity;
.source "CertInstaller.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/certinstaller/CertInstaller$OnExtractionDoneAction;,
        Lcom/android/certinstaller/CertInstaller$InstallOthersAction;,
        Lcom/android/certinstaller/CertInstaller$Pkcs12ExtractAction;,
        Lcom/android/certinstaller/CertInstaller$MyAction;,
        Lcom/android/certinstaller/CertInstaller$MyMap;
    }
.end annotation


# static fields
.field private static final PKEY_MAP_KEY:[B


# instance fields
.field private mButtonClicked:I

.field private mCredentials:Lcom/android/certinstaller/CredentialHelper;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

.field private mState:I

.field private mView:Lcom/android/certinstaller/ViewHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "PKEY_MAP"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/certinstaller/CertInstaller;->PKEY_MAP_KEY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mKeyStore:Landroid/security/KeyStore;

    .line 63
    new-instance v0, Lcom/android/certinstaller/ViewHelper;

    invoke-direct {v0}, Lcom/android/certinstaller/ViewHelper;-><init>()V

    iput-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    .line 432
    return-void
.end method

.method static synthetic access$200(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/CredentialHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/certinstaller/CertInstaller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/CertInstaller$MyAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/certinstaller/CertInstaller;Lcom/android/certinstaller/CertInstaller$MyAction;)Lcom/android/certinstaller/CertInstaller$MyAction;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/certinstaller/CertInstaller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/android/certinstaller/CertInstaller;->mButtonClicked:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/certinstaller/CertInstaller;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/certinstaller/CertInstaller;)Lcom/android/certinstaller/ViewHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    return-object v0
.end method

.method private createCredentialHelper(Landroid/content/Intent;)Lcom/android/certinstaller/CredentialHelper;
    .locals 3
    .parameter "intent"

    .prologue
    .line 72
    :try_start_0
    new-instance v1, Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/certinstaller/CredentialHelper;-><init>(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-object v1

    .line 73
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 74
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "CertInstaller"

    const-string v2, "createCredentialHelper"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    const v1, 0x7f040019

    invoke-direct {p0, v1}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    .line 76
    new-instance v1, Lcom/android/certinstaller/CredentialHelper;

    invoke-direct {v1}, Lcom/android/certinstaller/CredentialHelper;-><init>()V

    goto :goto_0
.end method

.method private createNameCredentialDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 331
    const/high16 v3, 0x7f02

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 332
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    invoke-virtual {v3, v2}, Lcom/android/certinstaller/ViewHelper;->setView(Landroid/view/View;)V

    .line 334
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const v4, 0x7f080002

    iget-object v5, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v5, p0}, Lcom/android/certinstaller/CredentialHelper;->getDescription(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/certinstaller/ViewHelper;->setText(ILjava/lang/String;)V

    .line 337
    new-instance v1, Lcom/android/certinstaller/CertInstaller$3;

    invoke-direct {v1, p0}, Lcom/android/certinstaller/CertInstaller$3;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    .line 366
    .local v1, onDismissHandler:Landroid/content/DialogInterface$OnDismissListener;
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const v4, 0x7f080001

    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->getDefaultName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/certinstaller/ViewHelper;->setText(ILjava/lang/String;)V

    .line 367
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f040008

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 373
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 374
    return-object v0
.end method

.method private createPkcs12PasswordDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 293
    const v4, 0x7f020001

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 294
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    invoke-virtual {v4, v3}, Lcom/android/certinstaller/ViewHelper;->setView(Landroid/view/View;)V

    .line 296
    new-instance v1, Lcom/android/certinstaller/CertInstaller$2;

    invoke-direct {v1, p0}, Lcom/android/certinstaller/CertInstaller$2;-><init>(Lcom/android/certinstaller/CertInstaller;)V

    .line 316
    .local v1, onDismissHandler:Landroid/content/DialogInterface$OnDismissListener;
    iget-object v4, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v4}, Lcom/android/certinstaller/CredentialHelper;->getName()Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, title:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f040005

    invoke-virtual {p0, v4}, Lcom/android/certinstaller/CertInstaller;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 320
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 326
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 327
    return-object v0

    .line 317
    .end local v0           #d:Landroid/app/Dialog;
    :cond_0
    const v4, 0x7f040007

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/certinstaller/CertInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    goto :goto_0
.end method

.method private getDefaultName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 378
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v2}, Lcom/android/certinstaller/CredentialHelper;->getName()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    const/4 v2, 0x0

    .line 385
    :goto_0
    return-object v2

    .line 383
    :cond_0
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 384
    .local v0, index:I
    if-lez v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 385
    goto :goto_0
.end method

.method private getPkeyMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 243
    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mKeyStore:Landroid/security/KeyStore;

    sget-object v3, Lcom/android/certinstaller/CertInstaller;->PKEY_MAP_KEY:[B

    invoke-virtual {v2, v3}, Landroid/security/KeyStore;->get([B)[B

    move-result-object v0

    .line 244
    .local v0, bytes:[B
    if-eqz v0, :cond_0

    .line 245
    invoke-static {v0}, Lcom/android/certinstaller/Util;->fromBytes([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 247
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 249
    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/android/certinstaller/CertInstaller$MyMap;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/certinstaller/CertInstaller$MyMap;-><init>(Lcom/android/certinstaller/CertInstaller$1;)V

    goto :goto_0
.end method

.method private nameCredential()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0}, Lcom/android/certinstaller/CredentialHelper;->hasAnyForSystemInstall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    const v0, 0x7f040018

    invoke-direct {p0, v0}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertInstaller;->showDialog(I)V

    goto :goto_0
.end method

.method private needsKeyStoreAccess()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 122
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0}, Lcom/android/certinstaller/CredentialHelper;->hasWapiAsCertificate()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0}, Lcom/android/certinstaller/CredentialHelper;->hasWapiUserCertificate()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0}, Lcom/android/certinstaller/CredentialHelper;->hasKeyPair()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0}, Lcom/android/certinstaller/CredentialHelper;->hasUserCertificate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->test()I

    move-result v0

    if-eq v0, v1, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveKeyPair()V
    .locals 6

    .prologue
    .line 227
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    const-string v4, "PKEY"

    invoke-virtual {v3, v4}, Lcom/android/certinstaller/CredentialHelper;->getData(Ljava/lang/String;)[B

    move-result-object v2

    .line 228
    .local v2, privatekey:[B
    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    const-string v4, "KEY"

    invoke-virtual {v3, v4}, Lcom/android/certinstaller/CredentialHelper;->getData(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/certinstaller/Util;->toMd5([B)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, key:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->getPkeyMap()Ljava/util/Map;

    move-result-object v1

    .line 230
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-direct {p0, v1}, Lcom/android/certinstaller/CertInstaller;->savePkeyMap(Ljava/util/Map;)V

    .line 232
    const-string v3, "CertInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "save privatekey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " --> #keys:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method private savePkeyMap(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    check-cast p1, Ljava/io/Serializable;

    .end local p1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-static {p1}, Lcom/android/certinstaller/Util;->toBytes(Ljava/lang/Object;)[B

    move-result-object v0

    .line 237
    .local v0, bytes:[B
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mKeyStore:Landroid/security/KeyStore;

    sget-object v2, Lcom/android/certinstaller/CertInstaller;->PKEY_MAP_KEY:[B

    invoke-virtual {v1, v2, v0}, Landroid/security/KeyStore;->put([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    const-string v1, "CertInstaller"

    const-string v2, "savePkeyMap(): failed to write pkey map"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    return-void
.end method

.method private sendUnlockKeyStoreIntent()V
    .locals 1

    .prologue
    .line 215
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 216
    return-void
.end method

.method private toastErrorAndFinish(I)V
    .locals 1
    .parameter "msgId"

    .prologue
    .line 390
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 391
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstaller;->finish()V

    .line 392
    return-void
.end method


# virtual methods
.method extractPkcs12InBackground(Ljava/lang/String;)V
    .locals 2
    .parameter "password"

    .prologue
    .line 254
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertInstaller;->showDialog(I)V

    .line 256
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/certinstaller/CertInstaller$1;

    invoke-direct {v1, p0, p1}, Lcom/android/certinstaller/CertInstaller$1;-><init>(Lcom/android/certinstaller/CertInstaller;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 273
    return-void
.end method

.method installOthers()V
    .locals 7

    .prologue
    .line 190
    iget-object v4, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v4}, Lcom/android/certinstaller/CredentialHelper;->hasKeyPair()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->saveKeyPair()V

    .line 192
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstaller;->finish()V

    .line 212
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v4, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v4}, Lcom/android/certinstaller/CredentialHelper;->getUserCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 195
    .local v0, cert:Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_1

    .line 197
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lcom/android/certinstaller/Util;->toMd5([B)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, key:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->getPkeyMap()Ljava/util/Map;

    move-result-object v2

    .line 199
    .local v2, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 200
    .local v3, privatekey:[B
    if-eqz v3, :cond_2

    .line 201
    const-string v4, "CertInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found matched key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-direct {p0, v2}, Lcom/android/certinstaller/CertInstaller;->savePkeyMap(Ljava/util/Map;)V

    .line 205
    iget-object v4, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v4, v3}, Lcom/android/certinstaller/CredentialHelper;->setPrivateKey([B)V

    .line 210
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    .end local v3           #privatekey:[B
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->nameCredential()V

    goto :goto_0

    .line 207
    .restart local v1       #key:Ljava/lang/String;
    .restart local v2       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    .restart local v3       #privatekey:[B
    :cond_2
    const-string v4, "CertInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "didn\'t find matched private key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 173
    if-ne p1, v4, :cond_1

    .line 174
    if-ne p2, v5, :cond_0

    .line 175
    const-string v0, "CertInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "credential is added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v2}, Lcom/android/certinstaller/CredentialHelper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const v0, 0x7f04001a

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v3}, Lcom/android/certinstaller/CredentialHelper;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/certinstaller/CertInstaller;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 178
    invoke-virtual {p0, v5}, Lcom/android/certinstaller/CertInstaller;->setResult(I)V

    .line 186
    :goto_0
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstaller;->finish()V

    .line 187
    return-void

    .line 180
    :cond_0
    const-string v0, "CertInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "credential not saved, err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const v0, 0x7f040017

    invoke-direct {p0, v0}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    goto :goto_0

    .line 184
    :cond_1
    const-string v0, "CertInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 289
    iput p2, p0, Lcom/android/certinstaller/CertInstaller;->mButtonClicked:I

    .line 290
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedStates"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstaller;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/certinstaller/CertInstaller;->createCredentialHelper(Landroid/content/Intent;)Lcom/android/certinstaller/CredentialHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    .line 86
    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    .line 88
    iget v1, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    if-ne v1, v2, :cond_4

    .line 89
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v1}, Lcom/android/certinstaller/CredentialHelper;->containsAnyRawData()Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    const v1, 0x7f040018

    invoke-direct {p0, v1}, Lcom/android/certinstaller/CertInstaller;->toastErrorAndFinish(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/certinstaller/CertInstaller;->finish()V

    .line 108
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 86
    goto :goto_0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v1}, Lcom/android/certinstaller/CredentialHelper;->hasPkcs12KeyStore()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    invoke-virtual {p0, v3}, Lcom/android/certinstaller/CertInstaller;->showDialog(I)V

    goto :goto_1

    .line 95
    :cond_2
    new-instance v0, Lcom/android/certinstaller/CertInstaller$InstallOthersAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/certinstaller/CertInstaller$InstallOthersAction;-><init>(Lcom/android/certinstaller/CertInstaller$1;)V

    .line 96
    .local v0, action:Lcom/android/certinstaller/CertInstaller$MyAction;
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->needsKeyStoreAccess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->sendUnlockKeyStoreIntent()V

    .line 98
    iput-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    goto :goto_1

    .line 100
    :cond_3
    invoke-interface {v0, p0}, Lcom/android/certinstaller/CertInstaller$MyAction;->run(Lcom/android/certinstaller/CertInstaller;)V

    goto :goto_1

    .line 104
    .end local v0           #action:Lcom/android/certinstaller/CertInstaller$MyAction;
    :cond_4
    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v1, p1}, Lcom/android/certinstaller/CredentialHelper;->onRestoreStates(Landroid/os/Bundle;)V

    .line 105
    const-string v1, "na"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/android/certinstaller/CertInstaller$MyAction;

    iput-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "dialogId"

    .prologue
    .line 145
    packed-switch p1, :pswitch_data_0

    .line 160
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 147
    :pswitch_0
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->createPkcs12PasswordDialog()Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 150
    :pswitch_1
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->createNameCredentialDialog()Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0

    .line 153
    :pswitch_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f040006

    invoke-virtual {p0, v1}, Lcom/android/certinstaller/CertInstaller;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 155
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 156
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    move-object v1, v0

    .line 157
    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method onExtractionDone(Z)V
    .locals 4
    .parameter "success"

    .prologue
    const/4 v3, 0x2

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    .line 277
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/certinstaller/CertInstaller;->removeDialog(I)V

    .line 278
    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p0, v3}, Lcom/android/certinstaller/CertInstaller;->removeDialog(I)V

    .line 280
    invoke-direct {p0}, Lcom/android/certinstaller/CertInstaller;->nameCredential()V

    .line 286
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const v1, 0x7f080003

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/certinstaller/ViewHelper;->setText(ILjava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mView:Lcom/android/certinstaller/ViewHelper;

    const v1, 0x7f040011

    invoke-virtual {v0, v1}, Lcom/android/certinstaller/ViewHelper;->showError(I)V

    .line 284
    invoke-virtual {p0, v3}, Lcom/android/certinstaller/CertInstaller;->showDialog(I)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 131
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    .line 132
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "dialogId"
    .parameter "dialog"

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 167
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/certinstaller/CertInstaller;->mButtonClicked:I

    .line 168
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 114
    iget v0, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 115
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/certinstaller/CertInstaller;->mState:I

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    invoke-interface {v0, p0}, Lcom/android/certinstaller/CertInstaller$MyAction;->run(Lcom/android/certinstaller/CertInstaller;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outStates"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 137
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mCredentials:Lcom/android/certinstaller/CredentialHelper;

    invoke-virtual {v0, p1}, Lcom/android/certinstaller/CredentialHelper;->onSaveStates(Landroid/os/Bundle;)V

    .line 138
    iget-object v0, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "na"

    iget-object v1, p0, Lcom/android/certinstaller/CertInstaller;->mNextAction:Lcom/android/certinstaller/CertInstaller$MyAction;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 141
    :cond_0
    return-void
.end method
