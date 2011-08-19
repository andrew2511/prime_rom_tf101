.class Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AttendeesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/AttendeesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PresenceQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/AttendeesView;


# direct methods
.method public constructor <init>(Lcom/android/calendar/event/AttendeesView;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;->this$0:Lcom/android/calendar/event/AttendeesView;

    .line 315
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 316
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 12
    .parameter "queryIndex"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 320
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    move-object v4, v0

    .line 329
    .local v4, item:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
    const/4 v9, -0x1

    :try_start_0
    invoke-interface {p3, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 330
    const/4 v3, 0x0

    .line 331
    .local v3, found:Z
    const/4 v1, 0x0

    .line 332
    .local v1, contactId:I
    const/4 v6, 0x0

    .line 333
    .local v6, photoId:I
    const/4 v7, 0x0

    .line 334
    .local v7, presence:I
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 335
    const/4 v9, 0x2

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, email:Ljava/lang/String;
    const/4 v8, 0x0

    .line 337
    .local v8, temp:I
    const/4 v9, 0x3

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 340
    if-lez v8, :cond_2

    .line 341
    move v6, v8

    .line 342
    const/4 v9, 0x0

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 345
    :cond_2
    const/4 v9, 0x1

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 348
    const/4 v3, 0x1

    .line 355
    goto :goto_1

    .line 356
    .end local v2           #email:Ljava/lang/String;
    .end local v8           #temp:I
    :cond_3
    if-eqz v3, :cond_4

    .line 357
    iput v7, v4, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mPresence:I

    .line 359
    if-lez v6, :cond_4

    iget v9, v4, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mUpdateCounts:I

    if-ge v9, p1, :cond_4

    .line 360
    iput p1, v4, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mUpdateCounts:I

    .line 361
    sget-object v9, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v10, v1

    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 364
    .local v5, personUri:Landroid/net/Uri;
    iget-object v9, p0, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;->this$0:Lcom/android/calendar/event/AttendeesView;

    invoke-static {v9}, Lcom/android/calendar/event/AttendeesView;->access$000(Lcom/android/calendar/event/AttendeesView;)Landroid/content/Context;

    move-result-object v9

    new-instance v10, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler$1;

    invoke-direct {v10, p0, v4}, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler$1;-><init>(Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)V

    invoke-static {v9, v4, v10, v5}, Lcom/android/calendar/ContactsAsyncHelper;->retrieveContactPhotoAsync(Landroid/content/Context;Lcom/android/calendar/event/EditEventHelper$AttendeeItem;Ljava/lang/Runnable;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    .end local v5           #personUri:Landroid/net/Uri;
    :cond_4
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v1           #contactId:I
    .end local v3           #found:Z
    .end local v6           #photoId:I
    .end local v7           #presence:I
    :catchall_0
    move-exception v9

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v9
.end method
