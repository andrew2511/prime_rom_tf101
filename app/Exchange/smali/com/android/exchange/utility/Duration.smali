.class public Lcom/android/exchange/utility/Duration;
.super Ljava/lang/Object;
.source "Duration.java"


# instance fields
.field public days:I

.field public hours:I

.field public minutes:I

.field public seconds:I

.field public sign:I

.field public weeks:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/exchange/utility/Duration;->sign:I

    .line 35
    return-void
.end method


# virtual methods
.method public getMillis()J
    .locals 5

    .prologue
    .line 123
    iget v2, p0, Lcom/android/exchange/utility/Duration;->sign:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    .line 124
    .local v0, factor:J
    const v2, 0x93a80

    iget v3, p0, Lcom/android/exchange/utility/Duration;->weeks:I

    mul-int/2addr v2, v3

    const v3, 0x15180

    iget v4, p0, Lcom/android/exchange/utility/Duration;->days:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/exchange/utility/Duration;->hours:I

    mul-int/lit16 v3, v3, 0xe10

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/exchange/utility/Duration;->minutes:I

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/exchange/utility/Duration;->seconds:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public parse(Ljava/lang/String;)V
    .locals 7
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    iput v5, p0, Lcom/android/exchange/utility/Duration;->sign:I

    .line 43
    iput v4, p0, Lcom/android/exchange/utility/Duration;->weeks:I

    .line 44
    iput v4, p0, Lcom/android/exchange/utility/Duration;->days:I

    .line 45
    iput v4, p0, Lcom/android/exchange/utility/Duration;->hours:I

    .line 46
    iput v4, p0, Lcom/android/exchange/utility/Duration;->minutes:I

    .line 47
    iput v4, p0, Lcom/android/exchange/utility/Duration;->seconds:I

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 50
    .local v2, len:I
    const/4 v1, 0x0

    .line 53
    .local v1, index:I
    if-ge v2, v5, :cond_1

    .line 105
    :cond_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 58
    .local v0, c:C
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_3

    .line 59
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/exchange/utility/Duration;->sign:I

    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 65
    :cond_2
    :goto_0
    if-lt v2, v1, :cond_0

    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 70
    const/16 v4, 0x50

    if-eq v0, v4, :cond_4

    .line 71
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duration.parse(str=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\') expected \'P\' at index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 61
    :cond_3
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 77
    const/4 v3, 0x0

    .line 78
    .local v3, n:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 80
    if-lt v0, v6, :cond_6

    const/16 v4, 0x39

    if-gt v0, v4, :cond_6

    .line 81
    mul-int/lit8 v3, v3, 0xa

    .line 82
    sub-int v4, v0, v6

    add-int/2addr v3, v4

    .line 78
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    :cond_6
    const/16 v4, 0x57

    if-ne v0, v4, :cond_7

    .line 84
    iput v3, p0, Lcom/android/exchange/utility/Duration;->weeks:I

    .line 85
    const/4 v3, 0x0

    goto :goto_2

    .line 86
    :cond_7
    const/16 v4, 0x48

    if-ne v0, v4, :cond_8

    .line 87
    iput v3, p0, Lcom/android/exchange/utility/Duration;->hours:I

    .line 88
    const/4 v3, 0x0

    goto :goto_2

    .line 89
    :cond_8
    const/16 v4, 0x4d

    if-ne v0, v4, :cond_9

    .line 90
    iput v3, p0, Lcom/android/exchange/utility/Duration;->minutes:I

    .line 91
    const/4 v3, 0x0

    goto :goto_2

    .line 92
    :cond_9
    const/16 v4, 0x53

    if-ne v0, v4, :cond_a

    .line 93
    iput v3, p0, Lcom/android/exchange/utility/Duration;->seconds:I

    .line 94
    const/4 v3, 0x0

    goto :goto_2

    .line 95
    :cond_a
    const/16 v4, 0x44

    if-ne v0, v4, :cond_b

    .line 96
    iput v3, p0, Lcom/android/exchange/utility/Duration;->days:I

    .line 97
    const/4 v3, 0x0

    goto :goto_2

    .line 98
    :cond_b
    const/16 v4, 0x54

    if-eq v0, v4, :cond_5

    .line 100
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duration.parse(str=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\') unexpected char \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' at index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4
.end method
