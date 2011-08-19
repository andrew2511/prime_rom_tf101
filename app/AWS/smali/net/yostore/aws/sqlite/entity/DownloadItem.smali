.class public Lnet/yostore/aws/sqlite/entity/DownloadItem;
.super Ljava/lang/Object;
.source "DownloadItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lnet/yostore/aws/sqlite/entity/DownloadItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fileid:J

.field public filename:Ljava/lang/String;

.field public fileuploadtime:J

.field public idx:J

.field public percent:I

.field public savepath:Ljava/lang/String;

.field public size:J

.field public status:I

.field public userid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lnet/yostore/aws/sqlite/entity/DownloadItem$1;

    invoke-direct {v0}, Lnet/yostore/aws/sqlite/entity/DownloadItem$1;-><init>()V

    .line 20
    sput-object v0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide v3, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    .line 11
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->userid:Ljava/lang/String;

    .line 12
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileid:J

    .line 13
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->savepath:Ljava/lang/String;

    .line 14
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    .line 15
    iput-wide v3, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    .line 16
    iput-wide v3, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileuploadtime:J

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->status:I

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->percent:I

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cr"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide v5, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    .line 11
    iput-object v4, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->userid:Ljava/lang/String;

    .line 12
    const-wide/16 v2, -0x3e7

    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileid:J

    .line 13
    iput-object v4, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->savepath:Ljava/lang/String;

    .line 14
    iput-object v4, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    .line 15
    iput-wide v5, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    .line 16
    iput-wide v5, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileuploadtime:J

    .line 17
    const/4 v2, -0x1

    iput v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->status:I

    .line 18
    const/4 v2, 0x0

    iput v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->percent:I

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, i:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    .line 76
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->userid:Ljava/lang/String;

    .line 77
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileid:J

    .line 78
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->savepath:Ljava/lang/String;

    .line 79
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    .line 80
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    .line 81
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileuploadtime:J

    .line 82
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->status:I

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter "in"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide v3, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    .line 11
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->userid:Ljava/lang/String;

    .line 12
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileid:J

    .line 13
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->savepath:Ljava/lang/String;

    .line 14
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    .line 15
    iput-wide v3, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    .line 16
    iput-wide v3, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileuploadtime:J

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->status:I

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->percent:I

    .line 32
    invoke-virtual {p0, p1}, Lnet/yostore/aws/sqlite/entity/DownloadItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JJ)V
    .locals 5
    .parameter "userid"
    .parameter "fileid"
    .parameter "savepath"
    .parameter "filename"
    .parameter "size"
    .parameter "fileuploadtime"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide v3, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    .line 11
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->userid:Ljava/lang/String;

    .line 12
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileid:J

    .line 13
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->savepath:Ljava/lang/String;

    .line 14
    iput-object v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    .line 15
    iput-wide v3, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    .line 16
    iput-wide v3, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileuploadtime:J

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->status:I

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->percent:I

    .line 92
    iput-object p1, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->userid:Ljava/lang/String;

    .line 93
    iput-wide p2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileid:J

    .line 94
    iput-object p4, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->savepath:Ljava/lang/String;

    .line 95
    iput-object p5, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    .line 96
    iput-wide p6, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    .line 97
    iput-wide p8, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileuploadtime:J

    .line 98
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->userid:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileid:J

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->savepath:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileuploadtime:J

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->status:I

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "idx="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nuserid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->userid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nfileid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nsavepath="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->savepath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nfilename="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nsize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nfileuploadtime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileuploadtime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nstatus="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 58
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->idx:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    iget-object v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->userid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 61
    iget-object v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->savepath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 67
    iget-wide v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileuploadtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    iget v0, p0, Lnet/yostore/aws/sqlite/entity/DownloadItem;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return-void
.end method
