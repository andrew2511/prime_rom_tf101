.class public Lnet/yostore/aws/sqlite/helper/MacHelper;
.super Ljava/lang/Object;
.source "MacHelper.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "AccInfoHelper"

    sput-object v0, Lnet/yostore/aws/sqlite/helper/MacHelper;->TAG:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "ctx"

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, macaddr:Ljava/lang/String;
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 36
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 38
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    .line 40
    :cond_0
    new-instance v2, Lnet/yostore/aws/sqlite/helper/MacAdapter;

    invoke-direct {v2, p0}, Lnet/yostore/aws/sqlite/helper/MacAdapter;-><init>(Landroid/content/Context;)V

    .line 41
    .local v2, rta:Lnet/yostore/aws/sqlite/helper/MacAdapter;
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/MacAdapter;->open()Lnet/yostore/aws/sqlite/helper/MacAdapter;

    .line 42
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/MacAdapter;->getMac()Landroid/database/Cursor;

    move-result-object v0

    .line 44
    .local v0, cr:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 49
    invoke-virtual {v2}, Lnet/yostore/aws/sqlite/helper/MacAdapter;->close()V

    .line 51
    .end local v0           #cr:Landroid/database/Cursor;
    .end local v2           #rta:Lnet/yostore/aws/sqlite/helper/MacAdapter;
    :cond_2
    sput-object v1, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->macaddr:Ljava/lang/String;

    .line 52
    return-object v1
.end method

.method public static insertMac(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "ctx"
    .parameter "macaddr"

    .prologue
    .line 18
    sget-object v1, Lnet/yostore/aws/sqlite/helper/MacHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insertMac\r\n\t"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v0, Lnet/yostore/aws/sqlite/helper/MacAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/MacAdapter;-><init>(Landroid/content/Context;)V

    .line 20
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/MacAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/MacAdapter;->open()Lnet/yostore/aws/sqlite/helper/MacAdapter;

    .line 21
    invoke-virtual {v0, p1}, Lnet/yostore/aws/sqlite/helper/MacAdapter;->insertMac(Ljava/lang/String;)J

    .line 22
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/MacAdapter;->close()V

    .line 23
    return-void
.end method

.method public static removeMac(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 26
    sget-object v1, Lnet/yostore/aws/sqlite/helper/MacHelper;->TAG:Ljava/lang/String;

    const-string v2, "removeMac\r\n\t"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v0, Lnet/yostore/aws/sqlite/helper/MacAdapter;

    invoke-direct {v0, p0}, Lnet/yostore/aws/sqlite/helper/MacAdapter;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, wia:Lnet/yostore/aws/sqlite/helper/MacAdapter;
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/MacAdapter;->open()Lnet/yostore/aws/sqlite/helper/MacAdapter;

    .line 29
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/MacAdapter;->deleteMac()Z

    .line 30
    invoke-virtual {v0}, Lnet/yostore/aws/sqlite/helper/MacAdapter;->close()V

    .line 31
    return-void
.end method
