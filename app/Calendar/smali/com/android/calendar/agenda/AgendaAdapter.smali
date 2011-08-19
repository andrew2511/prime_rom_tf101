.class public Lcom/android/calendar/agenda/AgendaAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "AgendaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mDeclinedColor:I

.field private mFormatter:Ljava/util/Formatter;

.field private mNoTitleLabel:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mTZUpdater:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 45
    new-instance v0, Lcom/android/calendar/agenda/AgendaAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/agenda/AgendaAdapter$1;-><init>(Lcom/android/calendar/agenda/AgendaAdapter;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mTZUpdater:Ljava/lang/Runnable;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    .line 68
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mNoTitleLabel:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mDeclinedColor:I

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 71
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/calendar/agenda/AgendaAdapter;->mFormatter:Ljava/util/Formatter;

    .line 72
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 25
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 76
    const/4 v15, 0x0

    .line 80
    .local v15, holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    .line 81
    .local v18, tag:Ljava/lang/Object;
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    move v5, v0

    if-eqz v5, :cond_0

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    .end local v15           #holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    check-cast v15, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .line 85
    .restart local v15       #holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    :cond_0
    if-nez v15, :cond_1

    .line 86
    new-instance v15, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;

    .end local v15           #holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    invoke-direct {v15}, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;-><init>()V

    .line 87
    .restart local v15       #holder:Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    const v5, 0x7f0e0007

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v15, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 89
    const v5, 0x7f0e0008

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v15, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    .line 90
    const v5, 0x7f0e0009

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v15, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->where:Landroid/widget/TextView;

    .line 91
    const v5, 0x7f0e000a

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v15, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->selectedMarker:Landroid/view/View;

    .line 95
    :cond_1
    const/16 v5, 0xc

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 96
    .local v17, selfAttendeeStatus:I
    const/4 v5, 0x2

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_5

    .line 97
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/calendar/agenda/AgendaAdapter;->mDeclinedColor:I

    move v5, v0

    iput v5, v15, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->overLayColor:I

    .line 102
    :goto_0
    move-object v0, v15

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v19, v0

    .line 103
    .local v19, title:Landroid/widget/TextView;
    move-object v0, v15

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->when:Landroid/widget/TextView;

    move-object/from16 v21, v0

    .line 104
    .local v21, when:Landroid/widget/TextView;
    move-object v0, v15

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->where:Landroid/widget/TextView;

    move-object/from16 v23, v0

    .line 106
    .local v23, where:Landroid/widget/TextView;
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v15, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->instanceId:J

    .line 109
    const/4 v5, 0x5

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 110
    .local v14, color:I
    iput v14, v15, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->calendarColor:I

    .line 113
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 114
    .local v20, titleString:Ljava/lang/String;
    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 115
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaAdapter;->mNoTitleLabel:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 117
    :cond_3
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    move-object/from16 v0, v19

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    const/4 v5, 0x7

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 122
    .local v7, begin:J
    const/16 v5, 0x8

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 123
    .local v9, end:J
    const/4 v5, 0x3

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    move v13, v5

    .line 124
    .local v13, allDay:Z
    :goto_1
    const/4 v11, 0x0

    .line 128
    .local v11, flags:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaAdapter;->mTZUpdater:Ljava/lang/Runnable;

    move-object v5, v0

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v12

    .line 129
    .local v12, tz:Ljava/lang/String;
    if-eqz v13, :cond_7

    .line 130
    const-string v12, "UTC"

    .line 134
    :goto_2
    invoke-static/range {p2 .. p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 135
    or-int/lit16 v11, v11, 0x80

    .line 137
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/agenda/AgendaAdapter;->mFormatter:Ljava/util/Formatter;

    move-object v6, v0

    move-object/from16 v5, p2

    invoke-static/range {v5 .. v12}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v22

    .line 140
    .local v22, whenString:Ljava/lang/String;
    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const/4 v5, 0x6

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 143
    .local v16, rrule:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 144
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .end local v7           #begin:J
    const v8, 0x7f020028

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 146
    const/4 v5, 0x5

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 171
    :goto_3
    const/4 v5, 0x2

    move-object/from16 v0, p3

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 172
    .local v24, whereString:Ljava/lang/String;
    if-eqz v24, :cond_9

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 173
    const/4 v5, 0x0

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :goto_4
    return-void

    .line 99
    .end local v9           #end:J
    .end local v11           #flags:I
    .end local v12           #tz:Ljava/lang/String;
    .end local v13           #allDay:Z
    .end local v14           #color:I
    .end local v16           #rrule:Ljava/lang/String;
    .end local v19           #title:Landroid/widget/TextView;
    .end local v20           #titleString:Ljava/lang/String;
    .end local v21           #when:Landroid/widget/TextView;
    .end local v22           #whenString:Ljava/lang/String;
    .end local v23           #where:Landroid/widget/TextView;
    .end local v24           #whereString:Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    iput v5, v15, Lcom/android/calendar/agenda/AgendaAdapter$ViewHolder;->overLayColor:I

    goto/16 :goto_0

    .line 123
    .restart local v7       #begin:J
    .restart local v9       #end:J
    .restart local v14       #color:I
    .restart local v19       #title:Landroid/widget/TextView;
    .restart local v20       #titleString:Ljava/lang/String;
    .restart local v21       #when:Landroid/widget/TextView;
    .restart local v23       #where:Landroid/widget/TextView;
    :cond_6
    const/4 v5, 0x0

    move v13, v5

    goto/16 :goto_1

    .line 132
    .restart local v11       #flags:I
    .restart local v12       #tz:Ljava/lang/String;
    .restart local v13       #allDay:Z
    :cond_7
    const/4 v11, 0x1

    goto :goto_2

    .line 148
    .restart local v16       #rrule:Ljava/lang/String;
    .restart local v22       #whenString:Ljava/lang/String;
    :cond_8
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 176
    .end local v7           #begin:J
    .restart local v24       #whereString:Ljava/lang/String;
    :cond_9
    const/16 v5, 0x8

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method
