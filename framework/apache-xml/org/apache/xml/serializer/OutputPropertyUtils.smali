.class public final Lorg/apache/xml/serializer/OutputPropertyUtils;
.super Ljava/lang/Object;
.source "OutputPropertyUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanProperty(Ljava/lang/String;Ljava/util/Properties;)Z
    .registers 4
    .parameter "key"
    .parameter "props"

    .prologue
    .line 52
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_e

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 55
    :cond_e
    const/4 v1, 0x0

    .line 57
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public static getIntProperty(Ljava/lang/String;Ljava/util/Properties;)I
    .registers 4
    .parameter "key"
    .parameter "props"

    .prologue
    .line 75
    invoke-virtual {p1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 78
    const/4 v1, 0x0

    .line 80
    :goto_7
    return v1

    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_7
.end method
