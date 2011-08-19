.class public Lnet/yostore/aws/sqlite/entity/AccInfo;
.super Ljava/lang/Object;
.source "AccInfo.java"


# instance fields
.field public albums_meta_folder_id:J

.field private capacity:Ljava/lang/String;

.field public encryptPwd:Ljava/lang/String;

.field private expireDate:Ljava/lang/String;

.field public pixwe_folder_id:J

.field public pwd:Ljava/lang/String;

.field public sgw:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field private usedquota:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x3e7

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->sgw:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->encryptPwd:Ljava/lang/String;

    .line 9
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->capacity:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->expireDate:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->usedquota:Ljava/lang/String;

    .line 13
    iput-wide v1, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pixwe_folder_id:J

    .line 14
    iput-wide v1, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->albums_meta_folder_id:J

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uid"
    .parameter "pwd"
    .parameter "sgw"
    .parameter "encryptPwd"

    .prologue
    const-wide/16 v1, -0x3e7

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->sgw:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->encryptPwd:Ljava/lang/String;

    .line 9
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->capacity:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->expireDate:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->usedquota:Ljava/lang/String;

    .line 13
    iput-wide v1, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pixwe_folder_id:J

    .line 14
    iput-wide v1, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->albums_meta_folder_id:J

    .line 49
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->sgw:Ljava/lang/String;

    .line 52
    if-eqz p4, :cond_0

    .line 53
    iput-object p4, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->encryptPwd:Ljava/lang/String;

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public getCapacity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->capacity:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->expireDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedquota()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->usedquota:Ljava/lang/String;

    return-object v0
.end method

.method public setCapacity(Ljava/lang/String;)V
    .locals 0
    .parameter "capacity"

    .prologue
    .line 35
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->capacity:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setExpireDate(Ljava/lang/String;)V
    .locals 0
    .parameter "expireDate"

    .prologue
    .line 45
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->expireDate:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setUsedquota(Ljava/lang/String;)V
    .locals 0
    .parameter "usedquota"

    .prologue
    .line 25
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->usedquota:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nsgw="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/sqlite/entity/AccInfo;->sgw:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
