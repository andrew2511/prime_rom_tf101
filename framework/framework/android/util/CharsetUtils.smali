.class public final Landroid/util/CharsetUtils;
.super Ljava/lang/Object;
.source "CharsetUtils.java"


# static fields
.field private static final VENDOR_DOCOMO:Ljava/lang/String; = "docomo"

.field private static final VENDOR_KDDI:Ljava/lang/String; = "kddi"

.field private static final VENDOR_SOFTBANK:Ljava/lang/String; = "softbank"

.field private static final sVendorShiftJisMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/util/CharsetUtils;->sVendorShiftJisMap:Ljava/util/Map;

    .line 67
    sget-object v0, Landroid/util/CharsetUtils;->sVendorShiftJisMap:Ljava/util/Map;

    const-string v1, "docomo"

    const-string v2, "docomo-shift_jis-2007"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Landroid/util/CharsetUtils;->sVendorShiftJisMap:Ljava/util/Map;

    const-string v1, "kddi"

    const-string v2, "kddi-shift_jis-2007"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Landroid/util/CharsetUtils;->sVendorShiftJisMap:Ljava/util/Map;

    const-string/jumbo v1, "softbank"

    const-string/jumbo v2, "softbank-shift_jis-2007"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 2
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;,
            Ljava/nio/charset/IllegalCharsetNameException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {}, Landroid/util/CharsetUtils;->getDefaultVendor()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public static charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3
    .parameter "charsetName"
    .parameter "vendor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/UnsupportedCharsetException;,
            Ljava/nio/charset/IllegalCharsetNameException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {p0, p1}, Landroid/util/CharsetUtils;->nameForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 142
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultVendor()Ljava/lang/String;
    .registers 1

    .prologue
    .line 196
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method private static isShiftJis(Ljava/lang/String;)Z
    .registers 4
    .parameter "charsetName"

    .prologue
    const/4 v2, 0x0

    .line 177
    if-nez p0, :cond_5

    move v1, v2

    .line 185
    :goto_4
    return v1

    .line 180
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 181
    .local v0, length:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_12

    const/16 v1, 0x9

    if-eq v0, v1, :cond_12

    move v1, v2

    .line 182
    goto :goto_4

    .line 185
    :cond_12
    const-string/jumbo v1, "shift_jis"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string/jumbo v1, "shift-jis"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string/jumbo v1, "sjis"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    :cond_2d
    const/4 v1, 0x1

    goto :goto_4

    :cond_2f
    move v1, v2

    goto :goto_4
.end method

.method public static nameForDefaultVendor(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "charsetName"

    .prologue
    .line 117
    invoke-static {}, Landroid/util/CharsetUtils;->getDefaultVendor()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/CharsetUtils;->nameForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static nameForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "charsetName"
    .parameter "vendor"

    .prologue
    .line 91
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 93
    invoke-static {p0}, Landroid/util/CharsetUtils;->isShiftJis(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 94
    sget-object v1, Landroid/util/CharsetUtils;->sVendorShiftJisMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    .local v0, vendorShiftJis:Ljava/lang/String;
    if-eqz v0, :cond_1e

    move-object v1, v0

    .line 101
    .end local v0           #vendorShiftJis:Ljava/lang/String;
    :goto_1d
    return-object v1

    :cond_1e
    move-object v1, p0

    goto :goto_1d
.end method
