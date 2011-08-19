.class Lcom/android/calendar/event/EditEventFragment$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditEventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EditEventFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/EditEventFragment;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    .line 118
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 36
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 124
    if-nez p3, :cond_0

    .line 289
    :goto_0
    return-void

    .line 130
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/calendar/event/EditEventFragment;->getActivity()Landroid/app/Activity;

    move-result-object v25

    .line 131
    .local v25, activity:Landroid/app/Activity;
    if-eqz v25, :cond_1

    invoke-virtual/range {v25 .. v25}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 132
    :cond_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 136
    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 138
    :pswitch_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 141
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/event/EditEventFragment;->access$000(Lcom/android/calendar/event/EditEventFragment;)Lcom/android/calendar/event/EditEventFragment$Done;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/calendar/event/EditEventFragment$Done;->setDoneCode(I)V

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/calendar/event/EditEventFragment;->access$000(Lcom/android/calendar/event/EditEventFragment;)Lcom/android/calendar/event/EditEventFragment$Done;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calendar/event/EditEventFragment$Done;->run()V

    goto :goto_0

    .line 146
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    new-instance v4, Lcom/android/calendar/CalendarEventModel;

    invoke-direct {v4}, Lcom/android/calendar/CalendarEventModel;-><init>()V

    iput-object v4, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/calendar/event/EditEventHelper;->setModelFromCursor(Lcom/android/calendar/CalendarEventModel;Landroid/database/Cursor;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/calendar/event/EditEventHelper;->setModelFromCursor(Lcom/android/calendar/CalendarEventModel;Landroid/database/Cursor;)V

    .line 149
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/event/EditEventFragment;->access$100(Lcom/android/calendar/event/EditEventFragment;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/event/EditEventFragment;->access$100(Lcom/android/calendar/event/EditEventFragment;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/event/EditEventFragment;->access$200(Lcom/android/calendar/event/EditEventFragment;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/event/EditEventFragment;->access$300(Lcom/android/calendar/event/EditEventFragment;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/event/EditEventFragment;->access$200(Lcom/android/calendar/event/EditEventFragment;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v6, v6, Lcom/android/calendar/CalendarEventModel;->mStart:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Lcom/android/calendar/CalendarEventModel;->mIsFirstEventInSeries:Z

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/event/EditEventFragment;->access$200(Lcom/android/calendar/event/EditEventFragment;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v4, v0

    invoke-static {v4}, Lcom/android/calendar/event/EditEventFragment;->access$300(Lcom/android/calendar/event/EditEventFragment;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object v0, v3

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mId:J

    move-wide/from16 v29, v0

    .line 163
    .local v29, eventId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v3, v3, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    if-eqz v3, :cond_5

    const-wide/16 v3, -0x1

    cmp-long v3, v29, v3

    if-eqz v3, :cond_5

    .line 164
    sget-object v6, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 165
    .local v6, attUri:Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v3

    .line 168
    .local v9, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    const/4 v4, 0x2

    const/4 v5, 0x0

    sget-object v7, Lcom/android/calendar/event/EditEventHelper;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v8, "event_id=?"

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v6           #attUri:Landroid/net/Uri;
    .end local v9           #whereArgs:[Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v3, v3, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    if-eqz v3, :cond_6

    .line 178
    sget-object v13, Landroid/provider/Calendar$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 179
    .local v13, rUri:Landroid/net/Uri;
    const/4 v3, 0x3

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v3, 0x0

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v16, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v16, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v16, v3

    .line 183
    .local v16, remArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v10, v3, Lcom/android/calendar/event/EditEventFragment;->mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    const/4 v11, 0x4

    const/4 v12, 0x0

    sget-object v14, Lcom/android/calendar/event/EditEventHelper;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const-string v15, "event_id=? AND (method=? OR method=?)"

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .end local v13           #rUri:Landroid/net/Uri;
    .end local v16           #remArgs:[Ljava/lang/String;
    :goto_3
    const/4 v3, 0x1

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v4, v4, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v23, v3

    .line 196
    .local v23, selArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    move-object v0, v3

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment;->mHandler:Lcom/android/calendar/event/EditEventFragment$QueryHandler;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    const/16 v19, 0x0

    sget-object v20, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v21, Lcom/android/calendar/event/EditEventHelper;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v22, "_id=?"

    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v24}, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/calendar/event/EditEventFragment;->access$400(Lcom/android/calendar/event/EditEventFragment;I)V

    goto/16 :goto_0

    .line 156
    .end local v23           #selArgs:[Ljava/lang/String;
    .end local v29           #eventId:J
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 173
    .restart local v29       #eventId:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/calendar/event/EditEventFragment;->access$400(Lcom/android/calendar/event/EditEventFragment;I)V

    goto/16 :goto_2

    .line 189
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/android/calendar/event/EditEventFragment;->access$400(Lcom/android/calendar/event/EditEventFragment;I)V

    goto :goto_3

    .line 204
    .end local v29           #eventId:J
    :goto_4
    :pswitch_2
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 205
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 206
    .local v33, name:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 207
    .local v28, email:Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 208
    .local v35, status:I
    const/4 v3, 0x3

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 210
    .local v34, relationship:I
    const/4 v3, 0x2

    move/from16 v0, v34

    move v1, v3

    if-ne v0, v1, :cond_8

    .line 211
    if-eqz v28, :cond_7

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, v28

    move-object v1, v3

    iput-object v0, v1, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, v28

    move-object v1, v3

    iput-object v0, v1, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    .line 220
    :cond_7
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v4, v4, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 230
    :cond_8
    :goto_5
    if-eqz v28, :cond_a

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 233
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 235
    .local v27, attendeeId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move/from16 v0, v27

    move-object v1, v3

    iput v0, v1, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move/from16 v0, v35

    move-object v1, v3

    iput v0, v1, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move/from16 v0, v27

    move-object v1, v3

    iput v0, v1, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move/from16 v0, v35

    move-object v1, v3

    iput v0, v1, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    .line 248
    .end local v27           #attendeeId:I
    .end local v28           #email:Ljava/lang/String;
    .end local v33           #name:Ljava/lang/String;
    .end local v34           #relationship:I
    .end local v35           #status:I
    :catchall_0
    move-exception v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v3

    .line 225
    .restart local v28       #email:Ljava/lang/String;
    .restart local v33       #name:Ljava/lang/String;
    .restart local v34       #relationship:I
    .restart local v35       #status:I
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, v33

    move-object v1, v3

    iput-object v0, v1, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object/from16 v0, v33

    move-object v1, v3

    iput-object v0, v1, Lcom/android/calendar/CalendarEventModel;->mOrganizerDisplayName:Ljava/lang/String;

    goto :goto_5

    .line 242
    :cond_a
    new-instance v26, Lcom/android/calendar/CalendarEventModel$Attendee;

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .local v26, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    move/from16 v0, v35

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/calendar/CalendarEventModel$Attendee;->mStatus:I

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarEventModel;->addAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarEventModel;->addAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 248
    .end local v26           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .end local v28           #email:Ljava/lang/String;
    .end local v33           #name:Ljava/lang/String;
    .end local v34           #relationship:I
    .end local v35           #status:I
    :cond_b
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/android/calendar/event/EditEventFragment;->access$400(Lcom/android/calendar/event/EditEventFragment;I)V

    goto/16 :goto_0

    .line 256
    :goto_6
    :pswitch_3
    :try_start_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 257
    const/4 v3, 0x1

    move-object/from16 v0, p3

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 258
    .local v32, minutes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v3, v3, Lcom/android/calendar/CalendarEventModel;->mReminderMinutes:Ljava/util/ArrayList;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    .line 262
    .end local v32           #minutes:I
    :catchall_1
    move-exception v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_c
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/android/calendar/event/EditEventFragment;->access$400(Lcom/android/calendar/event/EditEventFragment;I)V

    goto/16 :goto_0

    .line 269
    :pswitch_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v3, v3, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 271
    invoke-static/range {p3 .. p3}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v31

    .line 276
    .local v31, matrixCursor:Landroid/database/MatrixCursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/calendar/event/EditEventFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/calendar/event/EditEventFragment;->isResumed()Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    :goto_7
    move-object v0, v3

    move-object/from16 v1, v31

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/event/EditEventView;->setCalendarsCursor(Landroid/database/Cursor;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 283
    .end local v31           #matrixCursor:Landroid/database/MatrixCursor;
    :goto_8
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/android/calendar/event/EditEventFragment;->access$400(Lcom/android/calendar/event/EditEventFragment;I)V

    goto/16 :goto_0

    .line 276
    .restart local v31       #matrixCursor:Landroid/database/MatrixCursor;
    :cond_d
    const/4 v4, 0x0

    goto :goto_7

    .line 279
    .end local v31           #matrixCursor:Landroid/database/MatrixCursor;
    :cond_e
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/calendar/event/EditEventHelper;->setModelFromCalendarCursor(Lcom/android/calendar/CalendarEventModel;Landroid/database/Cursor;)Z

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment$QueryHandler;->this$0:Lcom/android/calendar/event/EditEventFragment;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/calendar/event/EditEventFragment;->mOriginalModel:Lcom/android/calendar/CalendarEventModel;

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/calendar/event/EditEventHelper;->setModelFromCalendarCursor(Lcom/android/calendar/CalendarEventModel;Landroid/database/Cursor;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_8

    .line 283
    :catchall_2
    move-exception v3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v3

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
