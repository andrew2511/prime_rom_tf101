.class public final Ldalvik/system/DalvikLogging;
.super Ljava/lang/Object;
.source "DalvikLogging.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loggerNameToTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "loggerName"

    .prologue
    const/16 v3, 0x17

    .line 34
    if-nez p0, :cond_7

    .line 35
    const-string v2, "null"

    .line 44
    :goto_6
    return-object v2

    .line 38
    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 39
    .local v1, length:I
    if-gt v1, v3, :cond_f

    move-object v2, p0

    .line 40
    goto :goto_6

    .line 43
    :cond_f
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 44
    .local v0, lastPeriod:I
    add-int/lit8 v2, v0, 0x1

    sub-int v2, v1, v2

    if-gt v2, v3, :cond_22

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6
.end method
