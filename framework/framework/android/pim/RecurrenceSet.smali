.class public Landroid/pim/RecurrenceSet;
.super Ljava/lang/Object;
.source "RecurrenceSet.java"


# static fields
.field private static final FOLDING_SEPARATOR:Ljava/lang/String; = "\n "

.field private static final FOLD_RE:Ljava/util/regex/Pattern; = null

.field private static final IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern; = null

.field private static final RULE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String; = "CalendarProvider"


# instance fields
.field public exdates:[J

.field public exrules:[Landroid/pim/EventRecurrence;

.field public rdates:[J

.field public rrules:[Landroid/pim/EventRecurrence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 387
    const-string v0, "(?:\\r\\n?|\\n)[ \t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/pim/RecurrenceSet;->IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

    .line 390
    const-string v0, ".{75}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/pim/RecurrenceSet;->FOLD_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .registers 7
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v4, p0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    .line 43
    iput-object v4, p0, Landroid/pim/RecurrenceSet;->rdates:[J

    .line 44
    iput-object v4, p0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    .line 45
    iput-object v4, p0, Landroid/pim/RecurrenceSet;->exdates:[J

    .line 54
    const-string/jumbo v4, "rrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, rruleStr:Ljava/lang/String;
    const-string/jumbo v4, "rdate"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, rdateStr:Ljava/lang/String;
    const-string v4, "exrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, exruleStr:Ljava/lang/String;
    const-string v4, "exdate"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, exdateStr:Ljava/lang/String;
    invoke-direct {p0, v3, v2, v1, v0}, Landroid/pim/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 11
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v8, p0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    .line 43
    iput-object v8, p0, Landroid/pim/RecurrenceSet;->rdates:[J

    .line 44
    iput-object v8, p0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    .line 45
    iput-object v8, p0, Landroid/pim/RecurrenceSet;->exdates:[J

    .line 72
    const-string/jumbo v8, "rrule"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 73
    .local v6, rruleColumn:I
    const-string/jumbo v8, "rdate"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 74
    .local v4, rdateColumn:I
    const-string v8, "exrule"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 75
    .local v2, exruleColumn:I
    const-string v8, "exdate"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 76
    .local v0, exdateColumn:I
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, rruleStr:Ljava/lang/String;
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, rdateStr:Ljava/lang/String;
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, exruleStr:Ljava/lang/String;
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, exdateStr:Ljava/lang/String;
    invoke-direct {p0, v7, v5, v3, v1}, Landroid/pim/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "rruleStr"
    .parameter "rdateStr"
    .parameter "exruleStr"
    .parameter "exdateStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    .line 43
    iput-object v0, p0, Landroid/pim/RecurrenceSet;->rdates:[J

    .line 44
    iput-object v0, p0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    .line 45
    iput-object v0, p0, Landroid/pim/RecurrenceSet;->exdates:[J

    .line 86
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/pim/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method private static addPropertiesForRuleStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "component"
    .parameter "propertyName"
    .parameter "ruleStr"

    .prologue
    .line 362
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 371
    :cond_6
    return-void

    .line 365
    :cond_7
    invoke-static {p2}, Landroid/pim/RecurrenceSet;->getRuleStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 366
    .local v5, rrules:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_e
    if-ge v1, v2, :cond_6

    aget-object v4, v0, v1

    .line 367
    .local v4, rrule:Ljava/lang/String;
    new-instance v3, Landroid/pim/ICalendar$Property;

    invoke-direct {v3, p1}, Landroid/pim/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 368
    .local v3, prop:Landroid/pim/ICalendar$Property;
    invoke-virtual {v3, v4}, Landroid/pim/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0, v3}, Landroid/pim/ICalendar$Component;->addProperty(Landroid/pim/ICalendar$Property;)V

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method private static addPropertyForDateStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "component"
    .parameter "propertyName"
    .parameter "dateStr"

    .prologue
    .line 422
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 438
    :goto_6
    return-void

    .line 426
    :cond_7
    new-instance v0, Landroid/pim/ICalendar$Property;

    invoke-direct {v0, p1}, Landroid/pim/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, prop:Landroid/pim/ICalendar$Property;
    const/4 v1, 0x0

    .line 428
    .local v1, tz:Ljava/lang/String;
    const-string v3, ";"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 429
    .local v2, tzidx:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    .line 430
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 431
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 433
    :cond_21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 434
    new-instance v3, Landroid/pim/ICalendar$Parameter;

    const-string v4, "TZID"

    invoke-direct {v3, v4, v1}, Landroid/pim/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/pim/ICalendar$Property;->addParameter(Landroid/pim/ICalendar$Parameter;)V

    .line 436
    :cond_31
    invoke-virtual {v0, p2}, Landroid/pim/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0, v0}, Landroid/pim/ICalendar$Component;->addProperty(Landroid/pim/ICalendar$Property;)V

    goto :goto_6
.end method

.method private static computeDuration(Landroid/text/format/Time;Landroid/pim/ICalendar$Component;)Ljava/lang/String;
    .registers 6
    .parameter "start"
    .parameter "component"

    .prologue
    .line 443
    const-string v0, "DURATION"

    invoke-virtual {p1, v0}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object v0

    .line 445
    .local v0, durationProperty:Landroid/pim/ICalendar$Property;
    if-eqz v0, :cond_d

    .line 447
    invoke-virtual {v0}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 470
    .end local v0           #durationProperty:Landroid/pim/ICalendar$Property;
    .end local p0
    .end local p1
    :goto_c
    return-object p0

    .line 451
    .restart local v0       #durationProperty:Landroid/pim/ICalendar$Property;
    .restart local p0
    .restart local p1
    :cond_d
    const-string v0, "DTEND"

    .end local v0           #durationProperty:Landroid/pim/ICalendar$Property;
    invoke-virtual {p1, v0}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object p1

    .line 453
    .local p1, dtendProperty:Landroid/pim/ICalendar$Property;
    if-nez p1, :cond_18

    .line 455
    const-string p0, "+P0S"

    goto :goto_c

    .line 457
    :cond_18
    const-string v0, "TZID"

    invoke-virtual {p1, v0}, Landroid/pim/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Landroid/pim/ICalendar$Parameter;

    move-result-object v0

    .line 459
    .local v0, endTzidParameter:Landroid/pim/ICalendar$Parameter;
    if-nez v0, :cond_6a

    iget-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .end local v0           #endTzidParameter:Landroid/pim/ICalendar$Parameter;
    move-object v1, v0

    .line 462
    .local v1, endTzid:Ljava/lang/String;
    :goto_23
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 463
    .local v0, end:Landroid/text/format/Time;
    invoke-virtual {p1}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object p1

    .end local p1           #dtendProperty:Landroid/pim/ICalendar$Property;
    invoke-virtual {v0, p1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 464
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .end local v0           #end:Landroid/text/format/Time;
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 466
    .end local v1           #endTzid:Ljava/lang/String;
    .local v0, durationMillis:J
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 467
    .local v0, durationSeconds:J
    iget-boolean p0, p0, Landroid/text/format/Time;->allDay:Z

    .end local p0
    if-eqz p0, :cond_6e

    const-wide/32 p0, 0x15180

    rem-long p0, v0, p0

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-nez p0, :cond_6e

    .line 468
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "P"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-wide/32 v2, 0x15180

    div-long/2addr v0, v2

    .end local v0           #durationSeconds:J
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "D"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    .line 459
    .local v0, endTzidParameter:Landroid/pim/ICalendar$Parameter;
    .restart local p0
    .restart local p1       #dtendProperty:Landroid/pim/ICalendar$Property;
    :cond_6a
    iget-object v0, v0, Landroid/pim/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object v1, v0

    goto :goto_23

    .line 470
    .end local p0
    .end local p1           #dtendProperty:Landroid/pim/ICalendar$Property;
    .local v0, durationSeconds:J
    :cond_6e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "P"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "S"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_c
.end method

.method private static extractDates(Landroid/pim/ICalendar$Property;)Ljava/lang/String;
    .registers 4
    .parameter "recurrence"

    .prologue
    .line 502
    if-nez p0, :cond_4

    .line 503
    const/4 v1, 0x0

    .line 510
    :goto_3
    return-object v1

    .line 505
    :cond_4
    const-string v1, "TZID"

    invoke-virtual {p0, v1}, Landroid/pim/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Landroid/pim/ICalendar$Parameter;

    move-result-object v0

    .line 507
    .local v0, tzidParam:Landroid/pim/ICalendar$Parameter;
    if-eqz v0, :cond_2a

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/pim/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 510
    :cond_2a
    invoke-virtual {p0}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private static flattenProperties(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "component"
    .parameter "name"

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Landroid/pim/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 477
    .local v2, properties:Ljava/util/List;,"Ljava/util/List<Landroid/pim/ICalendar$Property;>;"
    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 478
    :cond_c
    const/4 v5, 0x0

    .line 498
    .end local p0
    :goto_d
    return-object v5

    .line 481
    .restart local p0
    :cond_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_21

    .line 482
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/pim/ICalendar$Property;

    invoke-virtual {p0}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    .line 485
    .restart local p0
    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 487
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 488
    .local v0, first:Z
    invoke-virtual {p0, p1}, Landroid/pim/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pim/ICalendar$Property;

    .line 489
    .local v3, property:Landroid/pim/ICalendar$Property;
    if-eqz v0, :cond_46

    .line 490
    const/4 v0, 0x0

    .line 496
    :goto_3e
    invoke-virtual {v3}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    .line 494
    :cond_46
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 498
    .end local v3           #property:Landroid/pim/ICalendar$Property;
    :cond_4c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_d
.end method

.method public static fold(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "unfoldedIcalContent"

    .prologue
    .line 411
    sget-object v0, Landroid/pim/RecurrenceSet;->FOLD_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$0\r\n "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRuleStrings(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "ruleStr"

    .prologue
    .line 374
    if-nez p0, :cond_6

    .line 375
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 383
    :goto_5
    return-object v4

    .line 377
    :cond_6
    invoke-static {p0}, Landroid/pim/RecurrenceSet;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, unfoldedRuleStr:Ljava/lang/String;
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, split:[Ljava/lang/String;
    array-length v0, v2

    .line 380
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_12
    if-ge v1, v0, :cond_1f

    .line 381
    aget-object v4, v2, v1

    invoke-static {v4}, Landroid/pim/RecurrenceSet;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1f
    move-object v4, v2

    .line 383
    goto :goto_5
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "rruleStr"
    .parameter "rdateStr"
    .parameter "exruleStr"
    .parameter "exdateStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 94
    :cond_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 95
    const-string v5, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, rruleStrs:[Ljava/lang/String;
    array-length v5, v4

    new-array v5, v5, [Landroid/pim/EventRecurrence;

    iput-object v5, p0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    .line 97
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1e
    array-length v5, v4

    if-ge v2, v5, :cond_32

    .line 98
    new-instance v3, Landroid/pim/EventRecurrence;

    invoke-direct {v3}, Landroid/pim/EventRecurrence;-><init>()V

    .line 99
    .local v3, rrule:Landroid/pim/EventRecurrence;
    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Landroid/pim/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 100
    iget-object v5, p0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    aput-object v3, v5, v2

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 104
    .end local v2           #i:I
    .end local v3           #rrule:Landroid/pim/EventRecurrence;
    .end local v4           #rruleStrs:[Ljava/lang/String;
    :cond_32
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 105
    invoke-static {p2}, Landroid/pim/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, p0, Landroid/pim/RecurrenceSet;->rdates:[J

    .line 108
    :cond_3e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_62

    .line 109
    const-string v5, "\n"

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, exruleStrs:[Ljava/lang/String;
    array-length v5, v1

    new-array v5, v5, [Landroid/pim/EventRecurrence;

    iput-object v5, p0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    .line 111
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_50
    array-length v5, v1

    if-ge v2, v5, :cond_62

    .line 112
    new-instance v0, Landroid/pim/EventRecurrence;

    invoke-direct {v0}, Landroid/pim/EventRecurrence;-><init>()V

    .line 113
    .local v0, exrule:Landroid/pim/EventRecurrence;
    invoke-virtual {v0, p3}, Landroid/pim/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 114
    iget-object v5, p0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    aput-object v0, v5, v2

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 118
    .end local v0           #exrule:Landroid/pim/EventRecurrence;
    .end local v1           #exruleStrs:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_62
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6e

    .line 119
    invoke-static {p4}, Landroid/pim/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, p0, Landroid/pim/RecurrenceSet;->exdates:[J

    .line 122
    :cond_6e
    return-void
.end method

.method public static parseRecurrenceDates(Ljava/lang/String;)[J
    .registers 11
    .parameter "recurrence"

    .prologue
    const/4 v9, 0x0

    .line 141
    const-string v5, "UTC"

    .line 142
    .local v5, tz:Ljava/lang/String;
    const-string v7, ";"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 143
    .local v6, tzidx:I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_16

    .line 144
    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 145
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 147
    :cond_16
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 148
    .local v4, time:Landroid/text/format/Time;
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, rawDates:[Ljava/lang/String;
    array-length v2, v3

    .line 150
    .local v2, n:I
    new-array v0, v2, [J

    .line 151
    .local v0, dates:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_25
    if-ge v1, v2, :cond_37

    .line 153
    aget-object v7, v3, v1

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 154
    invoke-virtual {v4, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    aput-wide v7, v0, v1

    .line 155
    iput-object v5, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 157
    :cond_37
    return-object v0
.end method

.method public static populateComponent(Landroid/content/ContentValues;Landroid/pim/ICalendar$Component;)Z
    .registers 13
    .parameter "values"
    .parameter "component"

    .prologue
    .line 302
    const-wide/16 v0, -0x1

    .line 303
    .local v0, dtstart:J
    const-string v2, "dtstart"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 304
    const-string v0, "dtstart"

    .end local v0           #dtstart:J
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 306
    .restart local v0       #dtstart:J
    :cond_14
    const-string v2, "duration"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, duration:Ljava/lang/String;
    const-string v2, "eventTimezone"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 308
    .local v9, tzid:Ljava/lang/String;
    const-string/jumbo v2, "rrule"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 309
    .local v8, rruleStr:Ljava/lang/String;
    const-string/jumbo v2, "rdate"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 310
    .local v7, rdateStr:Ljava/lang/String;
    const-string v2, "exrule"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 311
    .local v6, exruleStr:Ljava/lang/String;
    const-string v2, "exdate"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 312
    .local v5, exdateStr:Ljava/lang/String;
    const-string v2, "allDay"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    .line 313
    .local p0, allDayInteger:Ljava/lang/Integer;
    if-eqz p0, :cond_66

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .end local p0           #allDayInteger:Ljava/lang/Integer;
    const/4 v2, 0x1

    if-ne p0, v2, :cond_64

    const/4 p0, 0x1

    .line 315
    .local p0, allDay:Z
    :goto_4a
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_62

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_62

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 320
    :cond_62
    const/4 p0, 0x0

    .line 356
    .end local v0           #dtstart:J
    .end local v9           #tzid:Ljava/lang/String;
    .end local p0           #allDay:Z
    :goto_63
    return p0

    .line 313
    .restart local v0       #dtstart:J
    .restart local v9       #tzid:Ljava/lang/String;
    :cond_64
    const/4 p0, 0x0

    goto :goto_4a

    .local p0, allDayInteger:Ljava/lang/Integer;
    :cond_66
    const/4 p0, 0x0

    goto :goto_4a

    .line 323
    .local p0, allDay:Z
    :cond_68
    new-instance v2, Landroid/pim/ICalendar$Property;

    const-string v3, "DTSTART"

    invoke-direct {v2, v3}, Landroid/pim/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 324
    .local v2, dtstartProp:Landroid/pim/ICalendar$Property;
    const/4 v3, 0x0

    .line 325
    .local v3, dtstartTime:Landroid/text/format/Time;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .end local v3           #dtstartTime:Landroid/text/format/Time;
    if-nez v3, :cond_d1

    .line 326
    if-nez p0, :cond_82

    .line 327
    new-instance v3, Landroid/pim/ICalendar$Parameter;

    const-string v10, "TZID"

    invoke-direct {v3, v10, v9}, Landroid/pim/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/pim/ICalendar$Property;->addParameter(Landroid/pim/ICalendar$Parameter;)V

    .line 329
    :cond_82
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 335
    .end local v9           #tzid:Ljava/lang/String;
    .restart local v3       #dtstartTime:Landroid/text/format/Time;
    :goto_87
    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 338
    if-eqz p0, :cond_a4

    .line 339
    new-instance p0, Landroid/pim/ICalendar$Parameter;

    .end local p0           #allDay:Z
    const-string v0, "VALUE"

    .end local v0           #dtstart:J
    const-string v1, "DATE"

    invoke-direct {p0, v0, v1}, Landroid/pim/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Landroid/pim/ICalendar$Property;->addParameter(Landroid/pim/ICalendar$Parameter;)V

    .line 340
    const/4 p0, 0x1

    iput-boolean p0, v3, Landroid/text/format/Time;->allDay:Z

    .line 341
    const/4 p0, 0x0

    iput p0, v3, Landroid/text/format/Time;->hour:I

    .line 342
    const/4 p0, 0x0

    iput p0, v3, Landroid/text/format/Time;->minute:I

    .line 343
    const/4 p0, 0x0

    iput p0, v3, Landroid/text/format/Time;->second:I

    .line 346
    :cond_a4
    invoke-virtual {v3}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/pim/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1, v2}, Landroid/pim/ICalendar$Component;->addProperty(Landroid/pim/ICalendar$Property;)V

    .line 348
    new-instance p0, Landroid/pim/ICalendar$Property;

    const-string v0, "DURATION"

    invoke-direct {p0, v0}, Landroid/pim/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 349
    .local p0, durationProp:Landroid/pim/ICalendar$Property;
    invoke-virtual {p0, v4}, Landroid/pim/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1, p0}, Landroid/pim/ICalendar$Component;->addProperty(Landroid/pim/ICalendar$Property;)V

    .line 352
    const-string p0, "RRULE"

    .end local p0           #durationProp:Landroid/pim/ICalendar$Property;
    invoke-static {p1, p0, v8}, Landroid/pim/RecurrenceSet;->addPropertiesForRuleStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string p0, "RDATE"

    invoke-static {p1, p0, v7}, Landroid/pim/RecurrenceSet;->addPropertyForDateStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string p0, "EXRULE"

    invoke-static {p1, p0, v6}, Landroid/pim/RecurrenceSet;->addPropertiesForRuleStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string p0, "EXDATE"

    invoke-static {p1, p0, v5}, Landroid/pim/RecurrenceSet;->addPropertyForDateStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/4 p0, 0x1

    goto :goto_63

    .line 332
    .end local v3           #dtstartTime:Landroid/text/format/Time;
    .restart local v0       #dtstart:J
    .restart local v9       #tzid:Ljava/lang/String;
    .local p0, allDay:Z
    :cond_d1
    new-instance v3, Landroid/text/format/Time;

    const-string v9, "UTC"

    .end local v9           #tzid:Ljava/lang/String;
    invoke-direct {v3, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v3       #dtstartTime:Landroid/text/format/Time;
    goto :goto_87
.end method

.method public static populateComponent(Landroid/database/Cursor;Landroid/pim/ICalendar$Component;)Z
    .registers 14
    .parameter "cursor"
    .parameter "component"

    .prologue
    .line 234
    const-string v0, "dtstart"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 235
    .local v3, dtstartColumn:I
    const-string v0, "duration"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 236
    .local v4, durationColumn:I
    const-string v0, "eventTimezone"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 237
    .local v9, tzidColumn:I
    const-string/jumbo v0, "rrule"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 238
    .local v8, rruleColumn:I
    const-string/jumbo v0, "rdate"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 239
    .local v7, rdateColumn:I
    const-string v0, "exrule"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 240
    .local v6, exruleColumn:I
    const-string v0, "exdate"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 241
    .local v5, exdateColumn:I
    const-string v0, "allDay"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, allDayColumn:I
    const-wide/16 v1, -0x1

    .line 245
    .local v1, dtstart:J
    invoke-interface {p0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_3e

    .line 246
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 248
    :cond_3e
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, duration:Ljava/lang/String;
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 250
    .local v9, tzid:Ljava/lang/String;
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 251
    .local v8, rruleStr:Ljava/lang/String;
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 252
    .local v7, rdateStr:Ljava/lang/String;
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, exruleStr:Ljava/lang/String;
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, exdateStr:Ljava/lang/String;
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .end local p0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_78

    .end local v0           #allDayColumn:I
    const/4 p0, 0x1

    .line 256
    .local p0, allDay:Z
    :goto_5e
    const-wide/16 v10, -0x1

    cmp-long v0, v1, v10

    if-eqz v0, :cond_76

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_76

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 261
    :cond_76
    const/4 p0, 0x0

    .line 297
    .end local v1           #dtstart:J
    .end local v3           #dtstartColumn:I
    .end local v9           #tzid:Ljava/lang/String;
    .end local p0           #allDay:Z
    :goto_77
    return p0

    .line 254
    .restart local v1       #dtstart:J
    .restart local v3       #dtstartColumn:I
    .restart local v9       #tzid:Ljava/lang/String;
    :cond_78
    const/4 p0, 0x0

    goto :goto_5e

    .line 264
    .restart local p0       #allDay:Z
    :cond_7a
    new-instance v0, Landroid/pim/ICalendar$Property;

    const-string v3, "DTSTART"

    .end local v3           #dtstartColumn:I
    invoke-direct {v0, v3}, Landroid/pim/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, dtstartProp:Landroid/pim/ICalendar$Property;
    const/4 v3, 0x0

    .line 266
    .local v3, dtstartTime:Landroid/text/format/Time;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .end local v3           #dtstartTime:Landroid/text/format/Time;
    if-nez v3, :cond_e3

    .line 267
    if-nez p0, :cond_94

    .line 268
    new-instance v3, Landroid/pim/ICalendar$Parameter;

    const-string v10, "TZID"

    invoke-direct {v3, v10, v9}, Landroid/pim/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/pim/ICalendar$Property;->addParameter(Landroid/pim/ICalendar$Parameter;)V

    .line 270
    :cond_94
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 276
    .end local v9           #tzid:Ljava/lang/String;
    .restart local v3       #dtstartTime:Landroid/text/format/Time;
    :goto_99
    invoke-virtual {v3, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 279
    if-eqz p0, :cond_b6

    .line 280
    new-instance p0, Landroid/pim/ICalendar$Parameter;

    .end local p0           #allDay:Z
    const-string v1, "VALUE"

    .end local v1           #dtstart:J
    const-string v2, "DATE"

    invoke-direct {p0, v1, v2}, Landroid/pim/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/pim/ICalendar$Property;->addParameter(Landroid/pim/ICalendar$Parameter;)V

    .line 281
    const/4 p0, 0x1

    iput-boolean p0, v3, Landroid/text/format/Time;->allDay:Z

    .line 282
    const/4 p0, 0x0

    iput p0, v3, Landroid/text/format/Time;->hour:I

    .line 283
    const/4 p0, 0x0

    iput p0, v3, Landroid/text/format/Time;->minute:I

    .line 284
    const/4 p0, 0x0

    iput p0, v3, Landroid/text/format/Time;->second:I

    .line 287
    :cond_b6
    invoke-virtual {v3}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/pim/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1, v0}, Landroid/pim/ICalendar$Component;->addProperty(Landroid/pim/ICalendar$Property;)V

    .line 289
    new-instance p0, Landroid/pim/ICalendar$Property;

    const-string v0, "DURATION"

    .end local v0           #dtstartProp:Landroid/pim/ICalendar$Property;
    invoke-direct {p0, v0}, Landroid/pim/ICalendar$Property;-><init>(Ljava/lang/String;)V

    .line 290
    .local p0, durationProp:Landroid/pim/ICalendar$Property;
    invoke-virtual {p0, v4}, Landroid/pim/ICalendar$Property;->setValue(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1, p0}, Landroid/pim/ICalendar$Component;->addProperty(Landroid/pim/ICalendar$Property;)V

    .line 293
    const-string p0, "RRULE"

    .end local p0           #durationProp:Landroid/pim/ICalendar$Property;
    invoke-static {p1, p0, v8}, Landroid/pim/RecurrenceSet;->addPropertiesForRuleStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string p0, "RDATE"

    invoke-static {p1, p0, v7}, Landroid/pim/RecurrenceSet;->addPropertyForDateStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string p0, "EXRULE"

    invoke-static {p1, p0, v6}, Landroid/pim/RecurrenceSet;->addPropertiesForRuleStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string p0, "EXDATE"

    invoke-static {p1, p0, v5}, Landroid/pim/RecurrenceSet;->addPropertyForDateStr(Landroid/pim/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const/4 p0, 0x1

    goto :goto_77

    .line 273
    .end local v3           #dtstartTime:Landroid/text/format/Time;
    .restart local v0       #dtstartProp:Landroid/pim/ICalendar$Property;
    .restart local v1       #dtstart:J
    .restart local v9       #tzid:Ljava/lang/String;
    .local p0, allDay:Z
    :cond_e3
    new-instance v3, Landroid/text/format/Time;

    const-string v9, "UTC"

    .end local v9           #tzid:Ljava/lang/String;
    invoke-direct {v3, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .restart local v3       #dtstartTime:Landroid/text/format/Time;
    goto :goto_99
.end method

.method public static populateContentValues(Landroid/pim/ICalendar$Component;Landroid/content/ContentValues;)Z
    .registers 14
    .parameter "component"
    .parameter "values"

    .prologue
    .line 173
    const-string v0, "DTSTART"

    invoke-virtual {p0, v0}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object v0

    .line 175
    .local v0, dtstartProperty:Landroid/pim/ICalendar$Property;
    invoke-virtual {v0}, Landroid/pim/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, dtstart:Ljava/lang/String;
    const-string v2, "TZID"

    invoke-virtual {v0, v2}, Landroid/pim/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Landroid/pim/ICalendar$Parameter;

    move-result-object v0

    .line 179
    .local v0, tzidParam:Landroid/pim/ICalendar$Parameter;
    if-nez v0, :cond_84

    const/4 v2, 0x0

    move-object v3, v2

    .line 180
    .local v3, tzid:Ljava/lang/String;
    :goto_14
    new-instance v5, Landroid/text/format/Time;

    if-nez v0, :cond_88

    const-string v0, "UTC"

    .end local v0           #tzidParam:Landroid/pim/ICalendar$Parameter;
    :goto_1a
    invoke-direct {v5, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 181
    .local v5, start:Landroid/text/format/Time;
    invoke-virtual {v5, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-result v2

    .line 182
    .local v2, inUtc:Z
    iget-boolean v0, v5, Landroid/text/format/Time;->allDay:Z

    .line 186
    .local v0, allDay:Z
    if-nez v2, :cond_27

    if-eqz v0, :cond_f2

    .line 187
    :cond_27
    const-string v2, "UTC"

    .end local v3           #tzid:Ljava/lang/String;
    .local v2, tzid:Ljava/lang/String;
    move-object v9, v2

    .line 190
    .end local v2           #tzid:Ljava/lang/String;
    .local v9, tzid:Ljava/lang/String;
    :goto_2a
    invoke-static {v5, p0}, Landroid/pim/RecurrenceSet;->computeDuration(Landroid/text/format/Time;Landroid/pim/ICalendar$Component;)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, duration:Ljava/lang/String;
    const-string v3, "RRULE"

    invoke-static {p0, v3}, Landroid/pim/RecurrenceSet;->flattenProperties(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, rrule:Ljava/lang/String;
    const-string v3, "RDATE"

    invoke-virtual {p0, v3}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object v3

    invoke-static {v3}, Landroid/pim/RecurrenceSet;->extractDates(Landroid/pim/ICalendar$Property;)Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, rdate:Ljava/lang/String;
    const-string v3, "EXRULE"

    invoke-static {p0, v3}, Landroid/pim/RecurrenceSet;->flattenProperties(Landroid/pim/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, exrule:Ljava/lang/String;
    const-string v3, "EXDATE"

    invoke-virtual {p0, v3}, Landroid/pim/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Landroid/pim/ICalendar$Property;

    move-result-object v3

    invoke-static {v3}, Landroid/pim/RecurrenceSet;->extractDates(Landroid/pim/ICalendar$Property;)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, exdate:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .end local v1           #dtstart:Ljava/lang/String;
    if-nez v1, :cond_66

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 201
    :cond_66
    const-string p1, "CalendarProvider"

    .end local p1
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #allDay:Z
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recurrence missing DTSTART, DTEND/DURATION, or RRULE/RDATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/pim/ICalendar$Component;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const/4 p0, 0x0

    .line 227
    .end local v5           #start:Landroid/text/format/Time;
    :goto_83
    return p0

    .line 179
    .end local v2           #duration:Ljava/lang/String;
    .end local v3           #exdate:Ljava/lang/String;
    .end local v4           #exrule:Ljava/lang/String;
    .end local v7           #rdate:Ljava/lang/String;
    .end local v8           #rrule:Ljava/lang/String;
    .end local v9           #tzid:Ljava/lang/String;
    .local v0, tzidParam:Landroid/pim/ICalendar$Parameter;
    .restart local v1       #dtstart:Ljava/lang/String;
    .restart local p0
    .restart local p1
    :cond_84
    iget-object v2, v0, Landroid/pim/ICalendar$Parameter;->value:Ljava/lang/String;

    move-object v3, v2

    goto :goto_14

    .local v3, tzid:Ljava/lang/String;
    :cond_88
    move-object v0, v3

    .line 180
    goto :goto_1a

    .line 208
    .end local v1           #dtstart:Ljava/lang/String;
    .local v0, allDay:Z
    .restart local v2       #duration:Ljava/lang/String;
    .local v3, exdate:Ljava/lang/String;
    .restart local v4       #exrule:Ljava/lang/String;
    .restart local v5       #start:Landroid/text/format/Time;
    .restart local v7       #rdate:Ljava/lang/String;
    .restart local v8       #rrule:Ljava/lang/String;
    .restart local v9       #tzid:Ljava/lang/String;
    :cond_8a
    if-eqz v0, :cond_90

    .line 209
    const-string v1, "UTC"

    iput-object v1, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 211
    :cond_90
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .line 212
    .local v5, millis:J
    const-string v1, "dtstart"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {p1, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 213
    const-wide/16 v10, -0x1

    cmp-long v1, v5, v10

    if-nez v1, :cond_c2

    .line 215
    const-string p1, "CalendarProvider"

    .end local p1
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #allDay:Z
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DTSTART is out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/pim/ICalendar$Component;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 p0, 0x0

    goto :goto_83

    .line 220
    .restart local v0       #allDay:Z
    .restart local p0
    .restart local p1
    :cond_c2
    const-string/jumbo p0, "rrule"

    .end local p0
    invoke-virtual {p1, p0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string/jumbo p0, "rdate"

    invoke-virtual {p1, p0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string p0, "exrule"

    invoke-virtual {p1, p0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string p0, "exdate"

    invoke-virtual {p1, p0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string p0, "eventTimezone"

    invoke-virtual {p1, p0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string p0, "duration"

    invoke-virtual {p1, p0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string p0, "allDay"

    if-eqz v0, :cond_f0

    const/4 v0, 0x1

    .end local v0           #allDay:Z
    :goto_e7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    const/4 p0, 0x1

    goto :goto_83

    .line 226
    .restart local v0       #allDay:Z
    :cond_f0
    const/4 v0, 0x0

    goto :goto_e7

    .end local v4           #exrule:Ljava/lang/String;
    .end local v7           #rdate:Ljava/lang/String;
    .end local v8           #rrule:Ljava/lang/String;
    .end local v9           #tzid:Ljava/lang/String;
    .restart local v1       #dtstart:Ljava/lang/String;
    .local v2, inUtc:Z
    .local v3, tzid:Ljava/lang/String;
    .local v5, start:Landroid/text/format/Time;
    .restart local p0
    :cond_f2
    move-object v9, v3

    .end local v3           #tzid:Ljava/lang/String;
    .restart local v9       #tzid:Ljava/lang/String;
    goto/16 :goto_2a
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "foldedIcalContent"

    .prologue
    .line 415
    sget-object v0, Landroid/pim/RecurrenceSet;->IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public hasRecurrence()Z
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/pim/RecurrenceSet;->rdates:[J

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
