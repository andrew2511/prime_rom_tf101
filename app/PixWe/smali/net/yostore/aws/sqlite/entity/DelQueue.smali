.class public Lnet/yostore/aws/sqlite/entity/DelQueue;
.super Ljava/lang/Object;
.source "DelQueue.java"


# instance fields
.field private fid:J

.field private isfile:I

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/DelQueue;->username:Ljava/lang/String;

    .line 6
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/DelQueue;->fid:J

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/DelQueue;->isfile:I

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 2
    .parameter "username"
    .parameter "fid"
    .parameter "isfile"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/DelQueue;->username:Ljava/lang/String;

    .line 6
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/DelQueue;->fid:J

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/DelQueue;->isfile:I

    .line 13
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/DelQueue;->username:Ljava/lang/String;

    .line 14
    iput-wide p2, p0, Lnet/yostore/aws/sqlite/entity/DelQueue;->fid:J

    .line 15
    iput p4, p0, Lnet/yostore/aws/sqlite/entity/DelQueue;->isfile:I

    .line 16
    return-void
.end method


# virtual methods
.method public getFid()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/DelQueue;->fid:J

    return-wide v0
.end method

.method public getIsfile()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lnet/yostore/aws/sqlite/entity/DelQueue;->isfile:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lnet/yostore/aws/sqlite/entity/DelQueue;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setFid(J)V
    .locals 0
    .parameter "fid"

    .prologue
    .line 37
    iput-wide p1, p0, Lnet/yostore/aws/sqlite/entity/DelQueue;->fid:J

    .line 38
    return-void
.end method

.method public setIsfile(I)V
    .locals 0
    .parameter "isfile"

    .prologue
    .line 47
    iput p1, p0, Lnet/yostore/aws/sqlite/entity/DelQueue;->isfile:I

    .line 48
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 27
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/DelQueue;->username:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
