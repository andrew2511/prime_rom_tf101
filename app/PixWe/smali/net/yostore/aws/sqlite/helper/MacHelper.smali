.class public Lnet/yostore/aws/sqlite/helper/MacHelper;
.super Ljava/lang/Object;
.source "MacHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "AccInfoHelper"

    sput-object v0, Lnet/yostore/aws/sqlite/helper/MacHelper;->TAG:Ljava/lang/String;

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

.method public static getMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "ctx"

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, macaddr:Ljava/lang/String;
    new-instance v2, Lnet/yostore/aws/sqlite/helper/MacAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/MacAdapter;-><init>(Landroid/content/Context;)V

    .line 35
    .local v2, rta:Lnet/yostore/aws/sqlite/helper/MacAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/MacAdapter;->open()Lnet/yostore/aws/sqlite/helper/MacAdapter;

    .line 36
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/MacAdapter;->getMac()Landroid/database/Cursor;

    move-result-object v0

    .line 38
    .local v0, cr:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 42
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 43
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/MacAdapter;->close()V

    .line 44
    sput-object v1, Lnet/yostore/aws/api/entity/ApiCookies;->macaddr:Ljava/lang/String;

    .line 45
    return-object v1
.end method

.method public static insertMac(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "ctx"
    .parameter "macaddr"

    .prologue
    .line 16
    sget-object v1, Lnet/yostore/aws/sqlite/helper/MacHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insertMac\r\n\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v0, Lnet/yostore/aws/sqlite/helper/MacAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/MacAdapter;-><init>(Landroid/content/Context;)V

    .line 18
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/MacAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/MacAdapter;->open()Lnet/yostore/aws/sqlite/helper/MacAdapter;

    .line 19
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/MacAdapter;->insertMac(Ljava/lang/String;)J

    .line 20
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/MacAdapter;->close()V

    .line 21
    return-void
.end method

.method public static removeMac(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 24
    sget-object v1, Lnet/yostore/aws/sqlite/helper/MacHelper;->TAG:Ljava/lang/String;

    const-string v2, "removeMac\r\n\t"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Lnet/yostore/aws/sqlite/helper/MacAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/MacAdapter;-><init>(Landroid/content/Context;)V

    .line 26
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/MacAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/MacAdapter;->open()Lnet/yostore/aws/sqlite/helper/MacAdapter;

    .line 27
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/MacAdapter;->deleteMac()Z

    .line 28
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/MacAdapter;->close()V

    .line 29
    return-void
.end method
