.class public Lcom/android/calendar/GoogleCalendarUriIntentFilter;
.super Landroid/app/Activity;
.source "GoogleCalendarUriIntentFilter.java"


# static fields
.field private static final EVENT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dtend"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "icicle"

    .prologue
    .line 50
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 53
    .local v17, intent:Landroid/content/Intent;
    if-eqz v17, :cond_3

    .line 54
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v20

    .line 55
    .local v20, uri:Landroid/net/Uri;
    if-eqz v20, :cond_2

    .line 56
    const-string v4, "eid"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 57
    .local v12, eid:Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "htmlUri LIKE \"%eid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, selection:Ljava/lang/String;
    sget-object v5, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 64
    .local v15, eventCursor:Landroid/database/Cursor;
    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 66
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 67
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 68
    .local v16, eventId:I
    const/4 v4, 0x1

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 69
    .local v18, startMillis:J
    const/4 v4, 0x2

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 72
    .local v13, endMillis:J
    const/4 v10, 0x0

    .line 73
    .local v10, attendeeStatus:I
    const-string v4, "RESPOND"

    const-string v5, "action"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 75
    :try_start_0
    const-string v4, "rst"

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 93
    :cond_0
    :goto_0
    sget-object v4, Landroid/provider/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v5, v0

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 94
    .local v11, calendarUri:Landroid/net/Uri;
    new-instance v17, Landroid/content/Intent;

    .end local v17           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    move-object v1, v4

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 95
    .restart local v17       #intent:Landroid/content/Intent;
    const-string v4, "beginTime"

    move-object/from16 v0, v17

    move-object v1, v4

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 96
    const-string v4, "endTime"

    move-object/from16 v0, v17

    move-object v1, v4

    move-wide v2, v13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 97
    if-eqz v10, :cond_1

    .line 98
    const-string v4, "attendeeStatus"

    move-object/from16 v0, v17

    move-object v1, v4

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->startActivity(Landroid/content/Intent;)V

    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->finish()V

    .line 115
    .end local v7           #selection:Ljava/lang/String;
    .end local v10           #attendeeStatus:I
    .end local v11           #calendarUri:Landroid/net/Uri;
    .end local v12           #eid:Ljava/lang/String;
    .end local v13           #endMillis:J
    .end local v15           #eventCursor:Landroid/database/Cursor;
    .end local v16           #eventId:I
    .end local v18           #startMillis:J
    .end local v20           #uri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 77
    .restart local v7       #selection:Ljava/lang/String;
    .restart local v10       #attendeeStatus:I
    .restart local v12       #eid:Ljava/lang/String;
    .restart local v13       #endMillis:J
    .restart local v15       #eventCursor:Landroid/database/Cursor;
    .restart local v16       #eventId:I
    .restart local v18       #startMillis:J
    .restart local v20       #uri:Landroid/net/Uri;
    :pswitch_0
    const/4 v10, 0x1

    .line 78
    goto :goto_0

    .line 80
    :pswitch_1
    const/4 v10, 0x2

    .line 81
    goto :goto_0

    .line 83
    :pswitch_2
    const/4 v10, 0x4

    goto :goto_0

    .line 109
    .end local v7           #selection:Ljava/lang/String;
    .end local v10           #attendeeStatus:I
    .end local v12           #eid:Ljava/lang/String;
    .end local v13           #endMillis:J
    .end local v15           #eventCursor:Landroid/database/Cursor;
    .end local v16           #eventId:I
    .end local v18           #startMillis:J
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->startNextMatchingActivity(Landroid/content/Intent;)Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    .end local v20           #uri:Landroid/net/Uri;
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/calendar/GoogleCalendarUriIntentFilter;->finish()V

    goto :goto_1

    .line 110
    .restart local v20       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v4

    goto :goto_2

    .line 86
    .restart local v7       #selection:Ljava/lang/String;
    .restart local v10       #attendeeStatus:I
    .restart local v12       #eid:Ljava/lang/String;
    .restart local v13       #endMillis:J
    .restart local v15       #eventCursor:Landroid/database/Cursor;
    .restart local v16       #eventId:I
    .restart local v18       #startMillis:J
    :catch_1
    move-exception v4

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
