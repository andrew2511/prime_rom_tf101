.class public Lnet/yostore/aws/handler/entity/AlbumInfoBean;
.super Ljava/lang/Object;
.source "AlbumInfoBean.java"


# instance fields
.field private albumInfoFolder:J

.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private bt:I

.field private display:Ljava/lang/String;

.field private in:I

.field private mfi:J

.field private or:I

.field private pw:Ljava/lang/String;

.field private ss:I

.field private st:J

.field private sty:I

.field private su:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide v2, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->albumInfoFolder:J

    .line 28
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->userName:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->display:Ljava/lang/String;

    .line 33
    iput v1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->ss:I

    .line 34
    iput v1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->bt:I

    .line 35
    iput-wide v2, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->st:J

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->pw:Ljava/lang/String;

    .line 37
    const/4 v0, 0x3

    iput v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->in:I

    .line 38
    iput v1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->sty:I

    .line 39
    iput v1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->or:I

    .line 40
    iput-wide v2, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->mfi:J

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->su:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Lnet/yostore/aws/api/ApiConfig;)V
    .locals 4
    .parameter "apicfg"

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide v2, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->albumInfoFolder:J

    .line 28
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->userName:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->display:Ljava/lang/String;

    .line 33
    iput v1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->ss:I

    .line 34
    iput v1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->bt:I

    .line 35
    iput-wide v2, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->st:J

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->pw:Ljava/lang/String;

    .line 37
    const/4 v0, 0x3

    iput v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->in:I

    .line 38
    iput v1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->sty:I

    .line 39
    iput v1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->or:I

    .line 40
    iput-wide v2, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->mfi:J

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->su:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)J
    .locals 2
    .parameter

    .prologue
    .line 27
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->albumInfoFolder:J

    return-wide v0
.end method

.method static synthetic access$2(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->display:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAlbumInfoFolder()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->albumInfoFolder:J

    return-wide v0
.end method

.method public getBt()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->bt:I

    return v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getIn()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->in:I

    return v0
.end method

.method public getMfi()J
    .locals 2

    .prologue
    .line 243
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->mfi:J

    return-wide v0
.end method

.method public getOr()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->or:I

    return v0
.end method

.method public getPw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->pw:Ljava/lang/String;

    return-object v0
.end method

.method public getSs()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->ss:I

    return v0
.end method

.method public getSt()J
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->st:J

    return-wide v0
.end method

.method public getSty()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->sty:I

    return v0
.end method

.method public getSu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->su:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 254
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->su:Ljava/lang/String;

    .line 255
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->su:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getXml()Ljava/lang/String;
    .locals 3

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<pixwe_ai><ss>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->ss:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</ss><bt>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->bt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</bt><st>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->st:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</st><pw>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->pw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</pw><in>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->in:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</in><sty>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->sty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</sty><or>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->or:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</or><mfi>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->mfi:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</mfi><su>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->su:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</su></pixwe_ai>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    return-object v0
.end method

.method public saveAlbumInfo()V
    .locals 1

    .prologue
    .line 264
    new-instance v0, Lnet/yostore/aws/handler/entity/AlbumInfoBean$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean$1;-><init>(Lnet/yostore/aws/handler/entity/AlbumInfoBean;)V

    .line 271
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean$1;->start()V

    .line 272
    return-void
.end method

.method public setAlbumInfo(Lnet/yostore/aws/api/entity/AlbumInfo;)V
    .locals 2
    .parameter "albumInfo"

    .prologue
    .line 61
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/AlbumInfo;->getSs()I

    move-result v0

    iput v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->ss:I

    .line 62
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/AlbumInfo;->getBt()I

    move-result v0

    iput v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->bt:I

    .line 63
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/AlbumInfo;->getSt()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->st:J

    .line 64
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/AlbumInfo;->getPw()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->pw:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/AlbumInfo;->getIn()I

    move-result v0

    iput v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->in:I

    .line 66
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/AlbumInfo;->getSty()I

    move-result v0

    iput v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->sty:I

    .line 67
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/AlbumInfo;->getMfi()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->mfi:J

    .line 68
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/AlbumInfo;->getSu()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->su:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setAlbumInfoFolder(J)V
    .locals 0
    .parameter "albumInfoFolder"

    .prologue
    .line 98
    iput-wide p1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->albumInfoFolder:J

    .line 99
    return-void
.end method

.method public setBt(I)V
    .locals 0
    .parameter "bt"

    .prologue
    .line 162
    iput p1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->bt:I

    .line 163
    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 0
    .parameter "display"

    .prologue
    .line 130
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->display:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setFolderInfo(Lnet/yostore/aws/api/entity/FolderInfo;)V
    .locals 2
    .parameter "folderInfo"

    .prologue
    .line 54
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->albumInfoFolder:J

    .line 55
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->display:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getAlbumInfo()Lnet/yostore/aws/api/entity/AlbumInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->setAlbumInfo(Lnet/yostore/aws/api/entity/AlbumInfo;)V

    .line 58
    return-void
.end method

.method public setIn(I)V
    .locals 0
    .parameter "in"

    .prologue
    .line 210
    iput p1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->in:I

    .line 211
    return-void
.end method

.method public setMfi(J)V
    .locals 0
    .parameter "mfi"

    .prologue
    .line 248
    iput-wide p1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->mfi:J

    .line 249
    return-void
.end method

.method public setOr(I)V
    .locals 0
    .parameter "or"

    .prologue
    .line 238
    iput p1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->or:I

    .line 239
    return-void
.end method

.method public setPw(Ljava/lang/String;)V
    .locals 0
    .parameter "pw"

    .prologue
    .line 194
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->pw:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setSs(I)V
    .locals 0
    .parameter "ss"

    .prologue
    .line 146
    iput p1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->ss:I

    .line 147
    return-void
.end method

.method public setSt(J)V
    .locals 0
    .parameter "st"

    .prologue
    .line 178
    iput-wide p1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->st:J

    .line 179
    return-void
.end method

.method public setSty(I)V
    .locals 0
    .parameter "sty"

    .prologue
    .line 226
    iput p1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->sty:I

    .line 227
    return-void
.end method

.method public setSu(Ljava/lang/String;)V
    .locals 0
    .parameter "su"

    .prologue
    .line 260
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->su:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 73
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/AlbumInfoBean;->userName:Ljava/lang/String;

    .line 74
    return-void
.end method
