.class public Lorg/apache/harmony/security/x509/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPrintableString(Ljava/lang/String;)Z
    .registers 4
    .parameter "str"

    .prologue
    .line 37
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 39
    .local v0, ch:C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_39

    const/16 v2, 0x27

    if-lt v0, v2, :cond_17

    const/16 v2, 0x29

    if-le v0, v2, :cond_39

    :cond_17
    const/16 v2, 0x2b

    if-lt v0, v2, :cond_1f

    const/16 v2, 0x3a

    if-le v0, v2, :cond_39

    :cond_1f
    const/16 v2, 0x3d

    if-eq v0, v2, :cond_39

    const/16 v2, 0x3f

    if-eq v0, v2, :cond_39

    const/16 v2, 0x41

    if-lt v0, v2, :cond_2f

    const/16 v2, 0x5a

    if-le v0, v2, :cond_39

    :cond_2f
    const/16 v2, 0x61

    if-lt v0, v2, :cond_37

    const/16 v2, 0x7a

    if-le v0, v2, :cond_39

    .line 46
    :cond_37
    const/4 v2, 0x0

    .line 49
    .end local v0           #ch:C
    :goto_38
    return v2

    .line 37
    .restart local v0       #ch:C
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 49
    .end local v0           #ch:C
    :cond_3c
    const/4 v2, 0x1

    goto :goto_38
.end method
