.class public Lnet/yostore/aws/sqlite/entity/UploadItem;
.super Ljava/lang/Object;
.source "UploadItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/yostore/aws/sqlite/entity/UploadItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final UP_AUDI:I = 0x1

.field public static final UP_CAME:I = 0x0

.field public static final UP_FILE:I = 0x3

.field public static final UP_NOTE:I = 0x2

.field public static final UP_QSHARE:I = 0x5

.field public static final UP_VIDEO:I = 0x4


# instance fields
.field public attr:Ljava/lang/String;

.field public idx:J

.field public path:Ljava/lang/String;

.field public percent:I

.field public size:J

.field public status:I

.field public uploadFileName:Ljava/lang/String;

.field public uploadFolder:J

.field public uptype:I

.field public userid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lnet/yostore/aws/sqlite/entity/UploadItem$1;

    invoke-direct {v0}, Lnet/yostore/aws/sqlite/entity/UploadItem$1;-><init>()V

    .line 31
    sput-object v0, Lnet/yostore/aws/sqlite/entity/UploadItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    .line 19
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->userid:Ljava/lang/String;

    .line 20
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->path:Ljava/lang/String;

    .line 21
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFileName:Ljava/lang/String;

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->size:J

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uptype:I

    .line 26
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFolder:J

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->status:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->attr:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->percent:I

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cr"

    .prologue
    const/4 v4, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    .line 19
    iput-object v4, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->userid:Ljava/lang/String;

    .line 20
    iput-object v4, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->path:Ljava/lang/String;

    .line 21
    iput-object v4, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFileName:Ljava/lang/String;

    .line 23
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->size:J

    .line 25
    const/4 v2, 0x3

    iput v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uptype:I

    .line 26
    const-wide/16 v2, -0x3e7

    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFolder:J

    .line 27
    const/4 v2, -0x1

    iput v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->status:I

    .line 28
    const-string v2, ""

    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->attr:Ljava/lang/String;

    .line 29
    const/4 v2, 0x0

    iput v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->percent:I

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, i:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    .line 89
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->userid:Ljava/lang/String;

    .line 90
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->path:Ljava/lang/String;

    .line 91
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFileName:Ljava/lang/String;

    .line 92
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->size:J

    .line 93
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uptype:I

    .line 94
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFolder:J

    .line 95
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->status:I

    .line 96
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->attr:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    .line 19
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->userid:Ljava/lang/String;

    .line 20
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->path:Ljava/lang/String;

    .line 21
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFileName:Ljava/lang/String;

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->size:J

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uptype:I

    .line 26
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFolder:J

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->status:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->attr:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->percent:I

    .line 43
    invoke-virtual {p0, p1}, Lnet/yostore/aws/sqlite/entity/UploadItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLjava/lang/String;)V
    .locals 3
    .parameter "userid"
    .parameter "path"
    .parameter "uploadFileName"
    .parameter "size"
    .parameter "uptype"
    .parameter "uploadFolder"
    .parameter "attr"

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    .line 19
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->userid:Ljava/lang/String;

    .line 20
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->path:Ljava/lang/String;

    .line 21
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFileName:Ljava/lang/String;

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->size:J

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uptype:I

    .line 26
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFolder:J

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->status:I

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->attr:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->percent:I

    .line 106
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->userid:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->path:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFileName:Ljava/lang/String;

    .line 110
    iput-wide p4, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->size:J

    .line 111
    iput p6, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uptype:I

    .line 112
    iput-wide p7, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFolder:J

    .line 113
    iput-object p9, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->attr:Ljava/lang/String;

    .line 114
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->userid:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->path:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFileName:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->size:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uptype:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFolder:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->status:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->attr:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "idx="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nuserid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->userid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\npath="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nuploadFileName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nsize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nuptype="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uptype:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nuploadFolder="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFolder:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nattr="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->attr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 71
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget-object v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->userid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFileName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    iget v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uptype:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFolder:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    iget v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Lnet/yostore/aws/sqlite/entity/UploadItem;->attr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return-void
.end method
