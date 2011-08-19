.class public Lcom/android/emailcommon/utility/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/Utility$CloseTraceCursorWrapper;,
        Lcom/android/emailcommon/utility/Utility$ForEachAccount;,
        Lcom/android/emailcommon/utility/Utility$ListStateSaver;,
        Lcom/android/emailcommon/utility/Utility$CursorGetter;,
        Lcom/android/emailcommon/utility/Utility$NewFileCreator;
    }
.end annotation


# static fields
.field public static final ASCII:Ljava/nio/charset/Charset;

.field private static final ATTACHMENT_META_NAME_PROJECTION:[Ljava/lang/String;

.field private static final BLOB_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final DATE_CLEANUP_PATTERN_WRONG_TIMEZONE:Ljava/util/regex/Pattern;

.field public static final EMPTY_LONGS:[Ljava/lang/Long;

.field public static final EMPTY_STRINGS:[Ljava/lang/String;

.field private static final INT_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final STRING_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->UTF_8:Ljava/nio/charset/Charset;

    .line 83
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->ASCII:Ljava/nio/charset/Charset;

    .line 85
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    .line 86
    new-array v0, v2, [Ljava/lang/Long;

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->EMPTY_LONGS:[Ljava/lang/Long;

    .line 89
    const-string v0, "GMT([-+]\\d{4})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->DATE_CLEANUP_PATTERN_WRONG_TIMEZONE:Ljava/util/regex/Pattern;

    .line 639
    new-instance v0, Lcom/android/emailcommon/utility/Utility$3;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$3;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->LONG_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    .line 645
    new-instance v0, Lcom/android/emailcommon/utility/Utility$4;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$4;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->INT_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    .line 651
    new-instance v0, Lcom/android/emailcommon/utility/Utility$5;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$5;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->STRING_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    .line 657
    new-instance v0, Lcom/android/emailcommon/utility/Utility$6;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$6;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->BLOB_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    .line 987
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_display_name"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/emailcommon/utility/Utility;->ATTACHMENT_META_NAME_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    return-void
.end method

.method public static appendBold(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 5
    .parameter "ssb"
    .parameter "text"

    .prologue
    .line 1009
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1010
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1011
    .local v0, ss:Landroid/text/SpannableString;
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1013
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1016
    .end local v0           #ss:Landroid/text/SpannableString;
    :cond_0
    return-object p0
.end method

.method public static areStringsEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 1130
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p0, :cond_2

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter "a"
    .parameter "o"

    .prologue
    .line 104
    const/4 v1, 0x0

    .local v1, i:I
    array-length v0, p0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 105
    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    const/4 v2, 0x1

    .line 109
    :goto_1
    return v2

    .line 104
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z
    .locals 8
    .parameter "context"
    .parameter "attachment"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 809
    if-nez p1, :cond_0

    move v4, v7

    .line 831
    :goto_0
    return v4

    .line 811
    :cond_0
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentBytes:[B

    if-eqz v4, :cond_1

    move v4, v5

    .line 812
    goto :goto_0

    .line 813
    :cond_1
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v7

    .line 814
    goto :goto_0

    .line 817
    :cond_2
    :try_start_0
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 819
    .local v1, fileUri:Landroid/net/Uri;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 821
    .local v2, inStream:Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    move v4, v5

    .line 825
    goto :goto_0

    .line 826
    .end local v2           #inStream:Ljava/io/InputStream;
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/io/FileNotFoundException;
    move v4, v7

    .line 827
    goto :goto_0

    .line 829
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #fileUri:Landroid/net/Uri;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 830
    .local v3, re:Ljava/lang/RuntimeException;
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "attachmentExists RuntimeException="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 831
    goto :goto_0

    .line 822
    .end local v3           #re:Ljava/lang/RuntimeException;
    .restart local v1       #fileUri:Landroid/net/Uri;
    .restart local v2       #inStream:Ljava/io/InputStream;
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method public static base64Decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "encoded"

    .prologue
    .line 130
    if-nez p0, :cond_0

    .line 131
    const/4 v1, 0x0

    .line 134
    :goto_0
    return-object v1

    .line 133
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 134
    .local v0, decoded:[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static base64Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 138
    if-nez p0, :cond_0

    move-object v0, p0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static buildLimitOneUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .parameter "original"

    .prologue
    .line 671
    const-string v0, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.email.provider"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/emailcommon/provider/EmailContent;->uriWithLimit(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    .line 675
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static buildMailboxIdSelection(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "mailboxId"

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 269
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v6, selection:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 274
    .local v1, testFlagLoaded:Z
    const-wide/16 v2, -0x2

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x5

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x6

    cmp-long v2, p1, v2

    if-nez v2, :cond_6

    .line 279
    :cond_0
    const-wide/16 v2, -0x2

    cmp-long p0, p1, v2

    if-nez p0, :cond_2

    .line 280
    .end local p0
    const/4 p0, 0x0

    .local p0, type:I
    move p2, v1

    .line 287
    .end local v1           #testFlagLoaded:Z
    .end local p1
    .local p2, testFlagLoaded:Z
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local p1, inboxes:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "type=? AND flagVisible=1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .end local p0           #type:I
    aput-object p0, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 293
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .local p0, c:Landroid/database/Cursor;
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 294
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 281
    .end local p0           #c:Landroid/database/Cursor;
    .end local p2           #testFlagLoaded:Z
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #testFlagLoaded:Z
    .local p1, mailboxId:J
    :cond_2
    const-wide/16 v2, -0x5

    cmp-long p0, p1, v2

    if-nez p0, :cond_3

    .line 282
    const/4 p0, 0x3

    .local p0, type:I
    move p2, v1

    .end local v1           #testFlagLoaded:Z
    .end local p1           #mailboxId:J
    .restart local p2       #testFlagLoaded:Z
    goto :goto_0

    .line 284
    .end local p0           #type:I
    .end local p2           #testFlagLoaded:Z
    .restart local v1       #testFlagLoaded:Z
    .restart local p1       #mailboxId:J
    :cond_3
    const/4 p1, 0x4

    .line 285
    .local p1, type:I
    const/4 p0, 0x0

    .end local v1           #testFlagLoaded:Z
    .local p0, testFlagLoaded:Z
    move p2, p0

    .end local p0           #testFlagLoaded:Z
    .restart local p2       #testFlagLoaded:Z
    move p0, p1

    .end local p1           #type:I
    .local p0, type:I
    goto :goto_0

    .line 299
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .local p0, c:Landroid/database/Cursor;
    .local p1, inboxes:Ljava/lang/StringBuilder;
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 300
    const-string p0, "mailboxKey IN "

    .end local p0           #c:Landroid/database/Cursor;
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string p0, "("

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    .end local p1           #inboxes:Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p0, p2

    .line 313
    .end local p2           #testFlagLoaded:Z
    .local p0, testFlagLoaded:Z
    :goto_2
    if-eqz p0, :cond_5

    .line 318
    const-string p0, " AND "

    .end local p0           #testFlagLoaded:Z
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "flagLoaded IN (2,1)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 302
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #testFlagLoaded:Z
    .local p0, context:Landroid/content/Context;
    .local p1, mailboxId:J
    :cond_6
    const-wide/16 v2, -0x3

    cmp-long v0, p1, v2

    if-nez v0, :cond_7

    .line 303
    .end local v0           #resolver:Landroid/content/ContentResolver;
    const-string p0, "flagRead=0"

    .end local p0           #context:Landroid/content/Context;
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p0, v1

    .end local v1           #testFlagLoaded:Z
    .local p0, testFlagLoaded:Z
    goto :goto_2

    .line 304
    .restart local v1       #testFlagLoaded:Z
    .local p0, context:Landroid/content/Context;
    :cond_7
    const-wide/16 v2, -0x4

    cmp-long v0, p1, v2

    if-nez v0, :cond_8

    .line 305
    const-string p0, "flagFavorite=1 AND mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6) AND flagLoaded IN (2,1)"

    .end local p0           #context:Landroid/content/Context;
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p0, v1

    .end local v1           #testFlagLoaded:Z
    .local p0, testFlagLoaded:Z
    goto :goto_2

    .line 307
    .restart local v1       #testFlagLoaded:Z
    .local p0, context:Landroid/content/Context;
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailboxKey="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result p0

    .end local p0           #context:Landroid/content/Context;
    const/4 p1, 0x4

    if-ne p0, p1, :cond_9

    .line 309
    .end local p1           #mailboxId:J
    const/4 p0, 0x0

    .end local v1           #testFlagLoaded:Z
    .local p0, testFlagLoaded:Z
    goto :goto_2

    .end local p0           #testFlagLoaded:Z
    .restart local v1       #testFlagLoaded:Z
    :cond_9
    move p0, v1

    .end local v1           #testFlagLoaded:Z
    .restart local p0       #testFlagLoaded:Z
    goto :goto_2
.end method

.method public static byteToHex(I)Ljava/lang/String;
    .locals 1
    .parameter "b"

    .prologue
    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->byteToHex(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byteToHex(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 2
    .parameter "sb"
    .parameter "b"

    .prologue
    .line 473
    and-int/lit16 p1, p1, 0xff

    .line 474
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 475
    const-string v0, "0123456789ABCDEF"

    and-int/lit8 v1, p1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    return-object p0
.end method

.method public static cancelTask(Landroid/os/AsyncTask;Z)V
    .locals 2
    .parameter
    .parameter "mayInterruptIfRunning"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;Z)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 499
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 501
    :cond_0
    return-void
.end method

.method public static cancelTaskInterrupt(Landroid/os/AsyncTask;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 487
    .local p0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<***>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->cancelTask(Landroid/os/AsyncTask;Z)V

    .line 488
    return-void
.end method

.method public static cleanUpMimeDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "date"

    .prologue
    .line 535
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    :goto_0
    return-object p0

    .line 538
    :cond_0
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->DATE_CLEANUP_PATTERN_WRONG_TIMEZONE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 539
    goto :goto_0
.end method

.method public static combine([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 4
    .parameter "parts"
    .parameter "separator"

    .prologue
    .line 117
    if-nez p0, :cond_0

    .line 118
    const/4 v2, 0x0

    .line 127
    :goto_0
    return-object v2

    .line 120
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 121
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 122
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    .line 124
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static createRestartAppIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1099
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1100
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1101
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1102
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1103
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1104
    return-object v0
.end method

.method public static createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "directory"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    sget-object v0, Lcom/android/emailcommon/utility/Utility$NewFileCreator;->DEFAULT:Lcom/android/emailcommon/utility/Utility$NewFileCreator;

    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/utility/Utility;->createUniqueFileInternal(Lcom/android/emailcommon/utility/Utility$NewFileCreator;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static createUniqueFileInternal(Lcom/android/emailcommon/utility/Utility$NewFileCreator;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .parameter "nfc"
    .parameter "directory"
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 611
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 612
    .local v1, file:Ljava/io/File;
    invoke-interface {p0, v1}, Lcom/android/emailcommon/utility/Utility$NewFileCreator;->createNewFile(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    .line 632
    :goto_0
    return-object v6

    .line 616
    :cond_0
    const/16 v6, 0x2e

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 618
    .local v4, index:I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 619
    invoke-virtual {p2, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 620
    .local v5, name:Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 621
    .local v0, extension:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-%d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 626
    .end local v0           #extension:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .local v2, format:Ljava/lang/String;
    :goto_1
    const/4 v3, 0x2

    .local v3, i:I
    :goto_2
    const v6, 0x7fffffff

    if-ge v3, v6, :cond_3

    .line 627
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 628
    .restart local v1       #file:Ljava/io/File;
    invoke-interface {p0, v1}, Lcom/android/emailcommon/utility/Utility$NewFileCreator;->createNewFile(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v1

    .line 629
    goto :goto_0

    .line 623
    .end local v2           #format:Ljava/lang/String;
    .end local v3           #i:I
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-%d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #format:Ljava/lang/String;
    goto :goto_1

    .line 626
    .restart local v3       #i:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 632
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static decode(Ljava/nio/charset/Charset;[B)Ljava/lang/String;
    .locals 5
    .parameter "charset"
    .parameter "b"

    .prologue
    .line 433
    if-nez p1, :cond_0

    .line 434
    const/4 v1, 0x0

    .line 437
    :goto_0
    return-object v1

    .line 436
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 437
    .local v0, cb:Ljava/nio/CharBuffer;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->length()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public static dumpCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "c"

    .prologue
    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1024
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    :goto_0
    if-eqz p0, :cond_1

    .line 1026
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1027
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1030
    const-string v1, " (closed)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    :cond_0
    instance-of v1, p0, Landroid/database/CursorWrapper;

    if-eqz v1, :cond_1

    .line 1033
    check-cast p0, Landroid/database/CursorWrapper;

    .end local p0
    invoke-virtual {p0}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object p0

    .line 1034
    .restart local p0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1039
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static enableStrictMode(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1134
    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1137
    if-eqz p0, :cond_1

    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1140
    return-void

    .line 1134
    :cond_0
    sget-object v0, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    goto :goto_0

    .line 1137
    :cond_1
    sget-object v0, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    goto :goto_1
.end method

.method private static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B
    .locals 3
    .parameter "charset"
    .parameter "s"

    .prologue
    .line 423
    if-nez p1, :cond_0

    .line 424
    const/4 v2, 0x0

    .line 429
    :goto_0
    return-object v2

    .line 426
    :cond_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 427
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    new-array v1, v2, [B

    .line 428
    .local v1, bytes:[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v2, v1

    .line 429
    goto :goto_0
.end method

.method public static fastUrlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "s"

    .prologue
    const/16 v10, 0x30

    const/16 v9, 0x9

    .line 227
    :try_start_0
    const-string v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 229
    .local v0, bytes:[B
    const/4 v6, 0x0

    .line 230
    .local v6, length:I
    const/4 v4, 0x0

    .local v4, i:I
    array-length v2, v0

    .local v2, count:I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 231
    aget-byte v1, v0, v4

    .line 232
    .local v1, ch:B
    const/16 v8, 0x25

    if-ne v1, v8, :cond_2

    .line 233
    add-int/lit8 v8, v4, 0x1

    aget-byte v8, v0, v8

    sub-int v3, v8, v10

    .line 234
    .local v3, h:I
    add-int/lit8 v8, v4, 0x2

    aget-byte v8, v0, v8

    sub-int v5, v8, v10

    .line 235
    .local v5, l:I
    if-le v3, v9, :cond_0

    .line 236
    add-int/lit8 v3, v3, -0x7

    .line 238
    :cond_0
    if-le v5, v9, :cond_1

    .line 239
    add-int/lit8 v5, v5, -0x7

    .line 241
    :cond_1
    shl-int/lit8 v8, v3, 0x4

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    .line 242
    add-int/lit8 v4, v4, 0x2

    .line 250
    .end local v3           #h:I
    .end local v5           #l:I
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 230
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 244
    :cond_2
    const/16 v8, 0x2b

    if-ne v1, v8, :cond_3

    .line 245
    const/16 v8, 0x20

    aput-byte v8, v0, v6

    goto :goto_1

    .line 254
    .end local v0           #bytes:[B
    .end local v1           #ch:B
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v6           #length:I
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 255
    .local v7, uee:Ljava/io/UnsupportedEncodingException;
    const/4 v8, 0x0

    .end local v7           #uee:Ljava/io/UnsupportedEncodingException;
    :goto_2
    return-object v8

    .line 248
    .restart local v0       #bytes:[B
    .restart local v1       #ch:B
    .restart local v2       #count:I
    .restart local v4       #i:I
    .restart local v6       #length:I
    :cond_3
    aget-byte v8, v0, v4

    aput-byte v8, v0, v6

    goto :goto_1

    .line 252
    .end local v1           #ch:B
    :cond_4
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "UTF-8"

    invoke-direct {v8, v0, v9, v6, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public static findExistingAccount(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 7
    .parameter "context"
    .parameter "allowAccountId"
    .parameter "hostName"
    .parameter "userLogin"

    .prologue
    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 340
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "address like ? and login like ? and protocol not like \"smtp\""

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    const/4 p3, 0x1

    aput-object p4, v4, p3

    .end local p3
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 343
    .end local p4
    .local v6, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 344
    const/4 p3, 0x0

    invoke-interface {v6, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    .line 346
    .local p3, hostAuthId:J
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "hostAuthKeyRecv=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p3

    .end local p3           #hostAuthId:J
    aput-object p3, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 349
    .local v1, c2:Landroid/database/Cursor;
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 350
    const/4 p3, 0x0

    invoke-interface {v1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    .line 351
    .local p3, accountId:J
    cmp-long v2, p3, p1

    if-eqz v2, :cond_0

    .line 352
    invoke-static {p0, p3, p4}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object p3

    .line 353
    .local p3, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz p3, :cond_0

    .line 359
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 363
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object p0, p3

    .line 366
    .end local v1           #c2:Landroid/database/Cursor;
    .end local p0
    .end local p3           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :goto_1
    return-object p0

    .line 359
    .restart local v1       #c2:Landroid/database/Cursor;
    .restart local p0
    :cond_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 363
    .end local v1           #c2:Landroid/database/Cursor;
    .end local p0
    :catchall_0
    move-exception p0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw p0

    .line 359
    .restart local v1       #c2:Landroid/database/Cursor;
    .restart local p0
    :catchall_1
    move-exception p0

    .end local p0
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 363
    .end local v1           #c2:Landroid/database/Cursor;
    .restart local p0
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 366
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public static fromAscii([B)Ljava/lang/String;
    .locals 1
    .parameter "b"

    .prologue
    .line 457
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->ASCII:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->decode(Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromUtf8([B)Ljava/lang/String;
    .locals 1
    .parameter "b"

    .prologue
    .line 447
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->decode(Ljava/nio/charset/Charset;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateMessageId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 373
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 374
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    .line 376
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4041800000000000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0x24

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    :cond_0
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    const-string v2, "@email.android.com>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getContentFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "contentUri"

    .prologue
    const/4 v3, 0x0

    .line 997
    sget-object v2, Lcom/android/emailcommon/utility/Utility;->ATTACHMENT_META_NAME_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/android/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 999
    .local v7, name:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 1000
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    .line 1002
    :cond_0
    return-object v7
.end method

.method public static getFirstRowBlob(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I[B)[B
    .locals 10
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "column"
    .parameter "defaultValue"

    .prologue
    .line 764
    sget-object v9, Lcom/android/emailcommon/utility/Utility;->BLOB_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v9

    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    return-object p0
.end method

.method public static getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;
    .locals 7
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "column"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ITT;",
            "Lcom/android/emailcommon/utility/Utility$CursorGetter",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 686
    .local p7, defaultValue:Ljava/lang/Object;,"TT;"
    .local p8, getter:Lcom/android/emailcommon/utility/Utility$CursorGetter;,"Lcom/android/emailcommon/utility/Utility$CursorGetter<TT;>;"
    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->buildLimitOneUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 687
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 689
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 691
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    invoke-interface {p8, v6, p6}, Lcom/android/emailcommon/utility/Utility$CursorGetter;->get(Landroid/database/Cursor;I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 695
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 698
    :goto_0
    return-object v0

    .line 695
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, p7

    .line 698
    goto :goto_0

    .line 695
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "column"

    .prologue
    .line 725
    const/4 v7, 0x0

    sget-object v8, Lcom/android/emailcommon/utility/Utility;->INT_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 10
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "column"
    .parameter "defaultValue"

    .prologue
    .line 735
    sget-object v9, Lcom/android/emailcommon/utility/Utility;->INT_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v9

    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Long;
    .locals 9
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "column"

    .prologue
    .line 706
    const/4 v7, 0x0

    sget-object v8, Lcom/android/emailcommon/utility/Utility;->LONG_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public static getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;
    .locals 10
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "column"
    .parameter "defaultValue"

    .prologue
    .line 716
    sget-object v9, Lcom/android/emailcommon/utility/Utility;->LONG_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v9

    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    return-object p0
.end method

.method public static getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "column"

    .prologue
    .line 744
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstRowString(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "column"
    .parameter "defaultValue"

    .prologue
    .line 754
    sget-object v9, Lcom/android/emailcommon/utility/Utility;->STRING_GETTER:Lcom/android/emailcommon/utility/Utility$CursorGetter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, v9

    invoke-static/range {v0 .. v8}, Lcom/android/emailcommon/utility/Utility;->getFirstRowColumn(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lcom/android/emailcommon/utility/Utility$CursorGetter;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static varargs getRowColumns(Landroid/content/Context;Landroid/net/Uri;J[Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "baseUri"
    .parameter "id"
    .parameter "projection"

    .prologue
    const/4 v1, 0x0

    .line 903
    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p4, v1, v1}, Lcom/android/emailcommon/utility/Utility;->getRowColumns(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRowColumns(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "contentUri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v5, 0x0

    .line 879
    array-length v1, p2

    new-array v8, v1, [Ljava/lang/String;

    .line 880
    .local v8, values:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 881
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 883
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 884
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v1, p2

    if-ge v7, v1, :cond_1

    .line 885
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 891
    .end local v7           #i:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v1, v5

    .line 893
    :goto_1
    return-object v1

    .line 891
    .restart local v7       #i:I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v1, v8

    .line 893
    goto :goto_1

    .line 891
    .end local v7           #i:I
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getSmallHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    .line 506
    :try_start_0
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 510
    .local v2, sha:Ljava/security/MessageDigest;
    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->toUtf8(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 511
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->getSmallHashFromSha1([B)I

    move-result v0

    .line 512
    .local v0, hash:I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .end local v0           #hash:I
    .end local v2           #sha:Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 507
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 508
    .local v1, impossible:Ljava/security/NoSuchAlgorithmException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static getSmallHashFromSha1([B)I
    .locals 3
    .parameter "sha1"

    .prologue
    .line 519
    const/16 v1, 0x13

    aget-byte v1, p0, v1

    and-int/lit8 v0, v1, 0xf

    .line 520
    .local v0, offset:I
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method public static hasUnloadedAttachments(Landroid/content/Context;J)Z
    .locals 11
    .parameter "context"
    .parameter "messageId"

    .prologue
    const/4 v8, 0x0

    .line 844
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    .line 845
    .local v6, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v6, :cond_0

    move v7, v8

    .line 868
    :goto_0
    return v7

    .line 846
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v2

    .line 847
    .local v2, atts:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object v0, v2

    .local v0, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v1, v0, v4

    .line 848
    .local v1, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static {p0, v1}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 853
    iget v7, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v7, v7, 0x6

    if-nez v7, :cond_2

    .line 855
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unloaded attachment isn\'t marked for download: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {p0, v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->delete(Landroid/content/Context;Landroid/net/Uri;J)I

    .line 865
    :cond_1
    :goto_2
    const/4 v7, 0x1

    goto :goto_0

    .line 858
    :cond_2
    iget-object v7, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 861
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 862
    .local v3, cv:Landroid/content/ContentValues;
    const-string v7, "contentUri"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 863
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-static {p0, v7, v8, v9, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I

    goto :goto_2

    .line 847
    .end local v3           #cv:Landroid/content/ContentValues;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_4
    move v7, v8

    .line 868
    goto :goto_0
.end method

.method public static imapQuoted(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 209
    const-string v1, "\\\\"

    const-string v2, "\\\\\\\\"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, result:Ljava/lang/String;
    const-string v1, "\""

    const-string v2, "\\\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isExternalStorageMounted()Z
    .locals 2

    .prologue
    .line 908
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFirstUtf8Byte(B)Z
    .locals 2
    .parameter "b"

    .prologue
    .line 465
    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPortFieldValid(Landroid/widget/TextView;)Z
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 149
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 150
    .local v0, chars:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    .line 159
    :goto_0
    return v3

    .line 155
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 159
    .local v2, port:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/high16 v4, 0x1

    if-ge v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 156
    .end local v2           #port:Ljava/lang/Integer;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/NumberFormatException;
    move v3, v5

    .line 157
    goto :goto_0

    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #port:Ljava/lang/Integer;
    :cond_1
    move v3, v5

    .line 159
    goto :goto_0
.end method

.method public static isTextViewNotEmpty(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static listViewSmoothScrollToPosition(Landroid/app/Activity;Landroid/widget/ListView;I)V
    .locals 2
    .parameter "activity"
    .parameter "listView"
    .parameter "position"

    .prologue
    .line 976
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/emailcommon/utility/Utility$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/emailcommon/utility/Utility$7;-><init>(Landroid/app/Activity;Landroid/widget/ListView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 985
    return-void
.end method

.method public static parseEmailDateTimeToMillis(Ljava/lang/String;)J
    .locals 8
    .parameter "date"

    .prologue
    .line 414
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xb

    const/16 v5, 0xd

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xe

    const/16 v6, 0x10

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x11

    const/16 v7, 0x13

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 418
    .local v0, cal:Ljava/util/GregorianCalendar;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 419
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static quoteString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 179
    if-nez p0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 186
    :goto_0
    return-object v0

    .line 182
    :cond_0
    const-string v0, "^\".*\"$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 186
    goto :goto_0
.end method

.method public static replaceBareLfWithCrlf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 480
    const-string v0, "\r"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "\r\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;
    .locals 2
    .parameter "r"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    new-instance v0, Lcom/android/emailcommon/utility/Utility$2;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/utility/Utility$2;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/Utility$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V
    .locals 6
    .parameter "auth"
    .parameter "uriString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 1115
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1116
    .local v2, uri:Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1117
    .local v1, path:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1118
    .local v0, domain:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1119
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1121
    :cond_0
    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 1122
    invoke-virtual {v2}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1124
    return-void
.end method

.method public static showToast(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "resId"

    .prologue
    .line 554
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method public static showToast(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "message"

    .prologue
    .line 565
    new-instance v0, Lcom/android/emailcommon/utility/Utility$1;

    invoke-direct {v0, p0, p1}, Lcom/android/emailcommon/utility/Utility$1;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 570
    return-void
.end method

.method public static streamFromAsciiString(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;
    .locals 2
    .parameter "ascii"

    .prologue
    .line 543
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {p0}, Lcom/android/emailcommon/utility/Utility;->toAscii(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public static toAscii(Ljava/lang/String;)[B
    .locals 1
    .parameter "s"

    .prologue
    .line 452
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->ASCII:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static toPrimitiveLongArray(Ljava/util/Collection;)[J
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 959
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    .line 960
    .local v4, size:I
    new-array v3, v4, [J

    .line 962
    .local v3, ret:[J
    const/4 v0, 0x0

    .line 963
    .local v0, i:I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 964
    .local v5, value:Ljava/lang/Long;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v3, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 966
    .end local v5           #value:Ljava/lang/Long;
    :cond_0
    return-object v3
.end method

.method public static toUtf8(Ljava/lang/String;)[B
    .locals 1
    .parameter "s"

    .prologue
    .line 442
    sget-object v0, Lcom/android/emailcommon/utility/Utility;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/android/emailcommon/utility/Utility;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
