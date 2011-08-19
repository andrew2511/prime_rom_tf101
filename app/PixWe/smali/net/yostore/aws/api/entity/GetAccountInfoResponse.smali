.class public Lnet/yostore/aws/api/entity/GetAccountInfoResponse;
.super Lnet/yostore/aws/api/entity/ApiResponse;
.source "GetAccountInfoResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GetAccountInfoResponse"


# instance fields
.field private account:Ljava/lang/String;

.field private activateddate:Ljava/lang/String;

.field private credential:Ljava/lang/String;

.field private credentialstate:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private freecapacity:J

.field private language:Ljava/lang/String;

.field private packageinfo:Lnet/yostore/aws/api/entity/PackageInfo;

.field private regyear:Ljava/lang/String;

.field private usedcapacity:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 5
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/ApiResponse;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->credential:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->credentialstate:Ljava/lang/String;

    .line 20
    iput-wide v1, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->usedcapacity:J

    .line 21
    iput-wide v1, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->freecapacity:J

    .line 5
    return-void
.end method

.method public static getTAG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "GetAccountInfoResponse"

    return-object v0
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getActivateddate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->activateddate:Ljava/lang/String;

    return-object v0
.end method

.method public getCredential()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->credential:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentialstate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->credentialstate:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFreecapacity()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->freecapacity:J

    return-wide v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageinfo()Lnet/yostore/aws/api/entity/PackageInfo;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->packageinfo:Lnet/yostore/aws/api/entity/PackageInfo;

    return-object v0
.end method

.method public getRegyear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->regyear:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedcapacity()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->usedcapacity:J

    return-wide v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 29
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->account:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setActivateddate(Ljava/lang/String;)V
    .locals 0
    .parameter "activateddate"

    .prologue
    .line 61
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->activateddate:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setCredential(Ljava/lang/String;)V
    .locals 0
    .parameter "credential"

    .prologue
    .line 69
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->credential:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setCredentialstate(Ljava/lang/String;)V
    .locals 0
    .parameter "credentialstate"

    .prologue
    .line 77
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->credentialstate:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 37
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->email:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setFreecapacity(J)V
    .locals 0
    .parameter "freecapacity"

    .prologue
    .line 93
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->freecapacity:J

    .line 94
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "language"

    .prologue
    .line 53
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->language:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setPackageinfo(Lnet/yostore/aws/api/entity/PackageInfo;)V
    .locals 0
    .parameter "packageinfo"

    .prologue
    .line 10
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->packageinfo:Lnet/yostore/aws/api/entity/PackageInfo;

    return-void
.end method

.method public setRegyear(Ljava/lang/String;)V
    .locals 0
    .parameter "regyear"

    .prologue
    .line 45
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->regyear:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setUsedcapacity(J)V
    .locals 0
    .parameter "usedcapacity"

    .prologue
    .line 85
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/GetAccountInfoResponse;->usedcapacity:J

    .line 86
    return-void
.end method
