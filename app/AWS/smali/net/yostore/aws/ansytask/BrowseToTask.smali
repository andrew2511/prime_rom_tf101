.class public Lnet/yostore/aws/ansytask/BrowseToTask;
.super Landroid/os/AsyncTask;
.source "BrowseToTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field _mdialog:Landroid/app/ProgressDialog;

.field private bto:Lnet/yostore/aws/dto/BrowseToObject;

.field private bv:Lnet/yostore/aws/vo/BrowseVo;

.field ctx:Landroid/content/Context;

.field private fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

.field private fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

.field private fsInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private nowDate:Ljava/util/Date;

.field task:Landroid/os/AsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lnet/yostore/aws/dto/BrowseToObject;Ljava/util/List;)V
    .locals 2
    .parameter "ctx"
    .parameter "bto"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lnet/yostore/aws/dto/BrowseToObject;",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p3, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    new-instance v0, Lnet/yostore/aws/vo/BrowseVo;

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    invoke-direct {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;-><init>(Lnet/yostore/aws/dto/BrowseToObject$BrowseType;)V

    iput-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    .line 40
    iput-object p1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->ctx:Landroid/content/Context;

    .line 41
    iput-object p3, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fsInfos:Ljava/util/List;

    .line 42
    iput-object p2, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    .line 43
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->nowDate:Ljava/util/Date;

    .line 44
    return-void
.end method

.method private compareDateAndProcessFsInfo(Ljava/util/List;Lnet/yostore/aws/handler/entity/FsInfo;Lnet/yostore/aws/handler/entity/FsInfo;)Ljava/util/List;
    .locals 10
    .parameter
    .parameter "preItem"
    .parameter "nextItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    new-instance v1, Ljava/util/Date;

    iget-object v6, p2, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 215
    .local v1, _preDate:Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    iget-object v6, p3, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Lnet/yostore/aws/api/entity/Attribute;

    invoke-virtual {v6}, Lnet/yostore/aws/api/entity/Attribute;->getCreationtime()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 216
    .local v0, _nextDate:Ljava/util/Date;
    iget-object v6, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->nowDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 217
    .local v4, preDifference:J
    iget-object v6, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->nowDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 218
    .local v2, nextDifference:J
    const-wide/32 v6, -0x65813800

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    const-wide/32 v6, -0x65813800

    cmp-long v6, v2, v6

    if-ltz v6, :cond_1

    .line 219
    new-instance v6, Lnet/yostore/aws/handler/entity/FsInfo;

    sget-object v7, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Spreate:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    const-string v8, "A month later"

    invoke-direct {v6, v7, v8}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/handler/entity/FsInfo$EntryType;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    :cond_0
    :goto_0
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    return-object p1

    .line 220
    :cond_1
    const-wide/32 v6, 0x240c8400

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    const-wide/32 v6, 0x240c8400

    cmp-long v6, v2, v6

    if-ltz v6, :cond_2

    .line 221
    new-instance v6, Lnet/yostore/aws/handler/entity/FsInfo;

    sget-object v7, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Spreate:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    const-string v8, "A month ago"

    invoke-direct {v6, v7, v8}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/handler/entity/FsInfo$EntryType;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    :cond_2
    const-wide/32 v6, 0xa4cb800

    cmp-long v6, v4, v6

    if-gez v6, :cond_3

    const-wide/32 v6, 0xa4cb800

    cmp-long v6, v2, v6

    if-ltz v6, :cond_3

    .line 223
    new-instance v6, Lnet/yostore/aws/handler/entity/FsInfo;

    sget-object v7, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Spreate:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    const-string v8, "A week ago"

    invoke-direct {v6, v7, v8}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/handler/entity/FsInfo$EntryType;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_3
    const-wide/32 v6, 0x5265c00

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    const-wide/32 v6, 0x5265c00

    cmp-long v6, v2, v6

    if-ltz v6, :cond_0

    .line 225
    new-instance v6, Lnet/yostore/aws/handler/entity/FsInfo;

    sget-object v7, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->Spreate:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    const-string v8, "yesterday"

    invoke-direct {v6, v7, v8}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/handler/entity/FsInfo$EntryType;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 10
    .parameter "arg0"

    .prologue
    const/16 v3, 0x14

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 50
    iput-object p0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->task:Landroid/os/AsyncTask;

    .line 51
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    if-eqz v0, :cond_c

    .line 52
    new-array v0, v9, [Ljava/lang/Integer;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/BrowseToTask;->publishProgress([Ljava/lang/Object;)V

    .line 54
    new-instance v0, Lnet/yostore/aws/handler/FolderBrowseHandler;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v2}, Lnet/yostore/aws/dto/BrowseToObject;->getApicfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/yostore/aws/handler/FolderBrowseHandler;-><init>(Landroid/content/Context;Lnet/yostore/aws/api/ApiConfig;)V

    iput-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

    .line 55
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowsePage()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowsePage(I)V

    .line 56
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getApicfg()Lnet/yostore/aws/api/ApiConfig;

    move-result-object v7

    .line 58
    .local v7, apicfg:Lnet/yostore/aws/api/ApiConfig;
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_8

    .line 59
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 60
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "system."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".home.root"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "system."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v7, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".home.root"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowseId(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseFolderId(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060094

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseFolderName(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0, v8}, Lnet/yostore/aws/dto/BrowseToObject;->setBackup(Z)V

    .line 66
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0, v8}, Lnet/yostore/aws/dto/BrowseToObject;->setReadOnly(Z)V

    .line 84
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v2}, Lnet/yostore/aws/dto/BrowseToObject;->getSortBy()Lnet/yostore/aws/dto/BrowseToObject$SortBy;

    move-result-object v2

    invoke-virtual {v2}, Lnet/yostore/aws/dto/BrowseToObject$SortBy;->getInt()I

    move-result v2

    iget-object v3, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v3}, Lnet/yostore/aws/dto/BrowseToObject;->getSortDirection()Lnet/yostore/aws/dto/BrowseToObject$SortDirection;

    move-result-object v3

    invoke-virtual {v3}, Lnet/yostore/aws/dto/BrowseToObject$SortDirection;->getInt()I

    move-result v3

    iget-object v4, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v4}, Lnet/yostore/aws/dto/BrowseToObject;->isPageEnable()Z

    move-result v4

    iget-object v5, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v5}, Lnet/yostore/aws/dto/BrowseToObject;->getPageSize()I

    move-result v5

    iget-object v6, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v6}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowsePage()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lnet/yostore/aws/handler/FolderBrowseHandler;->getFolderBrowseReturn(Ljava/lang/String;IIZII)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    .line 100
    :cond_2
    :goto_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    invoke-virtual {v0}, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->getFsInfos()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    .line 101
    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 107
    .end local v7           #apicfg:Lnet/yostore/aws/api/ApiConfig;
    :goto_2
    return-object v0

    .line 67
    .restart local v7       #apicfg:Lnet/yostore/aws/api/ApiConfig;
    :cond_4
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "system.backup.root"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 69
    :cond_5
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    const-string v1, "system.backup.root"

    invoke-virtual {v0, v1}, Lnet/yostore/aws/dto/BrowseToObject;->setBrowseId(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    const-string v1, "-3"

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseFolderId(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060096

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseFolderName(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0, v9}, Lnet/yostore/aws/dto/BrowseToObject;->setBackup(Z)V

    .line 73
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0, v9}, Lnet/yostore/aws/dto/BrowseToObject;->setReadOnly(Z)V

    goto/16 :goto_0

    .line 74
    :cond_6
    if-eqz v7, :cond_7

    iget-object v0, v7, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, v7, Lnet/yostore/aws/api/ApiConfig;->MySyncFolderId:Ljava/lang/String;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 75
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseFolderId(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060095

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseFolderName(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0, v8}, Lnet/yostore/aws/dto/BrowseToObject;->setBackup(Z)V

    .line 78
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0, v8}, Lnet/yostore/aws/dto/BrowseToObject;->setReadOnly(Z)V

    goto/16 :goto_0

    .line 80
    :cond_7
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseFolderId(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseFolderName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    :cond_8
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->AllShares:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_9

    .line 86
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060020

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseFolderName(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

    const/16 v1, 0x64

    const-string v2, ""

    invoke-virtual {v0, v8, v9, v1, v2}, Lnet/yostore/aws/handler/FolderBrowseHandler;->getSharedEntries(IIILjava/lang/String;)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    goto/16 :goto_1

    .line 88
    :cond_9
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->RecentChanges:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_a

    .line 89
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->ctx:Landroid/content/Context;

    const v2, 0x7f06001a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseFolderName(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

    invoke-virtual {v0, v3, v9}, Lnet/yostore/aws/handler/FolderBrowseHandler;->getRecentChanges(II)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    goto/16 :goto_1

    .line 91
    :cond_a
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->RecentUpload:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_2

    .line 92
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->ctx:Landroid/content/Context;

    const v2, 0x7f06001f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseFolderName(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

    invoke-virtual {v0, v3, v9}, Lnet/yostore/aws/handler/FolderBrowseHandler;->getRecentUploads(II)Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    goto/16 :goto_1

    .line 104
    :cond_b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 107
    .end local v7           #apicfg:Lnet/yostore/aws/api/ApiConfig;
    :cond_c
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/BrowseToTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onBack()V
    .locals 2

    .prologue
    .line 233
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowsePage()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Search:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getSearchOffset()I

    move-result v0

    if-nez v0, :cond_2

    .line 234
    :cond_1
    iget-object p0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->ctx:Landroid/content/Context;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_2
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 116
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onFailRtn(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 3
    .parameter "_bv"

    .prologue
    .line 247
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->ctx:Landroid/content/Context;

    invoke-virtual {p1}, Lnet/yostore/aws/vo/BrowseVo;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 248
    return-void
.end method

.method protected onNullInput()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8
    .parameter "result"

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 145
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowsePage()I

    move-result v0

    if-le v0, v5, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fsInfos:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fsInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fsInfos:Ljava/util/List;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fsInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v0, v0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->SearchMore:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fsInfos:Ljava/util/List;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fsInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/handler/entity/FsInfo;

    iget-object v0, v0, Lnet/yostore/aws/handler/entity/FsInfo;->entryType:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    sget-object v1, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->BrowseMore:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    if-ne v0, v1, :cond_1

    .line 146
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fsInfos:Ljava/util/List;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fsInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 148
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fsInfos:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowsePage()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 149
    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fsInfos:Ljava/util/List;

    .line 151
    :cond_3
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->getFbTotal()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseTotal(I)V

    .line 152
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowsePage()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowsePage(I)V

    .line 153
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseType(Lnet/yostore/aws/dto/BrowseToObject$BrowseType;)V

    .line 186
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fsInfos:Ljava/util/List;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->getFsInfos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 188
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v0}, Lnet/yostore/aws/dto/BrowseToObject;->isPageEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fsInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->getFbTotal()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 189
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->getFbTotal()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseTotal(I)V

    .line 190
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fsInfos:Ljava/util/List;

    new-instance v1, Lnet/yostore/aws/handler/entity/FsInfo;

    sget-object v2, Lnet/yostore/aws/handler/entity/FsInfo$EntryType;->BrowseMore:Lnet/yostore/aws/handler/entity/FsInfo$EntryType;

    iget-object v3, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->ctx:Landroid/content/Context;

    const v4, 0x7f06006c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>(Lnet/yostore/aws/handler/entity/FsInfo$EntryType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_4
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fsInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setFsInfos(Ljava/util/List;)V

    .line 193
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    sget-object v1, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->Success:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setStatus(Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;)V

    .line 194
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->getParentFolderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setParentFolderId(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fbRtn:Lnet/yostore/aws/handler/entity/FolderBrowseReturn;

    invoke-virtual {v1}, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->getParentFolderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setParentFolderName(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->isBackup()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setBackup(Z)V

    .line 197
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bto:Lnet/yostore/aws/dto/BrowseToObject;

    invoke-virtual {v1}, Lnet/yostore/aws/dto/BrowseToObject;->isReadOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setReadOnly(Z)V

    .line 198
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/BrowseToTask;->onSuccessRtn(Lnet/yostore/aws/vo/BrowseVo;)V

    .line 199
    new-array v0, v5, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/BrowseToTask;->publishProgress([Ljava/lang/Object;)V

    .line 211
    :goto_0
    return-void

    .line 200
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 201
    invoke-virtual {p0}, Lnet/yostore/aws/ansytask/BrowseToTask;->onNullInput()V

    goto :goto_0

    .line 203
    :cond_6
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fsInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setFsInfos(Ljava/util/List;)V

    .line 204
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {v0, v6}, Lnet/yostore/aws/vo/BrowseVo;->setBrowseTotal(I)V

    .line 205
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    sget-object v1, Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;->GeneralErr:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setStatus(Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;)V

    .line 206
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060034

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->fbHandler:Lnet/yostore/aws/handler/FolderBrowseHandler;

    iget-object v2, v2, Lnet/yostore/aws/handler/FolderBrowseHandler;->errMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/yostore/aws/vo/BrowseVo;->setErrMsg(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->bv:Lnet/yostore/aws/vo/BrowseVo;

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/BrowseToTask;->onFailRtn(Lnet/yostore/aws/vo/BrowseVo;)V

    .line 208
    new-array v0, v5, [Ljava/lang/Integer;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lnet/yostore/aws/ansytask/BrowseToTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/BrowseToTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 126
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :try_start_0
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->ctx:Landroid/content/Context;

    const v2, 0x7f060012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->ctx:Landroid/content/Context;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-instance v5, Lnet/yostore/aws/ansytask/BrowseToTask$1;

    invoke-direct {v5, p0}, Lnet/yostore/aws/ansytask/BrowseToTask$1;-><init>(Lnet/yostore/aws/ansytask/BrowseToTask;)V

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->_mdialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->_mdialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lnet/yostore/aws/ansytask/BrowseToTask;->_mdialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 135
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lnet/yostore/aws/ansytask/BrowseToTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method protected onSuccessRtn(Lnet/yostore/aws/vo/BrowseVo;)V
    .locals 0
    .parameter "_bv"

    .prologue
    .line 244
    return-void
.end method
