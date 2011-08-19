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
    .locals 4
    .parameter "ctx"

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, ai:Lnet/yostore/aws/sqlite/entity/AccInfo;
    new-instance v2, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 44
    .local v2, rta:Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->open()Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    .line 45
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->getAccInfo()Landroid/database/Cursor;

    move-result-object v1

    .line 47
    .local v1, cr:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    new-instance v0, Lnet/yostore/aws/sqlite/entity/AccInfo;

    .end local v0           #ai:Lnet/yostore/aws/sqlite/entity/AccInfo;
    invoke-direct {v0, v1}, Lnet/yostore/aws/sqlite/entity/AccInfo;-><init>(Landroid/database/Cursor;)V

    .line 50
    .restart local v0       #ai:Lnet/yostore/aws/sqlite/entity/AccInfo;
    :cond_0
    if-eqz v1, :cond_1

    .line 51
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 52
    :cond_1
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->close()V

    .line 53
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
    .line 33
    sget-object v1, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->TAG:Ljava/lang/String;

    const-string v2, "removeAccInfo\r\n\t"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 35
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->open()Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    .line 36
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->deleteAccInfo()Z

    .line 37
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->close()V

    .line 38
    return-void
.end method

.method public static updateAccBrowseSort(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 4
    .parameter "ctx"
    .parameter "uid"
    .parameter "browseSort"
    .parameter "browseSortByDesc"

    .prologue
    .line 57
    sget-object v1, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateAccBrowseSort\r\n\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->open()Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    .line 60
    invoke-virtual {v0, p1, p2, p3}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->updateAccBrowseSort(Ljava/lang/String;II)J

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
    .line 24
    sget-object v2, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateAccEncryptPwd\r\n\t"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v1, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    invoke-direct {v1, p0}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;-><init>(Landroid/content/Context;)V

    .line 26
    .local v1, wia:Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->open()Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;

    .line 27
    invoke-static {p0}, Lnet/yostore/aws/sqlite/helper/AccInfoHelper;->getAccInfo(Landroid/content/Context;)Lnet/yostore/aws/sqlite/entity/AccInfo;

    move-result-object v0

    .line 28
    .local v0, ai:Lnet/yostore/aws/sqlite/entity/AccInfo;
    iget-object v2, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->uid:Ljava/lang/String;

    iget-object v3, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->pwd:Ljava/lang/String;

    iget-object v4, v0, Lnet/yostore/aws/sqlite/entity/AccInfo;->sgw:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, p1}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->updateAccEncryptPwd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 29
    invoke-virtual {v1}, Lnet/yostore/aws/sqlite/helper/AccInfoAdapter;->close()V

    .line 30
    return-void
.end method
