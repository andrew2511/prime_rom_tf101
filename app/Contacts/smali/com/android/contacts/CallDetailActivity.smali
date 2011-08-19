.class public Lcom/android/contacts/CallDetailActivity;
.super Landroid/app/ListActivity;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/CallDetailActivity$ViewAdapter;,
        Lcom/android/contacts/CallDetailActivity$ViewEntry;
    }
.end annotation


# static fields
.field static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCallDuration:Landroid/widget/TextView;

.field private mCallTime:Landroid/widget/TextView;

.field private mCallType:Landroid/widget/TextView;

.field private mCallTypeIcon:Landroid/widget/ImageView;

.field private mDefaultCountryIso:Ljava/lang/String;

.field mInflater:Landroid/view/LayoutInflater;

.field private mNumber:Ljava/lang/String;

.field mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "date"

    aput-object v1, v0, v2

    const-string v1, "duration"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "countryiso"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/contacts/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 85
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "label"

    aput-object v1, v0, v5

    const-string v1, "number"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/CallDetailActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    .line 308
    return-void
.end method

.method private formatDuration(J)Ljava/lang/String;
    .locals 8
    .parameter "elapsedSeconds"

    .prologue
    const-wide/16 v5, 0x3c

    .line 282
    const-wide/16 v0, 0x0

    .line 283
    .local v0, minutes:J
    const-wide/16 v2, 0x0

    .line 285
    .local v2, seconds:J
    cmp-long v4, p1, v5

    if-ltz v4, :cond_0

    .line 286
    div-long v0, p1, v5

    .line 287
    mul-long v4, v0, v5

    sub-long/2addr p1, v4

    .line 289
    :cond_0
    move-wide v2, p1

    .line 291
    const v4, 0x7f0c0091

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/contacts/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private updateData(Landroid/net/Uri;)V
    .locals 34
    .parameter "callUri"

    .prologue
    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/CallDetailActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 150
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v6, Lcom/android/contacts/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 152
    .local v16, callCursor:Landroid/database/Cursor;
    if-eqz v16, :cond_c

    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 154
    const/4 v5, 0x2

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    .line 155
    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 156
    .local v6, date:J
    const/4 v5, 0x1

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 157
    .local v24, duration:J
    const/4 v5, 0x3

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 158
    .local v20, callType:I
    const/4 v5, 0x4

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 159
    .local v21, countryIso:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 163
    :cond_0
    const/16 v10, 0x17

    move-object/from16 v5, p0

    move-wide v8, v6

    invoke-static/range {v5 .. v10}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v23

    .line 166
    .local v23, dateClause:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mCallTime:Landroid/widget/TextView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const/4 v5, 0x3

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_4

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mCallDuration:Landroid/widget/TextView;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    .end local v6           #date:J
    :goto_0
    const/16 v19, 0x0

    .line 178
    .local v19, callText:Ljava/lang/String;
    packed-switch v20, :pswitch_data_0

    .line 198
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "-2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 201
    :cond_1
    const v5, 0x7f070027

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 202
    .local v26, emptyText:Landroid/widget/TextView;
    if-eqz v26, :cond_2

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "-2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const v5, 0x7f0c0075

    :goto_2
    move-object/from16 v0, v26

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    .end local v19           #callText:Ljava/lang/String;
    .end local v20           #callType:I
    .end local v21           #countryIso:Ljava/lang/String;
    .end local v23           #dateClause:Ljava/lang/CharSequence;
    .end local v24           #duration:J
    .end local v26           #emptyText:Landroid/widget/TextView;
    :cond_2
    :goto_3
    if-eqz v16, :cond_3

    .line 276
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 279
    :cond_3
    return-void

    .line 172
    .restart local v6       #date:J
    .restart local v20       #callType:I
    .restart local v21       #countryIso:Ljava/lang/String;
    .restart local v23       #dateClause:Ljava/lang/CharSequence;
    .restart local v24       #duration:J
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mCallDuration:Landroid/widget/TextView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    .end local v6           #date:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mCallDuration:Landroid/widget/TextView;

    move-object v5, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/CallDetailActivity;->formatDuration(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 275
    .end local v20           #callType:I
    .end local v21           #countryIso:Ljava/lang/String;
    .end local v23           #dateClause:Ljava/lang/CharSequence;
    .end local v24           #duration:J
    :catchall_0
    move-exception v5

    if-eqz v16, :cond_5

    .line 276
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v5

    .line 180
    .restart local v19       #callText:Ljava/lang/String;
    .restart local v20       #callType:I
    .restart local v21       #countryIso:Ljava/lang/String;
    .restart local v23       #dateClause:Ljava/lang/CharSequence;
    .restart local v24       #duration:J
    :pswitch_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mCallTypeIcon:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f020055

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mCallType:Landroid/widget/TextView;

    move-object v5, v0

    const v6, 0x7f0c008a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 182
    const v5, 0x7f0c008e

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 183
    goto/16 :goto_1

    .line 186
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mCallTypeIcon:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f020057

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mCallType:Landroid/widget/TextView;

    move-object v5, v0

    const v6, 0x7f0c008b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 188
    const v5, 0x7f0c008f

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 189
    goto/16 :goto_1

    .line 192
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mCallTypeIcon:Landroid/widget/ImageView;

    move-object v5, v0

    const v6, 0x7f020056

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mCallType:Landroid/widget/TextView;

    move-object v5, v0

    const v6, 0x7f0c008c

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 194
    const v5, 0x7f0c0090

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    .line 203
    .restart local v26       #emptyText:Landroid/widget/TextView;
    :cond_6
    const v5, 0x7f0c0074

    goto/16 :goto_2

    .line 208
    .end local v26           #emptyText:Landroid/widget/TextView;
    :cond_7
    const/16 v18, 0x0

    .line 209
    .local v18, callLabel:Ljava/lang/String;
    const/16 v30, 0x0

    .line 210
    .local v30, personUri:Landroid/net/Uri;
    sget-object v5, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 212
    .local v9, phoneUri:Landroid/net/Uri;
    sget-object v10, Lcom/android/contacts/CallDetailActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v4

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v31

    .line 214
    .local v31, phonesCursor:Landroid/database/Cursor;
    if-eqz v31, :cond_9

    :try_start_3
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 215
    const/4 v5, 0x0

    move-object/from16 v0, v31

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 216
    .local v28, personId:J
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    .line 218
    const v5, 0x7f0c0069

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, v31

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/CallDetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 220
    const/4 v5, 0x4

    move-object/from16 v0, v31

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    move-object/from16 v0, v31

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    .line 224
    const/4 v5, 0x2

    move-object/from16 v0, v31

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x3

    move-object/from16 v0, v31

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v18

    .line 231
    .end local v28           #personId:J
    :goto_4
    if-eqz v31, :cond_8

    :try_start_4
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_8
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v14, actions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/CallDetailActivity$ViewEntry;>;"
    new-instance v17, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v6, "tel"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 239
    .local v17, callIntent:Landroid/content/Intent;
    new-instance v27, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    const v5, 0x108008d

    move-object/from16 v0, v27

    move v1, v5

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/CallDetailActivity$ViewEntry;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    .line 241
    .local v27, entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->number:Ljava/lang/String;

    .line 242
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/String;

    .line 243
    move-object v0, v14

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v32, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "sms"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v32

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 247
    .local v32, smsIntent:Landroid/content/Intent;
    new-instance v5, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    const v6, 0x7f0200a7

    const v7, 0x7f0c0068

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move v1, v6

    move-object v2, v7

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/CallDetailActivity$ViewEntry;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    if-eqz v30, :cond_b

    .line 253
    new-instance v33, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    move-object/from16 v0, v33

    move-object v1, v5

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 254
    .local v33, viewIntent:Landroid/content/Intent;
    new-instance v5, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    const v6, 0x7f0200aa

    const v7, 0x7f0c001b

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move v1, v6

    move-object v2, v7

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/CallDetailActivity$ViewEntry;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v33           #viewIntent:Landroid/content/Intent;
    :goto_5
    new-instance v15, Lcom/android/contacts/CallDetailActivity$ViewAdapter;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/CallDetailActivity$ViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 265
    .local v15, adapter:Lcom/android/contacts/CallDetailActivity$ViewAdapter;
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->setListAdapter(Landroid/widget/ListAdapter;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 228
    .end local v14           #actions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/CallDetailActivity$ViewEntry;>;"
    .end local v15           #adapter:Lcom/android/contacts/CallDetailActivity$ViewAdapter;
    .end local v17           #callIntent:Landroid/content/Intent;
    .end local v27           #entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    .end local v32           #smsIntent:Landroid/content/Intent;
    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_4

    .line 231
    :catchall_1
    move-exception v5

    if-eqz v31, :cond_a

    :try_start_6
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v5

    .line 257
    .restart local v14       #actions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/CallDetailActivity$ViewEntry;>;"
    .restart local v17       #callIntent:Landroid/content/Intent;
    .restart local v27       #entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    .restart local v32       #smsIntent:Landroid/content/Intent;
    :cond_b
    new-instance v22, Landroid/content/Intent;

    const-string v5, "android.intent.action.INSERT_OR_EDIT"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v22, createIntent:Landroid/content/Intent;
    const-string v5, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v5, "phone"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    new-instance v5, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    const v6, 0x7f0200a2

    const v7, 0x7f0c006b

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/contacts/CallDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move v1, v6

    move-object v2, v7

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/CallDetailActivity$ViewEntry;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 270
    .end local v9           #phoneUri:Landroid/net/Uri;
    .end local v14           #actions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/CallDetailActivity$ViewEntry;>;"
    .end local v17           #callIntent:Landroid/content/Intent;
    .end local v18           #callLabel:Ljava/lang/String;
    .end local v19           #callText:Ljava/lang/String;
    .end local v20           #callType:I
    .end local v21           #countryIso:Ljava/lang/String;
    .end local v22           #createIntent:Landroid/content/Intent;
    .end local v23           #dateClause:Ljava/lang/CharSequence;
    .end local v24           #duration:J
    .end local v27           #entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    .end local v30           #personUri:Landroid/net/Uri;
    .end local v31           #phonesCursor:Landroid/database/Cursor;
    .end local v32           #smsIntent:Landroid/content/Intent;
    :cond_c
    const v5, 0x7f0c0089

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/CallDetailActivity;->finish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v0, 0x7f040004

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->setContentView(I)V

    .line 106
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 107
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    .line 109
    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mCallType:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mCallTypeIcon:Landroid/widget/ImageView;

    .line 111
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mCallTime:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mCallDuration:Landroid/widget/TextView;

    .line 113
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 373
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    if-eqz v1, :cond_0

    .line 374
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;

    .line 375
    .local v0, entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    iget-object v1, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/contacts/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 379
    .end local v0           #entry:Lcom/android/contacts/CallDetailActivity$ViewEntry;
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 126
    packed-switch p1, :pswitch_data_0

    .line 140
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :goto_0
    return v2

    .line 129
    :pswitch_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/contacts/CallDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 131
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_0

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 134
    .local v0, callIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    const/4 v2, 0x1

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 121
    invoke-virtual {p0}, Lcom/android/contacts/CallDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/CallDetailActivity;->updateData(Landroid/net/Uri;)V

    .line 122
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 0
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 384
    if-eqz p4, :cond_0

    .line 385
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/ListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    invoke-static {p0, p1}, Lcom/android/contacts/ContactsSearchManager;->startSearch(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
