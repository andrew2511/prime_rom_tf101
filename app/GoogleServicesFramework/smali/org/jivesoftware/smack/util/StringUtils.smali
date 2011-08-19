.class public Lorg/jivesoftware/smack/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final AMP_ENCODE:[C

.field private static final GT_ENCODE:[C

.field private static final LT_ENCODE:[C

.field private static final QUOTE_ENCODE:[C

.field private static digest:Ljava/security/MessageDigest;

.field private static numbersAndLetters:[C

.field private static randGen:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "&quot;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->QUOTE_ENCODE:[C

    .line 36
    const-string v0, "&amp;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->AMP_ENCODE:[C

    .line 37
    const-string v0, "&lt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->LT_ENCODE:[C

    .line 38
    const-string v0, "&gt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->GT_ENCODE:[C

    .line 241
    const/4 v0, 0x0

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->digest:Ljava/security/MessageDigest;

    .line 364
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->randGen:Ljava/util/Random;

    .line 372
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->numbersAndLetters:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1
    .parameter "data"

    .prologue
    .line 356
    invoke-static {p0}, Lorg/jivesoftware/smack/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "data"

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 307
    .local v0, bytes:[B
    :try_start_0
    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 312
    :goto_0
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeBase64([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 309
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 310
    .local v1, uee:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static encodeBase64([B)Ljava/lang/String;
    .locals 1
    .parameter "data"

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeBase64([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BIIZ)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .parameter "lineBreaks"

    .prologue
    .line 346
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lorg/jivesoftware/smack/util/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static encodeBase64([BZ)Ljava/lang/String;
    .locals 2
    .parameter "data"
    .parameter "lineBreaks"

    .prologue
    .line 333
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/jivesoftware/smack/util/StringUtils;->encodeBase64([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([B)Ljava/lang/String;
    .locals 4
    .parameter "bytes"

    .prologue
    const/16 v3, 0x10

    .line 286
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 288
    .local v0, hex:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 289
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    if-ge v2, v3, :cond_0

    .line 290
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static escapeForXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "string"

    .prologue
    const/16 v10, 0x3e

    .line 178
    if-nez p0, :cond_0

    .line 179
    const/4 v6, 0x0

    .line 235
    :goto_0
    return-object v6

    .line 182
    :cond_0
    const/4 v1, 0x0

    .line 183
    .local v1, i:I
    const/4 v3, 0x0

    .line 184
    .local v3, last:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 185
    .local v2, input:[C
    array-length v4, v2

    .line 186
    .local v4, len:I
    new-instance v5, Ljava/lang/StringBuffer;

    int-to-double v6, v4

    const-wide v8, 0x3ff4cccccccccccdL

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 187
    .local v5, out:Ljava/lang/StringBuffer;
    :goto_1
    if-ge v1, v4, :cond_b

    .line 188
    aget-char v0, v2, v1

    .line 189
    .local v0, ch:C
    if-le v0, v10, :cond_2

    .line 187
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 191
    :cond_2
    const/16 v6, 0x3c

    if-ne v0, v6, :cond_4

    .line 192
    if-le v1, v3, :cond_3

    .line 193
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 195
    :cond_3
    add-int/lit8 v3, v1, 0x1

    .line 196
    sget-object v6, Lorg/jivesoftware/smack/util/StringUtils;->LT_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 198
    :cond_4
    if-ne v0, v10, :cond_6

    .line 199
    if-le v1, v3, :cond_5

    .line 200
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 202
    :cond_5
    add-int/lit8 v3, v1, 0x1

    .line 203
    sget-object v6, Lorg/jivesoftware/smack/util/StringUtils;->GT_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 206
    :cond_6
    const/16 v6, 0x26

    if-ne v0, v6, :cond_9

    .line 207
    if-le v1, v3, :cond_7

    .line 208
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 211
    :cond_7
    add-int/lit8 v6, v1, 0x5

    if-le v4, v6, :cond_8

    add-int/lit8 v6, v1, 0x1

    aget-char v6, v2, v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_8

    add-int/lit8 v6, v1, 0x2

    aget-char v6, v2, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_8

    add-int/lit8 v6, v1, 0x3

    aget-char v6, v2, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_8

    add-int/lit8 v6, v1, 0x4

    aget-char v6, v2, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_8

    add-int/lit8 v6, v1, 0x5

    aget-char v6, v2, v6

    const/16 v7, 0x3b

    if-eq v6, v7, :cond_1

    .line 217
    :cond_8
    add-int/lit8 v3, v1, 0x1

    .line 218
    sget-object v6, Lorg/jivesoftware/smack/util/StringUtils;->AMP_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 221
    :cond_9
    const/16 v6, 0x22

    if-ne v0, v6, :cond_1

    .line 222
    if-le v1, v3, :cond_a

    .line 223
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 225
    :cond_a
    add-int/lit8 v3, v1, 0x1

    .line 226
    sget-object v6, Lorg/jivesoftware/smack/util/StringUtils;->QUOTE_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 229
    .end local v0           #ch:C
    :cond_b
    if-nez v3, :cond_c

    move-object v6, p0

    .line 230
    goto/16 :goto_0

    .line 232
    :cond_c
    if-le v1, v3, :cond_d

    .line 233
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 235
    :cond_d
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public static extractBuddyUsername(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "message"
    .parameter "myUsername"

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, fromJid:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getTo()Ljava/lang/String;

    move-result-object v1

    .line 167
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public static declared-synchronized hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "data"

    .prologue
    .line 260
    const-class v2, Lorg/jivesoftware/smack/util/StringUtils;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lorg/jivesoftware/smack/util/StringUtils;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 262
    :try_start_1
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    sput-object v3, Lorg/jivesoftware/smack/util/StringUtils;->digest:Ljava/security/MessageDigest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    :cond_0
    :goto_0
    :try_start_2
    sget-object v3, Lorg/jivesoftware/smack/util/StringUtils;->digest:Ljava/security/MessageDigest;

    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/MessageDigest;->update([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 276
    :goto_1
    :try_start_3
    sget-object v3, Lorg/jivesoftware/smack/util/StringUtils;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    monitor-exit v2

    return-object v3

    .line 264
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 265
    .local v1, nsae:Ljava/security/NoSuchAlgorithmException;
    :try_start_4
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Failed to load the SHA-1 MessageDigest. Jive will be unable to function normally."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 260
    .end local v1           #nsae:Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 273
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 274
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :try_start_5
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public static parseAbbrevAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "address"

    .prologue
    .line 141
    if-nez p0, :cond_0

    .line 142
    const/4 v1, 0x0

    .line 149
    :goto_0
    return-object v1

    .line 144
    :cond_0
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 145
    .local v0, index:I
    if-gez v0, :cond_1

    move-object v1, p0

    .line 146
    goto :goto_0

    .line 149
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseBareAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "XMPPAddress"

    .prologue
    .line 117
    if-nez p0, :cond_0

    .line 118
    const/4 v1, 0x0

    .line 128
    :goto_0
    return-object v1

    .line 120
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 121
    .local v0, slashIndex:I
    if-gez v0, :cond_1

    move-object v1, p0

    .line 122
    goto :goto_0

    .line 124
    :cond_1
    if-nez v0, :cond_2

    .line 125
    const-string v1, ""

    goto :goto_0

    .line 128
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "XMPPAddress"

    .prologue
    .line 49
    if-nez p0, :cond_0

    .line 50
    const/4 v1, 0x0

    .line 57
    :goto_0
    return-object v1

    .line 52
    :cond_0
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 53
    .local v0, atIndex:I
    if-gtz v0, :cond_1

    .line 54
    const-string v1, ""

    goto :goto_0

    .line 57
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "XMPPAddress"

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 97
    const/4 v1, 0x0

    .line 104
    :goto_0
    return-object v1

    .line 99
    :cond_0
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 100
    .local v0, slashIndex:I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_1

    if-gez v0, :cond_2

    .line 101
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 104
    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "XMPPAddress"

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v2, 0x0

    .line 83
    :goto_0
    return-object v2

    .line 73
    :cond_0
    const-string v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, atIndex:I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 76
    const-string v2, ""

    goto :goto_0

    .line 78
    :cond_1
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 79
    .local v1, slashIndex:I
    if-lez v1, :cond_2

    .line 80
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 83
    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static randomString(I)Ljava/lang/String;
    .locals 5
    .parameter "length"

    .prologue
    .line 389
    const/4 v2, 0x1

    if-ge p0, v2, :cond_0

    .line 390
    const/4 v2, 0x0

    .line 397
    :goto_0
    return-object v2

    .line 393
    :cond_0
    new-array v1, p0, [C

    .line 394
    .local v1, randBuffer:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 395
    sget-object v2, Lorg/jivesoftware/smack/util/StringUtils;->numbersAndLetters:[C

    sget-object v3, Lorg/jivesoftware/smack/util/StringUtils;->randGen:Ljava/util/Random;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 397
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method
