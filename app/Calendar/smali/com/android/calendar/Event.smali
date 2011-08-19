.class public Lcom/android/calendar/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final EVENT_PROJECTION:[Ljava/lang/String;

.field private static mNoColorColor:I

.field private static mNoTitleString:Ljava/lang/String;


# instance fields
.field public allDay:Z

.field public bottom:F

.field public color:I

.field public endDay:I

.field public endMillis:J

.field public endTime:I

.field public guestsCanModify:Z

.field public hasAlarm:Z

.field public id:J

.field public isRepeating:Z

.field public left:F

.field public location:Ljava/lang/CharSequence;

.field private mColumn:I

.field private mMaxColumns:I

.field public nextDown:Lcom/android/calendar/Event;

.field public nextLeft:Lcom/android/calendar/Event;

.field public nextRight:Lcom/android/calendar/Event;

.field public nextUp:Lcom/android/calendar/Event;

.field public organizer:Ljava/lang/String;

.field public right:F

.field public selfAttendeeStatus:I

.field public startDay:I

.field public startMillis:J

.field public startTime:I

.field public title:Ljava/lang/CharSequence;

.field public top:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "color"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "allDay=1 OR (end-begin)>=86400000 AS dispAllday"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/Context;II)V
    .locals 5
    .parameter
    .parameter "cEvents"
    .parameter "context"
    .parameter "startDay"
    .parameter "endDay"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;",
            "Landroid/database/Cursor;",
            "Landroid/content/Context;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    .line 304
    :cond_0
    const-string v3, "CalEvent"

    const-string v4, "buildEventsFromCursor: null cursor or null events list!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_1
    return-void

    .line 308
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 310
    .local v0, count:I
    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 315
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f0a000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/calendar/Event;->mNoTitleString:Ljava/lang/String;

    .line 316
    const v3, 0x7f080034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/android/calendar/Event;->mNoColorColor:I

    .line 319
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 320
    invoke-static {p1, p3, p4}, Lcom/android/calendar/Event;->generateEventFromCursor(Landroid/database/Cursor;II)Lcom/android/calendar/Event;

    move-result-object v1

    .line 321
    .local v1, e:Lcom/android/calendar/Event;
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static computePositions(Ljava/util/ArrayList;J)V
    .locals 1
    .parameter
    .parameter "minimumDurationMillis"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    if-nez p0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/calendar/Event;->doComputePositions(Ljava/util/ArrayList;JZ)V

    .line 405
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/calendar/Event;->doComputePositions(Ljava/util/ArrayList;JZ)V

    goto :goto_0
.end method

.method private static doComputePositions(Ljava/util/ArrayList;JZ)V
    .locals 10
    .parameter
    .parameter "minimumDurationMillis"
    .parameter "doAlldayEvents"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .line 410
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v6, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v7, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 414
    const-wide/16 p1, 0x0

    .line 417
    :cond_0
    const-wide/16 v4, 0x0

    .line 418
    .local v4, colMask:J
    const/4 v0, 0x0

    .line 419
    .local v0, maxCols:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    move v9, v0

    .end local v0           #maxCols:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local p0           #eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    .local v9, maxCols:I
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 421
    .local v0, event:Lcom/android/calendar/Event;
    invoke-virtual {v0}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result p0

    if-ne p0, p3, :cond_1

    .line 424
    if-nez p3, :cond_2

    .line 425
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Event;->removeNonAlldayActiveEvents(Lcom/android/calendar/Event;Ljava/util/Iterator;JJ)J

    move-result-wide v4

    .line 433
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 434
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calendar/Event;

    .line 435
    .local p0, ev:Lcom/android/calendar/Event;
    invoke-virtual {p0, v9}, Lcom/android/calendar/Event;->setMaxColumns(I)V

    goto :goto_2

    .line 428
    .end local v1           #i$:Ljava/util/Iterator;
    .end local p0           #ev:Lcom/android/calendar/Event;
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {v0, p0, v4, v5}, Lcom/android/calendar/Event;->removeAlldayActiveEvents(Lcom/android/calendar/Event;Ljava/util/Iterator;J)J

    move-result-wide v4

    goto :goto_1

    .line 437
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    const/4 p0, 0x0

    .line 438
    .end local v9           #maxCols:I
    .local p0, maxCols:I
    const-wide/16 v4, 0x0

    .line 439
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    move v1, p0

    .line 444
    .end local p0           #maxCols:I
    .local v1, maxCols:I
    :goto_3
    invoke-static {v4, v5}, Lcom/android/calendar/Event;->findFirstZeroBit(J)I

    move-result p0

    .line 445
    .local p0, col:I
    const/16 v2, 0x40

    if-ne p0, v2, :cond_4

    .line 446
    const/16 p0, 0x3f

    .line 447
    :cond_4
    const-wide/16 v2, 0x1

    shl-long/2addr v2, p0

    or-long/2addr v4, v2

    .line 448
    invoke-virtual {v0, p0}, Lcom/android/calendar/Event;->setColumn(I)V

    .line 449
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 452
    .local p0, len:I
    if-ge v1, p0, :cond_7

    .line 453
    move p0, p0

    .end local v1           #maxCols:I
    .local p0, maxCols:I
    :goto_4
    move v9, p0

    .line 454
    .end local p0           #maxCols:I
    .restart local v9       #maxCols:I
    goto :goto_0

    .line 455
    .end local v0           #event:Lcom/android/calendar/Event;
    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .local p1, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/calendar/Event;

    .line 456
    .local p0, ev:Lcom/android/calendar/Event;
    invoke-virtual {p0, v9}, Lcom/android/calendar/Event;->setMaxColumns(I)V

    goto :goto_5

    .line 458
    .end local p0           #ev:Lcom/android/calendar/Event;
    :cond_6
    return-void

    .end local v9           #maxCols:I
    .restart local v0       #event:Lcom/android/calendar/Event;
    .restart local v1       #maxCols:I
    .local p0, len:I
    .local p1, minimumDurationMillis:J
    :cond_7
    move p0, v1

    .end local v1           #maxCols:I
    .local p0, maxCols:I
    goto :goto_4

    .end local p0           #maxCols:I
    .restart local v9       #maxCols:I
    :cond_8
    move v1, v9

    .end local v9           #maxCols:I
    .restart local v1       #maxCols:I
    goto :goto_3
.end method

.method public static findFirstZeroBit(J)I
    .locals 6
    .parameter "val"

    .prologue
    const/16 v5, 0x40

    .line 494
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 495
    const-wide/16 v1, 0x1

    shl-long/2addr v1, v0

    and-long/2addr v1, p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    move v1, v0

    .line 498
    :goto_1
    return v1

    .line 494
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v5

    .line 498
    goto :goto_1
.end method

.method private static generateEventFromCursor(Landroid/database/Cursor;II)Lcom/android/calendar/Event;
    .locals 12
    .parameter "cEvents"
    .parameter "startDay"
    .parameter "endDay"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 332
    new-instance v0, Lcom/android/calendar/Event;

    invoke-direct {v0}, Lcom/android/calendar/Event;-><init>()V

    .line 334
    .local v0, e:Lcom/android/calendar/Event;
    const/4 v7, 0x5

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/calendar/Event;->id:J

    .line 335
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 336
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 337
    const/4 v7, 0x2

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_4

    move v7, v10

    :goto_0
    iput-boolean v7, v0, Lcom/android/calendar/Event;->allDay:Z

    .line 338
    const/16 v7, 0x11

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    .line 339
    const/16 v7, 0x12

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_5

    move v7, v10

    :goto_1
    iput-boolean v7, v0, Lcom/android/calendar/Event;->guestsCanModify:Z

    .line 341
    iget-object v7, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    if-eqz v7, :cond_0

    iget-object v7, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 342
    :cond_0
    sget-object v7, Lcom/android/calendar/Event;->mNoTitleString:Ljava/lang/String;

    iput-object v7, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 345
    :cond_1
    invoke-interface {p0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 347
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v0, Lcom/android/calendar/Event;->color:I

    .line 352
    :goto_2
    const/4 v7, 0x6

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 353
    .local v3, eStart:J
    const/4 v7, 0x7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 355
    .local v1, eEnd:J
    iput-wide v3, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 356
    const/16 v7, 0xb

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v0, Lcom/android/calendar/Event;->startTime:I

    .line 357
    const/16 v7, 0x9

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v0, Lcom/android/calendar/Event;->startDay:I

    .line 359
    iput-wide v1, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 360
    const/16 v7, 0xc

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v0, Lcom/android/calendar/Event;->endTime:I

    .line 361
    const/16 v7, 0xa

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v0, Lcom/android/calendar/Event;->endDay:I

    .line 363
    iget v7, v0, Lcom/android/calendar/Event;->startDay:I

    if-gt v7, p2, :cond_2

    iget v7, v0, Lcom/android/calendar/Event;->endDay:I

    if-ge v7, p1, :cond_2

    .line 367
    :cond_2
    const/16 v7, 0xd

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_7

    move v7, v10

    :goto_3
    iput-boolean v7, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    .line 370
    const/16 v7, 0xe

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 371
    .local v6, rrule:Ljava/lang/String;
    const/16 v7, 0xf

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, rdate:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 373
    :cond_3
    iput-boolean v10, v0, Lcom/android/calendar/Event;->isRepeating:Z

    .line 378
    :goto_4
    const/16 v7, 0x10

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    iput v7, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    .line 379
    return-object v0

    .end local v1           #eEnd:J
    .end local v3           #eStart:J
    .end local v5           #rdate:Ljava/lang/String;
    .end local v6           #rrule:Ljava/lang/String;
    :cond_4
    move v7, v9

    .line 337
    goto/16 :goto_0

    :cond_5
    move v7, v9

    .line 339
    goto/16 :goto_1

    .line 349
    :cond_6
    sget v7, Lcom/android/calendar/Event;->mNoColorColor:I

    iput v7, v0, Lcom/android/calendar/Event;->color:I

    goto :goto_2

    .restart local v1       #eEnd:J
    .restart local v3       #eStart:J
    :cond_7
    move v7, v9

    .line 367
    goto :goto_3

    .line 375
    .restart local v5       #rdate:Ljava/lang/String;
    .restart local v6       #rrule:Ljava/lang/String;
    :cond_8
    iput-boolean v9, v0, Lcom/android/calendar/Event;->isRepeating:Z

    goto :goto_4
.end method

.method public static loadEvents(Landroid/content/Context;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 24
    .parameter "context"
    .parameter
    .parameter "start"
    .parameter "days"
    .parameter "requestId"
    .parameter "sequenceNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;JII",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 220
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/4 v13, 0x0

    .line 221
    .local v13, cEvents:Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 223
    .local v20, cAllday:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 225
    :try_start_0
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 227
    .local v5, local:Landroid/text/format/Time;
    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 228
    iget-wide v6, v5, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p2

    move-wide v2, v6

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v22

    .line 229
    .local v22, startDay:I
    add-int v21, v22, p4

    .line 231
    .local v21, endDay:I
    iget v6, v5, Landroid/text/format/Time;->monthDay:I

    add-int p4, p4, v6

    move/from16 v0, p4

    move-object v1, v5

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 232
    .end local p4
    const/16 p4, 0x1

    move-object v0, v5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v16

    .line 250
    .local v16, end:J
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p4

    .line 251
    .local p4, prefs:Landroid/content/SharedPreferences;
    const-string v5, "preferences_hide_declined"

    .end local v5           #local:Landroid/text/format/Time;
    const/4 v6, 0x0

    move-object/from16 v0, p4

    move-object v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    .line 254
    .local p4, hideDeclined:Z
    const-string v11, "dispAllday=0"

    .line 255
    .local v11, where:Ljava/lang/String;
    const-string v18, "dispAllday=1"

    .line 256
    .local v18, whereAllday:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 257
    const-string p4, " AND selfAttendeeStatus!=2"

    .line 259
    .local p4, hideString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .end local p4           #hideString:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 263
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/calendar/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    const-wide/32 v7, 0x5265c00

    sub-long v7, p2, v7

    const-wide/32 v9, 0x5265c00

    add-long v9, v9, v16

    const-string v12, "begin ASC, end DESC, title ASC"

    invoke-static/range {v5 .. v12}, Landroid/provider/Calendar$Instances;->query(Landroid/content/ContentResolver;[Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    .line 266
    .end local v13           #cEvents:Landroid/database/Cursor;
    .local p4, cEvents:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/android/calendar/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    const-wide/32 v5, 0x5265c00

    sub-long v14, p2, v5

    const-wide/32 p2, 0x5265c00

    add-long v16, v16, p2

    const-string v19, "startDay ASC, endDay DESC, title ASC"

    .end local v16           #end:J
    .end local p2
    invoke-static/range {v12 .. v19}, Landroid/provider/Calendar$Instances;->query(Landroid/content/ContentResolver;[Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object p2

    .line 272
    .end local v20           #cAllday:Landroid/database/Cursor;
    .local p2, cAllday:Landroid/database/Cursor;
    :try_start_2
    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result p3

    move/from16 v0, p5

    move/from16 v1, p3

    if-eq v0, v1, :cond_3

    .line 280
    if-eqz p4, :cond_1

    .line 281
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_1
    if-eqz p2, :cond_2

    .line 284
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_2
    :goto_0
    return-void

    .line 276
    :cond_3
    :try_start_3
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p0

    move/from16 v3, v22

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/calendar/Event;->buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/Context;II)V

    .line 277
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move/from16 v3, v22

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/calendar/Event;->buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/Context;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 280
    if-eqz p4, :cond_4

    .line 281
    invoke-interface/range {p4 .. p4}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_4
    if-eqz p2, :cond_2

    .line 284
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 280
    .end local v11           #where:Ljava/lang/String;
    .end local v18           #whereAllday:Ljava/lang/String;
    .end local v21           #endDay:I
    .end local v22           #startDay:I
    .end local p4           #cEvents:Landroid/database/Cursor;
    .restart local v13       #cEvents:Landroid/database/Cursor;
    .restart local v20       #cAllday:Landroid/database/Cursor;
    .local p2, start:J
    :catchall_0
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, v13

    .end local v13           #cEvents:Landroid/database/Cursor;
    .local p1, cEvents:Landroid/database/Cursor;
    move-object/from16 p0, v20

    .end local v20           #cAllday:Landroid/database/Cursor;
    .end local p2           #start:J
    .local p0, cAllday:Landroid/database/Cursor;
    :goto_1
    if-eqz p1, :cond_5

    .line 281
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_5
    if-eqz p0, :cond_6

    .line 284
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p2

    .line 280
    .restart local v11       #where:Ljava/lang/String;
    .restart local v18       #whereAllday:Ljava/lang/String;
    .restart local v20       #cAllday:Landroid/database/Cursor;
    .restart local v21       #endDay:I
    .restart local v22       #startDay:I
    .local p0, context:Landroid/content/Context;
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    .restart local p4       #cEvents:Landroid/database/Cursor;
    :catchall_1
    move-exception p0

    move-object/from16 p2, p0

    move-object/from16 p1, p4

    .end local p4           #cEvents:Landroid/database/Cursor;
    .local p1, cEvents:Landroid/database/Cursor;
    move-object/from16 p0, v20

    .end local v20           #cAllday:Landroid/database/Cursor;
    .local p0, cAllday:Landroid/database/Cursor;
    goto :goto_1

    .local p0, context:Landroid/content/Context;
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    .local p2, cAllday:Landroid/database/Cursor;
    .restart local p4       #cEvents:Landroid/database/Cursor;
    :catchall_2
    move-exception p0

    move-object/from16 p1, p4

    .end local p4           #cEvents:Landroid/database/Cursor;
    .local p1, cEvents:Landroid/database/Cursor;
    move-object/from16 v23, p2

    .end local p2           #cAllday:Landroid/database/Cursor;
    .local v23, cAllday:Landroid/database/Cursor;
    move-object/from16 p2, p0

    move-object/from16 p0, v23

    .end local v23           #cAllday:Landroid/database/Cursor;
    .local p0, cAllday:Landroid/database/Cursor;
    goto :goto_1
.end method

.method private static removeAlldayActiveEvents(Lcom/android/calendar/Event;Ljava/util/Iterator;J)J
    .locals 5
    .parameter "event"
    .parameter
    .parameter "colMask"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/Event;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/calendar/Event;",
            ">;J)J"
        }
    .end annotation

    .prologue
    .line 464
    .local p1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 466
    .local v0, active:Lcom/android/calendar/Event;
    iget v1, v0, Lcom/android/calendar/Event;->endDay:I

    iget v2, p0, Lcom/android/calendar/Event;->startDay:I

    if-ge v1, v2, :cond_0

    .line 467
    const-wide/16 v1, 0x1

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v3

    shl-long/2addr v1, v3

    const-wide/16 v3, -0x1

    xor-long/2addr v1, v3

    and-long/2addr p2, v1

    .line 468
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 471
    .end local v0           #active:Lcom/android/calendar/Event;
    :cond_1
    return-wide p2
.end method

.method private static removeNonAlldayActiveEvents(Lcom/android/calendar/Event;Ljava/util/Iterator;JJ)J
    .locals 9
    .parameter "event"
    .parameter
    .parameter "minDurationMillis"
    .parameter "colMask"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/Event;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/calendar/Event;",
            ">;JJ)J"
        }
    .end annotation

    .prologue
    .line 476
    .local p1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    invoke-virtual {p0}, Lcom/android/calendar/Event;->getStartMillis()J

    move-result-wide v3

    .line 480
    .local v3, start:J
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 481
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 483
    .local v0, active:Lcom/android/calendar/Event;
    invoke-virtual {v0}, Lcom/android/calendar/Event;->getEndMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getStartMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 485
    .local v1, duration:J
    invoke-virtual {v0}, Lcom/android/calendar/Event;->getStartMillis()J

    move-result-wide v5

    add-long/2addr v5, v1

    cmp-long v5, v5, v3

    if-gtz v5, :cond_0

    .line 486
    const-wide/16 v5, 0x1

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v7

    shl-long/2addr v5, v7

    const-wide/16 v7, -0x1

    xor-long/2addr v5, v7

    and-long/2addr p4, v5

    .line 487
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 490
    .end local v0           #active:Lcom/android/calendar/Event;
    .end local v1           #duration:J
    :cond_1
    return-wide p4
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 149
    new-instance v0, Lcom/android/calendar/Event;

    invoke-direct {v0}, Lcom/android/calendar/Event;-><init>()V

    .line 151
    .local v0, e:Lcom/android/calendar/Event;
    iget-object v1, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 152
    iget v1, p0, Lcom/android/calendar/Event;->color:I

    iput v1, v0, Lcom/android/calendar/Event;->color:I

    .line 153
    iget-object v1, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 154
    iget-boolean v1, p0, Lcom/android/calendar/Event;->allDay:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->allDay:Z

    .line 155
    iget v1, p0, Lcom/android/calendar/Event;->startDay:I

    iput v1, v0, Lcom/android/calendar/Event;->startDay:I

    .line 156
    iget v1, p0, Lcom/android/calendar/Event;->endDay:I

    iput v1, v0, Lcom/android/calendar/Event;->endDay:I

    .line 157
    iget v1, p0, Lcom/android/calendar/Event;->startTime:I

    iput v1, v0, Lcom/android/calendar/Event;->startTime:I

    .line 158
    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    iput v1, v0, Lcom/android/calendar/Event;->endTime:I

    .line 159
    iget-wide v1, p0, Lcom/android/calendar/Event;->startMillis:J

    iput-wide v1, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 160
    iget-wide v1, p0, Lcom/android/calendar/Event;->endMillis:J

    iput-wide v1, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 161
    iget-boolean v1, p0, Lcom/android/calendar/Event;->hasAlarm:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    .line 162
    iget-boolean v1, p0, Lcom/android/calendar/Event;->isRepeating:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->isRepeating:Z

    .line 163
    iget v1, p0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    iput v1, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    .line 164
    iget-object v1, p0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    .line 165
    iget-boolean v1, p0, Lcom/android/calendar/Event;->guestsCanModify:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->guestsCanModify:Z

    .line 167
    return-object v0
.end method

.method public drawAsAllday()Z
    .locals 4

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/android/calendar/Event;->allDay:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/calendar/Event;->endMillis:J

    iget-wide v2, p0, Lcom/android/calendar/Event;->startMillis:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColumn()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lcom/android/calendar/Event;->mColumn:I

    return v0
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 597
    iget-wide v0, p0, Lcom/android/calendar/Event;->endMillis:J

    return-wide v0
.end method

.method public getMaxColumns()I
    .locals 1

    .prologue
    .line 581
    iget v0, p0, Lcom/android/calendar/Event;->mMaxColumns:I

    return v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 589
    iget-wide v0, p0, Lcom/android/calendar/Event;->startMillis:J

    return-wide v0
.end method

.method public getTitleAndLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 554
    iget-object v2, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 560
    iget-object v2, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, locationString:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 565
    .end local v0           #locationString:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public setColumn(I)V
    .locals 0
    .parameter "column"

    .prologue
    .line 569
    iput p1, p0, Lcom/android/calendar/Event;->mColumn:I

    .line 570
    return-void
.end method

.method public setMaxColumns(I)V
    .locals 0
    .parameter "maxColumns"

    .prologue
    .line 577
    iput p1, p0, Lcom/android/calendar/Event;->mMaxColumns:I

    .line 578
    return-void
.end method
