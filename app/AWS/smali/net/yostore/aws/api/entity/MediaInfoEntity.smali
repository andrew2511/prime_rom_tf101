.class public Lnet/yostore/aws/api/entity/MediaInfoEntity;
.super Ljava/lang/Object;
.source "MediaInfoEntity.java"


# instance fields
.field private d:Ljava/lang/String;

.field private da:J

.field private en:I

.field private fr:I

.field private i:J

.field private no:Ljava/lang/String;

.field private r:I

.field private ty:I

.field private us:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->i:J

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->da:J

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->d:Ljava/lang/String;

    .line 9
    iput v2, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->ty:I

    .line 10
    iput v2, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->r:I

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->no:Ljava/lang/String;

    .line 12
    iput v2, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->en:I

    .line 13
    iput v2, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->us:I

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->fr:I

    .line 34
    return-void
.end method


# virtual methods
.method public getD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDa()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->da:J

    return-wide v0
.end method

.method public getEn()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->en:I

    return v0
.end method

.method public getFr()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->fr:I

    return v0
.end method

.method public getI()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->i:J

    return-wide v0
.end method

.method public getNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->no:Ljava/lang/String;

    return-object v0
.end method

.method public getR()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->r:I

    return v0
.end method

.method public getTy()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->ty:I

    return v0
.end method

.method public getUs()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->us:I

    return v0
.end method

.method public setD(Ljava/lang/String;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 83
    iput-object p1, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->d:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setDa(J)V
    .locals 0
    .parameter "da"

    .prologue
    .line 73
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->da:J

    .line 74
    return-void
.end method

.method public setEn(I)V
    .locals 0
    .parameter "en"

    .prologue
    .line 123
    iput p1, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->en:I

    .line 124
    return-void
.end method

.method public setFr(I)V
    .locals 0
    .parameter "fr"

    .prologue
    .line 141
    iput p1, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->fr:I

    .line 142
    return-void
.end method

.method public setI(J)V
    .locals 0
    .parameter "i"

    .prologue
    .line 63
    iput-wide p1, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->i:J

    .line 64
    return-void
.end method

.method public setNo(Ljava/lang/String;)V
    .locals 0
    .parameter "no"

    .prologue
    .line 113
    iput-object p1, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->no:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setR(I)V
    .locals 0
    .parameter "r"

    .prologue
    .line 103
    iput p1, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->r:I

    .line 104
    return-void
.end method

.method public setTy(I)V
    .locals 0
    .parameter "ty"

    .prologue
    .line 93
    iput p1, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->ty:I

    .line 94
    return-void
.end method

.method public setUs(I)V
    .locals 0
    .parameter "us"

    .prologue
    .line 133
    iput p1, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->us:I

    .line 134
    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 4

    .prologue
    .line 145
    const-string v0, ""

    .line 146
    .local v0, rtn:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<i>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</i><da>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->da:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</da><d>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</d><ty>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->ty:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</ty><r>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->r:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</r><no>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->no:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</no>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->en:I

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<en>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->en:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</en>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<us>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->us:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</us>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<fr>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/yostore/aws/api/entity/MediaInfoEntity;->fr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</fr>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    return-object v0

    .line 146
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method
