.class public final Lcom/google/android/youtube/core/model/Duration;
.super Ljava/lang/Object;
.source "Duration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final days:F

.field private volatile hashCode:I

.field public final hours:F

.field public final minutes:F

.field public final months:F

.field public final seconds:F

.field public final weeks:F

.field public final years:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "([+-.\\d]+[A-Z])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/model/Duration;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(FFFFFFF)V
    .locals 5
    .parameter "years"
    .parameter "months"
    .parameter "weeks"
    .parameter "days"
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_0

    move v0, v4

    :goto_0
    const-string v1, "years may not be negative"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 49
    cmpl-float v0, p2, v2

    if-ltz v0, :cond_1

    move v0, v4

    :goto_1
    const-string v1, "months may not be negative"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 50
    cmpl-float v0, p3, v2

    if-ltz v0, :cond_2

    move v0, v4

    :goto_2
    const-string v1, "weeks may not be negative"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 51
    cmpl-float v0, p4, v2

    if-ltz v0, :cond_3

    move v0, v4

    :goto_3
    const-string v1, "days may not be negative"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 52
    cmpl-float v0, p5, v2

    if-ltz v0, :cond_4

    move v0, v4

    :goto_4
    const-string v1, "hours may not be negative"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 53
    cmpl-float v0, p6, v2

    if-ltz v0, :cond_5

    move v0, v4

    :goto_5
    const-string v1, "minutes may not be negative"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 54
    cmpl-float v0, p7, v2

    if-ltz v0, :cond_6

    move v0, v4

    :goto_6
    const-string v1, "seconds may not be negative"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 56
    iput p1, p0, Lcom/google/android/youtube/core/model/Duration;->years:F

    .line 57
    iput p2, p0, Lcom/google/android/youtube/core/model/Duration;->months:F

    .line 58
    iput p3, p0, Lcom/google/android/youtube/core/model/Duration;->weeks:F

    .line 59
    iput p4, p0, Lcom/google/android/youtube/core/model/Duration;->days:F

    .line 60
    iput p5, p0, Lcom/google/android/youtube/core/model/Duration;->hours:F

    .line 61
    iput p6, p0, Lcom/google/android/youtube/core/model/Duration;->minutes:F

    .line 62
    iput p7, p0, Lcom/google/android/youtube/core/model/Duration;->seconds:F

    .line 63
    return-void

    :cond_0
    move v0, v3

    .line 48
    goto :goto_0

    :cond_1
    move v0, v3

    .line 49
    goto :goto_1

    :cond_2
    move v0, v3

    .line 50
    goto :goto_2

    :cond_3
    move v0, v3

    .line 51
    goto :goto_3

    :cond_4
    move v0, v3

    .line 52
    goto :goto_4

    :cond_5
    move v0, v3

    .line 53
    goto :goto_5

    :cond_6
    move v0, v3

    .line 54
    goto :goto_6
.end method

.method private static parseFloat(Ljava/lang/String;)F
    .locals 3
    .parameter "s"

    .prologue
    .line 159
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 161
    :goto_0
    return v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/NumberFormatException;
    const/16 v1, 0x2c

    const/16 v2, 0x2e

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Duration;
    .locals 12
    .parameter "s"

    .prologue
    .line 112
    const/4 v1, 0x0

    .line 113
    .local v1, years:F
    const/4 v2, 0x0

    .line 114
    .local v2, months:F
    const/4 v3, 0x0

    .line 115
    .local v3, weeks:F
    const/4 v4, 0x0

    .line 116
    .local v4, days:F
    const/4 v5, 0x0

    .line 117
    .local v5, hours:F
    const/4 v6, 0x0

    .line 118
    .local v6, minutes:F
    const/4 v7, 0x0

    .line 120
    .local v7, seconds:F
    const-string v0, "[PT]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, split:[Ljava/lang/String;
    array-length p0, v0

    .end local p0
    const/4 v8, 0x1

    if-le p0, v8, :cond_0

    const/4 p0, 0x1

    aget-object p0, v0, p0

    .line 122
    .local p0, date:Ljava/lang/String;
    :goto_0
    array-length v8, v0

    const/4 v9, 0x2

    if-le v8, v9, :cond_1

    const/4 v8, 0x2

    aget-object v0, v0, v8

    .end local v0           #split:[Ljava/lang/String;
    move-object v8, v0

    .line 124
    .local v8, time:Ljava/lang/String;
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    sget-object v0, Lcom/google/android/youtube/core/model/Duration;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 126
    .end local p0           #date:Ljava/lang/String;
    .local v0, matcher:Ljava/util/regex/Matcher;
    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 127
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    .line 128
    .local p0, match:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/youtube/core/model/Duration;->parseFloat(Ljava/lang/String;)F

    move-result v9

    .line 129
    .local v9, value:F
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 130
    .local p0, unit:C
    sparse-switch p0, :sswitch_data_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .end local v0           #matcher:Ljava/util/regex/Matcher;
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #years:F
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid unit: "

    .end local v2           #months:F
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #unit:C
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    .end local v8           #time:Ljava/lang/String;
    .end local v9           #value:F
    .local v0, split:[Ljava/lang/String;
    .restart local v1       #years:F
    .restart local v2       #months:F
    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 122
    .local p0, date:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    move-object v8, v0

    goto :goto_1

    .line 131
    .local v0, matcher:Ljava/util/regex/Matcher;
    .restart local v8       #time:Ljava/lang/String;
    .restart local v9       #value:F
    .local p0, unit:C
    :sswitch_0
    move v1, v9

    goto :goto_2

    .line 132
    :sswitch_1
    move v2, v9

    goto :goto_2

    .line 133
    :sswitch_2
    move v3, v9

    goto :goto_2

    .line 134
    :sswitch_3
    move v4, v9

    goto :goto_2

    .line 140
    .end local v0           #matcher:Ljava/util/regex/Matcher;
    .end local v9           #value:F
    .end local p0           #unit:C
    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 141
    sget-object p0, Lcom/google/android/youtube/core/model/Duration;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 142
    .end local v8           #time:Ljava/lang/String;
    .restart local v0       #matcher:Ljava/util/regex/Matcher;
    :goto_3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 143
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    .line 144
    .local p0, match:Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/youtube/core/model/Duration;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 145
    .local v8, value:F
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 146
    .local p0, unit:C
    sparse-switch p0, :sswitch_data_1

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .end local v0           #matcher:Ljava/util/regex/Matcher;
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #years:F
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid unit: "

    .end local v2           #months:F
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #unit:C
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    .restart local v0       #matcher:Ljava/util/regex/Matcher;
    .restart local v1       #years:F
    .restart local v2       #months:F
    .restart local p0       #unit:C
    :sswitch_4
    move v5, v8

    goto :goto_3

    .line 148
    :sswitch_5
    move v6, v8

    goto :goto_3

    .line 149
    :sswitch_6
    move v7, v8

    goto :goto_3

    .line 154
    .end local v0           #matcher:Ljava/util/regex/Matcher;
    .end local v8           #value:F
    .end local p0           #unit:C
    :cond_3
    new-instance v0, Lcom/google/android/youtube/core/model/Duration;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/core/model/Duration;-><init>(FFFFFFF)V

    return-object v0

    .line 130
    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_3
        0x4d -> :sswitch_1
        0x57 -> :sswitch_2
        0x59 -> :sswitch_0
    .end sparse-switch

    .line 146
    :sswitch_data_1
    .sparse-switch
        0x48 -> :sswitch_4
        0x4d -> :sswitch_5
        0x53 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 74
    :goto_0
    return v2

    .line 70
    :cond_0
    instance-of v2, p1, Lcom/google/android/youtube/core/model/Duration;

    if-nez v2, :cond_1

    move v2, v4

    .line 71
    goto :goto_0

    .line 73
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/android/youtube/core/model/Duration;

    move-object v1, v0

    .line 74
    .local v1, other:Lcom/google/android/youtube/core/model/Duration;
    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->years:F

    iget v3, v1, Lcom/google/android/youtube/core/model/Duration;->years:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->months:F

    iget v3, v1, Lcom/google/android/youtube/core/model/Duration;->months:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->weeks:F

    iget v3, v1, Lcom/google/android/youtube/core/model/Duration;->weeks:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->days:F

    iget v3, v1, Lcom/google/android/youtube/core/model/Duration;->days:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->hours:F

    iget v3, v1, Lcom/google/android/youtube/core/model/Duration;->hours:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->minutes:F

    iget v3, v1, Lcom/google/android/youtube/core/model/Duration;->minutes:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->seconds:F

    iget v3, v1, Lcom/google/android/youtube/core/model/Duration;->seconds:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 85
    iget v0, p0, Lcom/google/android/youtube/core/model/Duration;->hashCode:I

    .line 86
    .local v0, result:I
    if-nez v0, :cond_0

    .line 87
    const/16 v0, 0x11

    .line 88
    mul-int/lit8 v1, v0, 0x1f

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->years:F

    float-to-int v1, v1

    add-int/lit16 v0, v1, 0x20f

    .line 89
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->months:F

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 90
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->weeks:F

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 91
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->days:F

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 92
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->hours:F

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 93
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->minutes:F

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 94
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/android/youtube/core/model/Duration;->seconds:F

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 95
    iput v0, p0, Lcom/google/android/youtube/core/model/Duration;->hashCode:I

    .line 97
    :cond_0
    return v0
.end method

.method public inHours()I
    .locals 4

    .prologue
    const/high16 v3, 0x41c0

    .line 101
    iget v0, p0, Lcom/google/android/youtube/core/model/Duration;->seconds:F

    const/high16 v1, 0x4561

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->minutes:F

    const/high16 v2, 0x4270

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->hours:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->days:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->weeks:F

    const/high16 v2, 0x40e0

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->months:F

    const/high16 v2, 0x41f8

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/youtube/core/model/Duration;->years:F

    const v2, 0x43b68000

    mul-float/2addr v1, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
