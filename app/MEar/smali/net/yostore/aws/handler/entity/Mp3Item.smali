.class public Lnet/yostore/aws/handler/entity/Mp3Item;
.super Ljava/lang/Object;
.source "Mp3Item.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/yostore/aws/handler/entity/Mp3Item;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private attribute:Ljava/lang/String;

.field private display:Ljava/lang/String;

.field private localPath:Ljava/lang/String;

.field private localcatchIdx:J

.field private realfileId:J

.field private rootFolder:Ljava/lang/String;

.field private shortcutDisplay:Ljava/lang/String;

.field private shortcutId:J

.field private userid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lnet/yostore/aws/handler/entity/Mp3Item$1;

    invoke-direct {v0}, Lnet/yostore/aws/handler/entity/Mp3Item$1;-><init>()V

    .line 20
    sput-object v0, Lnet/yostore/aws/handler/entity/Mp3Item;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x3e7

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/ecareme/mear/Mear;->userId:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->userid:Ljava/lang/String;

    .line 11
    iput-object v2, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->display:Ljava/lang/String;

    .line 12
    iput-wide v3, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->shortcutId:J

    .line 13
    iput-object v2, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->attribute:Ljava/lang/String;

    .line 14
    iput-wide v3, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->realfileId:J

    .line 15
    iput-object v2, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->shortcutDisplay:Ljava/lang/String;

    .line 16
    iput-object v2, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->localPath:Ljava/lang/String;

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->localcatchIdx:J

    .line 18
    iput-object v2, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->rootFolder:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const-wide/16 v3, -0x3e7

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lcom/ecareme/mear/Mear;->userId:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->userid:Ljava/lang/String;

    .line 11
    iput-object v2, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->display:Ljava/lang/String;

    .line 12
    iput-wide v3, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->shortcutId:J

    .line 13
    iput-object v2, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->attribute:Ljava/lang/String;

    .line 14
    iput-wide v3, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->realfileId:J

    .line 15
    iput-object v2, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->shortcutDisplay:Ljava/lang/String;

    .line 16
    iput-object v2, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->localPath:Ljava/lang/String;

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->localcatchIdx:J

    .line 18
    iput-object v2, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->rootFolder:Ljava/lang/String;

    .line 36
    invoke-virtual {p0, p1}, Lnet/yostore/aws/handler/entity/Mp3Item;->readFromParcel(Landroid/os/Parcel;)V

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->attribute:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalcatchIdx()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->localcatchIdx:J

    return-wide v0
.end method

.method public getRealfileId()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->realfileId:J

    return-wide v0
.end method

.method public getRootFolder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->rootFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->shortcutDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutId()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->shortcutId:J

    return-wide v0
.end method

.method public getUserid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->userid:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->display:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->shortcutId:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->attribute:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->realfileId:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->shortcutDisplay:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->localPath:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->localcatchIdx:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->rootFolder:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setAttribute(Ljava/lang/String;)V
    .locals 0
    .parameter "attribute"

    .prologue
    .line 112
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->attribute:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setDisplay(Ljava/lang/String;)V
    .locals 3
    .parameter "display"

    .prologue
    .line 93
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->display:Ljava/lang/String;

    .line 97
    :goto_0
    return-void

    .line 96
    :cond_0
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->display:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0
    .parameter "localPath"

    .prologue
    .line 139
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->localPath:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setLocalcatchIdx(J)V
    .locals 0
    .parameter "localcatchIdx"

    .prologue
    .line 85
    iput-wide p1, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->localcatchIdx:J

    .line 86
    return-void
.end method

.method public setRealfileId(J)V
    .locals 0
    .parameter "realfileId"

    .prologue
    .line 120
    iput-wide p1, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->realfileId:J

    .line 121
    return-void
.end method

.method public setRootFolder(Ljava/lang/String;)V
    .locals 0
    .parameter "rootFolder"

    .prologue
    .line 147
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->rootFolder:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setShortcutDisplay(Ljava/lang/String;)V
    .locals 3
    .parameter "shortcutDisplay"

    .prologue
    .line 128
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->shortcutDisplay:Ljava/lang/String;

    .line 129
    new-instance v0, Lnet/yostore/aws/handler/entity/Mp3Info;

    invoke-direct {v0, p1}, Lnet/yostore/aws/handler/entity/Mp3Info;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, mp3Inf:Lnet/yostore/aws/handler/entity/Mp3Info;
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/Mp3Info;->getDisplay()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->display:Ljava/lang/String;

    .line 131
    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/Mp3Info;->getFileid()J

    move-result-wide v1

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->realfileId:J

    .line 132
    return-void
.end method

.method public setShortcutId(J)V
    .locals 0
    .parameter "shortcutId"

    .prologue
    .line 104
    iput-wide p1, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->shortcutId:J

    .line 105
    return-void
.end method

.method public setUserid(Ljava/lang/String;)V
    .locals 0
    .parameter "userid"

    .prologue
    .line 77
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->userid:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 46
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->userid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->display:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->shortcutId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->attribute:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->realfileId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->shortcutDisplay:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->localPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->localcatchIdx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/Mp3Item;->rootFolder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return-void
.end method
