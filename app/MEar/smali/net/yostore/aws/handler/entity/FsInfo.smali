.class public Lnet/yostore/aws/handler/entity/FsInfo;
.super Ljava/lang/Object;
.source "FsInfo.java"


# static fields
.field public static final IS_DIR:I = 0x0

.field public static final IS_FILE:I = 0x1


# instance fields
.field public accesscontrol:Ljava/lang/String;

.field public attribute:Ljava/lang/String;

.field public display:Ljava/lang/String;

.field public filecount:Ljava/lang/String;

.field public foldercount:Ljava/lang/String;

.field private fsize:J

.field public id:Ljava/lang/String;

.field public isStarred:Z

.field public isbackup:Ljava/lang/String;

.field public isencrypted:Ljava/lang/String;

.field public isfolder:Ljava/lang/String;

.field public ishidden:Ljava/lang/String;

.field public isinfected:Ljava/lang/String;

.field public isorigdeleted:Ljava/lang/String;

.field public isowner:Ljava/lang/String;

.field public ispublic:Ljava/lang/String;

.field public issharing:Ljava/lang/String;

.field public rootFolder:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public sumfoldersize:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ishidden:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->size:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->filecount:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->foldercount:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->sumfoldersize:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->rootFolder:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Lnet/yostore/aws/api/entity/EntryInfo;)V
    .locals 3
    .parameter "fi"

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ishidden:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->size:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 108
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->filecount:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->foldercount:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->sumfoldersize:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->rootFolder:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/EntryInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/EntryInfo;->getIsorigdeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/EntryInfo;->getIspublic()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_1
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/EntryInfo;->getMarks()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/EntryInfo;->getMarks()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 31
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/EntryInfo;->getKind()Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->FOLDER:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    if-ne v0, v1, :cond_3

    const-string v0, "1"

    :goto_3
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/EntryInfo;->getRootFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->rootFolder:Ljava/lang/String;

    .line 34
    return-void

    .line 28
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 29
    :cond_1
    const-string v0, "0"

    goto :goto_1

    :cond_2
    move v0, v2

    .line 30
    goto :goto_2

    .line 31
    :cond_3
    const-string v0, "0"

    goto :goto_3
.end method

.method public constructor <init>(Lnet/yostore/aws/api/entity/FileInfo;)V
    .locals 3
    .parameter "fi"

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ishidden:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->size:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 108
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->filecount:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->foldercount:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->sumfoldersize:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->rootFolder:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getAttribute()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getIsencrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getIsowner()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_1
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getIsbackup()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_2
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getIsorigdeleted()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_3
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getIspublic()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_4
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getMarkid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 60
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->size:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getIsinfected()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "1"

    :goto_6
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getHeadversion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 66
    return-void

    .line 54
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 55
    :cond_1
    const-string v0, "0"

    goto :goto_1

    .line 56
    :cond_2
    const-string v0, "0"

    goto :goto_2

    .line 57
    :cond_3
    const-string v0, "0"

    goto :goto_3

    .line 58
    :cond_4
    const-string v0, "0"

    goto :goto_4

    :cond_5
    move v0, v2

    .line 59
    goto :goto_5

    .line 63
    :cond_6
    const-string v0, "0"

    goto :goto_6
.end method

.method public constructor <init>(Lnet/yostore/aws/api/entity/FolderInfo;)V
    .locals 3
    .parameter "fi"

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ishidden:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->size:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 108
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->filecount:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->foldercount:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->sumfoldersize:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->rootFolder:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getAttribute()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getIsencrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getIsowner()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_1
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getIsbackup()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_2
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getIsorigdeleted()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_3
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getIspublic()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1"

    :goto_4
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getMarkid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 46
    const-string v0, "1"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getIssharing()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "1"

    :goto_6
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 49
    return-void

    .line 40
    :cond_0
    const-string v0, "0"

    goto :goto_0

    .line 41
    :cond_1
    const-string v0, "0"

    goto :goto_1

    .line 42
    :cond_2
    const-string v0, "0"

    goto :goto_2

    .line 43
    :cond_3
    const-string v0, "0"

    goto :goto_3

    .line 44
    :cond_4
    const-string v0, "0"

    goto :goto_4

    :cond_5
    move v0, v2

    .line 45
    goto :goto_5

    .line 48
    :cond_6
    const-string v0, "0"

    goto :goto_6
.end method

.method public constructor <init>(Lnet/yostore/aws/api/entity/UserSharedFolderInfo;)V
    .locals 2
    .parameter "fi"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ishidden:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->size:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->filecount:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->foldercount:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->sumfoldersize:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->rootFolder:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;->getAttribute()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;->getAccesscontrol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "isMore"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ishidden:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->size:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->filecount:Ljava/lang/String;

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->foldercount:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->sumfoldersize:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->rootFolder:Ljava/lang/String;

    .line 17
    const-string v0, "more"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getLongSize()J
    .locals 6

    .prologue
    .line 74
    iget-wide v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 75
    const-wide/16 v0, -0x1

    .line 77
    .local v0, rtn:J
    :try_start_0
    iget-object v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->size:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v0           #rtn:J
    :cond_0
    :goto_0
    iget-wide v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    return-wide v2

    .line 79
    .restart local v0       #rtn:J
    :catch_0
    move-exception v2

    goto :goto_0
.end method
