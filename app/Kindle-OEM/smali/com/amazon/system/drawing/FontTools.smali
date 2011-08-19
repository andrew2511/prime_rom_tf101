.class public Lcom/amazon/system/drawing/FontTools;
.super Ljava/lang/Object;
.source "FontTools.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static getDifferentSize(Lcom/amazon/system/drawing/Font;IZ)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 64
    invoke-interface {p0}, Lcom/amazon/system/drawing/Font;->getAvailableSizes()[I

    move-result-object v0

    .line 65
    array-length v1, v0

    if-nez v1, :cond_0

    .line 67
    invoke-interface {p0}, Lcom/amazon/system/drawing/Font;->getSize()I

    move-result v0

    .line 74
    :goto_0
    return v0

    .line 68
    :cond_0
    invoke-static {v0, p1}, Lcom/amazon/system/drawing/FontTools;->searchIndexOfSize([II)I

    move-result v1

    .line 69
    if-eqz p2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 70
    :goto_1
    if-gez v1, :cond_1

    .line 71
    const/4 v1, 0x0

    .line 72
    :cond_1
    array-length v2, v0

    if-lt v1, v2, :cond_2

    .line 73
    array-length v1, v0

    sub-int/2addr v1, v3

    .line 74
    :cond_2
    aget v0, v0, v1

    goto :goto_0

    .line 69
    :cond_3
    sub-int/2addr v1, v3

    goto :goto_1
.end method

.method public static getNextFontName(Lcom/amazon/system/drawing/Font;Lcom/amazon/system/drawing/FontFactory;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-interface {p1}, Lcom/amazon/system/drawing/FontFactory;->getAvailableFamilyNames()[Ljava/lang/String;

    move-result-object v0

    .line 130
    array-length v1, v0

    if-nez v1, :cond_0

    .line 132
    invoke-interface {p0}, Lcom/amazon/system/drawing/Font;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-interface {p0}, Lcom/amazon/system/drawing/Font;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/system/drawing/FontTools;->searchIndexOfName([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 134
    add-int/lit8 v1, v1, 0x1

    .line 135
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 136
    const/4 v1, 0x0

    .line 137
    :cond_1
    aget-object v0, v0, v1

    goto :goto_0
.end method

.method static searchIndexOfName([Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "array"
    .parameter "element"

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, index:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    return v0
.end method

.method static searchIndexOfSize([II)I
    .locals 2
    .parameter "array"
    .parameter "element"

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, index:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    if-ge v1, p1, :cond_0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    return v0
.end method

.method public static setHTMLFontSize(ILcom/amazon/system/drawing/Font;I)Lcom/amazon/system/drawing/Font;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-interface {p1}, Lcom/amazon/system/drawing/Font;->getAvailableSizes()[I

    move-result-object v0

    .line 91
    array-length v1, v0

    if-nez v1, :cond_0

    move-object v0, p1

    .line 100
    :goto_0
    return-object v0

    .line 94
    :cond_0
    invoke-static {v0, p2}, Lcom/amazon/system/drawing/FontTools;->searchIndexOfSize([II)I

    move-result v1

    .line 95
    const/4 v2, 0x3

    sub-int v2, p0, v2

    add-int/2addr v1, v2

    .line 96
    if-gez v1, :cond_1

    .line 97
    const/4 v1, 0x0

    .line 98
    :cond_1
    array-length v2, v0

    if-lt v1, v2, :cond_2

    .line 99
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 100
    :cond_2
    aget v0, v0, v1

    invoke-interface {p1, v0}, Lcom/amazon/system/drawing/Font;->derive(I)Lcom/amazon/system/drawing/Font;

    move-result-object v0

    goto :goto_0
.end method
