.class public Lnet/yostore/aws/sqlite/helper/AccInfoHelper;
.super Ljava/lang/Object;
.source "AccInfoHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "AccInfoHelper"

    sput-object v0, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->TAG:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;
    .locals 7
    .parameter "ctx"

    .prologue
    .line 66
    new-instance v0, Lnet/yostore/aws/sqlite/entity/AccInfo;

    invoke-direct {v0}, Lnet/yostore/aws/sqlite/entity/AccInfo;-><init>()V

    .line 67
    .local v0, ai:Lnet/yostore/aws/sqlite/entity/AccInfo;
    new-instance v4, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    invoke-direct {v4, p0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 68
    .local v4, rta:Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->open()Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    .line 69
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->getAccInfo()Landroid/database/Cursor;

    move-result-object v1

    .line 71
    .local v1, cr:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 72
    const/4 v2, 0x0

    .line 73
    .local v2, i:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    .line 74
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    .line 75
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->sgw:Ljava/lang/String;

    .line 76
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->encryptPwd:Ljava/lang/String;

    .line 77
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setCapacity(Ljava/lang/String;)V

    .line 78
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setExpireDate(Ljava/lang/String;)V

    .line 79
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lnet/yostore/aws/sqlite/entity/AccInfo;->setUsedquota(Ljava/lang/String;)V

    .line 80
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pixwe_folder_id:J

    .line 81
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->albums_meta_folder_id:J

    .line 85
    .end local v3           #i:I
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 86
    invoke-virtual {v4}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->close()V

    .line 87
    return-object v0
.end method

.method public static insertAccInfo(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AccInfo;)V
    .locals 4
    .parameter "ctx"
    .parameter "ai"

    .prologue
    .line 16
    sget-object v1, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insertAccInfo\r\n\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AccInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v0, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 18
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->open()Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    .line 19
    iget-object v1, p1, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    iget-object v2, p1, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    iget-object v3, p1, Lnet/yostore/aws/sqlite/entity/AccInfo;->sgw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->insertAccInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 20
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->close()V

    .line 21
    return-void
.end method

.method public static removeAccInfo(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 57
    sget-object v1, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->TAG:Ljava/lang/String;

    const-string v2, "removeAccInfo\r\n\t"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->open()Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    .line 60
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->deleteAccInfo()Z

    .line 61
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->close()V

    .line 62
    return-void
.end method

.method public static updateAccEncryptPwd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "ctx"
    .parameter "ancryptPwd"

    .prologue
    .line 30
    sget-object v2, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateAccEncryptPwd\r\n\t"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v1, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    invoke-direct {v1, p0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 32
    .local v1, wia:Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->open()Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    .line 33
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v0

    .line 34
    .local v0, ai:Lnet/yostore/aws/sqlite/entity/AccInfo;
    iget-object v2, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    iget-object v3, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    iget-object v4, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->sgw:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, p1}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->updateAccEncryptPwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 35
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->close()V

    .line 36
    return-void
.end method

.method public static updateAccMetaFolder(Landroid/content/Context;J)V
    .locals 5
    .parameter "ctx"
    .parameter "metaFolder"

    .prologue
    .line 48
    sget-object v2, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateAccMetaFolder\r\n\t"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v1, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    invoke-direct {v1, p0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 50
    .local v1, wia:Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->open()Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    .line 51
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v0

    .line 52
    .local v0, ai:Lnet/yostore/aws/sqlite/entity/AccInfo;
    iget-object v2, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->updateAccMetaFolder(Ljava/lang/String;J)J

    .line 53
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->close()V

    .line 54
    return-void
.end method

.method public static updateAccPixWeFolder(Landroid/content/Context;J)V
    .locals 5
    .parameter "ctx"
    .parameter "pixweFolder"

    .prologue
    .line 39
    sget-object v2, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateAccPixWeFolder\r\n\t"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v1, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    invoke-direct {v1, p0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 41
    .local v1, wia:Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->open()Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    .line 42
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v0

    .line 43
    .local v0, ai:Lnet/yostore/aws/sqlite/entity/AccInfo;
    iget-object v2, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2, p1, p2}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->updateAccPixWeFolder(Ljava/lang/String;J)J

    .line 44
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->close()V

    .line 45
    return-void
.end method

.method public static updateCapacity(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/AccInfo;)V
    .locals 5
    .parameter "ctx"
    .parameter "ai"

    .prologue
    .line 23
    sget-object v1, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insertAccInfo\r\n\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AccInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v0, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 25
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->open()Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    .line 26
    iget-object v1, p1, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getCapacity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getExpireDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lnet/yostore/aws/sqlite/entity/AccInfo;->getUsedquota()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->updateCapacity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 27
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->close()V

    .line 28
    return-void
.end method
