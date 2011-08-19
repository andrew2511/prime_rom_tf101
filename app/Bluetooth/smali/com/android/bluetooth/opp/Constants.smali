.class public Lcom/android/bluetooth/opp/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_SHARE_OUTBOUND_TYPES:[Ljava/lang/String;

.field public static final UNACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

.field public static final UNACCEPTABLE_SHARE_OUTBOUND_TYPES:[Ljava/lang/String;

.field public static filename_SEQUENCE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "image/*"

    aput-object v1, v0, v3

    const-string v1, "text/x-vcard"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_OUTBOUND_TYPES:[Ljava/lang/String;

    .line 122
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "virus/*"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->UNACCEPTABLE_SHARE_OUTBOUND_TYPES:[Ljava/lang/String;

    .line 131
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "image/*"

    aput-object v1, v0, v3

    const-string v1, "video/*"

    aput-object v1, v0, v4

    const-string v1, "audio/*"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "text/x-vcard"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "text/plain"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "text/html"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "application/zip"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "application/vnd.ms-excel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "application/msword"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "application/vnd.ms-powerpoint"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "application/pdf"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "application/vnd.openxmlformats-officedocument.presentationml.presentation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->ACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

    .line 152
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "text/x-vcalendar"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->UNACCEPTABLE_SHARE_INBOUND_TYPES:[Ljava/lang/String;

    .line 195
    const-string v0, "-"

    sput-object v0, Lcom/android/bluetooth/opp/Constants;->filename_SEQUENCE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "mimeType"
    .parameter "matchAgainst"

    .prologue
    .line 228
    const-string v1, "\\*"

    const-string v2, "\\.\\*"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 230
    .local v0, p:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "mimeType"
    .parameter "matchAgainst"

    .prologue
    .line 219
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 220
    .local v3, matchType:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/android/bluetooth/opp/Constants;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    const/4 v4, 0x1

    .line 224
    .end local v3           #matchType:Ljava/lang/String;
    :goto_1
    return v4

    .line 219
    .restart local v3       #matchType:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v3           #matchType:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static sendIntentIfCompleted(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    invoke-static {p2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.TRANSFER_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    const-string v1, "com.android.bluetooth"

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 214
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 216
    :cond_0
    return-void
.end method

.method public static updateShareStatus(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "status"

    .prologue
    const/4 v4, 0x0

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 199
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 200
    .local v1, updateValues:Landroid/content/ContentValues;
    const-string v2, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 202
    invoke-static {p0, v0, p2}, Lcom/android/bluetooth/opp/Constants;->sendIntentIfCompleted(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 203
    return-void
.end method
