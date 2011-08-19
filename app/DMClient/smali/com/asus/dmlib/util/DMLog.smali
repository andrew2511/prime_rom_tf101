.class public final Lcom/asus/dmlib/util/DMLog;
.super Ljava/lang/Object;
.source "DMLog.java"


# static fields
.field public static DEBUG:Z = false

.field public static final LOGTAG:Ljava/lang/String; = "AsusDMLib"

.field public static final PACKET_TAG:Ljava/lang/String; = "DM/Packet"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asus/dmlib/util/DMLog;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static highLightLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "info"

    .prologue
    .line 22
    sget-boolean v0, Lcom/asus/dmlib/util/DMLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    return-void
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 16
    sget-boolean v0, Lcom/asus/dmlib/util/DMLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 17
    const-string v0, "AsusDMLib"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    return-void
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "info"

    .prologue
    .line 48
    sget-boolean v0, Lcom/asus/dmlib/util/DMLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "tag"
    .parameter "string"
    .parameter "ex"

    .prologue
    .line 70
    sget-boolean v0, Lcom/asus/dmlib/util/DMLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    :cond_0
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 1
    .parameter "pInfo"

    .prologue
    .line 36
    const-string v0, "AsusDMLib"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "tag"
    .parameter "e"

    .prologue
    .line 44
    const-string v0, ""

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "info"

    .prologue
    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "pInfo"
    .parameter "pThrow"

    .prologue
    .line 32
    const-string v0, "AsusDMLib"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    return-void
.end method

.method public static logE(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "pThrow"

    .prologue
    .line 28
    const-string v0, "AsusDMLib"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    return-void
.end method

.method public static logException(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "ex"

    .prologue
    .line 76
    sget-boolean v0, Lcom/asus/dmlib/util/DMLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    :cond_0
    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "info"

    .prologue
    .line 66
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter "tag"
    .parameter "e"

    .prologue
    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "info"

    .prologue
    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "tag"
    .parameter "string"
    .parameter "ex"

    .prologue
    .line 58
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    return-void
.end method
