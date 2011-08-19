.class public Lcom/google/api/client/util/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"


# static fields
.field private static final GMT:Ljava/util/TimeZone;


# instance fields
.field public final dateOnly:Z

.field public final tzShift:Ljava/lang/Integer;

.field public final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/util/DateTime;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter "value"

    .prologue
    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/google/api/client/util/DateTime;-><init>(ZJLjava/lang/Integer;)V

    .line 61
    return-void
.end method

.method public constructor <init>(JLjava/lang/Integer;)V
    .locals 1
    .parameter "value"
    .parameter "tzShift"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/api/client/util/DateTime;-><init>(ZJLjava/lang/Integer;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 64
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/api/client/util/DateTime;-><init>(J)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 4
    .parameter "date"
    .parameter "zone"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 54
    .local v0, value:J
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    .line 55
    iput-wide v0, p0, Lcom/google/api/client/util/DateTime;->value:J

    .line 56
    invoke-virtual {p2, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/api/client/util/DateTime;->tzShift:Ljava/lang/Integer;

    .line 57
    return-void
.end method

.method public constructor <init>(ZJLjava/lang/Integer;)V
    .locals 1
    .parameter "dateOnly"
    .parameter "value"
    .parameter "tzShift"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    .line 73
    iput-wide p2, p0, Lcom/google/api/client/util/DateTime;->value:J

    .line 74
    iput-object p4, p0, Lcom/google/api/client/util/DateTime;->tzShift:Ljava/lang/Integer;

    .line 75
    return-void
.end method

.method private static appendInt(Ljava/lang/StringBuilder;II)V
    .locals 3
    .parameter "sb"
    .parameter "num"
    .parameter "numDigits"

    .prologue
    .line 209
    if-gez p1, :cond_0

    .line 210
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    neg-int p1, p1

    .line 213
    :cond_0
    move v1, p1

    .line 214
    .local v1, x:I
    :goto_0
    if-lez v1, :cond_1

    .line 215
    div-int/lit8 v1, v1, 0xa

    .line 216
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 218
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_2

    .line 219
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 221
    :cond_2
    if-eqz p1, :cond_3

    .line 222
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    :cond_3
    return-void
.end method

.method public static parseRfc3339(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;
    .locals 10
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 160
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v1, Lcom/google/api/client/util/DateTime;->GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 161
    .local v0, dateTime:Ljava/util/Calendar;
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 162
    .local v1, year:I
    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 163
    .local v2, month:I
    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 165
    .local v3, day:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 166
    .local v8, length:I
    const/16 v4, 0xa

    if-le v8, v4, :cond_0

    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    const/16 v5, 0x54

    if-eq v4, v5, :cond_1

    :cond_0
    const/4 v4, 0x1

    move v7, v4

    .line 168
    .local v7, dateOnly:Z
    :goto_0
    if-eqz v7, :cond_2

    .line 169
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 170
    const/16 v1, 0xa

    .line 184
    .end local v2           #month:I
    .local v1, tzIndex:I
    :goto_1
    const/4 v2, 0x0

    .line 185
    .local v2, tzShiftInteger:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 186
    .local v3, value:J
    if-le v8, v1, :cond_6

    .line 188
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .end local v0           #dateTime:Ljava/util/Calendar;
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/16 v2, 0x5a

    if-ne v0, v2, :cond_4

    .line 189
    .end local v2           #tzShiftInteger:Ljava/lang/Integer;
    const/4 p0, 0x0

    .local p0, tzShift:I
    move-wide v0, v3

    .line 199
    .end local v1           #tzIndex:I
    .end local v3           #value:J
    .local v0, value:J
    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 201
    .local p0, tzShiftInteger:Ljava/lang/Integer;
    :goto_3
    new-instance v2, Lcom/google/api/client/util/DateTime;

    invoke-direct {v2, v7, v0, v1, p0}, Lcom/google/api/client/util/DateTime;-><init>(ZJLjava/lang/Integer;)V

    return-object v2

    .line 166
    .end local v7           #dateOnly:Z
    .local v0, dateTime:Ljava/util/Calendar;
    .local v1, year:I
    .local v2, month:I
    .local v3, day:I
    .local p0, str:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    move v7, v4

    goto :goto_0

    .line 172
    .restart local v7       #dateOnly:Z
    :cond_2
    const/16 v4, 0xb

    const/16 v5, 0xd

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 173
    .local v4, hourOfDay:I
    const/16 v5, 0xe

    const/16 v6, 0x10

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 174
    .local v5, minute:I
    const/16 v6, 0x11

    const/16 v9, 0x13

    invoke-virtual {p0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 175
    .local v6, second:I
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 176
    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .end local v1           #year:I
    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_3

    .line 177
    .end local v2           #month:I
    const/16 v1, 0x14

    const/16 v2, 0x17

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 178
    .local v1, milliseconds:I
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 179
    const/16 v1, 0x17

    .line 180
    .local v1, tzIndex:I
    goto :goto_1

    .line 181
    .end local v1           #tzIndex:I
    :cond_3
    const/16 v1, 0x13

    .restart local v1       #tzIndex:I
    goto :goto_1

    .line 191
    .end local v0           #dateTime:Ljava/util/Calendar;
    .end local v4           #hourOfDay:I
    .end local v5           #minute:I
    .end local v6           #second:I
    .local v3, value:J
    :cond_4
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v2, v1, 0x3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    add-int/lit8 v2, v1, 0x4

    add-int/lit8 v5, v1, 0x6

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 194
    .local v0, tzShift:I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p0

    .end local p0           #str:Ljava/lang/String;
    const/16 v1, 0x2d

    if-ne p0, v1, :cond_5

    .line 195
    .end local v1           #tzIndex:I
    neg-int p0, v0

    .line 197
    .end local v0           #tzShift:I
    .local p0, tzShift:I
    :goto_4
    const v0, 0xea60

    mul-int/2addr v0, p0

    int-to-long v0, v0

    sub-long v0, v3, v0

    .end local v3           #value:J
    .local v0, value:J
    goto :goto_2

    .line 202
    .end local v0           #value:J
    .end local v7           #dateOnly:Z
    .end local v8           #length:I
    .end local p0           #tzShift:I
    :catch_0
    move-exception p0

    .line 203
    .local p0, e:Ljava/lang/StringIndexOutOfBoundsException;
    new-instance p0, Ljava/lang/NumberFormatException;

    .end local p0           #e:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v0, "Invalid date/time format."

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .local v0, tzShift:I
    .restart local v3       #value:J
    .restart local v7       #dateOnly:Z
    .restart local v8       #length:I
    :cond_5
    move p0, v0

    .end local v0           #tzShift:I
    .local p0, tzShift:I
    goto :goto_4

    .local v0, dateTime:Ljava/util/Calendar;
    .restart local v1       #tzIndex:I
    .local v2, tzShiftInteger:Ljava/lang/Integer;
    .local p0, str:Ljava/lang/String;
    :cond_6
    move-wide v0, v3

    .end local v1           #tzIndex:I
    .end local v3           #value:J
    .local v0, value:J
    move-object p0, v2

    .end local v2           #tzShiftInteger:Ljava/lang/Integer;
    .local p0, tzShiftInteger:Ljava/lang/Integer;
    goto/16 :goto_3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 145
    if-ne p1, p0, :cond_0

    move v2, v7

    .line 152
    :goto_0
    return v2

    .line 148
    :cond_0
    instance-of v2, p1, Lcom/google/api/client/util/DateTime;

    if-nez v2, :cond_1

    move v2, v6

    .line 149
    goto :goto_0

    .line 151
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/api/client/util/DateTime;

    move-object v1, v0

    .line 152
    .local v1, other:Lcom/google/api/client/util/DateTime;
    iget-boolean v2, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    iget-boolean v3, v1, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/api/client/util/DateTime;->value:J

    iget-wide v4, v1, Lcom/google/api/client/util/DateTime;->value:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move v2, v7

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/api/client/util/DateTime;->toStringRfc3339()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringRfc3339()Ljava/lang/String;
    .locals 12

    .prologue
    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v4, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/GregorianCalendar;

    sget-object v8, Lcom/google/api/client/util/DateTime;->GMT:Ljava/util/TimeZone;

    invoke-direct {v1, v8}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 83
    .local v1, dateTime:Ljava/util/Calendar;
    iget-wide v2, p0, Lcom/google/api/client/util/DateTime;->value:J

    .line 84
    .local v2, localTime:J
    iget-object v7, p0, Lcom/google/api/client/util/DateTime;->tzShift:Ljava/lang/Integer;

    .line 85
    .local v7, tzShift:Ljava/lang/Integer;
    if-eqz v7, :cond_0

    .line 86
    invoke-virtual {v7}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    const-wide/32 v10, 0xea60

    mul-long/2addr v8, v10

    add-long/2addr v2, v8

    .line 88
    :cond_0
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 90
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x4

    invoke-static {v4, v8, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 91
    const/16 v8, 0x2d

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x2

    invoke-static {v4, v8, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 93
    const/16 v8, 0x2d

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    const/4 v8, 0x5

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v4, v8, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 96
    iget-boolean v8, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    if-nez v8, :cond_1

    .line 98
    const/16 v8, 0x54

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    const/16 v8, 0xb

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v4, v8, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 100
    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v4, v8, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 102
    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    const/16 v8, 0xd

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v4, v8, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 105
    const/16 v8, 0xe

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->isSet(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 106
    const/16 v8, 0x2e

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    const/16 v8, 0xe

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x3

    invoke-static {v4, v8, v9}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 111
    :cond_1
    if-eqz v7, :cond_2

    .line 113
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_3

    .line 115
    const/16 v8, 0x5a

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    :cond_2
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 119
    :cond_3
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 120
    .local v0, absTzShift:I
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_4

    .line 121
    const/16 v8, 0x2b

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    :goto_1
    div-int/lit8 v5, v0, 0x3c

    .line 128
    .local v5, tzHours:I
    rem-int/lit8 v6, v0, 0x3c

    .line 129
    .local v6, tzMinutes:I
    const/4 v8, 0x2

    invoke-static {v4, v5, v8}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 130
    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    const/4 v8, 0x2

    invoke-static {v4, v6, v8}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 123
    .end local v5           #tzHours:I
    .end local v6           #tzMinutes:I
    :cond_4
    const/16 v8, 0x2d

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    neg-int v0, v0

    goto :goto_1
.end method
