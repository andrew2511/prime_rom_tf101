.class public Lnet/yostore/aws/sqlite/helper/OOBEFlagHelper;
.super Ljava/lang/Object;
.source "OOBEFlagHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "OOBEFlagHelper"

    sput-object v0, Lnet/yostore/aws/sqlite/helper/OOBEFlagHelper;->TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteOOBEFlag(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 27
    sget-object v1, Lnet/yostore/aws/sqlite/helper/OOBEFlagHelper;->TAG:Ljava/lang/String;

    const-string v2, "removeMac\r\n\t"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v0, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;-><init>(Landroid/content/Context;)V

    .line 29
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->open()Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;

    .line 30
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->deleteOOBEFlag()Z

    .line 31
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->close()V

    .line 32
    return-void
.end method

.method public static getOOBEFlag(Landroid/content/Context;)I
    .locals 5
    .parameter "ctx"

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, flag:I
    new-instance v3, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;

    invoke-direct {v3, p0}, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;-><init>(Landroid/content/Context;)V

    .line 39
    .local v3, rta:Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->open()Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;

    .line 40
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->getOOBEFlag()Landroid/database/Cursor;

    move-result-object v0

    .line 42
    .local v0, cr:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 43
    new-instance v2, Lnet/yostore/aws/sqlite/entity/OOBE;

    invoke-direct {v2, v0}, Lnet/yostore/aws/sqlite/entity/OOBE;-><init>(Landroid/database/Cursor;)V

    .line 45
    .local v2, oobe:Lnet/yostore/aws/sqlite/entity/OOBE;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/entity/OOBE;->getIsfirsttouse()I

    move-result v1

    .line 47
    .end local v2           #oobe:Lnet/yostore/aws/sqlite/entity/OOBE;
    :cond_0
    if-eqz v0, :cond_1

    .line 48
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_1
    invoke-virtual {v3}, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->close()V

    .line 50
    return v1
.end method

.method public static insertFirstToUseFlag(Landroid/content/Context;I)V
    .locals 4
    .parameter "ctx"
    .parameter "firsToUse"

    .prologue
    .line 19
    sget-object v1, Lnet/yostore/aws/sqlite/helper/OOBEFlagHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insertFirstToUseFlag\r\n\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v0, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;-><init>(Landroid/content/Context;)V

    .line 21
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->open()Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;

    .line 22
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->insertFirstToUseFlag(I)J

    .line 23
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->close()V

    .line 24
    return-void
.end method

.method public static updateFirstTimeToUseFlag(Landroid/content/Context;I)V
    .locals 3
    .parameter "ctx"
    .parameter "firstTimeFlag"

    .prologue
    .line 54
    sget-object v1, Lnet/yostore/aws/sqlite/helper/OOBEFlagHelper;->TAG:Ljava/lang/String;

    const-string v2, "updateFirstTimeToUseFlag\r\n\t"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->open()Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;

    .line 57
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->updateFirstTimeToUseFlag(I)J

    .line 58
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/OOBEFlagAdapter;->close()V

    .line 59
    return-void
.end method
