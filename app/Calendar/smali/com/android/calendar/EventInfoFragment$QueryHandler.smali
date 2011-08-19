.class Lcom/android/calendar/EventInfoFragment$QueryHandler;
.super Lcom/android/calendar/AsyncQueryService;
.source "EventInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;


# direct methods
.method public constructor <init>(Lcom/android/calendar/EventInfoFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    .line 238
    invoke-direct {p0, p2}, Lcom/android/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    .line 239
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 14
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v0}, Lcom/android/calendar/EventInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 245
    .local v8, activity:Landroid/app/Activity;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 319
    :goto_0
    return-void

    .line 250
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 317
    :goto_1
    :pswitch_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 318
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static {v0, p1}, Lcom/android/calendar/EventInfoFragment;->access$1000(Lcom/android/calendar/EventInfoFragment;I)V

    goto :goto_0

    .line 252
    :pswitch_1
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static/range {p3 .. p3}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$202(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 253
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$300(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 260
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$100(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V

    .line 263
    sget-object v3, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 264
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$200(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 266
    .local v6, args:[Ljava/lang/String;
    const/4 v1, 0x2

    const/4 v2, 0x0

    sget-object v4, Lcom/android/calendar/EventInfoFragment;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 270
    .end local v3           #uri:Landroid/net/Uri;
    .end local v6           #args:[Ljava/lang/String;
    :pswitch_2
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static/range {p3 .. p3}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$402(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 271
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$500(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V

    .line 273
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$600(Lcom/android/calendar/EventInfoFragment;)V

    .line 275
    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 277
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$700(Lcom/android/calendar/EventInfoFragment;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 278
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$800(Lcom/android/calendar/EventInfoFragment;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 281
    .restart local v6       #args:[Ljava/lang/String;
    sget-object v3, Landroid/provider/Calendar$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 282
    .restart local v3       #uri:Landroid/net/Uri;
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/calendar/EventInfoFragment;->access$900()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "event_id=?"

    const-string v7, "attendeeName ASC, attendeeEmail ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/EventInfoFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 285
    .end local v3           #uri:Landroid/net/Uri;
    .end local v6           #args:[Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$1000(Lcom/android/calendar/EventInfoFragment;I)V

    goto/16 :goto_1

    .line 289
    :pswitch_3
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static/range {p3 .. p3}, Lcom/android/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$1102(Lcom/android/calendar/EventInfoFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 290
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$1200(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;)V

    .line 291
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/EventInfoFragment;->updateResponse(Landroid/view/View;)V

    goto/16 :goto_1

    .line 294
    :pswitch_4
    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 295
    .local v12, res:Landroid/content/res/Resources;
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 298
    .local v13, sb:Landroid/text/SpannableStringBuilder;
    const v0, 0x7f0a0040

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 299
    .local v11, label:Ljava/lang/String;
    invoke-virtual {v13, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 300
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 304
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$400(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 305
    .local v9, calendarName:Ljava/lang/String;
    invoke-virtual {v13, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 309
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$400(Lcom/android/calendar/EventInfoFragment;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 310
    .local v10, email:Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 311
    const-string v0, " ("

    invoke-virtual {v13, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 314
    :cond_4
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$QueryHandler;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$1300(Lcom/android/calendar/EventInfoFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 250
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
