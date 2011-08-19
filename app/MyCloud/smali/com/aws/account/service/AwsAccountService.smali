.class public Lcom/aws/account/service/AwsAccountService;
.super Landroid/app/Service;
.source "AwsAccountService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aws/account/service/AwsAccountService$ReNewTask;
    }
.end annotation


# static fields
.field public static final AWS_ACCOUNT_SERVICE:Ljava/lang/String; = "com.asuswebstorage.account.service"

.field private static final NEED_LOGIN:[B = null

.field private static final RENEW_FAIL:[B = null

.field private static final TAG:Ljava/lang/String; = "AwsAccountService"

.field private static awsacc:Ljava/io/File; = null

.field public static final loginTAG:Ljava/lang/String; = "login"

.field public static final rnTAG:Ljava/lang/String; = "renewToken"


# instance fields
.field private ctx:Landroid/content/Context;

.field private final uBinder:Lcom/aws/account/service/AccountServiceInterface$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x63

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 30
    new-array v0, v2, [B

    aput-byte v3, v0, v1

    sput-object v0, Lcom/aws/account/service/AwsAccountService;->NEED_LOGIN:[B

    .line 31
    new-array v0, v2, [B

    aput-byte v3, v0, v1

    sput-object v0, Lcom/aws/account/service/AwsAccountService;->RENEW_FAIL:[B

    .line 35
    const/4 v0, 0x0

    sput-object v0, Lcom/aws/account/service/AwsAccountService;->awsacc:Ljava/io/File;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 76
    new-instance v0, Lcom/aws/account/service/AwsAccountService$1;

    invoke-direct {v0, p0}, Lcom/aws/account/service/AwsAccountService$1;-><init>(Lcom/aws/account/service/AwsAccountService;)V

    iput-object v0, p0, Lcom/aws/account/service/AwsAccountService;->uBinder:Lcom/aws/account/service/AccountServiceInterface$Stub;

    .line 25
    return-void
.end method

.method static synthetic access$0()Ljava/io/File;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/aws/account/service/AwsAccountService;->awsacc:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1(Lcom/aws/account/service/AwsAccountService;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/aws/account/service/AwsAccountService;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2()[B
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/aws/account/service/AwsAccountService;->NEED_LOGIN:[B

    return-object v0
.end method

.method static synthetic access$3(Lcom/aws/account/service/AwsAccountService;Ljava/lang/String;[B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/aws/account/service/AwsAccountService;->broadcastMsg(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$4()[B
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/aws/account/service/AwsAccountService;->RENEW_FAIL:[B

    return-object v0
.end method

.method private broadcastMsg(Ljava/lang/String;[B)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 66
    const-string v1, "AwsAccountService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "broadcastMsg: key= \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', value= \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 69
    const-string v2, "com.asuswebstorage.account.service"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 70
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    .line 72
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/aws/account/service/AwsAccountService;->sendBroadcast(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method private getApicfg()V
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/aws/account/service/AwsAccountService;->awsacc:Ljava/io/File;

    if-nez v0, :cond_0

    .line 48
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/io/File;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    const-string v2, "/asus/webstorage/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 52
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    const-string v2, "/asus/webstorage/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/account.info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/aws/account/service/AwsAccountService;->awsacc:Ljava/io/File;

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 41
    iput-object p0, p0, Lcom/aws/account/service/AwsAccountService;->ctx:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/aws/account/service/AwsAccountService;->getApicfg()V

    .line 43
    iget-object v0, p0, Lcom/aws/account/service/AwsAccountService;->uBinder:Lcom/aws/account/service/AccountServiceInterface$Stub;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 62
    invoke-virtual {p0}, Lcom/aws/account/service/AwsAccountService;->stopSelf()V

    .line 63
    return-void
.end method
