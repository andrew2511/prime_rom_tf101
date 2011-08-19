.class public Lcom/android/vending/model/SubscriberInfo;
.super Ljava/lang/Object;
.source "SubscriberInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/SubscriberInfo$1;,
        Lcom/android/vending/model/SubscriberInfo$Builder;
    }
.end annotation


# instance fields
.field private final mAddress1:Ljava/lang/String;

.field private final mAddress2:Ljava/lang/String;

.field private final mCity:Ljava/lang/String;

.field private final mCountryCode:Ljava/lang/String;

.field private final mIdentifier:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPostalCode:Ljava/lang/String;

.field private final mState:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/vending/model/SubscriberInfo$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {p1}, Lcom/android/vending/model/SubscriberInfo$Builder;->access$000(Lcom/android/vending/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/SubscriberInfo;->mName:Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lcom/android/vending/model/SubscriberInfo$Builder;->access$100(Lcom/android/vending/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    .line 102
    invoke-static {p1}, Lcom/android/vending/model/SubscriberInfo$Builder;->access$200(Lcom/android/vending/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    .line 103
    invoke-static {p1}, Lcom/android/vending/model/SubscriberInfo$Builder;->access$300(Lcom/android/vending/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Lcom/android/vending/model/SubscriberInfo$Builder;->access$400(Lcom/android/vending/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/SubscriberInfo;->mCity:Ljava/lang/String;

    .line 105
    invoke-static {p1}, Lcom/android/vending/model/SubscriberInfo$Builder;->access$500(Lcom/android/vending/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/SubscriberInfo;->mState:Ljava/lang/String;

    .line 106
    invoke-static {p1}, Lcom/android/vending/model/SubscriberInfo$Builder;->access$600(Lcom/android/vending/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    .line 107
    invoke-static {p1}, Lcom/android/vending/model/SubscriberInfo$Builder;->access$700(Lcom/android/vending/model/SubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/SubscriberInfo;->mCountryCode:Ljava/lang/String;

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/model/SubscriberInfo$Builder;Lcom/android/vending/model/SubscriberInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/vending/model/SubscriberInfo;-><init>(Lcom/android/vending/model/SubscriberInfo$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "obfuscated"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/vending/model/SubscriberInfo;->switchChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v4}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    const-string v3, ","

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, csvValues:[Ljava/lang/String;
    array-length v2, v0

    if-eq v2, v5, :cond_0

    .line 81
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubscriberInfo could not be parsed from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v0, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/model/SubscriberInfo;->mName:Ljava/lang/String;

    .line 87
    const/4 v2, 0x1

    aget-object v2, v0, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    .line 88
    const/4 v2, 0x2

    aget-object v2, v0, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    .line 89
    const/4 v2, 0x3

    aget-object v2, v0, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    .line 90
    const/4 v2, 0x4

    aget-object v2, v0, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/model/SubscriberInfo;->mCity:Ljava/lang/String;

    .line 91
    const/4 v2, 0x5

    aget-object v2, v0, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/model/SubscriberInfo;->mState:Ljava/lang/String;

    .line 92
    const/4 v2, 0x6

    aget-object v2, v0, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    .line 93
    const/4 v2, 0x7

    aget-object v2, v0, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/vending/model/SubscriberInfo;->mCountryCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-void

    .line 94
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 95
    .local v1, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "UTF-8 not supported"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private switchChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "s"

    .prologue
    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 31
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_8

    aget-char v1, v0, v2

    .line 32
    .local v1, c:C
    const/16 v5, 0x61

    if-lt v1, v5, :cond_0

    const/16 v5, 0x6d

    if-le v1, v5, :cond_1

    :cond_0
    const/16 v5, 0x41

    if-lt v1, v5, :cond_3

    const/16 v5, 0x4d

    if-gt v1, v5, :cond_3

    .line 33
    :cond_1
    add-int/lit8 v5, v1, 0xd

    int-to-char v1, v5

    .line 41
    :cond_2
    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :cond_3
    const/16 v5, 0x6e

    if-lt v1, v5, :cond_4

    const/16 v5, 0x7a

    if-le v1, v5, :cond_5

    :cond_4
    const/16 v5, 0x4e

    if-lt v1, v5, :cond_6

    const/16 v5, 0x5a

    if-gt v1, v5, :cond_6

    .line 35
    :cond_5
    const/16 v5, 0xd

    sub-int v5, v1, v5

    int-to-char v1, v5

    goto :goto_1

    .line 36
    :cond_6
    const/16 v5, 0x30

    if-lt v1, v5, :cond_7

    const/16 v5, 0x34

    if-gt v1, v5, :cond_7

    .line 37
    add-int/lit8 v5, v1, 0x5

    int-to-char v1, v5

    goto :goto_1

    .line 38
    :cond_7
    const/16 v5, 0x35

    if-lt v1, v5, :cond_2

    const/16 v5, 0x39

    if-gt v1, v5, :cond_2

    .line 39
    const/4 v5, 0x5

    sub-int v5, v1, v5

    int-to-char v1, v5

    goto :goto_1

    .line 43
    .end local v1           #c:C
    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public getAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/vending/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/vending/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/vending/model/SubscriberInfo;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/vending/model/SubscriberInfo;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/vending/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/vending/model/SubscriberInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/vending/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/vending/model/SubscriberInfo;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public toObfuscatedString()Ljava/lang/String;
    .locals 13

    .prologue
    .line 50
    :try_start_0
    iget-object v10, p0, Lcom/android/vending/model/SubscriberInfo;->mName:Ljava/lang/String;

    if-nez v10, :cond_0

    const-string v10, ""

    move-object v6, v10

    .line 51
    .local v6, safeName:Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/android/vending/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    if-nez v10, :cond_1

    const-string v10, ""

    move-object v5, v10

    .line 52
    .local v5, safeIdentifier:Ljava/lang/String;
    :goto_1
    iget-object v10, p0, Lcom/android/vending/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    if-nez v10, :cond_2

    const-string v10, ""

    move-object v1, v10

    .line 53
    .local v1, safeAddress1:Ljava/lang/String;
    :goto_2
    iget-object v10, p0, Lcom/android/vending/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    if-nez v10, :cond_3

    const-string v10, ""

    move-object v2, v10

    .line 54
    .local v2, safeAddress2:Ljava/lang/String;
    :goto_3
    iget-object v10, p0, Lcom/android/vending/model/SubscriberInfo;->mCity:Ljava/lang/String;

    if-nez v10, :cond_4

    const-string v10, ""

    move-object v3, v10

    .line 55
    .local v3, safeCity:Ljava/lang/String;
    :goto_4
    iget-object v10, p0, Lcom/android/vending/model/SubscriberInfo;->mState:Ljava/lang/String;

    if-nez v10, :cond_5

    const-string v10, ""

    move-object v8, v10

    .line 56
    .local v8, safeState:Ljava/lang/String;
    :goto_5
    iget-object v10, p0, Lcom/android/vending/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    if-nez v10, :cond_6

    const-string v10, ""

    move-object v7, v10

    .line 57
    .local v7, safePostalCode:Ljava/lang/String;
    :goto_6
    iget-object v10, p0, Lcom/android/vending/model/SubscriberInfo;->mCountryCode:Ljava/lang/String;

    if-nez v10, :cond_7

    const-string v10, ""
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v10

    .line 63
    .local v4, safeCountryCode:Ljava/lang/String;
    :goto_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, csvValues:Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v10}, Lcom/android/vending/model/SubscriberInfo;->switchChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 50
    .end local v0           #csvValues:Ljava/lang/String;
    .end local v1           #safeAddress1:Ljava/lang/String;
    .end local v2           #safeAddress2:Ljava/lang/String;
    .end local v3           #safeCity:Ljava/lang/String;
    .end local v4           #safeCountryCode:Ljava/lang/String;
    .end local v5           #safeIdentifier:Ljava/lang/String;
    .end local v6           #safeName:Ljava/lang/String;
    .end local v7           #safePostalCode:Ljava/lang/String;
    .end local v8           #safeState:Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v10, p0, Lcom/android/vending/model/SubscriberInfo;->mName:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    goto/16 :goto_0

    .line 51
    .restart local v6       #safeName:Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lcom/android/vending/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    goto/16 :goto_1

    .line 52
    .restart local v5       #safeIdentifier:Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lcom/android/vending/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    goto/16 :goto_2

    .line 53
    .restart local v1       #safeAddress1:Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/android/vending/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    goto/16 :goto_3

    .line 54
    .restart local v2       #safeAddress2:Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/android/vending/model/SubscriberInfo;->mCity:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    goto/16 :goto_4

    .line 55
    .restart local v3       #safeCity:Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/android/vending/model/SubscriberInfo;->mState:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    goto/16 :goto_5

    .line 56
    .restart local v8       #safeState:Ljava/lang/String;
    :cond_6
    iget-object v10, p0, Lcom/android/vending/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    goto/16 :goto_6

    .line 57
    .restart local v7       #safePostalCode:Ljava/lang/String;
    :cond_7
    iget-object v10, p0, Lcom/android/vending/model/SubscriberInfo;->mCountryCode:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    move-object v4, v10

    goto/16 :goto_7

    .line 59
    .end local v1           #safeAddress1:Ljava/lang/String;
    .end local v2           #safeAddress2:Ljava/lang/String;
    .end local v3           #safeCity:Ljava/lang/String;
    .end local v5           #safeIdentifier:Ljava/lang/String;
    .end local v6           #safeName:Ljava/lang/String;
    .end local v7           #safePostalCode:Ljava/lang/String;
    .end local v8           #safeState:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v9, v10

    .line 60
    .local v9, uee:Ljava/io/UnsupportedEncodingException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "UTF-8 not supported"

    invoke-direct {v10, v11, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubscriberInfo: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Name= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/SubscriberInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Identifier= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/SubscriberInfo;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Address1= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/SubscriberInfo;->mAddress1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Address2= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/SubscriberInfo;->mAddress2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "City= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/SubscriberInfo;->mCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "State= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/SubscriberInfo;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PostalCode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/SubscriberInfo;->mPostalCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CountryCode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/model/SubscriberInfo;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
