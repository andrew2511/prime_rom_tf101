.class public Lnet/yostore/aws/handler/entity/NowPlayInfoBean;
.super Ljava/lang/Object;
.source "NowPlayInfoBean.java"


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private final dateFormat:Ljava/text/DateFormat;

.field private fileId:J

.field private isInLib:Z

.field private n:Ljava/lang/String;

.field private pft:J

.field private playList:J

.field private playTime:J

.field private pt:J

.field private r:I

.field private rty:I

.field private s:I

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/api/ApiConfig;)V
    .locals 5
    .parameter "apicfg"

    .prologue
    const-wide/16 v3, -0x3e7

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->isInLib:Z

    .line 43
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->uid:Ljava/lang/String;

    .line 44
    iput v2, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->s:I

    .line 45
    iput v2, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->r:I

    .line 46
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->n:Ljava/lang/String;

    .line 47
    iput-wide v3, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->playList:J

    .line 48
    iput-wide v3, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->fileId:J

    .line 49
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->playTime:J

    .line 50
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->pft:J

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->pt:J

    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->dateFormat:Ljava/text/DateFormat;

    .line 54
    iput v2, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->rty:I

    .line 138
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 139
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/handler/entity/NowPlayInfoBean;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/handler/entity/NowPlayInfoBean;)J
    .locals 2
    .parameter

    .prologue
    .line 47
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->playList:J

    return-wide v0
.end method

.method static synthetic access$2(Lnet/yostore/aws/handler/entity/NowPlayInfoBean;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-boolean p1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->isInLib:Z

    return-void
.end method

.method static synthetic access$3(Lnet/yostore/aws/handler/entity/NowPlayInfoBean;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 230
    invoke-direct {p0}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->toXml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toXml()Ljava/lang/String;
    .locals 3

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><np><if>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    iget-boolean v1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->isInLib:Z

    if-eqz v1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</if><p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->playList:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</p><i>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->fileId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</i><n>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</n><d>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->playTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</d><u>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->uid:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</u><s>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</s><r>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</r><pt>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lcom/ecareme/mear/Mear;->pt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</pt><pft>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->pft:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</pft></np>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 242
    :cond_0
    const-string v1, "0"

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->uid:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getFileId()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->fileId:J

    return-wide v0
.end method

.method public getN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getNowPlayInfo()Z
    .locals 10

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 181
    new-instance v2, Lnet/yostore/aws/api/helper/NowPlayInfoHelper;

    sget-wide v4, Lcom/ecareme/mear/Mear;->now_playing_info_id:J

    invoke-direct {v2, v4, v5}, Lnet/yostore/aws/api/helper/NowPlayInfoHelper;-><init>(J)V

    .line 182
    .local v2, helper:Lnet/yostore/aws/api/helper/NowPlayInfoHelper;
    const/4 v3, 0x0

    .line 186
    .local v3, response:Lnet/yostore/aws/api/entity/NowPlayInfoResponse;
    :try_start_0
    iget-object v4, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    invoke-virtual {v2, v4}, Lnet/yostore/aws/api/helper/NowPlayInfoHelper;->process(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;

    move-object v3, v0

    .line 187
    iget v4, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->rty:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->rty:I

    .line 188
    if-nez v3, :cond_0

    iget v4, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->rty:I

    if-ge v4, v6, :cond_0

    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->getNowPlayInfo()Z

    move-result v4

    .line 211
    :goto_0
    return v4

    .line 189
    :cond_0
    if-nez v3, :cond_1

    iget v4, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->rty:I

    if-lt v4, v6, :cond_1

    move v4, v8

    .line 190
    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->getIf()Z

    move-result v4

    iput-boolean v4, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->isInLib:Z

    .line 194
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->getP()J

    move-result-wide v4

    iput-wide v4, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->playList:J

    .line 195
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->getD()J

    move-result-wide v4

    iput-wide v4, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->playTime:J

    .line 197
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->getN()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->n:Ljava/lang/String;

    .line 198
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->getI()J

    move-result-wide v4

    iput-wide v4, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->fileId:J

    .line 199
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->getPft()J

    move-result-wide v4

    iput-wide v4, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->pft:J

    .line 200
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->getR()I

    move-result v4

    iput v4, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->r:I

    .line 201
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->getS()I

    move-result v4

    iput v4, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->s:I

    .line 202
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->getPt()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->pt:J

    .line 203
    iget-wide v4, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->pt:J

    sput-wide v4, Lcom/ecareme/mear/Mear;->pt:J

    .line 204
    invoke-virtual {v3}, Lnet/yostore/aws/api/entity/NowPlayInfoResponse;->getU()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->uid:Ljava/lang/String;
    :try_end_0
    .catch Lnet/yostore/aws/api/exception/APIException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v9

    .line 205
    goto :goto_0

    .line 207
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 208
    .local v1, e1:Lnet/yostore/aws/api/exception/APIException;
    iget-wide v4, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->playList:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    move v4, v9

    .line 209
    goto :goto_0

    :cond_2
    move v4, v8

    .line 211
    goto :goto_0
.end method

.method public getPft()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->pft:J

    return-wide v0
.end method

.method public getPlayList()J
    .locals 2

    .prologue
    .line 155
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->playList:J

    return-wide v0
.end method

.method public getPlayTime()J
    .locals 4

    .prologue
    .line 171
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->playTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 172
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->playTime:J

    .line 174
    :goto_0
    return-wide v0

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPt()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->pt:J

    return-wide v0
.end method

.method public getR()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->r:I

    return v0
.end method

.method public getS()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->s:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public isInLib()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->isInLib:Z

    return v0
.end method

.method public saveNowPlayInfo()V
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean$1;-><init>(Lnet/yostore/aws/handler/entity/NowPlayInfoBean;)V

    .line 228
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/NowPlayInfoBean$1;->start()V

    .line 229
    return-void
.end method

.method public setFileId(J)V
    .locals 0
    .parameter "fileId"

    .prologue
    .line 167
    iput-wide p1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->fileId:J

    .line 168
    return-void
.end method

.method public setInLib(Z)V
    .locals 0
    .parameter "isInLib"

    .prologue
    .line 151
    iput-boolean p1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->isInLib:Z

    .line 152
    return-void
.end method

.method public setN(Ljava/lang/String;)V
    .locals 0
    .parameter "n"

    .prologue
    .line 93
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->n:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setNowPlayInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "Xml"

    .prologue
    .line 143
    return-void
.end method

.method public setPft(J)V
    .locals 0
    .parameter "pft"

    .prologue
    .line 134
    iput-wide p1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->pft:J

    .line 135
    return-void
.end method

.method public setPlayList(J)V
    .locals 0
    .parameter "playList"

    .prologue
    .line 159
    iput-wide p1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->playList:J

    .line 160
    return-void
.end method

.method public setPlayTime(J)V
    .locals 0
    .parameter "playTime"

    .prologue
    .line 178
    iput-wide p1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->playTime:J

    .line 179
    return-void
.end method

.method public setPt(J)V
    .locals 2
    .parameter "pt"

    .prologue
    .line 119
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->pft:J

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->pft:J

    .line 120
    return-void
.end method

.method public setR(I)V
    .locals 0
    .parameter "r"

    .prologue
    .line 113
    iput p1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->r:I

    .line 114
    return-void
.end method

.method public setS(I)V
    .locals 0
    .parameter "s"

    .prologue
    .line 103
    iput p1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->s:I

    .line 104
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 83
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/NowPlayInfoBean;->uid:Ljava/lang/String;

    .line 84
    return-void
.end method
