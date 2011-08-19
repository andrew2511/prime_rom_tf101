.class public Landroid/pim/EventRecurrence;
.super Ljava/lang/Object;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pim/EventRecurrence$InvalidFormatException;
    }
.end annotation


# static fields
.field public static final DAILY:I = 0x4

.field public static final FR:I = 0x200000

.field public static final HOURLY:I = 0x3

.field public static final MINUTELY:I = 0x2

.field public static final MO:I = 0x20000

.field public static final MONTHLY:I = 0x6

.field public static final SA:I = 0x400000

.field public static final SECONDLY:I = 0x1

.field public static final SU:I = 0x10000

.field public static final TH:I = 0x100000

.field public static final TU:I = 0x40000

.field public static final WE:I = 0x80000

.field public static final WEEKLY:I = 0x5

.field public static final YEARLY:I = 0x7


# instance fields
.field public byday:[I

.field public bydayCount:I

.field public bydayNum:[I

.field public byhour:[I

.field public byhourCount:I

.field public byminute:[I

.field public byminuteCount:I

.field public bymonth:[I

.field public bymonthCount:I

.field public bymonthday:[I

.field public bymonthdayCount:I

.field public bysecond:[I

.field public bysecondCount:I

.field public bysetpos:[I

.field public bysetposCount:I

.field public byweekno:[I

.field public byweeknoCount:I

.field public byyearday:[I

.field public byyeardayCount:I

.field public count:I

.field public freq:I

.field public interval:I

.field public startDate:Landroid/text/format/Time;

.field public until:Ljava/lang/String;

.field public wkst:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/high16 v0, 0x2

    iput v0, p0, Landroid/pim/EventRecurrence;->wkst:I

    .line 40
    return-void
.end method

.method private appendByDay(Ljava/lang/StringBuilder;I)V
    .registers 6
    .parameter "s"
    .parameter "i"

    .prologue
    .line 242
    iget-object v2, p0, Landroid/pim/EventRecurrence;->bydayNum:[I

    aget v0, v2, p2

    .line 243
    .local v0, n:I
    if-eqz v0, :cond_9

    .line 244
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    :cond_9
    iget-object v2, p0, Landroid/pim/EventRecurrence;->byday:[I

    aget v2, v2, p2

    invoke-static {v2}, Landroid/pim/EventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, str:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    return-void
.end method

.method private static appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V
    .registers 6
    .parameter "s"
    .parameter "label"
    .parameter "count"
    .parameter "values"

    .prologue
    .line 229
    if-lez p2, :cond_1c

    .line 230
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    add-int/lit8 p2, p2, -0x1

    .line 232
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, p2, :cond_17

    .line 233
    aget v1, p3, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 236
    :cond_17
    aget v1, p3, p2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .end local v0           #i:I
    :cond_1c
    return-void
.end method

.method public static calendarDay2Day(I)I
    .registers 4
    .parameter "day"

    .prologue
    .line 101
    packed-switch p0, :pswitch_data_32

    .line 118
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :pswitch_1c
    const/high16 v0, 0x1

    .line 116
    :goto_1e
    return v0

    .line 106
    :pswitch_1f
    const/high16 v0, 0x2

    goto :goto_1e

    .line 108
    :pswitch_22
    const/high16 v0, 0x4

    goto :goto_1e

    .line 110
    :pswitch_25
    const/high16 v0, 0x8

    goto :goto_1e

    .line 112
    :pswitch_28
    const/high16 v0, 0x10

    goto :goto_1e

    .line 114
    :pswitch_2b
    const/high16 v0, 0x20

    goto :goto_1e

    .line 116
    :pswitch_2e
    const/high16 v0, 0x40

    goto :goto_1e

    .line 101
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method

.method public static day2CalendarDay(I)I
    .registers 4
    .parameter "day"

    .prologue
    .line 174
    sparse-switch p0, :sswitch_data_2a

    .line 191
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :sswitch_1c
    const/4 v0, 0x1

    .line 189
    :goto_1d
    return v0

    .line 179
    :sswitch_1e
    const/4 v0, 0x2

    goto :goto_1d

    .line 181
    :sswitch_20
    const/4 v0, 0x3

    goto :goto_1d

    .line 183
    :sswitch_22
    const/4 v0, 0x4

    goto :goto_1d

    .line 185
    :sswitch_24
    const/4 v0, 0x5

    goto :goto_1d

    .line 187
    :sswitch_26
    const/4 v0, 0x6

    goto :goto_1d

    .line 189
    :sswitch_28
    const/4 v0, 0x7

    goto :goto_1d

    .line 174
    :sswitch_data_2a
    .sparse-switch
        0x10000 -> :sswitch_1c
        0x20000 -> :sswitch_1e
        0x40000 -> :sswitch_20
        0x80000 -> :sswitch_22
        0x100000 -> :sswitch_24
        0x200000 -> :sswitch_26
        0x400000 -> :sswitch_28
    .end sparse-switch
.end method

.method private static day2String(I)Ljava/lang/String;
    .registers 4
    .parameter "day"

    .prologue
    .line 206
    sparse-switch p0, :sswitch_data_32

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :sswitch_1c
    const-string v0, "SU"

    .line 220
    :goto_1e
    return-object v0

    .line 210
    :sswitch_1f
    const-string v0, "MO"

    goto :goto_1e

    .line 212
    :sswitch_22
    const-string v0, "TU"

    goto :goto_1e

    .line 214
    :sswitch_25
    const-string v0, "WE"

    goto :goto_1e

    .line 216
    :sswitch_28
    const-string v0, "TH"

    goto :goto_1e

    .line 218
    :sswitch_2b
    const-string v0, "FR"

    goto :goto_1e

    .line 220
    :sswitch_2e
    const-string v0, "SA"

    goto :goto_1e

    .line 206
    nop

    :sswitch_data_32
    .sparse-switch
        0x10000 -> :sswitch_1c
        0x20000 -> :sswitch_1f
        0x40000 -> :sswitch_22
        0x80000 -> :sswitch_25
        0x100000 -> :sswitch_28
        0x200000 -> :sswitch_2b
        0x400000 -> :sswitch_2e
    .end sparse-switch
.end method

.method public static day2TimeDay(I)I
    .registers 4
    .parameter "day"

    .prologue
    .line 146
    sparse-switch p0, :sswitch_data_2a

    .line 163
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :sswitch_1c
    const/4 v0, 0x0

    .line 161
    :goto_1d
    return v0

    .line 151
    :sswitch_1e
    const/4 v0, 0x1

    goto :goto_1d

    .line 153
    :sswitch_20
    const/4 v0, 0x2

    goto :goto_1d

    .line 155
    :sswitch_22
    const/4 v0, 0x3

    goto :goto_1d

    .line 157
    :sswitch_24
    const/4 v0, 0x4

    goto :goto_1d

    .line 159
    :sswitch_26
    const/4 v0, 0x5

    goto :goto_1d

    .line 161
    :sswitch_28
    const/4 v0, 0x6

    goto :goto_1d

    .line 146
    :sswitch_data_2a
    .sparse-switch
        0x10000 -> :sswitch_1c
        0x20000 -> :sswitch_1e
        0x40000 -> :sswitch_20
        0x80000 -> :sswitch_22
        0x100000 -> :sswitch_24
        0x200000 -> :sswitch_26
        0x400000 -> :sswitch_28
    .end sparse-switch
.end method

.method public static timeDay2Day(I)I
    .registers 4
    .parameter "day"

    .prologue
    .line 124
    packed-switch p0, :pswitch_data_32

    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :pswitch_1c
    const/high16 v0, 0x1

    .line 139
    :goto_1e
    return v0

    .line 129
    :pswitch_1f
    const/high16 v0, 0x2

    goto :goto_1e

    .line 131
    :pswitch_22
    const/high16 v0, 0x4

    goto :goto_1e

    .line 133
    :pswitch_25
    const/high16 v0, 0x8

    goto :goto_1e

    .line 135
    :pswitch_28
    const/high16 v0, 0x10

    goto :goto_1e

    .line 137
    :pswitch_2b
    const/high16 v0, 0x20

    goto :goto_1e

    .line 139
    :pswitch_2e
    const/high16 v0, 0x40

    goto :goto_1e

    .line 124
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method


# virtual methods
.method public native parse(Ljava/lang/String;)V
.end method

.method public repeatsMonthlyOnDayCount()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 348
    iget v0, p0, Landroid/pim/EventRecurrence;->freq:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_9

    move v0, v2

    .line 356
    :goto_8
    return v0

    .line 352
    :cond_9
    iget v0, p0, Landroid/pim/EventRecurrence;->bydayCount:I

    if-ne v0, v3, :cond_11

    iget v0, p0, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    if-eqz v0, :cond_13

    :cond_11
    move v0, v2

    .line 353
    goto :goto_8

    :cond_13
    move v0, v3

    .line 356
    goto :goto_8
.end method

.method public repeatsOnEveryWeekDay()Z
    .registers 7

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 328
    iget v3, p0, Landroid/pim/EventRecurrence;->freq:I

    if-eq v3, v5, :cond_8

    move v3, v4

    .line 344
    :goto_7
    return v3

    .line 332
    :cond_8
    iget v0, p0, Landroid/pim/EventRecurrence;->bydayCount:I

    .line 333
    .local v0, count:I
    if-eq v0, v5, :cond_e

    move v3, v4

    .line 334
    goto :goto_7

    .line 337
    :cond_e
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v0, :cond_22

    .line 338
    iget-object v3, p0, Landroid/pim/EventRecurrence;->byday:[I

    aget v1, v3, v2

    .line 339
    .local v1, day:I
    const/high16 v3, 0x1

    if-eq v1, v3, :cond_1d

    const/high16 v3, 0x40

    if-ne v1, v3, :cond_1f

    :cond_1d
    move v3, v4

    .line 340
    goto :goto_7

    .line 337
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 344
    .end local v1           #day:I
    :cond_22
    const/4 v3, 0x1

    goto :goto_7
.end method

.method public setStartDate(Landroid/text/format/Time;)V
    .registers 2
    .parameter "date"

    .prologue
    .line 48
    iput-object p1, p0, Landroid/pim/EventRecurrence;->startDate:Landroid/text/format/Time;

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v2, s:Ljava/lang/StringBuilder;
    const-string v3, "FREQ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget v3, p0, Landroid/pim/EventRecurrence;->freq:I

    packed-switch v3, :pswitch_data_e8

    .line 282
    :goto_f
    iget-object v3, p0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 283
    const-string v3, ";UNTIL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v3, p0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_21
    iget v3, p0, Landroid/pim/EventRecurrence;->count:I

    if-eqz v3, :cond_2f

    .line 288
    const-string v3, ";COUNT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget v3, p0, Landroid/pim/EventRecurrence;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    :cond_2f
    iget v3, p0, Landroid/pim/EventRecurrence;->interval:I

    if-eqz v3, :cond_3d

    .line 293
    const-string v3, ";INTERVAL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget v3, p0, Landroid/pim/EventRecurrence;->interval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    :cond_3d
    iget v3, p0, Landroid/pim/EventRecurrence;->wkst:I

    if-eqz v3, :cond_4f

    .line 298
    const-string v3, ";WKST="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget v3, p0, Landroid/pim/EventRecurrence;->wkst:I

    invoke-static {v3}, Landroid/pim/EventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_4f
    const-string v3, ";BYSECOND="

    iget v4, p0, Landroid/pim/EventRecurrence;->bysecondCount:I

    iget-object v5, p0, Landroid/pim/EventRecurrence;->bysecond:[I

    invoke-static {v2, v3, v4, v5}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 303
    const-string v3, ";BYMINUTE="

    iget v4, p0, Landroid/pim/EventRecurrence;->byminuteCount:I

    iget-object v5, p0, Landroid/pim/EventRecurrence;->byminute:[I

    invoke-static {v2, v3, v4, v5}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 304
    const-string v3, ";BYSECOND="

    iget v4, p0, Landroid/pim/EventRecurrence;->byhourCount:I

    iget-object v5, p0, Landroid/pim/EventRecurrence;->byhour:[I

    invoke-static {v2, v3, v4, v5}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 307
    iget v0, p0, Landroid/pim/EventRecurrence;->bydayCount:I

    .line 308
    .local v0, count:I
    if-lez v0, :cond_b5

    .line 309
    const-string v3, ";BYDAY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    add-int/lit8 v0, v0, -0x1

    .line 311
    const/4 v1, 0x0

    .local v1, i:I
    :goto_76
    if-ge v1, v0, :cond_b2

    .line 312
    invoke-direct {p0, v2, v1}, Landroid/pim/EventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    .line 313
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    .line 260
    .end local v0           #count:I
    .end local v1           #i:I
    :pswitch_83
    const-string v3, "SECONDLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 263
    :pswitch_89
    const-string v3, "MINUTELY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 266
    :pswitch_8f
    const-string v3, "HOURLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 269
    :pswitch_96
    const-string v3, "DAILY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 272
    :pswitch_9d
    const-string v3, "WEEKLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 275
    :pswitch_a4
    const-string v3, "MONTHLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 278
    :pswitch_ab
    const-string v3, "YEARLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 315
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_b2
    invoke-direct {p0, v2, v0}, Landroid/pim/EventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    .line 318
    .end local v1           #i:I
    :cond_b5
    const-string v3, ";BYMONTHDAY="

    iget v4, p0, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    iget-object v5, p0, Landroid/pim/EventRecurrence;->bymonthday:[I

    invoke-static {v2, v3, v4, v5}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 319
    const-string v3, ";BYYEARDAY="

    iget v4, p0, Landroid/pim/EventRecurrence;->byyeardayCount:I

    iget-object v5, p0, Landroid/pim/EventRecurrence;->byyearday:[I

    invoke-static {v2, v3, v4, v5}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 320
    const-string v3, ";BYWEEKNO="

    iget v4, p0, Landroid/pim/EventRecurrence;->byweeknoCount:I

    iget-object v5, p0, Landroid/pim/EventRecurrence;->byweekno:[I

    invoke-static {v2, v3, v4, v5}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 321
    const-string v3, ";BYMONTH="

    iget v4, p0, Landroid/pim/EventRecurrence;->bymonthCount:I

    iget-object v5, p0, Landroid/pim/EventRecurrence;->bymonth:[I

    invoke-static {v2, v3, v4, v5}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 322
    const-string v3, ";BYSETPOS="

    iget v4, p0, Landroid/pim/EventRecurrence;->bysetposCount:I

    iget-object v5, p0, Landroid/pim/EventRecurrence;->bysetpos:[I

    invoke-static {v2, v3, v4, v5}, Landroid/pim/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 324
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 257
    nop

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_83
        :pswitch_89
        :pswitch_8f
        :pswitch_96
        :pswitch_9d
        :pswitch_a4
        :pswitch_ab
    .end packed-switch
.end method
