.class public Lcom/layar/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/util/Util$Units;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static distanceUnit:Lcom/layar/util/Util$Units;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/layar/util/Util;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/util/Util;->TAG:Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/layar/util/Util$Units;->METRIC:Lcom/layar/util/Util$Units;

    sput-object v0, Lcom/layar/util/Util;->distanceUnit:Lcom/layar/util/Util$Units;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowPostingByText(II)Z
    .locals 2
    .parameter "textLength"
    .parameter "limit"

    .prologue
    const/4 v1, 0x0

    .line 306
    sub-int v0, p1, p0

    .line 307
    .local v0, diff:I
    if-gez v0, :cond_1

    .line 309
    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ltz p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static arrayToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "array"

    .prologue
    .line 142
    if-nez p0, :cond_0

    .line 143
    const/4 v3, 0x0

    .line 151
    :goto_0
    return-object v3

    .line 144
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v2, resultBuilder:Ljava/lang/StringBuilder;
    array-length v0, p0

    .line 146
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 151
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 147
    :cond_1
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const/4 v3, 0x1

    sub-int v3, v0, v3

    if-eq v1, v3, :cond_2

    .line 149
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static disableTransitions(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 294
    sget-boolean v1, Lcom/layar/util/MyConfig;->SDK5Plus:Z

    if-eqz v1, :cond_0

    .line 297
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "overridePendingTransition"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 298
    .local v0, m:Ljava/lang/reflect/Method;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v0           #m:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static formatText(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "text"
    .parameter "distance"

    .prologue
    .line 114
    if-nez p0, :cond_0

    const-string v0, ""

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "%distance%"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/layar/util/Util;->getDistanceTextLong(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getArrayIds(Landroid/content/Context;I)[I
    .locals 5
    .parameter "context"
    .parameter "arrayId"

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 166
    .local v0, ar:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 167
    .local v2, len:I
    new-array v3, v2, [I

    .line 168
    .local v3, resIds:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    return-object v3

    .line 169
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v1

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getColorStr(I)Ljava/lang/String;
    .locals 4
    .parameter "color"

    .prologue
    .line 119
    const v2, 0xffffff

    and-int/2addr p0, v2

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "000000"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, hex:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 122
    .local v1, length:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x6

    sub-int v3, v1, v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDateMidnight(J)J
    .locals 3
    .parameter "longDate"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 106
    invoke-static {}, Lcom/layar/util/Util;->getTime()Landroid/text/format/Time;

    move-result-object v0

    .line 107
    .local v0, date:Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 108
    iput v1, v0, Landroid/text/format/Time;->hour:I

    iput v1, v0, Landroid/text/format/Time;->minute:I

    iput v1, v0, Landroid/text/format/Time;->second:I

    iput-boolean v2, v0, Landroid/text/format/Time;->allDay:Z

    .line 109
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 110
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getDensity(Landroid/content/Context;)F
    .locals 1
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static getDistanceText(I)Ljava/lang/String;
    .locals 8
    .parameter "distance"

    .prologue
    const/16 v7, 0x2e

    const/16 v6, 0xa

    .line 63
    sget-object v2, Lcom/layar/util/Util;->distanceUnit:Lcom/layar/util/Util$Units;

    sget-object v3, Lcom/layar/util/Util$Units;->METRIC:Lcom/layar/util/Util$Units;

    if-ne v2, v3, :cond_1

    .line 64
    div-int/lit16 v0, p0, 0x3e8

    .line 65
    .local v0, km:I
    if-lt v0, v6, :cond_0

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    .end local v0           #km:I
    :goto_0
    return-object v2

    .line 67
    .restart local v0       #km:I
    :cond_0
    div-int/lit8 v0, p0, 0x64

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    div-int/lit8 v3, v0, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-int/lit8 v3, v0, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 70
    .end local v0           #km:I
    :cond_1
    int-to-double v2, p0

    const-wide v4, 0x409925604189374cL

    div-double/2addr v2, v4

    double-to-int v1, v2

    .line 71
    .local v1, mi:I
    if-lt v1, v6, :cond_2

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 73
    :cond_2
    int-to-double v2, p0

    const-wide v4, 0x40641de69ad42c3dL

    div-double/2addr v2, v4

    double-to-int v1, v2

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    div-int/lit8 v3, v1, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-int/lit8 v3, v1, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getDistanceTextLong(I)Ljava/lang/String;
    .locals 8
    .parameter "distance"

    .prologue
    const/high16 v7, 0x4120

    .line 35
    sget-object v3, Lcom/layar/util/Util;->distanceUnit:Lcom/layar/util/Util$Units;

    sget-object v4, Lcom/layar/util/Util$Units;->METRIC:Lcom/layar/util/Util$Units;

    if-ne v3, v4, :cond_2

    .line 36
    const/16 v3, 0x3e8

    if-ge p0, v3, :cond_0

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 58
    :goto_0
    return-object v3

    .line 38
    :cond_0
    const/16 v3, 0x2710

    if-ge p0, v3, :cond_1

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    div-int/lit16 v4, p0, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, p0, 0x64

    rem-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "km"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 43
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    div-int/lit16 v4, p0, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "km"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 45
    :cond_2
    int-to-float v3, p0

    const v4, 0x44c92b02

    div-float v2, v3, v4

    .line 46
    .local v2, miles:F
    float-to-double v3, v2

    const-wide v5, 0x3fb999999999999aL

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    const/high16 v4, 0x45a5

    mul-float/2addr v4, v2

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "ft"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 49
    :cond_3
    const/high16 v3, 0x3f80

    cmpg-float v3, v2, v3

    if-gez v3, :cond_4

    .line 50
    const/high16 v3, 0x42c8

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 51
    .local v1, mi100:I
    new-instance v3, Ljava/lang/StringBuilder;

    div-int/lit8 v4, v1, 0x64

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    rem-int/lit8 v4, v1, 0x64

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 53
    .end local v1           #mi100:I
    :cond_4
    cmpg-float v3, v2, v7

    if-gez v3, :cond_5

    .line 54
    mul-float v3, v2, v7

    float-to-int v0, v3

    .line 55
    .local v0, mi10:I
    new-instance v3, Ljava/lang/StringBuilder;

    div-int/lit8 v4, v0, 0xa

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    rem-int/lit8 v4, v0, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 58
    .end local v0           #mi10:I
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    float-to-int v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "mi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public static getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "drawableName"

    .prologue
    .line 313
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 315
    .local v0, resources:Landroid/content/res/Resources;
    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getInputString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    if-nez p0, :cond_0

    .line 127
    const-string v3, ""

    .line 138
    :goto_0
    return-object v3

    .line 128
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 130
    .local v0, in:Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v2, sb:Ljava/lang/StringBuilder;
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 136
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 134
    :cond_1
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 135
    .end local v1           #line:Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 136
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 137
    throw v3
.end method

.method public static getLayarFoundedDateValue()J
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 79
    invoke-static {}, Lcom/layar/util/Util;->getTime()Landroid/text/format/Time;

    move-result-object v0

    .line 80
    .local v0, date:Landroid/text/format/Time;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 82
    const/16 v1, 0x7d9

    iput v1, v0, Landroid/text/format/Time;->year:I

    .line 83
    const/4 v1, 0x7

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 84
    const/4 v1, 0x6

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 85
    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 86
    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getNowMidnight()J
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-static {}, Lcom/layar/util/Util;->getTime()Landroid/text/format/Time;

    move-result-object v0

    .line 98
    .local v0, date:Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 99
    iput v1, v0, Landroid/text/format/Time;->hour:I

    iput v1, v0, Landroid/text/format/Time;->minute:I

    iput v1, v0, Landroid/text/format/Time;->second:I

    iput-boolean v2, v0, Landroid/text/format/Time;->allDay:Z

    .line 100
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 101
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getStringId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "stringName"

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 321
    .local v0, resources:Landroid/content/res/Resources;
    const-string v1, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getTime()Landroid/text/format/Time;
    .locals 4

    .prologue
    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 91
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 92
    .local v1, tz:Ljava/util/TimeZone;
    new-instance v2, Landroid/text/format/Time;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public static isHighDensity(F)Z
    .locals 4
    .parameter "density"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 246
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff8

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHighDensity(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 241
    invoke-static {p0}, Lcom/layar/util/Util;->getDensity(Landroid/content/Context;)F

    move-result v0

    invoke-static {v0}, Lcom/layar/util/Util;->isHighDensity(F)Z

    move-result v0

    return v0
.end method

.method public static offsetLocation(Landroid/location/Location;FF)Landroid/location/Location;
    .locals 12
    .parameter "start"
    .parameter "heading"
    .parameter "offset"

    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 262
    .local v4, latA:D
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 263
    .local v6, lonA:D
    const v0, 0x4ac26d82

    div-float/2addr p2, v0

    float-to-double v0, p2

    .line 264
    .local v0, angularDistance:D
    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    .end local p1
    .end local p2
    move-result-wide p1

    .line 267
    .local p1, trueCourse:D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v2, v8

    .line 268
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    .line 267
    add-double/2addr v2, v8

    .line 266
    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    .line 271
    .local v2, lat:D
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    .end local p1           #trueCourse:D
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr p1, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr p1, v8

    .line 272
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    .end local v0           #angularDistance:D
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .end local v4           #latA:D
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v4, v8

    sub-double/2addr v0, v4

    .line 270
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    .line 274
    .local p1, dlon:D
    add-double/2addr p1, v6

    const-wide v0, 0x400921fb54442d18L

    add-double/2addr p1, v0

    const-wide v0, 0x401921fb54442d18L

    rem-double/2addr p1, v0

    const-wide v0, 0x400921fb54442d18L

    sub-double/2addr p1, v0

    .line 276
    .local p1, lon:D
    new-instance v0, Landroid/location/Location;

    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, newLocation:Landroid/location/Location;
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 278
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    .end local p1           #lon:D
    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLongitude(D)V

    .line 279
    invoke-virtual {p0}, Landroid/location/Location;->getAltitude()D

    move-result-wide p0

    .end local p0
    invoke-virtual {v0, p0, p1}, Landroid/location/Location;->setAltitude(D)V

    .line 285
    return-object v0
.end method

.method public static showAlert(IILandroid/content/Context;)V
    .locals 3
    .parameter "titleResId"
    .parameter "messageResId"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 208
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 209
    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 211
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 212
    const v1, 0x7f090016

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 214
    return-void

    :cond_0
    move-object v1, v2

    .line 209
    goto :goto_0
.end method

.method public static showAlert(ILandroid/content/Context;)V
    .locals 4
    .parameter "messageResId"
    .parameter "context"

    .prologue
    .line 189
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 190
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090016

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 192
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 193
    return-void
.end method

.method public static showAlert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "context"
    .parameter "content"
    .parameter "listener"

    .prologue
    .line 196
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 197
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 198
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 199
    const v1, 0x7f090016

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 201
    return-void
.end method

.method public static showAlert(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "content"
    .parameter "context"

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/layar/util/Util;->showAlert(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 205
    return-void
.end method

.method public static showYesNoAlert(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "context"
    .parameter "titleResId"
    .parameter "messageResId"
    .parameter "listener"

    .prologue
    .line 229
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/layar/util/Util;->showYesNoAlert(Landroid/content/Context;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 231
    return-void
.end method

.method public static showYesNoAlert(Landroid/content/Context;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "context"
    .parameter "titleResId"
    .parameter "message"
    .parameter "listener"

    .prologue
    .line 218
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 219
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 221
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 222
    const v1, 0x7f09001c

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 223
    const v1, 0x7f09001d

    invoke-virtual {v0, v1, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 225
    return-void
.end method

.method public static validateEmail(Ljava/lang/String;)Z
    .locals 2
    .parameter "email"

    .prologue
    .line 184
    const-string v0, "[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+(?:\\.[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+)*@(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\\.)+(?:[A-Za-z]{2}|[Cc][Oo][Mm]|[Oo][Rr][Gg]|[Nn][Ee][Tt]|[Ee][Dd][Uu]|[Gg][Oo][Vv]|[Mm][Ii][Ll]|[Bb][Ii][Zz]|[Ii][Nn][Ff][Oo]|[Mm][Oo][Bb][Ii]|[Nn][Aa][Mm][Ee]|[Aa][Ee][Rr][Oo]|[Aa][Ss][Ii][Aa]|[Jj][Oo][Bb][Ss]|[Mm][Uu][Ss][Ee][Uu][Mm])\\b"

    .line 185
    .local v0, emailRegEx:Ljava/lang/String;
    const-string v1, "[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+(?:\\.[A-Za-z0-9!#$%&\'*+/=?^_`{|}~-]+)*@(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\\.)+(?:[A-Za-z]{2}|[Cc][Oo][Mm]|[Oo][Rr][Gg]|[Nn][Ee][Tt]|[Ee][Dd][Uu]|[Gg][Oo][Vv]|[Mm][Ii][Ll]|[Bb][Ii][Zz]|[Ii][Nn][Ff][Oo]|[Mm][Oo][Bb][Ii]|[Nn][Aa][Mm][Ee]|[Aa][Ee][Rr][Oo]|[Aa][Ss][Ii][Aa]|[Jj][Oo][Bb][Ss]|[Mm][Uu][Ss][Ee][Uu][Mm])\\b"

    invoke-static {v1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method
