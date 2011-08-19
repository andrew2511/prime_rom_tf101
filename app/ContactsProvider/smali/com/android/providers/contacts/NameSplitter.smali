.class public Lcom/android/providers/contacts/NameSplitter;
.super Ljava/lang/Object;
.source "NameSplitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/NameSplitter$NameTokenizer;,
        Lcom/android/providers/contacts/NameSplitter$Name;
    }
.end annotation


# static fields
.field private static final CHINESE_LANGUAGE:Ljava/lang/String;

.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_TWO_CHARCTER_FAMILY_NAMES:[Ljava/lang/String;


# instance fields
.field private final mConjuctions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLanguage:Ljava/lang/String;

.field private final mLastNamePrefixesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocale:Ljava/util/Locale;

.field private final mMaxSuffixLength:I

.field private final mPrefixesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuffixesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/NameSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    .line 49
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_LANGUAGE:Ljava/lang/String;

    .line 52
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/NameSplitter;->CHINESE_LANGUAGE:Ljava/lang/String;

    .line 66
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\uac15\uc804"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\ub0a8\uad81"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\ub3c5\uace0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\ub3d9\ubc29"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\ub9dd\uc808"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\uc0ac\uacf5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\uc11c\ubb38"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\uc120\uc6b0"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\uc18c\ubd09"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\uc5b4\uae08"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\uc7a5\uace1"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\uc81c\uac08"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\ud669\ubcf4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_TWO_CHARCTER_FAMILY_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 4
    .parameter "commonPrefixes"
    .parameter "commonLastNamePrefixes"
    .parameter "commonSuffixes"
    .parameter "commonConjunctions"
    .parameter "locale"

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    invoke-static {p1}, Lcom/android/providers/contacts/NameSplitter;->convertToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mPrefixesSet:Ljava/util/HashSet;

    .line 283
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter;->convertToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mLastNamePrefixesSet:Ljava/util/HashSet;

    .line 284
    invoke-static {p3}, Lcom/android/providers/contacts/NameSplitter;->convertToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Ljava/util/HashSet;

    .line 285
    invoke-static {p4}, Lcom/android/providers/contacts/NameSplitter;->convertToSet(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mConjuctions:Ljava/util/HashSet;

    .line 286
    if-eqz p5, :cond_1

    move-object v3, p5

    :goto_0
    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mLocale:Ljava/util/Locale;

    .line 287
    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    .line 289
    const/4 v1, 0x0

    .line 290
    .local v1, maxLength:I
    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 291
    .local v2, suffix:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 292
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 286
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #maxLength:I
    .end local v2           #suffix:Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    goto :goto_0

    .line 296
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #maxLength:I
    :cond_2
    iput v1, p0, Lcom/android/providers/contacts/NameSplitter;->mMaxSuffixLength:I

    .line 297
    return-void
.end method

.method private static convertToSet(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 4
    .parameter "strings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 305
    .local v1, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 306
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, split:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 308
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    .end local v0           #i:I
    .end local v2           #split:[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private guessCJKNameStyle(Ljava/lang/String;I)I
    .locals 4
    .parameter "name"
    .parameter "offset"

    .prologue
    .line 1014
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1015
    .local v1, length:I
    :goto_0
    if-ge p2, v1, :cond_2

    .line 1016
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1017
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1018
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    .line 1019
    .local v2, unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    invoke-static {v2}, Lcom/android/providers/contacts/NameSplitter;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1020
    const/4 v3, 0x4

    .line 1029
    .end local v0           #codePoint:I
    .end local v2           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :goto_1
    return v3

    .line 1022
    .restart local v0       #codePoint:I
    .restart local v2       #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_0
    invoke-static {v2}, Lcom/android/providers/contacts/NameSplitter;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1023
    const/4 v3, 0x5

    goto :goto_1

    .line 1026
    .end local v2           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr p2, v3

    .line 1027
    goto :goto_0

    .line 1029
    .end local v0           #codePoint:I
    :cond_2
    const/4 v3, 0x2

    goto :goto_1
.end method

.method private guessFullNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 925
    iget v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    if-eqz v2, :cond_0

    .line 975
    :goto_0
    return-void

    .line 929
    :cond_0
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 932
    .local v0, bestGuess:I
    if-eqz v0, :cond_1

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    .line 934
    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0

    .line 938
    :cond_1
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 939
    .local v1, guess:I
    if-eqz v1, :cond_3

    .line 940
    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_2

    .line 941
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0

    .line 944
    :cond_2
    move v0, v1

    .line 947
    :cond_3
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 948
    if-eqz v1, :cond_5

    .line 949
    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_4

    .line 950
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0

    .line 953
    :cond_4
    move v0, v1

    .line 956
    :cond_5
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 957
    if-eqz v1, :cond_7

    .line 958
    if-eq v1, v4, :cond_6

    if-eq v1, v3, :cond_6

    .line 959
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0

    .line 962
    :cond_6
    move v0, v1

    .line 965
    :cond_7
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 966
    if-eqz v1, :cond_9

    .line 967
    if-eq v1, v4, :cond_8

    if-eq v1, v3, :cond_8

    .line 968
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0

    .line 971
    :cond_8
    move v0, v1

    .line 974
    :cond_9
    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    goto :goto_0
.end method

.method private guessPhoneticNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x2

    .line 1033
    iget v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    if-eqz v2, :cond_1

    .line 1060
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 1038
    .local v0, bestGuess:I
    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_2

    .line 1039
    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    goto :goto_0

    .line 1043
    :cond_2
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 1044
    .local v1, guess:I
    if-eqz v1, :cond_4

    .line 1045
    if-eq v1, v3, :cond_3

    .line 1046
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    goto :goto_0

    .line 1049
    :cond_3
    move v0, v1

    .line 1052
    :cond_4
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v1

    .line 1053
    if-eqz v1, :cond_0

    .line 1054
    if-eq v1, v3, :cond_5

    .line 1055
    iput v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    goto :goto_0

    .line 1058
    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private static isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .parameter "block"

    .prologue
    .line 1099
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFamilyNamePrefix(Ljava/lang/String;)Z
    .locals 4
    .parameter "word"

    .prologue
    .line 839
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, normalized:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLastNamePrefixesSet:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLastNamePrefixesSet:Ljava/util/HashSet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .parameter "unicodeBlock"

    .prologue
    .line 1117
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .parameter "unicodeBlock"

    .prologue
    .line 1111
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z
    .locals 1
    .parameter "unicodeBlock"

    .prologue
    .line 1091
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;
    .locals 9
    .parameter "prefix"
    .parameter "part1"
    .parameter "part2"
    .parameter "part3"
    .parameter "suffix"
    .parameter "useSpace"
    .parameter "useCommaAfterPart1"
    .parameter "useCommaAfterPart3"

    .prologue
    .line 560
    if-nez p1, :cond_5

    const/4 v8, 0x0

    move-object p1, v8

    .line 561
    :goto_0
    if-nez p2, :cond_6

    const/4 v8, 0x0

    move-object p2, v8

    .line 562
    :goto_1
    if-nez p3, :cond_7

    const/4 v8, 0x0

    move-object p3, v8

    .line 563
    :goto_2
    if-nez p4, :cond_8

    const/4 v8, 0x0

    move-object p4, v8

    .line 564
    :goto_3
    if-nez p5, :cond_9

    const/4 v8, 0x0

    move-object p5, v8

    .line 566
    :goto_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x1

    move v3, v8

    .line 567
    .local v3, hasPrefix:Z
    :goto_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    const/4 v8, 0x1

    move v0, v8

    .line 568
    .local v0, hasPart1:Z
    :goto_6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    const/4 v8, 0x1

    move v1, v8

    .line 569
    .local v1, hasPart2:Z
    :goto_7
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    const/4 v8, 0x1

    move v2, v8

    .line 570
    .local v2, hasPart3:Z
    :goto_8
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    const/4 v8, 0x1

    move v4, v8

    .line 572
    .local v4, hasSuffix:Z
    :goto_9
    const/4 v5, 0x1

    .line 573
    .local v5, isSingleWord:Z
    const/4 v7, 0x0

    .line 575
    .local v7, singleWord:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 576
    move-object v7, p1

    .line 579
    :cond_0
    if-eqz v0, :cond_1

    .line 580
    if-eqz v7, :cond_f

    .line 581
    const/4 v5, 0x0

    .line 587
    :cond_1
    :goto_a
    if-eqz v1, :cond_2

    .line 588
    if-eqz v7, :cond_10

    .line 589
    const/4 v5, 0x0

    .line 595
    :cond_2
    :goto_b
    if-eqz v2, :cond_3

    .line 596
    if-eqz v7, :cond_11

    .line 597
    const/4 v5, 0x0

    .line 603
    :cond_3
    :goto_c
    if-eqz v4, :cond_4

    .line 604
    if-eqz v7, :cond_12

    .line 605
    const/4 v5, 0x0

    .line 611
    :cond_4
    :goto_d
    if-eqz v5, :cond_13

    move-object v8, v7

    .line 661
    :goto_e
    return-object v8

    .line 560
    .end local v0           #hasPart1:Z
    .end local v1           #hasPart2:Z
    .end local v2           #hasPart3:Z
    .end local v3           #hasPrefix:Z
    .end local v4           #hasSuffix:Z
    .end local v5           #isSingleWord:Z
    .end local v7           #singleWord:Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object p1, v8

    goto :goto_0

    .line 561
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object p2, v8

    goto :goto_1

    .line 562
    :cond_7
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object p3, v8

    goto :goto_2

    .line 563
    :cond_8
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object p4, v8

    goto :goto_3

    .line 564
    :cond_9
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object p5, v8

    goto :goto_4

    .line 566
    :cond_a
    const/4 v8, 0x0

    move v3, v8

    goto :goto_5

    .line 567
    .restart local v3       #hasPrefix:Z
    :cond_b
    const/4 v8, 0x0

    move v0, v8

    goto :goto_6

    .line 568
    .restart local v0       #hasPart1:Z
    :cond_c
    const/4 v8, 0x0

    move v1, v8

    goto :goto_7

    .line 569
    .restart local v1       #hasPart2:Z
    :cond_d
    const/4 v8, 0x0

    move v2, v8

    goto :goto_8

    .line 570
    .restart local v2       #hasPart3:Z
    :cond_e
    const/4 v8, 0x0

    move v4, v8

    goto :goto_9

    .line 583
    .restart local v4       #hasSuffix:Z
    .restart local v5       #isSingleWord:Z
    .restart local v7       #singleWord:Ljava/lang/String;
    :cond_f
    move-object v7, p2

    goto :goto_a

    .line 591
    :cond_10
    move-object v7, p3

    goto :goto_b

    .line 599
    :cond_11
    move-object v7, p4

    goto :goto_c

    .line 607
    :cond_12
    invoke-direct {p0, p5}, Lcom/android/providers/contacts/NameSplitter;->normalizedSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_d

    .line 615
    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 617
    .local v6, sb:Ljava/lang/StringBuilder;
    if-eqz v3, :cond_14

    .line 618
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    :cond_14
    if-eqz v0, :cond_16

    .line 622
    if-eqz v3, :cond_15

    .line 623
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 625
    :cond_15
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    :cond_16
    if-eqz v1, :cond_1a

    .line 629
    if-nez v3, :cond_17

    if-eqz v0, :cond_19

    .line 630
    :cond_17
    if-eqz p7, :cond_18

    .line 631
    const/16 v8, 0x2c

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 633
    :cond_18
    if-eqz p6, :cond_19

    .line 634
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 637
    :cond_19
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    :cond_1a
    if-eqz v2, :cond_1d

    .line 641
    if-nez v3, :cond_1b

    if-nez v0, :cond_1b

    if-eqz v1, :cond_1c

    .line 642
    :cond_1b
    if-eqz p6, :cond_1c

    .line 643
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 646
    :cond_1c
    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    :cond_1d
    if-eqz v4, :cond_21

    .line 650
    if-nez v3, :cond_1e

    if-nez v0, :cond_1e

    if-nez v1, :cond_1e

    if-eqz v2, :cond_20

    .line 651
    :cond_1e
    if-eqz p8, :cond_1f

    .line 652
    const/16 v8, 0x2c

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 654
    :cond_1f
    if-eqz p6, :cond_20

    .line 655
    const/16 v8, 0x20

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 658
    :cond_20
    invoke-direct {p0, p5}, Lcom/android/providers/contacts/NameSplitter;->normalizedSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    :cond_21
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_e
.end method

.method private normalizedSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "suffix"

    .prologue
    const/16 v3, 0x2e

    .line 669
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 670
    .local v0, length:I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    sub-int v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    :cond_0
    move-object v2, p1

    .line 678
    :goto_0
    return-object v2

    .line 674
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, withDot:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 676
    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 678
    goto :goto_0
.end method

.method private parseGivenNames(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 4
    .parameter "name"
    .parameter "tokens"

    .prologue
    .line 865
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 884
    :goto_0
    return-void

    .line 869
    :cond_0
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 870
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 872
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 873
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    .local v0, i:I
    :goto_1
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 874
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 875
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 877
    :cond_2
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    invoke-virtual {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 879
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 873
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 882
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseLastName(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 6
    .parameter "name"
    .parameter "tokens"

    .prologue
    const/16 v5, 0x2e

    const/4 v4, 0x1

    .line 792
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 833
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasComma(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 798
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 799
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$008(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto :goto_0

    .line 806
    :cond_2
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasComma(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/NameSplitter;->isFamilyNamePrefix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 809
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    aget-object v0, v2, v3

    .line 810
    .local v0, familyNamePrefix:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 813
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 814
    const/4 v2, 0x2

    invoke-static {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$012(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I

    goto/16 :goto_0

    .line 819
    .end local v0           #familyNamePrefix:Ljava/lang/String;
    :cond_4
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 820
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    .line 823
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    .line 824
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    sub-int/2addr v3, v4

    aget-object v1, v2, v3

    .line 825
    .local v1, lastNamePrefix:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/NameSplitter;->isFamilyNamePrefix(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 826
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 829
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 830
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto/16 :goto_0
.end method

.method private parseMiddleName(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 5
    .parameter "name"
    .parameter "tokens"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 847
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 851
    :cond_1
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    sub-int/2addr v0, v1

    if-le v0, v3, :cond_0

    .line 852
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    sub-int/2addr v0, v1

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/providers/contacts/NameSplitter;->mConjuctions:Ljava/util/HashSet;

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    sub-int/2addr v2, v4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 855
    :cond_2
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 856
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p2, v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 859
    :cond_3
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto :goto_0
.end method

.method private parsePrefix(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 3
    .parameter "name"
    .parameter "tokens"

    .prologue
    .line 715
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    aget-object v0, v1, v2

    .line 720
    .local v0, firstToken:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mPrefixesSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 721
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 724
    :cond_2
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 725
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$008(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto :goto_0
.end method

.method private parseSuffix(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V
    .locals 8
    .parameter "name"
    .parameter "tokens"

    .prologue
    const/16 v7, 0x2e

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 733
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 737
    :cond_1
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v4

    sub-int/2addr v4, v5

    aget-object v0, v3, v4

    .line 740
    .local v0, lastToken:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v4

    sub-int/2addr v3, v4

    if-le v3, v6, :cond_3

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {p2, v3}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasComma(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 742
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {p2, v3}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 745
    :cond_2
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 746
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto :goto_0

    .line 750
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/providers/contacts/NameSplitter;->mMaxSuffixLength:I

    if-gt v3, v4, :cond_0

    .line 754
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, normalized:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 756
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 757
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$110(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    goto :goto_0

    .line 761
    :cond_4
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {p2, v3}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 762
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 764
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 767
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    sub-int v2, v3, v5

    .line 768
    .local v2, pos:I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/providers/contacts/NameSplitter;->mMaxSuffixLength:I

    if-gt v3, v4, :cond_0

    .line 770
    iget-object v3, p0, Lcom/android/providers/contacts/NameSplitter;->mSuffixesSet:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 771
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 772
    invoke-static {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$102(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;I)I

    goto/16 :goto_0

    .line 776
    :cond_6
    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 780
    add-int/lit8 v2, v2, -0x1

    .line 781
    invoke-virtual {p2, v2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->hasDot(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 782
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 787
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 784
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private splitChineseName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 9
    .parameter "name"
    .parameter "fullName"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 419
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 420
    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 421
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, token:Ljava/lang/String;
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 423
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 424
    :cond_0
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 425
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 426
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 427
    :cond_1
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 428
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 429
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 431
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 432
    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 437
    .end local v1           #token:Ljava/lang/String;
    :cond_3
    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 438
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 439
    .local v0, length:I
    if-ne v0, v5, :cond_5

    .line 440
    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 441
    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 453
    .end local v0           #length:I
    :cond_4
    :goto_1
    return-void

    .line 442
    .restart local v0       #length:I
    :cond_5
    if-ne v0, v8, :cond_6

    .line 443
    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 444
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 445
    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_1

    .line 446
    :cond_6
    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    .line 447
    invoke-virtual {p2, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 448
    invoke-virtual {p2, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 449
    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_1
.end method

.method private splitJapaneseName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "fullName"

    .prologue
    .line 462
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 463
    .local v1, tokenizer:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 464
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, token:Ljava/lang/String;
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 466
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 467
    :cond_0
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 468
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 469
    iput-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 471
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 474
    .end local v0           #token:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private splitKoreanName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 9
    .parameter "name"
    .parameter "fullName"

    .prologue
    .line 483
    new-instance v5, Ljava/util/StringTokenizer;

    invoke-direct {v5, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 484
    .local v5, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_2

    .line 486
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 487
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 488
    .local v4, token:Ljava/lang/String;
    iget-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 489
    iput-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 490
    :cond_0
    iget-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 491
    iget-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iput-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 492
    iput-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 494
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    goto :goto_0

    .line 500
    .end local v4           #token:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    .line 503
    .local v1, familyNameLength:I
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_TWO_CHARCTER_FAMILY_NAMES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v6, v0, v2

    .line 504
    .local v6, twoLengthFamilyName:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 505
    const/4 v1, 0x2

    .line 510
    .end local v6           #twoLengthFamilyName:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {p2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 511
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v1, :cond_4

    .line 512
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 515
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #familyNameLength:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_4
    return-void

    .line 503
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #familyNameLength:I
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v6       #twoLengthFamilyName:Ljava/lang/String;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private splitWesternName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "fullName"

    .prologue
    .line 394
    new-instance v0, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;

    invoke-direct {v0, p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, tokens:Lcom/android/providers/contacts/NameSplitter$NameTokenizer;
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parsePrefix(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    .line 399
    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 400
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parseSuffix(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    .line 403
    :cond_0
    iget-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v1

    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 404
    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 410
    :goto_0
    return-void

    .line 406
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parseLastName(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    .line 407
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parseMiddleName(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    .line 408
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/NameSplitter;->parseGivenNames(Lcom/android/providers/contacts/NameSplitter$Name;Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)V

    goto :goto_0
.end method


# virtual methods
.method public getAdjustedFullNameStyle(I)I
    .locals 5
    .parameter "nameStyle"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 689
    if-nez p1, :cond_3

    .line 690
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 708
    :goto_0
    return v0

    .line 692
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    .line 693
    goto :goto_0

    .line 694
    :cond_1
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->CHINESE_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 695
    goto :goto_0

    .line 697
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 699
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    .line 700
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->JAPANESE_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    .line 701
    goto :goto_0

    .line 702
    :cond_4
    sget-object v0, Lcom/android/providers/contacts/NameSplitter;->KOREAN_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/NameSplitter;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    .line 703
    goto :goto_0

    :cond_5
    move v0, v2

    .line 705
    goto :goto_0

    :cond_6
    move v0, p1

    .line 708
    goto :goto_0
.end method

.method public getAdjustedNameStyleBasedOnPhoneticNameStyle(II)I
    .locals 4
    .parameter "nameStyle"
    .parameter "phoneticNameStyle"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 905
    if-eqz p2, :cond_3

    .line 906
    if-eqz p1, :cond_0

    if-ne p1, v0, :cond_3

    .line 907
    :cond_0
    if-ne p2, v2, :cond_1

    move v0, v2

    .line 917
    :goto_0
    return v0

    .line 909
    :cond_1
    if-ne p2, v3, :cond_2

    move v0, v3

    .line 910
    goto :goto_0

    .line 912
    :cond_2
    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    move v0, v1

    .line 913
    goto :goto_0

    :cond_3
    move v0, p1

    .line 917
    goto :goto_0
.end method

.method public guessFullNameStyle(Ljava/lang/String;)I
    .locals 6
    .parameter "name"

    .prologue
    .line 978
    if-nez p1, :cond_0

    .line 979
    const/4 v5, 0x0

    .line 1010
    :goto_0
    return v5

    .line 982
    :cond_0
    const/4 v2, 0x0

    .line 983
    .local v2, nameStyle:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 984
    .local v1, length:I
    const/4 v3, 0x0

    .line 985
    .local v3, offset:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 986
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 987
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 988
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v4

    .line 990
    .local v4, unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 992
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isCJKUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 995
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-direct {p0, p1, v5}, Lcom/android/providers/contacts/NameSplitter;->guessCJKNameStyle(Ljava/lang/String;I)I

    move-result v5

    goto :goto_0

    .line 998
    :cond_1
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 999
    const/4 v5, 0x4

    goto :goto_0

    .line 1002
    :cond_2
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1003
    const/4 v5, 0x5

    goto :goto_0

    .line 1006
    :cond_3
    const/4 v2, 0x1

    .line 1008
    .end local v4           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 1009
    goto :goto_1

    .end local v0           #codePoint:I
    :cond_5
    move v5, v2

    .line 1010
    goto :goto_0
.end method

.method public guessNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 893
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 894
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 895
    iget v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    iget v1, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedNameStyleBasedOnPhoneticNameStyle(II)I

    move-result v0

    iput v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 897
    return-void
.end method

.method public guessPhoneticNameStyle(Ljava/lang/String;)I
    .locals 6
    .parameter "name"

    .prologue
    .line 1063
    if-nez p1, :cond_0

    .line 1064
    const/4 v5, 0x0

    .line 1087
    :goto_0
    return v5

    .line 1067
    :cond_0
    const/4 v2, 0x0

    .line 1068
    .local v2, nameStyle:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1069
    .local v1, length:I
    const/4 v3, 0x0

    .line 1070
    .local v3, offset:I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 1071
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1072
    .local v0, codePoint:I
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1073
    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v4

    .line 1074
    .local v4, unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isJapanesePhoneticUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1075
    const/4 v5, 0x4

    goto :goto_0

    .line 1077
    :cond_1
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isKoreanUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1078
    const/4 v5, 0x5

    goto :goto_0

    .line 1080
    :cond_2
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter;->isLatinUnicodeBlock(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1081
    const/4 v5, 0x3

    goto :goto_0

    .line 1084
    .end local v4           #unicodeBlock:Ljava/lang/Character$UnicodeBlock;
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 1085
    goto :goto_1

    .end local v0           #codePoint:I
    :cond_4
    move v5, v2

    .line 1087
    goto :goto_0
.end method

.method public join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;
    .locals 9
    .parameter "name"
    .parameter "givenNameFirst"
    .parameter "includePrefix"

    .prologue
    .line 523
    if-eqz p3, :cond_0

    iget-object v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    move-object v1, v0

    .line 524
    .local v1, prefix:Ljava/lang/String;
    :goto_0
    iget v0, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    packed-switch v0, :pswitch_data_0

    .line 536
    if-eqz p2, :cond_1

    .line 537
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    .line 540
    :goto_1
    return-object v0

    .line 523
    .end local v1           #prefix:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 528
    .restart local v1       #prefix:Ljava/lang/String;
    :pswitch_0
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 532
    :pswitch_1
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 540
    :cond_1
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public joinPhoneticName(Lcom/android/providers/contacts/NameSplitter$Name;)Ljava/lang/String;
    .locals 9
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 551
    iget-object v2, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, v1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/NameSplitter;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "fullName"

    .prologue
    .line 345
    if-nez p2, :cond_0

    .line 355
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v0

    .line 350
    .local v0, fullNameStyle:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 351
    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v0

    .line 354
    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/providers/contacts/NameSplitter;->split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "fullName"
    .parameter "fullNameStyle"

    .prologue
    .line 362
    if-nez p2, :cond_0

    .line 384
    :goto_0
    return-void

    .line 366
    :cond_0
    iput p3, p1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 368
    packed-switch p3, :pswitch_data_0

    .line 382
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameSplitter;->splitWesternName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    goto :goto_0

    .line 370
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameSplitter;->splitChineseName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameSplitter;->splitJapaneseName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/NameSplitter;->splitKoreanName(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public tokenize([Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "tokens"
    .parameter "fullName"

    .prologue
    const/4 v7, 0x0

    .line 318
    if-nez p2, :cond_0

    move v5, v7

    .line 337
    :goto_0
    return v5

    .line 322
    :cond_0
    new-instance v4, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;

    invoke-direct {v4, p2}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 324
    .local v4, tokenizer:Lcom/android/providers/contacts/NameSplitter$NameTokenizer;
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v5

    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v6

    if-ne v5, v6, :cond_1

    move v5, v7

    .line 325
    goto :goto_0

    .line 328
    :cond_1
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v6

    aget-object v2, v5, v6

    .line 329
    .local v2, firstToken:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/providers/contacts/NameSplitter;->mPrefixesSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 330
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$008(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    .line 332
    :cond_2
    const/4 v0, 0x0

    .line 333
    .local v0, count:I
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$000(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v3

    .local v3, i:I
    :goto_1
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$100(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 334
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    invoke-static {v4}, Lcom/android/providers/contacts/NameSplitter$NameTokenizer;->access$200(Lcom/android/providers/contacts/NameSplitter$NameTokenizer;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    aput-object v5, p1, v0

    .line 333
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_1

    :cond_3
    move v5, v0

    .line 337
    goto :goto_0
.end method
