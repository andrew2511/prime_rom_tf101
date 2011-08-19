.class public Lnet/yostore/aws/handler/entity/MediaInfoBean;
.super Lnet/yostore/aws/api/entity/MediaInfoEntity;
.source "MediaInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/yostore/aws/handler/entity/MediaInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private id:J

.field private mediaInfoFolder:J

.field private rty:I

.field private userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lnet/yostore/aws/handler/entity/MediaInfoBean$1;

    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/MediaInfoBean$1;-><init>()V

    .line 45
    sput-object v0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/MediaInfoEntity;-><init>()V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->id:J

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->mediaInfoFolder:J

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->rty:I

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 66
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/MediaInfoEntity;-><init>()V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->id:J

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->mediaInfoFolder:J

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->rty:I

    .line 67
    invoke-virtual {p0, p1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->readFromParcel(Landroid/os/Parcel;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lnet/yostore/aws/api/ApiConfig;)V
    .locals 2
    .parameter "apicfg"

    .prologue
    .line 56
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/MediaInfoEntity;-><init>()V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->id:J

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->mediaInfoFolder:J

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->rty:I

    .line 57
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 58
    iget-object v0, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->userName:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 159
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->id:J

    return-wide v0
.end method

.method public getMediaInfoFolder()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->mediaInfoFolder:J

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getXml()Ljava/lang/String;
    .locals 4

    .prologue
    .line 213
    const-string v0, ""

    .line 214
    .local v0, rtn:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<f><i>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</i><da>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getDa()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</da><d>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</d><ty>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getTy()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</ty>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getTy()I

    move-result v1

    if-nez v1, :cond_1

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<r>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getR()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</r><no>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getNo()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</no>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<us>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getUs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</us><fr>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getFr()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</fr></f>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    return-object v0

    .line 216
    :cond_0
    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getNo()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 218
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<no>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getNo()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, ""

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</no><en>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getEn()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</en>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getNo()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->id:J

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->mediaInfoFolder:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->userName:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setI(J)V

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setDa(J)V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setD(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setTy(I)V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setR(I)V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setNo(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setEn(I)V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUs(I)V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setFr(I)V

    .line 106
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 164
    iput-wide p1, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->id:J

    .line 165
    return-void
.end method

.method public setMediaInfo(Lnet/yostore/aws/api/entity/MediaInfoEntity;)V
    .locals 2
    .parameter "mie"

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->getI()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setI(J)V

    .line 113
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->getD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setD(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->getDa()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setDa(J)V

    .line 115
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->getEn()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setEn(I)V

    .line 116
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->getNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setNo(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->getR()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setR(I)V

    .line 118
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->getUs()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setUs(I)V

    .line 119
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->getTy()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setTy(I)V

    .line 120
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/MediaInfoEntity;->getFr()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->setFr(I)V

    .line 122
    :cond_0
    return-void
.end method

.method public setMediaInfoFolder(J)V
    .locals 0
    .parameter "mediaInfoFolder"

    .prologue
    .line 137
    iput-wide p1, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->mediaInfoFolder:J

    .line 138
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 174
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->userName:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 79
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->mediaInfoFolder:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/MediaInfoBean;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getI()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getDa()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getTy()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getR()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getEn()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getUs()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    invoke-virtual {p0}, Lnet/yostore/aws/handler/entity/MediaInfoBean;->getFr()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void
.end method
