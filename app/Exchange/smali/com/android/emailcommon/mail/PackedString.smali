.class public Lcom/android/emailcommon/mail/PackedString;
.super Ljava/lang/Object;
.source "PackedString.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/mail/PackedString$Builder;
    }
.end annotation


# static fields
.field private static final EMPTY_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mExploded:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/emailcommon/mail/PackedString;->EMPTY_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/emailcommon/mail/PackedString;->mString:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/emailcommon/mail/PackedString;->mExploded:Ljava/util/HashMap;

    .line 51
    return-void
.end method

.method private static explode(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .parameter "packed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    .line 81
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 82
    :cond_0
    sget-object v7, Lcom/android/emailcommon/mail/PackedString;->EMPTY_MAP:Ljava/util/HashMap;

    .line 113
    :goto_0
    return-object v7

    .line 84
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 87
    .local v2, length:I
    const/4 v1, 0x0

    .line 88
    .local v1, elementStartIndex:I
    const/4 v0, 0x0

    .line 89
    .local v0, elementEndIndex:I
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 91
    .local v5, tagEndIndex:I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 92
    const/4 v7, 0x1

    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 93
    if-ne v0, v8, :cond_2

    .line 94
    move v0, v2

    .line 98
    :cond_2
    if-eq v5, v8, :cond_3

    if-gt v0, v5, :cond_4

    .line 101
    :cond_3
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, value:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, tag:Ljava/lang/String;
    :goto_2
    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    add-int/lit8 v1, v0, 0x1

    .line 111
    goto :goto_1

    .line 104
    .end local v4           #tag:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 105
    .restart local v6       #value:Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 107
    .restart local v4       #tag:Ljava/lang/String;
    add-int/lit8 v7, v0, 0x1

    invoke-virtual {p0, v9, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    goto :goto_2

    .end local v4           #tag:Ljava/lang/String;
    .end local v6           #value:Ljava/lang/String;
    :cond_5
    move-object v7, v3

    .line 113
    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "tag"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/emailcommon/mail/PackedString;->mExploded:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/emailcommon/mail/PackedString;->mString:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/emailcommon/mail/PackedString;->explode(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/mail/PackedString;->mExploded:Ljava/util/HashMap;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/mail/PackedString;->mExploded:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
