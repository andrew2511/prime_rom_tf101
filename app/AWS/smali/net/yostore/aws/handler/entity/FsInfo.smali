.class public Lnet/yostore/aws/handler/entity/FsInfo;
.super Ljava/lang/Object;
.source "FsInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/handler/entity/FsInfo$EntryType;
    }
.end annotation


# instance fields
.field private final GB:J

.field private final KB:J

.field private final MB:J

.field private final TB:J

.field public accesscontrol:Ljava/lang/String;

.field private final attTimeFormat:Ljava/text/DateFormat;

.field public attribute:Lnet/yostore/aws/api/entity/Attribute;

.field private final createTimeFormat:Ljava/text/DateFormat;

.field public display:Ljava/lang/String;

.field public entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

.field public fileUploadTime:J

.field public filecount:Ljava/lang/String;

.field public foldercount:Ljava/lang/String;

.field public fsize:J

.field public icon:I

.field public id:Ljava/lang/String;

.field public isReadOnly:Z

.field public isStarred:Z

.field public isUploadQItem:Z

.field public isbackup:Ljava/lang/String;

.field public isencrypted:Ljava/lang/String;

.field public ishidden:Ljava/lang/String;

.field public isinfected:Ljava/lang/String;

.field public isorigdeleted:Ljava/lang/String;

.field public isowner:Ljava/lang/String;

.field public ispublic:Ljava/lang/String;

.field public issharing:Ljava/lang/String;

.field public sumfoldersize:Ljava/lang/String;

.field private final timeFormat:Ljava/text/DateFormat;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 34
    sget-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 35
    iput v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ishidden:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 49
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->filecount:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->foldercount:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->sumfoldersize:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    .line 58
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 60
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fileUploadTime:J

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->createTimeFormat:Ljava/text/DateFormat;

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->timeFormat:Ljava/text/DateFormat;

    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attTimeFormat:Ljava/text/DateFormat;

    .line 442
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->KB:J

    .line 443
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->MB:J

    .line 444
    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->GB:J

    .line 445
    const-wide v0, 0x10000000000L

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->TB:J

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 26
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 28
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 29
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 30
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 31
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 32
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 34
    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 35
    iput v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 38
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ishidden:Ljava/lang/String;

    .line 43
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 44
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 46
    iput-wide v3, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 49
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 50
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->filecount:Ljava/lang/String;

    .line 51
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->foldercount:Ljava/lang/String;

    .line 52
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->sumfoldersize:Ljava/lang/String;

    .line 55
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    .line 58
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 60
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 62
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fileUploadTime:J

    .line 64
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->createTimeFormat:Ljava/text/DateFormat;

    .line 65
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->timeFormat:Ljava/text/DateFormat;

    .line 66
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attTimeFormat:Ljava/text/DateFormat;

    .line 442
    const-wide/16 v1, 0x400

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->KB:J

    .line 443
    const-wide/32 v1, 0x100000

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->MB:J

    .line 444
    const-wide/32 v1, 0x40000000

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->GB:J

    .line 445
    const-wide v1, 0x10000000000L

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->TB:J

    .line 426
    if-nez p1, :cond_0

    .line 427
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 428
    .restart local p1
    :cond_0
    const-string v1, "fi.id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 429
    const-string v1, "fi.display"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 430
    const-string v1, "fi.isbackup"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 431
    const-string v1, "fi.isorigdeleted"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 432
    const-string v1, "fi.ispublic"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 433
    const-string v1, "fi.isStarred"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 434
    const-string v1, "fi.isfolder"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->getType(I)Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 435
    const-string v1, "fi.issharing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 436
    const-string v1, "fi.isReadOnly"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 437
    const-string v1, "fi.fileUploadTime"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fileUploadTime:J

    .line 438
    const-string v1, "fi.size"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, size:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move-wide v1, v3

    :goto_0
    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 440
    return-void

    .line 439
    :cond_2
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public constructor <init>(Lnet/yostore/aws/api/entity/BaseEntry;)V
    .locals 7
    .parameter "fi"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 26
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 28
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 29
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 30
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 31
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 32
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 34
    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 35
    iput v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 38
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ishidden:Ljava/lang/String;

    .line 43
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 44
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 46
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 49
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 50
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->filecount:Ljava/lang/String;

    .line 51
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->foldercount:Ljava/lang/String;

    .line 52
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->sumfoldersize:Ljava/lang/String;

    .line 55
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    .line 58
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 60
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 62
    iput-wide v3, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fileUploadTime:J

    .line 64
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->createTimeFormat:Ljava/text/DateFormat;

    .line 65
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->timeFormat:Ljava/text/DateFormat;

    .line 66
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attTimeFormat:Ljava/text/DateFormat;

    .line 442
    const-wide/16 v1, 0x400

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->KB:J

    .line 443
    const-wide/32 v1, 0x100000

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->MB:J

    .line 444
    const-wide/32 v1, 0x40000000

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->GB:J

    .line 445
    const-wide v1, 0x10000000000L

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->TB:J

    .line 129
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/BaseEntry;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/BaseEntry;->getRawfilename()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/BaseEntry;->getAttribute()Lnet/yostore/aws/api/entity/Attribute;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    .line 132
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getLastwritetime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getLastwritetime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 133
    :cond_1
    new-instance v1, Lnet/yostore/aws/api/entity/Attribute;

    invoke-direct {v1}, Lnet/yostore/aws/api/entity/Attribute;-><init>()V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    .line 134
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/BaseEntry;->getLastchangetime()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 135
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/BaseEntry;->getLastchangetime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/Attribute;->setLastwritetime(Ljava/lang/String;)V

    .line 137
    :cond_2
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/BaseEntry;->getCreatedtime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/BaseEntry;->getCreatedtime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 140
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->createTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/BaseEntry;->getCreatedtime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 141
    .local v0, d:Ljava/util/Date;
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/Attribute;->setCreationtime(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v0           #d:Ljava/util/Date;
    :cond_3
    :goto_0
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 147
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/BaseEntry;->getSize()J

    move-result-wide v1

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 149
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/BaseEntry;->getIsBackup()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "1"

    :goto_1
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/BaseEntry;->getIsOrigdeleted()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "1"

    :goto_2
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/BaseEntry;->getIsPublic()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "1"

    :goto_3
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/BaseEntry;->getMarks()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/BaseEntry;->getMarks()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 154
    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 155
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 156
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 157
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    iget-object v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    invoke-direct {p0, v1, v2}, Lnet/yostore/aws/handler/entity/FsInfo;->getBrowseRawIcon(Ljava/lang/String;Lnet/yostore/aws/handler/entity/FsInfo$EntryType;)I

    move-result v1

    iput v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 158
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 159
    invoke-direct {p0}, Lnet/yostore/aws/handler/entity/FsInfo;->parseAttribute()V

    .line 161
    return-void

    .line 149
    :cond_4
    const-string v1, "0"

    goto :goto_1

    .line 151
    :cond_5
    const-string v1, "0"

    goto :goto_2

    .line 152
    :cond_6
    const-string v1, "0"

    goto :goto_3

    :cond_7
    move v1, v6

    .line 153
    goto :goto_4

    .line 143
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lnet/yostore/aws/api/entity/EntryInfo;)V
    .locals 7
    .parameter "fi"

    .prologue
    const/4 v6, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 26
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 28
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 29
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 30
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 31
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 32
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 34
    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 35
    iput v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 38
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ishidden:Ljava/lang/String;

    .line 43
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 44
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 46
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 49
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 50
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->filecount:Ljava/lang/String;

    .line 51
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->foldercount:Ljava/lang/String;

    .line 52
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->sumfoldersize:Ljava/lang/String;

    .line 55
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    .line 58
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 60
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 62
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fileUploadTime:J

    .line 64
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->createTimeFormat:Ljava/text/DateFormat;

    .line 65
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->timeFormat:Ljava/text/DateFormat;

    .line 66
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attTimeFormat:Ljava/text/DateFormat;

    .line 442
    const-wide/16 v1, 0x400

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->KB:J

    .line 443
    const-wide/32 v1, 0x100000

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->MB:J

    .line 444
    const-wide/32 v1, 0x40000000

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->GB:J

    .line 445
    const-wide v1, 0x10000000000L

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->TB:J

    .line 198
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/EntryInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/EntryInfo;->getRawentryname()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/EntryInfo;->getAttribute()Lnet/yostore/aws/api/entity/Attribute;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    .line 201
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getLastwritetime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getLastwritetime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 202
    :cond_1
    new-instance v1, Lnet/yostore/aws/api/entity/Attribute;

    invoke-direct {v1}, Lnet/yostore/aws/api/entity/Attribute;-><init>()V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    .line 206
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/EntryInfo;->getTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/EntryInfo;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 209
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->timeFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/EntryInfo;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 210
    .local v0, d:Ljava/util/Date;
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/Attribute;->setCreationtime(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v0           #d:Ljava/util/Date;
    :cond_2
    :goto_0
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 216
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/EntryInfo;->getIsBackup()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "1"

    :goto_1
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/EntryInfo;->getIsorigdeleted()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "1"

    :goto_2
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/EntryInfo;->getIspublic()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "1"

    :goto_3
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/EntryInfo;->getMarks()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/EntryInfo;->getMarks()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 222
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/EntryInfo;->getKind()Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    move-result-object v1

    sget-object v2, Lnet/yostore/aws/api/entity/EntryInfo$KIND;->FOLDER:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    if-ne v1, v2, :cond_7

    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Folder:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    :goto_5
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 223
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 224
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 225
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    iget-object v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    invoke-direct {p0, v1, v2}, Lnet/yostore/aws/handler/entity/FsInfo;->getBrowseRawIcon(Ljava/lang/String;Lnet/yostore/aws/handler/entity/FsInfo$EntryType;)I

    move-result v1

    iput v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 226
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 227
    invoke-direct {p0}, Lnet/yostore/aws/handler/entity/FsInfo;->parseAttribute()V

    .line 228
    return-void

    .line 217
    :cond_3
    const-string v1, "0"

    goto :goto_1

    .line 219
    :cond_4
    const-string v1, "0"

    goto :goto_2

    .line 220
    :cond_5
    const-string v1, "0"

    goto :goto_3

    :cond_6
    move v1, v6

    .line 221
    goto :goto_4

    .line 222
    :cond_7
    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    goto :goto_5

    .line 212
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lnet/yostore/aws/api/entity/FileInfo;)V
    .locals 7
    .parameter "fi"

    .prologue
    const/4 v6, 0x0

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 26
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 28
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 29
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 30
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 31
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 32
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 34
    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 35
    iput v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 38
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ishidden:Ljava/lang/String;

    .line 43
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 44
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 46
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 49
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 50
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->filecount:Ljava/lang/String;

    .line 51
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->foldercount:Ljava/lang/String;

    .line 52
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->sumfoldersize:Ljava/lang/String;

    .line 55
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    .line 58
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 60
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 62
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fileUploadTime:J

    .line 64
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->createTimeFormat:Ljava/text/DateFormat;

    .line 65
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->timeFormat:Ljava/text/DateFormat;

    .line 66
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attTimeFormat:Ljava/text/DateFormat;

    .line 442
    const-wide/16 v1, 0x400

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->KB:J

    .line 443
    const-wide/32 v1, 0x100000

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->MB:J

    .line 444
    const-wide/32 v1, 0x40000000

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->GB:J

    .line 445
    const-wide v1, 0x10000000000L

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->TB:J

    .line 269
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 270
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getDisplay()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getAttribute()Lnet/yostore/aws/api/entity/Attribute;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    .line 272
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getLastwritetime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getLastwritetime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 273
    :cond_1
    new-instance v1, Lnet/yostore/aws/api/entity/Attribute;

    invoke-direct {v1}, Lnet/yostore/aws/api/entity/Attribute;-><init>()V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    .line 277
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getCreatedtime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getCreatedtime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 280
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->createTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getCreatedtime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 281
    .local v0, d:Ljava/util/Date;
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/Attribute;->setCreationtime(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v0           #d:Ljava/util/Date;
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getIsencrypted()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "1"

    :goto_1
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getIsowner()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "1"

    :goto_2
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getIsbackup()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "1"

    :goto_3
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getIsorigdeleted()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "1"

    :goto_4
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getIspublic()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "1"

    :goto_5
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getMarkid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 292
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getMarkid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v1, 0x1

    :goto_6
    iput-boolean v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 297
    :goto_7
    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 299
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getSize()J

    move-result-wide v1

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 300
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getIsinfected()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "1"

    :goto_8
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getHeadversion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 303
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 304
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    iget-object v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    invoke-direct {p0, v1, v2}, Lnet/yostore/aws/handler/entity/FsInfo;->getBrowseRawIcon(Ljava/lang/String;Lnet/yostore/aws/handler/entity/FsInfo$EntryType;)I

    move-result v1

    iput v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 305
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 306
    invoke-direct {p0}, Lnet/yostore/aws/handler/entity/FsInfo;->parseAttribute()V

    .line 307
    return-void

    .line 286
    :cond_3
    const-string v1, "0"

    goto :goto_1

    .line 287
    :cond_4
    const-string v1, "0"

    goto :goto_2

    .line 288
    :cond_5
    const-string v1, "0"

    goto :goto_3

    .line 289
    :cond_6
    const-string v1, "0"

    goto :goto_4

    .line 290
    :cond_7
    const-string v1, "0"

    goto :goto_5

    :cond_8
    move v1, v6

    .line 292
    goto :goto_6

    .line 295
    :cond_9
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    goto :goto_7

    .line 300
    :cond_a
    const-string v1, "0"

    goto :goto_8

    .line 283
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public constructor <init>(Lnet/yostore/aws/api/entity/FileInfo;Z)V
    .locals 7
    .parameter "fi"
    .parameter "isSavedShearch"

    .prologue
    const/4 v6, 0x0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 26
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 28
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 29
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 30
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 31
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 32
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 34
    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 35
    iput v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 38
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ishidden:Ljava/lang/String;

    .line 43
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 44
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 46
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 49
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 50
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->filecount:Ljava/lang/String;

    .line 51
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->foldercount:Ljava/lang/String;

    .line 52
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->sumfoldersize:Ljava/lang/String;

    .line 55
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    .line 58
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 60
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 62
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fileUploadTime:J

    .line 64
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->createTimeFormat:Ljava/text/DateFormat;

    .line 65
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->timeFormat:Ljava/text/DateFormat;

    .line 66
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attTimeFormat:Ljava/text/DateFormat;

    .line 442
    const-wide/16 v1, 0x400

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->KB:J

    .line 443
    const-wide/32 v1, 0x100000

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->MB:J

    .line 444
    const-wide/32 v1, 0x40000000

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->GB:J

    .line 445
    const-wide v1, 0x10000000000L

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->TB:J

    .line 310
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getDisplay()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 312
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getAttribute()Lnet/yostore/aws/api/entity/Attribute;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    .line 313
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getLastwritetime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getLastwritetime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 314
    :cond_1
    new-instance v1, Lnet/yostore/aws/api/entity/Attribute;

    invoke-direct {v1}, Lnet/yostore/aws/api/entity/Attribute;-><init>()V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    .line 318
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getCreatedtime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getCreatedtime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 321
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->createTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getCreatedtime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 322
    .local v0, d:Ljava/util/Date;
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/Attribute;->setCreationtime(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v0           #d:Ljava/util/Date;
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 328
    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->SavedSearch:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 329
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 330
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    iget-object v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    invoke-direct {p0, v1, v2}, Lnet/yostore/aws/handler/entity/FsInfo;->getBrowseRawIcon(Ljava/lang/String;Lnet/yostore/aws/handler/entity/FsInfo$EntryType;)I

    move-result v1

    iput v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 331
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 354
    :goto_1
    invoke-direct {p0}, Lnet/yostore/aws/handler/entity/FsInfo;->parseAttribute()V

    .line 355
    return-void

    .line 333
    :cond_3
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getIsencrypted()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "1"

    :goto_2
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 334
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getIsowner()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "1"

    :goto_3
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 335
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getIsbackup()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "1"

    :goto_4
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 336
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getIsorigdeleted()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "1"

    :goto_5
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 337
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getIspublic()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "1"

    :goto_6
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 338
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getMarkid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 339
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getMarkid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    const/4 v1, 0x1

    :goto_7
    iput-boolean v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 344
    :goto_8
    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 346
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getSize()J

    move-result-wide v1

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 347
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getIsinfected()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "1"

    :goto_9
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FileInfo;->getHeadversion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 350
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 351
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    iget-object v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    invoke-direct {p0, v1, v2}, Lnet/yostore/aws/handler/entity/FsInfo;->getBrowseRawIcon(Ljava/lang/String;Lnet/yostore/aws/handler/entity/FsInfo$EntryType;)I

    move-result v1

    iput v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 352
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    goto :goto_1

    .line 333
    :cond_4
    const-string v1, "0"

    goto :goto_2

    .line 334
    :cond_5
    const-string v1, "0"

    goto :goto_3

    .line 335
    :cond_6
    const-string v1, "0"

    goto :goto_4

    .line 336
    :cond_7
    const-string v1, "0"

    goto :goto_5

    .line 337
    :cond_8
    const-string v1, "0"

    goto :goto_6

    :cond_9
    move v1, v6

    .line 339
    goto :goto_7

    .line 342
    :cond_a
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    goto :goto_8

    .line 347
    :cond_b
    const-string v1, "0"

    goto :goto_9

    .line 324
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public constructor <init>(Lnet/yostore/aws/api/entity/FolderInfo;)V
    .locals 7
    .parameter "fi"

    .prologue
    const/4 v6, 0x0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 26
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 28
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 29
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 30
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 31
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 32
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 34
    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 35
    iput v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 38
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ishidden:Ljava/lang/String;

    .line 43
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 44
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 46
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 49
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 50
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->filecount:Ljava/lang/String;

    .line 51
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->foldercount:Ljava/lang/String;

    .line 52
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->sumfoldersize:Ljava/lang/String;

    .line 55
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    .line 58
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 60
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 62
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fileUploadTime:J

    .line 64
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->createTimeFormat:Ljava/text/DateFormat;

    .line 65
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->timeFormat:Ljava/text/DateFormat;

    .line 66
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attTimeFormat:Ljava/text/DateFormat;

    .line 442
    const-wide/16 v1, 0x400

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->KB:J

    .line 443
    const-wide/32 v1, 0x100000

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->MB:J

    .line 444
    const-wide/32 v1, 0x40000000

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->GB:J

    .line 445
    const-wide v1, 0x10000000000L

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->TB:J

    .line 231
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getDisplay()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 233
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getAttribute()Lnet/yostore/aws/api/entity/Attribute;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    .line 234
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getLastwritetime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getLastwritetime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 235
    :cond_1
    new-instance v1, Lnet/yostore/aws/api/entity/Attribute;

    invoke-direct {v1}, Lnet/yostore/aws/api/entity/Attribute;-><init>()V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    .line 239
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getCreatedtime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getCreatedtime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 242
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->createTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getCreatedtime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 243
    .local v0, d:Ljava/util/Date;
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/Attribute;->setCreationtime(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .end local v0           #d:Ljava/util/Date;
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getIsencrypted()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "1"

    :goto_1
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getIsowner()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "1"

    :goto_2
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getIsbackup()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "1"

    :goto_3
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getIsorigdeleted()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "1"

    :goto_4
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getIspublic()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "1"

    :goto_5
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getMarkid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 254
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getMarkid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v1, 0x1

    :goto_6
    iput-boolean v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 259
    :goto_7
    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Folder:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 261
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/FolderInfo;->getIssharing()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "1"

    :goto_8
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 262
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 263
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    iget-object v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    invoke-direct {p0, v1, v2}, Lnet/yostore/aws/handler/entity/FsInfo;->getBrowseRawIcon(Ljava/lang/String;Lnet/yostore/aws/handler/entity/FsInfo$EntryType;)I

    move-result v1

    iput v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 264
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 265
    invoke-direct {p0}, Lnet/yostore/aws/handler/entity/FsInfo;->parseAttribute()V

    .line 266
    return-void

    .line 248
    :cond_3
    const-string v1, "0"

    goto :goto_1

    .line 249
    :cond_4
    const-string v1, "0"

    goto :goto_2

    .line 250
    :cond_5
    const-string v1, "0"

    goto :goto_3

    .line 251
    :cond_6
    const-string v1, "0"

    goto :goto_4

    .line 252
    :cond_7
    const-string v1, "0"

    goto :goto_5

    :cond_8
    move v1, v6

    .line 254
    goto :goto_6

    .line 257
    :cond_9
    const-string v1, "FsInfo"

    const-string v2, "Markid IS NULL!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 261
    :cond_a
    const-string v1, "0"

    goto :goto_8

    .line 245
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public constructor <init>(Lnet/yostore/aws/api/entity/SharedEntry;)V
    .locals 7
    .parameter "se"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 26
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 28
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 29
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 30
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 31
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 32
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 34
    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 35
    iput v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 38
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ishidden:Ljava/lang/String;

    .line 43
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 44
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 46
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 49
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 50
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->filecount:Ljava/lang/String;

    .line 51
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->foldercount:Ljava/lang/String;

    .line 52
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->sumfoldersize:Ljava/lang/String;

    .line 55
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    .line 58
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 60
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 62
    iput-wide v3, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fileUploadTime:J

    .line 64
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->createTimeFormat:Ljava/text/DateFormat;

    .line 65
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->timeFormat:Ljava/text/DateFormat;

    .line 66
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attTimeFormat:Ljava/text/DateFormat;

    .line 442
    const-wide/16 v1, 0x400

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->KB:J

    .line 443
    const-wide/32 v1, 0x100000

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->MB:J

    .line 444
    const-wide/32 v1, 0x40000000

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->GB:J

    .line 445
    const-wide v1, 0x10000000000L

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->TB:J

    .line 164
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SharedEntry;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SharedEntry;->getRawentryname()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SharedEntry;->getAttribute()Lnet/yostore/aws/api/entity/Attribute;

    move-result-object v1

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    .line 167
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getLastwritetime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getLastwritetime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v1}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 168
    :cond_1
    new-instance v1, Lnet/yostore/aws/api/entity/Attribute;

    invoke-direct {v1}, Lnet/yostore/aws/api/entity/Attribute;-><init>()V

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    .line 169
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SharedEntry;->getLastchangetime()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 170
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SharedEntry;->getLastchangetime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/Attribute;->setLastwritetime(Ljava/lang/String;)V

    .line 172
    :cond_2
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SharedEntry;->getCreatedtime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SharedEntry;->getCreatedtime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 175
    :try_start_0
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->createTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SharedEntry;->getCreatedtime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 176
    .local v0, d:Ljava/util/Date;
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/yostore/aws/api/entity/Attribute;->setCreationtime(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v0           #d:Ljava/util/Date;
    :cond_3
    :goto_0
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 182
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SharedEntry;->getIsBackup()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "1"

    :goto_1
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SharedEntry;->getSize()J

    move-result-wide v1

    iput-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 186
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SharedEntry;->getIsOrigdeleted()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "1"

    :goto_2
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SharedEntry;->getIsPublic()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "1"

    :goto_3
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SharedEntry;->getMarks()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SharedEntry;->getMarks()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 189
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/SharedEntry;->getIsFolder()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Folder:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    :goto_5
    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 190
    const-string v1, ""

    iput-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 191
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 192
    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    iget-object v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    invoke-direct {p0, v1, v2}, Lnet/yostore/aws/handler/entity/FsInfo;->getBrowseRawIcon(Ljava/lang/String;Lnet/yostore/aws/handler/entity/FsInfo$EntryType;)I

    move-result v1

    iput v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 193
    iput-boolean v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 194
    invoke-direct {p0}, Lnet/yostore/aws/handler/entity/FsInfo;->parseAttribute()V

    .line 195
    return-void

    .line 183
    :cond_4
    const-string v1, "0"

    goto :goto_1

    .line 186
    :cond_5
    const-string v1, "0"

    goto :goto_2

    .line 187
    :cond_6
    const-string v1, "0"

    goto :goto_3

    :cond_7
    move v1, v6

    .line 188
    goto :goto_4

    .line 189
    :cond_8
    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    goto :goto_5

    .line 178
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lnet/yostore/aws/api/entity/UserSharedFolderInfo;)V
    .locals 3
    .parameter "fi"

    .prologue
    const/4 v2, 0x0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 34
    sget-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 35
    iput v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ishidden:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 49
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->filecount:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->foldercount:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->sumfoldersize:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    .line 58
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 60
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fileUploadTime:J

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->createTimeFormat:Ljava/text/DateFormat;

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->timeFormat:Ljava/text/DateFormat;

    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attTimeFormat:Ljava/text/DateFormat;

    .line 442
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->KB:J

    .line 443
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->MB:J

    .line 444
    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->GB:J

    .line 445
    const-wide v0, 0x10000000000L

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->TB:J

    .line 358
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 359
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;->getDisplay()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 360
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;->getAttribute()Lnet/yostore/aws/api/entity/Attribute;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    .line 370
    invoke-virtual {p1}, Lnet/yostore/aws/api/entity/UserSharedFolderInfo;->getAccesscontrol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 372
    sget-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Folder:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 373
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    invoke-direct {p0, v0, v1}, Lnet/yostore/aws/handler/entity/FsInfo;->getBrowseRawIcon(Ljava/lang/String;Lnet/yostore/aws/handler/entity/FsInfo$EntryType;)I

    move-result v0

    iput v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 374
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 375
    invoke-direct {p0}, Lnet/yostore/aws/handler/entity/FsInfo;->parseAttribute()V

    .line 376
    return-void
.end method

.method public constructor <init>(Lnet/yostore/aws/handler/entity/FsInfo$EntryType;Ljava/lang/String;)V
    .locals 3
    .parameter "entryType"
    .parameter "display"

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 34
    sget-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 35
    iput v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ishidden:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 49
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->filecount:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->foldercount:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->sumfoldersize:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    .line 58
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 60
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fileUploadTime:J

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->createTimeFormat:Ljava/text/DateFormat;

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->timeFormat:Ljava/text/DateFormat;

    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attTimeFormat:Ljava/text/DateFormat;

    .line 442
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->KB:J

    .line 443
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->MB:J

    .line 444
    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->GB:J

    .line 445
    const-wide v0, 0x10000000000L

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->TB:J

    .line 116
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 117
    iput-object p2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->NUll:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Spreate:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne v0, v1, :cond_1

    .line 119
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 120
    :cond_1
    return-void
.end method

.method public constructor <init>(Lnet/yostore/aws/sqlite/entity/DownloadItem;)V
    .locals 3
    .parameter "di"

    .prologue
    const/4 v2, 0x0

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 34
    sget-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 35
    iput v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ishidden:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 49
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->filecount:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->foldercount:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->sumfoldersize:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    .line 58
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 60
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fileUploadTime:J

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->createTimeFormat:Ljava/text/DateFormat;

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->timeFormat:Ljava/text/DateFormat;

    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attTimeFormat:Ljava/text/DateFormat;

    .line 442
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->KB:J

    .line 443
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->MB:J

    .line 444
    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->GB:J

    .line 445
    const-wide v0, 0x10000000000L

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->TB:J

    .line 394
    iget-wide v0, p1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->fileid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 395
    iget-object v0, p1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->filename:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 396
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 397
    iget-wide v0, p1, Lnet/yostore/aws/sqlite/entity/DownloadItem;->size:J

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 398
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 399
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 400
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 402
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 403
    sget-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 404
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    invoke-direct {p0, v0, v1}, Lnet/yostore/aws/handler/entity/FsInfo;->getBrowseRawIcon(Ljava/lang/String;Lnet/yostore/aws/handler/entity/FsInfo$EntryType;)I

    move-result v0

    iput v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 405
    new-instance v0, Lnet/yostore/aws/api/entity/Attribute;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/Attribute;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    .line 406
    return-void
.end method

.method public constructor <init>(Lnet/yostore/aws/sqlite/entity/UploadItem;)V
    .locals 5
    .parameter "ui"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 34
    sget-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 35
    iput v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ishidden:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isinfected:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->version:Ljava/lang/String;

    .line 46
    iput-wide v3, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 49
    iput-boolean v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->filecount:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->foldercount:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->sumfoldersize:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->accesscontrol:Ljava/lang/String;

    .line 58
    iput-boolean v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 60
    iput-boolean v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fileUploadTime:J

    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->createTimeFormat:Ljava/text/DateFormat;

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->timeFormat:Ljava/text/DateFormat;

    .line 66
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attTimeFormat:Ljava/text/DateFormat;

    .line 442
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->KB:J

    .line 443
    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->MB:J

    .line 444
    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->GB:J

    .line 445
    const-wide v0, 0x10000000000L

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->TB:J

    .line 379
    iget-wide v0, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->idx:J

    mul-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 380
    new-instance v0, Lnet/yostore/aws/api/entity/Attribute;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/Attribute;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    .line 381
    iget-object v0, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->uploadFileName:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 382
    iget-wide v0, p1, Lnet/yostore/aws/sqlite/entity/UploadItem;->size:J

    iput-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    .line 383
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 384
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 385
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 386
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 387
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    .line 388
    sget-object v0, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    .line 389
    const v0, 0x7f020060

    iput v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->icon:I

    .line 390
    iput-boolean v2, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isUploadQItem:Z

    .line 391
    return-void
.end method

.method private getBrowseRawIcon(Ljava/lang/String;Lnet/yostore/aws/handler/entity/FsInfo$EntryType;)I
    .locals 3
    .parameter "disp"
    .parameter "entryType"

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, rtn:I
    sget-object v2, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Folder:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne p2, v2, :cond_1

    .line 460
    const v0, 0x7f02006b

    .line 490
    :cond_0
    :goto_0
    return v0

    .line 462
    :cond_1
    sget-object v2, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->File:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne p2, v2, :cond_0

    .line 464
    invoke-virtual {p0, p1}, Lnet/yostore/aws/handler/entity/FsInfo;->parseFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, tp:Ljava/lang/String;
    const-string v2, "audio/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 466
    const v0, 0x7f02006c

    goto :goto_0

    .line 467
    :cond_2
    const-string v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 468
    const v0, 0x7f020072

    goto :goto_0

    .line 469
    :cond_3
    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 470
    const v0, 0x7f02006f

    goto :goto_0

    .line 471
    :cond_4
    const-string v2, "application/pdf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 472
    const v0, 0x7f02006e

    goto :goto_0

    .line 473
    :cond_5
    const-string v2, "application/msword"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 474
    const v0, 0x7f020068

    goto :goto_0

    .line 475
    :cond_6
    const-string v2, "application/vnd.ms-excel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 476
    const v0, 0x7f02006a

    goto :goto_0

    .line 477
    :cond_7
    const-string v2, "application/vnd.ms-powerpoint"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 478
    const v0, 0x7f020070

    goto :goto_0

    .line 479
    :cond_8
    const-string v2, "text/*"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 480
    const v0, 0x7f020071

    goto :goto_0

    .line 481
    :cond_9
    const-string v2, "application/zip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 482
    const v0, 0x7f020074

    goto :goto_0

    .line 483
    :cond_a
    const-string v2, "application/epub+zip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 484
    const v0, 0x7f020069

    goto :goto_0

    .line 485
    :cond_b
    const-string v2, "code"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 486
    const v0, 0x7f020067

    goto/16 :goto_0

    .line 488
    :cond_c
    const v0, 0x7f02006d

    goto/16 :goto_0
.end method

.method private parseAttribute()V
    .locals 11

    .prologue
    .line 558
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 559
    .local v2, _nowDateTime:J
    iget-object v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    if-eqz v6, :cond_2

    .line 560
    iget-object v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 563
    :try_start_0
    iget-object v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attTimeFormat:Ljava/text/DateFormat;

    iget-object v7, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v7}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 564
    .local v4, d:Ljava/util/Date;
    iget-object v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/yostore/aws/api/entity/Attribute;->setCreationtime(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .end local v4           #d:Ljava/util/Date;
    :cond_0
    :goto_0
    iget-object v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/Attribute;->getLastaccesstime()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/Attribute;->getLastaccesstime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 576
    :try_start_1
    iget-object v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attTimeFormat:Ljava/text/DateFormat;

    iget-object v7, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v7}, Lnet/yostore/aws/api/entity/Attribute;->getLastaccesstime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 577
    .restart local v4       #d:Ljava/util/Date;
    iget-object v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const-wide/32 v9, 0xf4240

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/yostore/aws/api/entity/Attribute;->setLastaccesstime(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 586
    .end local v4           #d:Ljava/util/Date;
    :cond_1
    :goto_1
    iget-object v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/Attribute;->getLastwritetime()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/Attribute;->getLastwritetime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 589
    :try_start_2
    iget-object v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attTimeFormat:Ljava/text/DateFormat;

    iget-object v7, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v7}, Lnet/yostore/aws/api/entity/Attribute;->getLastwritetime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 590
    .restart local v4       #d:Ljava/util/Date;
    iget-object v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const-wide/32 v9, 0xf4240

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/yostore/aws/api/entity/Attribute;->setLastwritetime(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    .line 600
    .end local v4           #d:Ljava/util/Date;
    :cond_2
    :goto_2
    return-void

    .line 566
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 567
    .local v5, e1:Ljava/text/ParseException;
    iget-object v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v0, v6, v8

    .line 568
    .local v0, _d:J
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 569
    iget-object v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    new-instance v7, Ljava/util/Date;

    const-wide/32 v8, 0xf4240

    div-long v8, v0, v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/yostore/aws/api/entity/Attribute;->setCreationtime(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 579
    .end local v0           #_d:J
    .end local v5           #e1:Ljava/text/ParseException;
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 580
    .restart local v5       #e1:Ljava/text/ParseException;
    iget-object v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/Attribute;->getLastaccesstime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v0, v6, v8

    .line 581
    .restart local v0       #_d:J
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 582
    iget-object v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    new-instance v7, Ljava/util/Date;

    const-wide/32 v8, 0xf4240

    div-long v8, v0, v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/yostore/aws/api/entity/Attribute;->setLastaccesstime(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 592
    .end local v0           #_d:J
    .end local v5           #e1:Ljava/text/ParseException;
    :catch_2
    move-exception v6

    move-object v5, v6

    .line 593
    .restart local v5       #e1:Ljava/text/ParseException;
    iget-object v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/Attribute;->getLastwritetime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v0, v6, v8

    .line 594
    .restart local v0       #_d:J
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    .line 595
    iget-object v6, p0, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    new-instance v7, Ljava/util/Date;

    const-wide/32 v8, 0xf4240

    div-long v8, v0, v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnet/yostore/aws/api/entity/Attribute;->setLastwritetime(Ljava/lang/String;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public getSizeDisp()Ljava/lang/String;
    .locals 11

    .prologue
    const-wide v9, 0x10000000000L

    const-wide/32 v7, 0x40000000

    const-wide/32 v5, 0x100000

    const-wide/16 v3, 0x400

    .line 447
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    cmp-long v0, v0, v9

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    div-long/2addr v1, v9

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " TB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    :goto_0
    return-object v0

    .line 448
    :cond_0
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    cmp-long v0, v0, v7

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    div-long/2addr v1, v7

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 449
    :cond_1
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    div-long/2addr v1, v5

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 450
    :cond_2
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    div-long/2addr v1, v3

    long-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 451
    :cond_3
    iget-wide v0, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 452
    :cond_4
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public parseFileType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "end"

    .prologue
    .line 496
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 499
    const-string v0, "mp3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    const-string v0, "audio/mp3"

    .line 552
    :goto_0
    return-object v0

    .line 503
    :cond_0
    const-string v0, "m4a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "xmf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ogg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "wav"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "amr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    :cond_1
    const-string v0, "audio/*"

    goto :goto_0

    .line 507
    :cond_2
    const-string v0, "avi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "m4v"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mov"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 508
    const-string v0, "mkv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "vob"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "vcd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "svcd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "rm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "rmvb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 509
    const-string v0, "divx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "wmv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "3gp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "3gpp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "flv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 511
    :cond_3
    const-string v0, "video/*"

    goto/16 :goto_0

    .line 513
    :cond_4
    const-string v0, "jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "bmp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 515
    :cond_5
    const-string v0, "image/*"

    goto/16 :goto_0

    .line 517
    :cond_6
    const-string v0, "pdf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 519
    const-string v0, "application/pdf"

    goto/16 :goto_0

    .line 521
    :cond_7
    const-string v0, "doc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "docx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "rtf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 523
    :cond_8
    const-string v0, "application/msword"

    goto/16 :goto_0

    .line 525
    :cond_9
    const-string v0, "xls"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "xlsx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 527
    :cond_a
    const-string v0, "application/vnd.ms-excel"

    goto/16 :goto_0

    .line 529
    :cond_b
    const-string v0, "ppt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "pptx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 531
    :cond_c
    const-string v0, "application/vnd.ms-powerpoint"

    goto/16 :goto_0

    .line 533
    :cond_d
    const-string v0, "txt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "odt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "ods"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "odp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 535
    :cond_e
    const-string v0, "text/*"

    goto/16 :goto_0

    .line 537
    :cond_f
    const-string v0, "zip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "rar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 539
    :cond_10
    const-string v0, "application/zip"

    goto/16 :goto_0

    .line 541
    :cond_11
    const-string v0, "epub"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 543
    const-string v0, "application/epub+zip"

    goto/16 :goto_0

    .line 545
    :cond_12
    const-string v0, "htm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "js"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "css"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "java"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 546
    const-string v0, "aidl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "vb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "h"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 548
    :cond_13
    const-string v0, "code"

    goto/16 :goto_0

    .line 552
    :cond_14
    const-string v0, "*/*"

    goto/16 :goto_0
.end method

.method public putIntoBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .parameter "bundle"

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 410
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 411
    .restart local p1
    :cond_0
    const-string v0, "fi.id"

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v0, "fi.display"

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v0, "fi.isbackup"

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v0, "fi.isorigdeleted"

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v0, "fi.ispublic"

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v0, "fi.isStarred"

    iget-boolean v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 417
    const-string v0, "fi.isfolder"

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->getInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v0, "fi.issharing"

    iget-object v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v0, "fi.isReadOnly"

    iget-boolean v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->isReadOnly:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 420
    const-string v0, "fi.fileUploadTime"

    iget-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fileUploadTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 421
    const-string v0, "fi.size"

    iget-wide v1, p0, Lnet/yostore/aws/handler/entity/FsInfo;->fsize:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-object p1
.end method
