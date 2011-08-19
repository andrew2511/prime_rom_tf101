.class public final Lcom/android/contacts/TypePrecedence;
.super Ljava/lang/Object;
.source "TypePrecedence.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TYPE_PRECEDENCE_EMAIL:[I

.field private static final TYPE_PRECEDENCE_IM:[I

.field private static final TYPE_PRECEDENCE_ORG:[I

.field private static final TYPE_PRECEDENCE_PHONES:[I

.field private static final TYPE_PRECEDENCE_POSTAL:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_PHONES:[I

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_EMAIL:[I

    .line 59
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_POSTAL:[I

    .line 65
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_IM:[I

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_ORG:[I

    return-void

    .line 43
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 53
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 59
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 65
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 71
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypePrecedence(Ljava/lang/String;I)I
    .locals 3
    .parameter "mimetype"
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 85
    invoke-static {p0}, Lcom/android/contacts/TypePrecedence;->getTypePrecedenceList(Ljava/lang/String;)[I

    move-result-object v1

    .line 86
    .local v1, typePrecedence:[I
    if-nez v1, :cond_0

    .line 87
    const/4 v2, -0x1

    .line 95
    :goto_0
    return v2

    .line 90
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 91
    aget v2, v1, v0

    if-ne v2, p1, :cond_1

    move v2, v0

    .line 92
    goto :goto_0

    .line 90
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_2
    array-length v2, v1

    goto :goto_0
.end method

.method private static getTypePrecedenceList(Ljava/lang/String;)[I
    .locals 1
    .parameter "mimetype"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 100
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_PHONES:[I

    .line 115
    :goto_0
    return-object v0

    .line 102
    :cond_0
    const-string v0, "vnd.android.cursor.item/sms-address"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sget-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_PHONES:[I

    goto :goto_0

    .line 104
    :cond_1
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    sget-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_EMAIL:[I

    goto :goto_0

    .line 106
    :cond_2
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    sget-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_POSTAL:[I

    goto :goto_0

    .line 108
    :cond_3
    const-string v0, "vnd.android.cursor.item/im"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    sget-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_IM:[I

    goto :goto_0

    .line 110
    :cond_4
    const-string v0, "vnd.android.cursor.item/video-chat-address"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    sget-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_IM:[I

    goto :goto_0

    .line 112
    :cond_5
    const-string v0, "vnd.android.cursor.item/organization"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 113
    sget-object v0, Lcom/android/contacts/TypePrecedence;->TYPE_PRECEDENCE_ORG:[I

    goto :goto_0

    .line 115
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method
