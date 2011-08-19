.class public Lcom/android/contacts/quickcontact/DataAction;
.super Ljava/lang/Object;
.source "DataAction.java"

# interfaces
.implements Lcom/android/contacts/quickcontact/Action;


# instance fields
.field private mAlternate:Z

.field private mBody:Ljava/lang/CharSequence;

.field private final mContext:Landroid/content/Context;

.field private mDataId:J

.field private mDataUri:Landroid/net/Uri;

.field private mHeader:Ljava/lang/CharSequence;

.field private mIntent:Landroid/content/Intent;

.field private mIsPrimary:Z

.field private final mKind:Lcom/android/contacts/model/AccountType$DataKind;

.field private final mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/AccountType$DataKind;JLandroid/database/Cursor;)V
    .locals 19
    .parameter "context"
    .parameter "mimeType"
    .parameter "kind"
    .parameter "dataId"
    .parameter "cursor"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    .line 52
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    .line 53
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    .line 56
    const-string v16, "vnd.android.cursor.item/sms-address"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternate:Z

    .line 57
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternate:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/model/AccountType$DataKind;->actionAltHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/model/AccountType$DataKind;->actionAltHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mHeader:Ljava/lang/CharSequence;

    .line 63
    :cond_0
    :goto_0
    const-string v16, "is_super_primary"

    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v16

    if-eqz v16, :cond_1

    .line 64
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIsPrimary:Z

    .line 67
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/model/AccountType$DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    .line 71
    :cond_2
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/contacts/quickcontact/DataAction;->mDataId:J

    .line 72
    sget-object v16, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    move-wide/from16 v1, p4

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    .line 75
    const-string v16, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 77
    const-string v16, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 78
    .local v11, number:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 79
    const-string v16, "tel"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object v1, v11

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 80
    .local v5, callUri:Landroid/net/Uri;
    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 157
    .end local v5           #callUri:Landroid/net/Uri;
    .end local v11           #number:Ljava/lang/String;
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    .line 159
    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v16, v0

    const/high16 v17, 0x1400

    invoke-virtual/range {v16 .. v17}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 165
    return-void

    .line 59
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/model/AccountType$DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/model/AccountType$DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-interface {v0, v1, v2}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mHeader:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 83
    :cond_6
    const-string v16, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 85
    const-string v16, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, address:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 87
    const-string v16, "sip"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object v1, v3

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 88
    .restart local v5       #callUri:Landroid/net/Uri;
    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.CALL_PRIVILEGED"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 97
    .end local v3           #address:Ljava/lang/String;
    .end local v5           #callUri:Landroid/net/Uri;
    :cond_7
    const-string v16, "vnd.android.cursor.item/sms-address"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 99
    const-string v16, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 100
    .restart local v11       #number:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 101
    const-string v16, "smsto"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object v1, v11

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 102
    .local v13, smsUri:Landroid/net/Uri;
    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.SENDTO"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 105
    .end local v11           #number:Ljava/lang/String;
    .end local v13           #smsUri:Landroid/net/Uri;
    :cond_8
    const-string v16, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 106
    const-string v16, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    .restart local v3       #address:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 108
    const-string v16, "mailto"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object v1, v3

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 109
    .local v10, mailUri:Landroid/net/Uri;
    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.SENDTO"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 112
    .end local v3           #address:Ljava/lang/String;
    .end local v10           #mailUri:Landroid/net/Uri;
    :cond_9
    const-string v16, "vnd.android.cursor.item/website"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 113
    const-string v16, "data1"

    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 114
    .local v14, url:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 115
    new-instance v15, Landroid/net/WebAddress;

    invoke-direct {v15, v14}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 116
    .local v15, webAddress:Landroid/net/WebAddress;
    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    invoke-virtual {v15}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_1

    .line 119
    .end local v14           #url:Ljava/lang/String;
    .end local v15           #webAddress:Landroid/net/WebAddress;
    :cond_a
    const-string v16, "vnd.android.cursor.item/im"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_b

    const-string v16, "vnd.android.cursor.item/video-chat-address"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 121
    :cond_b
    const-string v16, "vnd.android.cursor.item/email_v2"

    const-string v17, "mimetype"

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 123
    .local v9, isEmail:Z
    if-nez v9, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->isProtocolValid(Landroid/database/Cursor;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 124
    :cond_c
    if-eqz v9, :cond_f

    const/16 v16, 0x5

    move/from16 v12, v16

    .line 127
    .local v12, protocol:I
    :goto_2
    if-eqz v9, :cond_d

    .line 130
    const v16, 0x7f0c0145

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mHeader:Ljava/lang/CharSequence;

    .line 131
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    .line 134
    :cond_d
    const-string v16, "data6"

    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, host:Ljava/lang/String;
    if-eqz v9, :cond_10

    const-string v16, "data1"

    :goto_3
    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, data:Ljava/lang/String;
    const/16 v16, -0x1

    move v0, v12

    move/from16 v1, v16

    if-eq v0, v1, :cond_e

    .line 139
    invoke-static {v12}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v7

    .line 142
    :cond_e
    const-string v16, "vnd.android.cursor.item/video-chat-address"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    .line 143
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 144
    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.SENDTO"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "xmpp:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "?call"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    const-string v18, "vnd.android.cursor.item/video-chat-address"

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 124
    .end local v6           #data:Ljava/lang/String;
    .end local v7           #host:Ljava/lang/String;
    .end local v12           #protocol:I
    :cond_f
    const-string v16, "data5"

    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/DataAction;->getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v16

    move/from16 v12, v16

    goto/16 :goto_2

    .line 135
    .restart local v7       #host:Ljava/lang/String;
    .restart local v12       #protocol:I
    :cond_10
    const-string v16, "data1"

    goto :goto_3

    .line 148
    .restart local v6       #data:Ljava/lang/String;
    :cond_11
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 149
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, authority:Ljava/lang/String;
    new-instance v16, Landroid/net/Uri$Builder;

    invoke-direct/range {v16 .. v16}, Landroid/net/Uri$Builder;-><init>()V

    const-string v17, "imto"

    invoke-virtual/range {v16 .. v17}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 152
    .local v8, imUri:Landroid/net/Uri;
    new-instance v16, Landroid/content/Intent;

    const-string v17, "android.intent.action.SENDTO"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method private static getAsInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 2
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 175
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 176
    .local v0, index:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    return v1
.end method

.method private static getAsString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"
    .parameter "columnName"

    .prologue
    .line 169
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 170
    .local v0, index:I
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isProtocolValid(Landroid/database/Cursor;)Z
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 180
    const-string v2, "data5"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 181
    .local v0, columnIndex:I
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 189
    :goto_0
    return v2

    .line 185
    :cond_0
    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    const/4 v2, 0x1

    goto :goto_0

    .line 186
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/lang/NumberFormatException;
    move v2, v3

    .line 187
    goto :goto_0
.end method


# virtual methods
.method public collapseWith(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->collapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    return v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDataId()J
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mDataId:J

    return-wide v0
.end method

.method public getHeader()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mHeader:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 8
    .parameter "t"

    .prologue
    const/4 v7, 0x0

    .line 263
    if-nez p1, :cond_0

    move v2, v7

    .line 283
    :goto_0
    return v2

    .line 266
    :cond_0
    instance-of v2, p1, Lcom/android/contacts/quickcontact/DataAction;

    if-nez v2, :cond_1

    .line 267
    const-string v2, "DataAction"

    const-string v3, "t must be DataAction"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v7

    .line 268
    goto :goto_0

    .line 270
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/quickcontact/DataAction;

    move-object v1, v0

    .line 271
    .local v1, other:Lcom/android/contacts/quickcontact/DataAction;
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    iget-object v3, v1, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/AccountType$DataKind;

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v7

    .line 272
    goto :goto_0

    .line 274
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    iget-object v5, v1, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v7

    .line 276
    goto :goto_0

    .line 278
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move v2, v7

    .line 281
    goto :goto_0

    .line 283
    :cond_5
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    return v0
.end method
