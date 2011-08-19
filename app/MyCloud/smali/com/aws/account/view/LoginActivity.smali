.class public Lcom/aws/account/view/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aws/account/view/LoginActivity$LoginTask;
    }
.end annotation


# static fields
.field private static final ACCINFO:Ljava/lang/String; = "AccountInfo"

.field protected static final TAG:Ljava/lang/String; = "LoginActivity"

.field private static awsacc:Ljava/io/File;


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field err:Landroid/widget/TextView;

.field mLoginButton:Landroid/widget/Button;

.field mPassword:Landroid/widget/EditText;

.field mUsername:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/aws/account/view/LoginActivity;->awsacc:Ljava/io/File;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/aws/account/view/LoginActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 43
    iput-object v0, p0, Lcom/aws/account/view/LoginActivity;->err:Landroid/widget/TextView;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/aws/account/view/LoginActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/aws/account/view/LoginActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$1()Ljava/io/File;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/aws/account/view/LoginActivity;->awsacc:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2(Lcom/aws/account/view/LoginActivity;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/aws/account/view/LoginActivity;->broadcastAccInfo([B)V

    return-void
.end method

.method private broadcastAccInfo([B)V
    .locals 3
    .parameter "accinfo"

    .prologue
    .line 214
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 215
    const-string v2, "com.asus.webstorage.id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 216
    const-string v2, "AccountInfo"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    .line 218
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/aws/account/view/LoginActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method private getApicfgFile()V
    .locals 3

    .prologue
    .line 111
    sget-object v0, Lcom/aws/account/view/LoginActivity;->awsacc:Ljava/io/File;

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/io/File;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    const-string v2, "/asus/webstorage/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 116
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    const-string v2, "/asus/webstorage/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/account.info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/aws/account/view/LoginActivity;->awsacc:Ljava/io/File;

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method public doCancel(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/aws/account/view/LoginActivity;->setResult(I)V

    .line 125
    invoke-virtual {p0}, Lcom/aws/account/view/LoginActivity;->finish()V

    .line 126
    return-void
.end method

.method public goRegist(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aws/account/view/LoginActivity;->setResult(I)V

    .line 129
    invoke-virtual {p0}, Lcom/aws/account/view/LoginActivity;->finish()V

    .line 130
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 106
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance v2, Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v2}, Lnet/yostore/aws/api/ApiConfig;-><init>()V

    iput-object v2, p0, Lcom/aws/account/view/LoginActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 51
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/aws/account/view/LoginActivity;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/aws/account/view/LoginActivity;->getApicfgFile()V

    .line 55
    const v2, 0x7f04000e

    invoke-virtual {p0, v2}, Lcom/aws/account/view/LoginActivity;->setTitle(I)V

    .line 56
    const v2, 0x7f060005

    invoke-virtual {p0, v2}, Lcom/aws/account/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/aws/account/view/LoginActivity;->err:Landroid/widget/TextView;

    .line 58
    const v2, 0x7f060003

    invoke-virtual {p0, v2}, Lcom/aws/account/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    .local v0, tv:Landroid/widget/TextView;
    const-string v2, "<u><font color=\"#7070ff\">Create an account now</font></u>"

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 61
    new-instance v2, Lcom/aws/account/view/LoginActivity$1;

    invoke-direct {v2, p0}, Lcom/aws/account/view/LoginActivity$1;-><init>(Lcom/aws/account/view/LoginActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v2, 0x7f060004

    invoke-virtual {p0, v2}, Lcom/aws/account/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 77
    .local v1, tv2:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<a href=\"http://service.asuswebstorage.com/member/forgetpass/\">"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v3, 0x7f04000b

    invoke-virtual {p0, v3}, Lcom/aws/account/view/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</a>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 80
    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/aws/account/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/aws/account/view/LoginActivity;->mUsername:Landroid/widget/EditText;

    .line 81
    const v2, 0x7f060002

    invoke-virtual {p0, v2}, Lcom/aws/account/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/aws/account/view/LoginActivity;->mPassword:Landroid/widget/EditText;

    .line 83
    const v2, 0x7f060006

    invoke-virtual {p0, v2}, Lcom/aws/account/view/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/aws/account/view/LoginActivity;->mLoginButton:Landroid/widget/Button;

    .line 84
    iget-object v2, p0, Lcom/aws/account/view/LoginActivity;->mLoginButton:Landroid/widget/Button;

    new-instance v3, Lcom/aws/account/view/LoginActivity$2;

    invoke-direct {v3, p0}, Lcom/aws/account/view/LoginActivity$2;-><init>(Lcom/aws/account/view/LoginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method
