.class final Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;
.super Lcom/android/common/widget/GroupingListAdapter;
.source "RecentCallsListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/RecentCallsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RecentCallsAdapter"
.end annotation


# instance fields
.field private mBuffer1:Landroid/database/CharArrayBuffer;

.field private mBuffer2:Landroid/database/CharArrayBuffer;

.field private mCallerIdThread:Ljava/lang/Thread;

.field mContactInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/RecentCallsListActivity$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDone:Z

.field private mDrawableIncoming:Landroid/graphics/drawable/Drawable;

.field private mDrawableMissed:Landroid/graphics/drawable/Drawable;

.field private mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

.field private mFirst:Z

.field private mHandler:Landroid/os/Handler;

.field private mLabelArray:[Ljava/lang/CharSequence;

.field private mLoading:Z

.field mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/contacts/RecentCallsListActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/RecentCallsListActivity;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x80

    .line 236
    iput-object p1, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    .line 237
    invoke-direct {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mLoading:Z

    .line 195
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mBuffer1:Landroid/database/CharArrayBuffer;

    .line 196
    new-instance v0, Landroid/database/CharArrayBuffer;

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mBuffer2:Landroid/database/CharArrayBuffer;

    .line 222
    new-instance v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter$1;-><init>(Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mHandler:Landroid/os/Handler;

    .line 239
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    .line 240
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 243
    invoke-virtual {p1}, Lcom/android/contacts/RecentCallsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mDrawableIncoming:Landroid/graphics/drawable/Drawable;

    .line 245
    invoke-virtual {p1}, Lcom/android/contacts/RecentCallsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

    .line 247
    invoke-virtual {p1}, Lcom/android/contacts/RecentCallsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mDrawableMissed:Landroid/graphics/drawable/Drawable;

    .line 249
    invoke-virtual {p1}, Lcom/android/contacts/RecentCallsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mLabelArray:[Ljava/lang/CharSequence;

    .line 250
    return-void
.end method

.method private enqueueRequest(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "number"
    .parameter "position"
    .parameter "name"
    .parameter "numberType"
    .parameter "numberLabel"

    .prologue
    .line 323
    new-instance v0, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;

    invoke-direct {v0}, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;-><init>()V

    .line 324
    .local v0, ciq:Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;
    iput-object p1, v0, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->number:Ljava/lang/String;

    .line 325
    iput p2, v0, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->position:I

    .line 326
    iput-object p3, v0, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->name:Ljava/lang/String;

    .line 327
    iput p4, v0, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->numberType:I

    .line 328
    iput-object p5, v0, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->numberLabel:Ljava/lang/String;

    .line 329
    iget-object v1, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v1

    .line 330
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v2, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 332
    monitor-exit v1

    .line 333
    return-void

    .line 332
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private findAndCacheViews(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 593
    new-instance v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;

    invoke-direct {v0}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;-><init>()V

    .line 594
    .local v0, views:Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;
    const v1, 0x7f0700a6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->line1View:Landroid/widget/TextView;

    .line 595
    const v1, 0x7f070029

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    .line 596
    const v1, 0x7f07002a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    .line 597
    const v1, 0x7f0700a4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->dateView:Landroid/widget/TextView;

    .line 598
    const v1, 0x7f0700a8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->iconView:Landroid/widget/ImageView;

    .line 599
    const v1, 0x7f0700a3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->callView:Landroid/view/View;

    .line 600
    iget-object v1, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->callView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    const v1, 0x7f0700a7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->groupIndicator:Landroid/widget/ImageView;

    .line 602
    const v1, 0x7f0700a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->groupSize:Landroid/widget/TextView;

    .line 603
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 604
    return-void
.end method

.method private queryContactInfo(Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;)Z
    .locals 19
    .parameter "ciq"

    .prologue
    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    move-object v3, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->number:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    .line 339
    .local v15, info:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    const/16 v17, 0x0

    .line 340
    .local v17, needNotify:Z
    if-eqz v15, :cond_0

    sget-object v3, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->EMPTY:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    if-eq v15, v3, :cond_0

    .line 341
    const/4 v3, 0x1

    .line 448
    :goto_0
    return v3

    .line 344
    :cond_0
    const/16 v16, 0x0

    .line 346
    .local v16, infoUpdated:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->number:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 355
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 366
    .local v4, contactRef:Landroid/net/Uri;
    const-string v6, "upper(data1)=? AND mimetype=\'vnd.android.cursor.item/sip_address\'"

    .line 369
    .local v6, selection:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->number:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v3

    .line 371
    .local v7, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/contacts/RecentCallsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 379
    .local v14, dataTableCursor:Landroid/database/Cursor;
    if-eqz v14, :cond_2

    .line 380
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    new-instance v15, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    .end local v15           #info:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    invoke-direct {v15}, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;-><init>()V

    .line 391
    .restart local v15       #info:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    const-string v3, "contact_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v15, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->personId:J

    .line 393
    const-string v3, "display_name"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->name:Ljava/lang/String;

    .line 396
    const/4 v3, 0x3

    iput v3, v15, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->type:I

    .line 397
    const/4 v3, 0x0

    iput-object v3, v15, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->label:Ljava/lang/String;

    .line 401
    const-string v3, "data1"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->number:Ljava/lang/String;

    .line 403
    const/4 v3, 0x0

    iput-object v3, v15, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 405
    const/16 v16, 0x1

    .line 407
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 434
    .end local v4           #contactRef:Landroid/net/Uri;
    .end local v6           #selection:Ljava/lang/String;
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v14           #dataTableCursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    if-eqz v16, :cond_3

    .line 437
    const/4 v3, 0x0

    iput-object v3, v15, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    move-object v3, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->number:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const/16 v17, 0x1

    .line 445
    :cond_3
    if-eqz v15, :cond_4

    .line 446
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->updateCallLog(Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;Lcom/android/contacts/RecentCallsListActivity$ContactInfo;)V

    :cond_4
    move/from16 v3, v17

    .line 448
    goto/16 :goto_0

    .line 412
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/contacts/RecentCallsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->number:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    sget-object v10, Lcom/android/contacts/RecentCallsListActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 417
    .local v18, phonesCursor:Landroid/database/Cursor;
    if-eqz v18, :cond_2

    .line 418
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 419
    new-instance v15, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    .end local v15           #info:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    invoke-direct {v15}, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;-><init>()V

    .line 420
    .restart local v15       #info:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v15, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->personId:J

    .line 421
    const/4 v3, 0x1

    move-object/from16 v0, v18

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->name:Ljava/lang/String;

    .line 422
    const/4 v3, 0x2

    move-object/from16 v0, v18

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v15, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->type:I

    .line 423
    const/4 v3, 0x3

    move-object/from16 v0, v18

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->label:Ljava/lang/String;

    .line 424
    const/4 v3, 0x4

    move-object/from16 v0, v18

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->number:Ljava/lang/String;

    .line 425
    const/4 v3, 0x5

    move-object/from16 v0, v18

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->normalizedNumber:Ljava/lang/String;

    .line 428
    const/16 v16, 0x1

    .line 430
    :cond_6
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method private updateCallLog(Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;Lcom/android/contacts/RecentCallsListActivity$ContactInfo;)V
    .locals 6
    .parameter "ciq"
    .parameter "ci"

    .prologue
    .line 299
    iget-object v2, p1, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->name:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->numberLabel:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->label:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->numberType:I

    iget v3, p2, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->type:I

    if-ne v2, v3, :cond_0

    .line 319
    :goto_0
    return-void

    .line 304
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 305
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "name"

    iget-object v3, p2, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v2, "numbertype"

    iget v3, p2, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    const-string v2, "numberlabel"

    iget-object v3, p2, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    invoke-virtual {v2}, Lcom/android/contacts/RecentCallsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 312
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 313
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v2, "RecentCallsList"

    const-string v3, "Exception while updating call info"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 314
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 315
    .local v0, e:Landroid/database/sqlite/SQLiteFullException;
    const-string v2, "RecentCallsList"

    const-string v3, "Exception while updating call info"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 316
    .end local v0           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 317
    .local v0, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    const-string v2, "RecentCallsList"

    const-string v3, "Exception while updating call info"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected addGroups(Landroid/database/Cursor;)V
    .locals 13
    .parameter "cursor"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 483
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 484
    .local v0, count:I
    if-nez v0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 488
    :cond_1
    const/4 v3, 0x1

    .line 490
    .local v3, groupItemCount:I
    iget-object v2, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mBuffer1:Landroid/database/CharArrayBuffer;

    .line 491
    .local v2, currentValue:Landroid/database/CharArrayBuffer;
    iget-object v7, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mBuffer2:Landroid/database/CharArrayBuffer;

    .line 492
    .local v7, value:Landroid/database/CharArrayBuffer;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 493
    invoke-interface {p1, v9, v2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 494
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 495
    .local v1, currentCallType:I
    const/4 v4, 0x1

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_5

    .line 496
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 497
    invoke-interface {p1, v9, v7}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 498
    invoke-virtual {p0, v7, v2}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->equalPhoneNumbers(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)Z

    move-result v5

    .line 503
    .local v5, sameNumber:Z
    if-eqz v5, :cond_2

    if-eq v1, v11, :cond_2

    .line 504
    add-int/lit8 v3, v3, 0x1

    .line 495
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 506
    :cond_2
    if-le v3, v9, :cond_3

    .line 507
    sub-int v8, v4, v3

    invoke-virtual {p0, v8, v3, v10}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->addGroup(IIZ)V

    .line 510
    :cond_3
    const/4 v3, 0x1

    .line 513
    move-object v6, v2

    .line 514
    .local v6, temp:Landroid/database/CharArrayBuffer;
    move-object v2, v7

    .line 515
    move-object v7, v6

    .line 520
    if-eqz v5, :cond_4

    if-ne v1, v11, :cond_4

    .line 521
    const/4 v1, 0x0

    goto :goto_2

    .line 523
    :cond_4
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_2

    .line 527
    .end local v5           #sameNumber:Z
    .end local v6           #temp:Landroid/database/CharArrayBuffer;
    :cond_5
    if-le v3, v9, :cond_0

    .line 528
    sub-int v8, v0, v3

    invoke-virtual {p0, v8, v3, v10}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->addGroup(IIZ)V

    goto :goto_0
.end method

.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 566
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->bindView(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)V

    .line 567
    return-void
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "groupSize"
    .parameter "expanded"

    .prologue
    .line 581
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;

    .line 582
    .local v1, views:Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;
    if-eqz p5, :cond_0

    const v2, 0x108026d

    move v0, v2

    .line 585
    .local v0, groupIndicator:I
    :goto_0
    iget-object v2, v1, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->groupIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 586
    iget-object v2, v1, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->groupSize:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->bindView(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)V

    .line 588
    return-void

    .line 582
    .end local v0           #groupIndicator:I
    :cond_0
    const v2, 0x108026e

    move v0, v2

    goto :goto_0
.end method

.method protected bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 552
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->bindView(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)V

    .line 553
    return-void
.end method

.method public bindView(Landroid/content/Context;Landroid/view/View;Landroid/database/Cursor;)V
    .locals 28
    .parameter "context"
    .parameter "view"
    .parameter "c"

    .prologue
    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;

    .line 609
    .local v27, views:Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 610
    .local v5, number:Ljava/lang/String;
    const/16 v18, 0x0

    .line 611
    .local v18, formattedNumber:Ljava/lang/String;
    const/4 v4, 0x5

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 612
    .local v7, callerName:Ljava/lang/String;
    const/4 v4, 0x6

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 613
    .local v8, callerNumberType:I
    const/4 v4, 0x7

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 614
    .local v9, callerNumberLabel:Ljava/lang/String;
    const/16 v4, 0x8

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 616
    .local v17, countryIso:Ljava/lang/String;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->callView:Landroid/view/View;

    move-object v4, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    move-object v4, v0

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    .line 620
    .local v19, info:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    if-nez v19, :cond_5

    .line 623
    sget-object v19, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->EMPTY:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->enqueueRequest(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 647
    :cond_0
    :goto_0
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 648
    .local v22, name:Ljava/lang/String;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->type:I

    move/from16 v23, v0

    .line 649
    .local v23, ntype:I
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 653
    .local v20, label:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 654
    move-object/from16 v22, v7

    .line 655
    move/from16 v23, v8

    .line 656
    move-object/from16 v20, v9

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    move-object v4, v0

    const/4 v6, 0x0

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/RecentCallsListActivity;->access$100(Lcom/android/contacts/RecentCallsListActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 664
    :cond_1
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->callView:Landroid/view/View;

    move-object v4, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 666
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 667
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->line1View:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 671
    const/16 v25, 0x0

    .line 672
    .local v25, numberLabel:Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mLabelArray:[Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, v20

    move-object v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v25

    .line 676
    :cond_2
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 677
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 679
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 680
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 683
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 685
    .local v24, numberLP:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 686
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    .end local v24           #numberLP:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v25           #numberLabel:Ljava/lang/CharSequence;
    :goto_1
    const/4 v4, 0x2

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 734
    .local v10, date:J
    const/high16 v16, 0x4

    .line 736
    .local v16, flags:I
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->dateView:Landroid/widget/TextView;

    move-object v4, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/32 v14, 0xea60

    invoke-static/range {v10 .. v16}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v5

    .end local v5           #number:Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->iconView:Landroid/widget/ImageView;

    move-object v4, v0

    if-eqz v4, :cond_3

    .line 740
    const/4 v4, 0x4

    move-object/from16 v0, p3

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    .line 742
    .local v26, type:I
    packed-switch v26, :pswitch_data_0

    .line 758
    .end local v26           #type:I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-object v4, v0

    if-nez v4, :cond_4

    .line 759
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mFirst:Z

    .line 760
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 761
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 763
    :cond_4
    return-void

    .line 627
    .end local v10           #date:J
    .end local v16           #flags:I
    .end local v20           #label:Ljava/lang/String;
    .end local v22           #name:Ljava/lang/String;
    .end local v23           #ntype:I
    .restart local v5       #number:Ljava/lang/String;
    :cond_5
    sget-object v4, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->EMPTY:Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    move-object/from16 v0, v19

    move-object v1, v4

    if-eq v0, v1, :cond_0

    .line 631
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->name:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->type:I

    move v4, v0

    if-ne v4, v8, :cond_6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->label:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 635
    :cond_6
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->enqueueRequest(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 640
    :cond_7
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->formattedNumber:Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_8

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    move-object v4, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->number:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->normalizedNumber:Ljava/lang/String;

    move-object v10, v0

    move-object v0, v4

    move-object v1, v6

    move-object v2, v10

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/RecentCallsListActivity;->access$100(Lcom/android/contacts/RecentCallsListActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 644
    :cond_8
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;->formattedNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    goto/16 :goto_0

    .line 698
    .restart local v20       #label:Ljava/lang/String;
    .restart local v22       #name:Ljava/lang/String;
    .restart local v23       #ntype:I
    .restart local v25       #numberLabel:Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object v4, v0

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 701
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 703
    .local v21, labelLP:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 706
    .restart local v24       #numberLP:Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v4, v0

    neg-int v4, v4

    move v0, v4

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 707
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 710
    .end local v21           #labelLP:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v24           #numberLP:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v25           #numberLabel:Ljava/lang/CharSequence;
    :cond_a
    const-string v4, "-1"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    move-object v4, v0

    const v5, 0x7f0c0074

    invoke-virtual {v4, v5}, Lcom/android/contacts/RecentCallsListActivity;->getString(I)Ljava/lang/String;

    .end local v5           #number:Ljava/lang/String;
    move-result-object v5

    .line 712
    .restart local v5       #number:Ljava/lang/String;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->callView:Landroid/view/View;

    move-object v4, v0

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 726
    :goto_3
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->line1View:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->numberView:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 728
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->labelView:Landroid/widget/TextView;

    move-object v4, v0

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 713
    :cond_b
    const-string v4, "-2"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    move-object v4, v0

    const v5, 0x7f0c0075

    invoke-virtual {v4, v5}, Lcom/android/contacts/RecentCallsListActivity;->getString(I)Ljava/lang/String;

    .end local v5           #number:Ljava/lang/String;
    move-result-object v5

    .line 715
    .restart local v5       #number:Ljava/lang/String;
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->callView:Landroid/view/View;

    move-object v4, v0

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 716
    :cond_c
    const-string v4, "-3"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    move-object v4, v0

    const v5, 0x7f0c0076

    invoke-virtual {v4, v5}, Lcom/android/contacts/RecentCallsListActivity;->getString(I)Ljava/lang/String;

    .end local v5           #number:Ljava/lang/String;
    move-result-object v5

    .restart local v5       #number:Ljava/lang/String;
    goto :goto_3

    .line 718
    :cond_d
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/contacts/RecentCallsListActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    move-object v4, v0

    const v5, 0x7f0c0073

    invoke-virtual {v4, v5}, Lcom/android/contacts/RecentCallsListActivity;->getString(I)Ljava/lang/String;

    .end local v5           #number:Ljava/lang/String;
    move-result-object v5

    .restart local v5       #number:Ljava/lang/String;
    goto :goto_3

    .line 723
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    move-object v4, v0

    const/4 v6, 0x0

    move-object v0, v4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/RecentCallsListActivity;->access$100(Lcom/android/contacts/RecentCallsListActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 744
    .end local v5           #number:Ljava/lang/String;
    .restart local v10       #date:J
    .restart local v16       #flags:I
    .restart local v26       #type:I
    :pswitch_0
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->iconView:Landroid/widget/ImageView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mDrawableIncoming:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 748
    :pswitch_1
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->iconView:Landroid/widget/ImageView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mDrawableOutgoing:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 752
    :pswitch_2
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsListItemViews;->iconView:Landroid/widget/ImageView;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mDrawableMissed:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 742
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public clearCache()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 294
    monitor-exit v0

    .line 295
    return-void

    .line 294
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected equalPhoneNumbers(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)Z
    .locals 5
    .parameter "buffer1"
    .parameter "buffer2"

    .prologue
    const/4 v4, 0x0

    .line 536
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/database/CharArrayBuffer;->data:[C

    iget v2, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p2, Landroid/database/CharArrayBuffer;->data:[C

    iget v3, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getContactInfo(Ljava/lang/String;)Lcom/android/contacts/RecentCallsListActivity$ContactInfo;
    .locals 1
    .parameter "number"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/RecentCallsListActivity$ContactInfo;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 271
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/common/widget/GroupingListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method protected newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 557
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 559
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040040

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 560
    .local v1, view:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 561
    return-object v1
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 571
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 573
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040041

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 574
    .local v1, view:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 575
    return-object v1
.end method

.method protected newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 543
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 545
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040042

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 546
    .local v1, view:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->findAndCacheViews(Landroid/view/View;)V

    .line 547
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 200
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 205
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    const-string v2, "sip"

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 210
    .local v0, callUri:Landroid/net/Uri;
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/android/contacts/RecentCallsListActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    .end local v0           #callUri:Landroid/net/Uri;
    :cond_0
    return-void

    .line 208
    :cond_1
    const-string v2, "tel"

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .restart local v0       #callUri:Landroid/net/Uri;
    goto :goto_0
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->this$0:Lcom/android/contacts/RecentCallsListActivity;

    invoke-static {v0}, Lcom/android/contacts/RecentCallsListActivity;->access$000(Lcom/android/contacts/RecentCallsListActivity;)V

    .line 259
    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mFirst:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mFirst:Z

    .line 219
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 456
    const/4 v2, 0x0

    .line 457
    .local v2, needNotify:Z
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mDone:Z

    if-nez v3, :cond_3

    .line 458
    const/4 v1, 0x0

    .line 459
    .local v1, ciq:Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;
    iget-object v4, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v4

    .line 460
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 461
    iget-object v3, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;

    move-object v1, v0

    .line 473
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->queryContactInfo(Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 475
    const/4 v2, 0x1

    goto :goto_0

    .line 463
    :cond_1
    if-eqz v2, :cond_2

    .line 464
    const/4 v2, 0x0

    .line 465
    :try_start_1
    iget-object v3, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mRequests:Ljava/util/LinkedList;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 469
    :catch_0
    move-exception v3

    goto :goto_1

    .line 473
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 478
    .end local v1           #ciq:Lcom/android/contacts/RecentCallsListActivity$CallerInfoQuery;
    :cond_3
    return-void
.end method

.method setLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mLoading:Z

    .line 263
    return-void
.end method

.method public startRequestProcessing()V
    .locals 2

    .prologue
    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mDone:Z

    .line 281
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mCallerIdThread:Ljava/lang/Thread;

    .line 282
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mCallerIdThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 283
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 284
    return-void
.end method

.method public stopRequestProcessing()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mDone:Z

    .line 288
    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mCallerIdThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/RecentCallsListActivity$RecentCallsAdapter;->mCallerIdThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 289
    :cond_0
    return-void
.end method
