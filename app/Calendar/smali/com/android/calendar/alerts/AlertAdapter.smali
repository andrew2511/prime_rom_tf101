.class public Lcom/android/calendar/alerts/AlertAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "AlertAdapter.java"


# static fields
.field private static mFirstTime:Z

.field private static mOtherColor:I

.field private static mPastEventColor:I

.field private static mTitleColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/alerts/AlertAdapter;->mFirstTime:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 45
    return-void
.end method

.method public static updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 9
    .parameter "context"
    .parameter "view"
    .parameter "eventName"
    .parameter "location"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "allDay"

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0e0011

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 85
    .local v1, titleView:Landroid/widget/TextView;
    const v2, 0x7f0e0008

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 86
    .local v7, whenView:Landroid/widget/TextView;
    const v2, 0x7f0e0009

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 87
    .local v8, whereView:Landroid/widget/TextView;
    sget-boolean p1, Lcom/android/calendar/alerts/AlertAdapter;->mFirstTime:Z

    .end local p1
    if-eqz p1, :cond_0

    .line 88
    const p1, 0x7f08003a

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    sput p1, Lcom/android/calendar/alerts/AlertAdapter;->mPastEventColor:I

    .line 89
    const p1, 0x7f080038

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    sput p1, Lcom/android/calendar/alerts/AlertAdapter;->mTitleColor:I

    .line 90
    const p1, 0x7f080039

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    sput p1, Lcom/android/calendar/alerts/AlertAdapter;->mOtherColor:I

    .line 91
    const/4 p1, 0x0

    sput-boolean p1, Lcom/android/calendar/alerts/AlertAdapter;->mFirstTime:Z

    .line 94
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, p6, v2

    if-gez p1, :cond_6

    .line 95
    sget p1, Lcom/android/calendar/alerts/AlertAdapter;->mPastEventColor:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    sget p1, Lcom/android/calendar/alerts/AlertAdapter;->mPastEventColor:I

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    sget p1, Lcom/android/calendar/alerts/AlertAdapter;->mPastEventColor:I

    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_2

    .line 106
    :cond_1
    const p1, 0x7f0a000a

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 108
    :cond_2
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object p1

    .line 114
    .local p1, tz:Ljava/lang/String;
    if-eqz p8, :cond_7

    .line 115
    const/16 v5, 0x2012

    .line 117
    .local v5, flags:I
    const-string p1, "UTC"

    move-object v6, p1

    .line 121
    .end local p1           #tz:Ljava/lang/String;
    .local v6, tz:Ljava/lang/String;
    :goto_1
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 122
    or-int/lit16 v5, v5, 0x80

    .line 125
    :cond_3
    new-instance p1, Landroid/text/format/Time;

    invoke-direct {p1, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 126
    .local p1, time:Landroid/text/format/Time;
    invoke-virtual {p1, p4, p5}, Landroid/text/format/Time;->set(J)V

    .line 127
    iget p1, p1, Landroid/text/format/Time;->isDst:I

    .end local p1           #time:Landroid/text/format/Time;
    if-eqz p1, :cond_8

    const/4 p1, 0x1

    .line 128
    .local p1, isDST:Z
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    move-object v0, p0

    move-wide v1, p4

    move-wide v3, p6

    invoke-static/range {v0 .. v5}, Lcom/android/calendar/Utils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .end local v0           #res:Landroid/content/res/Resources;
    .end local v1           #titleView:Landroid/widget/TextView;
    move-result-object p0

    .end local p0
    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .local p2, sb:Ljava/lang/StringBuilder;
    if-nez p8, :cond_4

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object p0

    if-eq v6, p0, :cond_4

    .line 131
    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p4

    .end local p4
    const/4 p5, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p6

    .end local p6
    invoke-virtual {p4, p1, p5, p6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #isDST:Z
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 136
    .local p0, when:Ljava/lang/String;
    invoke-virtual {v7, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    .end local p0           #when:Ljava/lang/String;
    if-nez p0, :cond_9

    .line 140
    :cond_5
    const/16 p0, 0x8

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :goto_3
    return-void

    .line 99
    .end local v5           #flags:I
    .end local v6           #tz:Ljava/lang/String;
    .restart local v0       #res:Landroid/content/res/Resources;
    .restart local v1       #titleView:Landroid/widget/TextView;
    .local p0, context:Landroid/content/Context;
    .local p2, eventName:Ljava/lang/String;
    .restart local p4
    .restart local p6
    :cond_6
    sget p1, Lcom/android/calendar/alerts/AlertAdapter;->mTitleColor:I

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    sget p1, Lcom/android/calendar/alerts/AlertAdapter;->mOtherColor:I

    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    sget p1, Lcom/android/calendar/alerts/AlertAdapter;->mOtherColor:I

    invoke-virtual {v8, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 119
    .local p1, tz:Ljava/lang/String;
    :cond_7
    const/16 v5, 0x11

    .restart local v5       #flags:I
    move-object v6, p1

    .end local p1           #tz:Ljava/lang/String;
    .restart local v6       #tz:Ljava/lang/String;
    goto :goto_1

    .line 127
    :cond_8
    const/4 p1, 0x0

    goto :goto_2

    .line 142
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v1           #titleView:Landroid/widget/TextView;
    .end local p0           #context:Landroid/content/Context;
    .end local p4
    .end local p6
    .local p2, sb:Ljava/lang/StringBuilder;
    :cond_9
    invoke-virtual {v8, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const/4 p0, 0x0

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 15
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 49
    const v2, 0x7f0e0010

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 50
    .local v14, square:Landroid/view/View;
    const/4 v2, 0x7

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 51
    .local v11, color:I
    invoke-virtual {v14, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 54
    const v2, 0x7f0e0012

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 55
    .local v12, repeatContainer:Landroid/view/View;
    const/16 v2, 0x8

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 56
    .local v13, rrule:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, eventName:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, location:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 74
    .local v6, startMillis:J
    const/4 v2, 0x5

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 75
    .local v8, endMillis:J
    const/4 v2, 0x3

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move v10, v2

    .local v10, allDay:Z
    :goto_1
    move-object/from16 v2, p2

    move-object/from16 v3, p1

    .line 77
    invoke-static/range {v2 .. v10}, Lcom/android/calendar/alerts/AlertAdapter;->updateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 78
    return-void

    .line 59
    .end local v4           #eventName:Ljava/lang/String;
    .end local v5           #location:Ljava/lang/String;
    .end local v6           #startMillis:J
    .end local v8           #endMillis:J
    .end local v10           #allDay:Z
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 75
    .restart local v4       #eventName:Ljava/lang/String;
    .restart local v5       #location:Ljava/lang/String;
    .restart local v6       #startMillis:J
    .restart local v8       #endMillis:J
    :cond_1
    const/4 v2, 0x0

    move v10, v2

    goto :goto_1
.end method
