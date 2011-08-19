.class public Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
.super Ljava/lang/Object;
.source "BluetoothPbapCallLogComposer.java"


# static fields
.field private static final sCallLogProjection:[Ljava/lang/String;


# instance fields
.field private final mCareHandlerErrors:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mErrorReason:Ljava/lang/String;

.field private final mHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardComposer$OneEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mTerminateIsCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->sCallLogProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "careHandlerErrors"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-string v0, "No error"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 95
    iput-boolean p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCareHandlerErrors:Z

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mHandlerList:Ljava/util/List;

    .line 97
    return-void
.end method

.method private createOneCallLogEntryInternal()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 191
    const/high16 v6, -0x3e00

    .line 193
    .local v6, vcardType:I
    new-instance v0, Lcom/android/vcard/VCardBuilder;

    const/high16 v7, -0x3e00

    invoke-direct {v0, v7}, Lcom/android/vcard/VCardBuilder;-><init>(I)V

    .line 194
    .local v0, builder:Lcom/android/vcard/VCardBuilder;
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 196
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 198
    :cond_0
    new-array v7, v10, [Ljava/lang/String;

    aput-object v2, v7, v9

    invoke-static {v7}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    move v3, v10

    .line 199
    .local v3, needCharset:Z
    :goto_0
    const-string v7, "FN"

    invoke-virtual {v0, v7, v2, v3, v9}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 200
    const-string v7, "N"

    invoke-virtual {v0, v7, v2, v3, v9}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 202
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, number:Ljava/lang/String;
    const-string v7, "-1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 204
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mContext:Landroid/content/Context;

    const v8, 0x7f040004

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 206
    :cond_1
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x4

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 207
    .local v5, type:I
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    const/4 v8, 0x5

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, label:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 209
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v1, v4, v9}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 212
    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->tryAppendCallHistoryTimeStampField(Lcom/android/vcard/VCardBuilder;)V

    .line 214
    invoke-virtual {v0}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .end local v1           #label:Ljava/lang/String;
    .end local v3           #needCharset:Z
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #type:I
    :cond_3
    move v3, v9

    .line 198
    goto :goto_0
.end method

.method private final toRfc2455Format(J)Ljava/lang/String;
    .locals 4
    .parameter "millSecs"

    .prologue
    .line 247
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 248
    .local v1, startDate:Landroid/text/format/Time;
    invoke-virtual {v1, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 249
    invoke-virtual {v1}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, date:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private tryAppendCallHistoryTimeStampField(Lcom/android/vcard/VCardBuilder;)V
    .locals 7
    .parameter "builder"

    .prologue
    const/4 v6, 0x1

    .line 266
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 268
    .local v0, callLogType:I
    packed-switch v0, :pswitch_data_0

    .line 282
    const-string v4, "CallLogComposer"

    const-string v5, "Call log type not correct."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_0
    return-void

    .line 270
    :pswitch_0
    const-string v1, "RECEIVED"

    .line 287
    .local v1, callLogTypeStr:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 288
    .local v2, dateAsLong:J
    const-string v4, "X-IRMC-CALL-DATETIME"

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->toRfc2455Format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v6}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    .end local v1           #callLogTypeStr:Ljava/lang/String;
    .end local v2           #dateAsLong:J
    :pswitch_1
    const-string v1, "DIALED"

    .line 275
    .restart local v1       #callLogTypeStr:Ljava/lang/String;
    goto :goto_1

    .line 278
    .end local v1           #callLogTypeStr:Ljava/lang/String;
    :pswitch_2
    const-string v1, "MISSED"

    .line 279
    .restart local v1       #callLogTypeStr:Ljava/lang/String;
    goto :goto_1

    .line 268
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addHandler(Lcom/android/vcard/VCardComposer$OneEntryHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 151
    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    return-void
.end method

.method public composeVCardForPhoneOwnNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "phonetype"
    .parameter "phoneName"
    .parameter "phoneNumber"
    .parameter "vcardVer21"

    .prologue
    const/4 v6, 0x0

    .line 222
    if-eqz p4, :cond_2

    const/high16 v4, -0x4000

    :goto_0
    const/high16 v5, 0x200

    or-int v3, v4, v5

    .line 226
    .local v3, vcardType:I
    new-instance v0, Lcom/android/vcard/VCardBuilder;

    invoke-direct {v0, v3}, Lcom/android/vcard/VCardBuilder;-><init>(I)V

    .line 227
    .local v0, builder:Lcom/android/vcard/VCardBuilder;
    const/4 v2, 0x0

    .line 228
    .local v2, needCharset:Z
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v6

    invoke-static {v4}, Lcom/android/vcard/VCardUtils;->containsOnlyPrintableAscii([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 229
    const/4 v2, 0x1

    .line 231
    :cond_0
    const-string v4, "FN"

    invoke-virtual {v0, v4, p2, v2, v6}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 232
    const-string v4, "N"

    invoke-virtual {v0, v4, p2, v2, v6}, Lcom/android/vcard/VCardBuilder;->appendLine(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 234
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 235
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, label:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4, v1, p3, v6}, Lcom/android/vcard/VCardBuilder;->appendTelLine(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 239
    .end local v1           #label:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 222
    .end local v0           #builder:Lcom/android/vcard/VCardBuilder;
    .end local v2           #needCharset:Z
    .end local v3           #vcardType:I
    :cond_2
    const v4, -0x3fffffff

    goto :goto_0
.end method

.method public createOneEntry()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 157
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    :cond_0
    const-string v4, "The vCard composer object is not correctly initialized"

    iput-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    move v4, v5

    .line 185
    :goto_0
    return v4

    .line 164
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->createOneCallLogEntryInternal()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 170
    .local v3, vcard:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    .line 173
    iget-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCareHandlerErrors:Z

    if-eqz v4, :cond_3

    .line 174
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardComposer$OneEntryHandler;

    .line 175
    .local v1, handler:Lcom/android/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v1, v3}, Lcom/android/vcard/VCardComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    .line 176
    goto :goto_0

    .line 165
    .end local v1           #handler:Lcom/android/vcard/VCardComposer$OneEntryHandler;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #vcard:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 166
    .local v0, error:Ljava/lang/OutOfMemoryError;
    :try_start_1
    const-string v4, "CallLogComposer"

    const-string v5, "OutOfMemoryError occured. Ignore the entry"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move v4, v6

    .line 168
    goto :goto_0

    .line 170
    .end local v0           #error:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    throw v4

    .line 180
    .restart local v3       #vcard:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardComposer$OneEntryHandler;

    .line 181
    .restart local v1       #handler:Lcom/android/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v1, v3}, Lcom/android/vcard/VCardComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    goto :goto_1

    .end local v1           #handler:Lcom/android/vcard/VCardComposer$OneEntryHandler;
    :cond_4
    move v4, v6

    .line 185
    goto :goto_0
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mTerminateIsCalled:Z

    if-nez v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 314
    :cond_0
    return-void
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "contentUri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 102
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->sCallLogProjection:[Ljava/lang/String;

    .line 109
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    .line 112
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 113
    const-string v0, "Failed to get database information"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    .line 147
    .end local v2           #projection:[Ljava/lang/String;
    :goto_0
    return v0

    .line 105
    :cond_0
    const-string v0, "The Uri vCard composer received is not supported by the composer."

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    goto :goto_0

    .line 117
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_1
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCareHandlerErrors:Z

    if-eqz v0, :cond_4

    .line 118
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 120
    .local v8, finishedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardComposer$OneEntryHandler;>;"
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/vcard/VCardComposer$OneEntryHandler;

    .line 121
    .local v9, handler:Lcom/android/vcard/VCardComposer$OneEntryHandler;
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mContext:Landroid/content/Context;

    invoke-interface {v9, v0}, Lcom/android/vcard/VCardComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/vcard/VCardComposer$OneEntryHandler;

    .line 123
    .local v7, finished:Lcom/android/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v7}, Lcom/android/vcard/VCardComposer$OneEntryHandler;->onTerminate()V

    goto :goto_1

    .line 125
    .end local v7           #finished:Lcom/android/vcard/VCardComposer$OneEntryHandler;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    .end local v8           #finishedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardComposer$OneEntryHandler;>;"
    .end local v9           #handler:Lcom/android/vcard/VCardComposer$OneEntryHandler;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/vcard/VCardComposer$OneEntryHandler;

    .line 131
    .restart local v9       #handler:Lcom/android/vcard/VCardComposer$OneEntryHandler;
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mContext:Landroid/content/Context;

    invoke-interface {v9, v0}, Lcom/android/vcard/VCardComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    goto :goto_2

    .line 135
    .end local v9           #handler:Lcom/android/vcard/VCardComposer$OneEntryHandler;
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_7

    .line 137
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    .line 142
    .end local v2           #projection:[Ljava/lang/String;
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    .line 144
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    .restart local v2       #projection:[Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 139
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "CallLogComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException on Cursor#close(): "

    .end local v2           #projection:[Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    goto :goto_3

    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    const-string v1, "There\'s no exportable in the database"

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mErrorReason:Ljava/lang/String;

    .line 142
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    .line 141
    throw v0

    .line 147
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public isAfterLast()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 325
    const/4 v0, 0x0

    .line 327
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_0
.end method

.method public terminate()V
    .locals 6

    .prologue
    .line 293
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardComposer$OneEntryHandler;

    .line 294
    .local v1, handler:Lcom/android/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v1}, Lcom/android/vcard/VCardComposer$OneEntryHandler;->onTerminate()V

    goto :goto_0

    .line 297
    .end local v1           #handler:Lcom/android/vcard/VCardComposer$OneEntryHandler;
    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    .line 299
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mCursor:Landroid/database/Cursor;

    .line 306
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->mTerminateIsCalled:Z

    .line 307
    return-void

    .line 300
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 301
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "CallLogComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteException on Cursor#close(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
