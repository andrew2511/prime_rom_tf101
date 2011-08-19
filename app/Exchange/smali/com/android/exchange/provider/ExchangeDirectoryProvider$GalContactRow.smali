.class Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
.super Ljava/lang/Object;
.source "ExchangeDirectoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/provider/ExchangeDirectoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GalContactRow"
.end annotation


# static fields
.field static dataId:J


# instance fields
.field private final mProjection:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;

.field private row:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 105
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->dataId:J

    return-void
.end method

.method constructor <init>(Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "projection"
    .parameter "contactId"
    .parameter "lookupKey"
    .parameter "accountName"
    .parameter "displayName"

    .prologue
    const/4 v5, 0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->mProjection:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;

    .line 110
    iget v0, p1, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->row:[Ljava/lang/Object;

    .line 112
    const-string v0, "contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    const-string v0, "raw_contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    const-string v0, "data_id"

    sget-wide v1, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->dataId:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->dataId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    const-string v0, "display_name"

    invoke-virtual {p0, v0, p6}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    const-string v0, "display_name_alt"

    invoke-virtual {p0, v0, p6}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    const-string v0, "account_type"

    const-string v1, "com.android.exchange"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    const-string v0, "account_name"

    invoke-virtual {p0, v0, p5}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    const-string v0, "raw_contact_is_read_only"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    const-string v0, "is_read_only"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method static addEmailAddress(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "cursor"
    .parameter "galProjection"
    .parameter "contactId"
    .parameter "lookupKey"
    .parameter "accountName"
    .parameter "displayName"
    .parameter "address"

    .prologue
    .line 145
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    new-instance v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;-><init>(Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .local v0, r:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    const-string v1, "data2"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    const-string v1, "data1"

    invoke-virtual {v0, v1, p7}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->getRow()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 153
    .end local v0           #r:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    :cond_0
    return-void
.end method

.method public static addNameRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "cursor"
    .parameter "galProjection"
    .parameter "contactId"
    .parameter "lookupKey"
    .parameter "accountName"
    .parameter "displayName"
    .parameter "firstName"
    .parameter "lastName"

    .prologue
    .line 170
    new-instance v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;-><init>(Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .local v0, r:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    const-string v1, "data2"

    invoke-virtual {v0, v1, p7}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    const-string v1, "data3"

    invoke-virtual {v0, v1, p8}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    const-string v1, "data1"

    invoke-virtual {v0, v1, p6}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    invoke-virtual {v0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->getRow()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 177
    return-void
.end method

.method static addPhoneRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "cursor"
    .parameter "projection"
    .parameter "contactId"
    .parameter "lookupKey"
    .parameter "accountName"
    .parameter "displayName"
    .parameter "type"
    .parameter "number"

    .prologue
    .line 157
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    new-instance v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;-><init>(Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .local v0, r:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    const-string v1, "data2"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    const-string v1, "data1"

    invoke-virtual {v0, v1, p8}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    invoke-virtual {v0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->getRow()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 165
    .end local v0           #r:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    :cond_0
    return-void
.end method


# virtual methods
.method getRow()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->row:[Ljava/lang/Object;

    return-object v0
.end method

.method put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "columnName"
    .parameter "value"

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->mProjection:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;

    iget-object v1, v1, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 135
    .local v0, integer:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->row:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput-object p2, v1, v2

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
