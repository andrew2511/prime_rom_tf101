.class public abstract Lcom/google/android/common/base/CharMatcher;
.super Ljava/lang/Object;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/base/CharMatcher$LookupTable;,
        Lcom/google/android/common/base/CharMatcher$Or;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ANY:Lcom/google/android/common/base/CharMatcher;

.field public static final ASCII:Lcom/google/android/common/base/CharMatcher;

.field public static final BREAKING_WHITESPACE:Lcom/google/android/common/base/CharMatcher;

.field public static final DIGIT:Lcom/google/android/common/base/CharMatcher;

.field public static final INVISIBLE:Lcom/google/android/common/base/CharMatcher;

.field public static final JAVA_DIGIT:Lcom/google/android/common/base/CharMatcher;

.field public static final JAVA_ISO_CONTROL:Lcom/google/android/common/base/CharMatcher;

.field public static final JAVA_LETTER:Lcom/google/android/common/base/CharMatcher;

.field public static final JAVA_LETTER_OR_DIGIT:Lcom/google/android/common/base/CharMatcher;

.field public static final JAVA_LOWER_CASE:Lcom/google/android/common/base/CharMatcher;

.field public static final JAVA_UPPER_CASE:Lcom/google/android/common/base/CharMatcher;

.field public static final JAVA_WHITESPACE:Lcom/google/android/common/base/CharMatcher;

.field public static final LEGACY_WHITESPACE:Lcom/google/android/common/base/CharMatcher;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NONE:Lcom/google/android/common/base/CharMatcher;

.field public static final SINGLE_WIDTH:Lcom/google/android/common/base/CharMatcher;

.field public static final WHITESPACE:Lcom/google/android/common/base/CharMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0x600

    const/16 v12, 0x20

    const/16 v11, 0x7f

    const/16 v10, 0x2000

    const/4 v9, 0x0

    .line 68
    const-string v6, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000\u00a0\u180e\u202f"

    invoke-static {v6}, Lcom/google/android/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x200a

    invoke-static {v10, v7}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/android/common/base/CharMatcher;->WHITESPACE:Lcom/google/android/common/base/CharMatcher;

    .line 80
    const-string v6, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000"

    invoke-static {v6}, Lcom/google/android/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2006

    invoke-static {v10, v7}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2008

    const/16 v8, 0x200a

    invoke-static {v7, v8}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/android/common/base/CharMatcher;->BREAKING_WHITESPACE:Lcom/google/android/common/base/CharMatcher;

    .line 89
    invoke-static {v9, v11}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/android/common/base/CharMatcher;->ASCII:Lcom/google/android/common/base/CharMatcher;

    .line 98
    const/16 v6, 0x30

    const/16 v7, 0x39

    invoke-static {v6, v7}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v2

    .line 99
    .local v2, digit:Lcom/google/android/common/base/CharMatcher;
    const-string v5, "\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    .line 103
    .local v5, zeroes:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-char v1, v0, v3

    .line 104
    .local v1, base:C
    add-int/lit8 v6, v1, 0x9

    int-to-char v6, v6

    invoke-static {v1, v6}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v2

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    .end local v1           #base:C
    :cond_0
    sput-object v2, Lcom/google/android/common/base/CharMatcher;->DIGIT:Lcom/google/android/common/base/CharMatcher;

    .line 115
    const/16 v6, 0x9

    const/16 v7, 0xd

    invoke-static {v6, v7}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x1c

    invoke-static {v7, v12}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x1680

    invoke-static {v7}, Lcom/google/android/common/base/CharMatcher;->is(C)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x180e

    invoke-static {v7}, Lcom/google/android/common/base/CharMatcher;->is(C)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2006

    invoke-static {v10, v7}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2008

    const/16 v8, 0x200b

    invoke-static {v7, v8}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2028

    const/16 v8, 0x2029

    invoke-static {v7, v8}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x205f

    invoke-static {v7}, Lcom/google/android/common/base/CharMatcher;->is(C)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x3000

    invoke-static {v7}, Lcom/google/android/common/base/CharMatcher;->is(C)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/android/common/base/CharMatcher;->JAVA_WHITESPACE:Lcom/google/android/common/base/CharMatcher;

    .line 131
    new-instance v6, Lcom/google/android/common/base/CharMatcher$1;

    invoke-direct {v6}, Lcom/google/android/common/base/CharMatcher$1;-><init>()V

    sput-object v6, Lcom/google/android/common/base/CharMatcher;->JAVA_DIGIT:Lcom/google/android/common/base/CharMatcher;

    .line 143
    new-instance v6, Lcom/google/android/common/base/CharMatcher$2;

    invoke-direct {v6}, Lcom/google/android/common/base/CharMatcher$2;-><init>()V

    sput-object v6, Lcom/google/android/common/base/CharMatcher;->JAVA_LETTER:Lcom/google/android/common/base/CharMatcher;

    .line 153
    new-instance v6, Lcom/google/android/common/base/CharMatcher$3;

    invoke-direct {v6}, Lcom/google/android/common/base/CharMatcher$3;-><init>()V

    sput-object v6, Lcom/google/android/common/base/CharMatcher;->JAVA_LETTER_OR_DIGIT:Lcom/google/android/common/base/CharMatcher;

    .line 163
    new-instance v6, Lcom/google/android/common/base/CharMatcher$4;

    invoke-direct {v6}, Lcom/google/android/common/base/CharMatcher$4;-><init>()V

    sput-object v6, Lcom/google/android/common/base/CharMatcher;->JAVA_UPPER_CASE:Lcom/google/android/common/base/CharMatcher;

    .line 173
    new-instance v6, Lcom/google/android/common/base/CharMatcher$5;

    invoke-direct {v6}, Lcom/google/android/common/base/CharMatcher$5;-><init>()V

    sput-object v6, Lcom/google/android/common/base/CharMatcher;->JAVA_LOWER_CASE:Lcom/google/android/common/base/CharMatcher;

    .line 183
    const/16 v6, 0x1f

    invoke-static {v9, v6}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x9f

    invoke-static {v11, v7}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/android/common/base/CharMatcher;->JAVA_ISO_CONTROL:Lcom/google/android/common/base/CharMatcher;

    .line 192
    invoke-static {v9, v12}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0xa0

    invoke-static {v11, v7}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0xad

    invoke-static {v7}, Lcom/google/android/common/base/CharMatcher;->is(C)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x603

    invoke-static {v13, v7}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const-string v7, "\u06dd\u070f\u1680\u17b4\u17b5\u180e"

    invoke-static {v7}, Lcom/google/android/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x200f

    invoke-static {v10, v7}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2028

    const/16 v8, 0x202f

    invoke-static {v7, v8}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x205f

    const/16 v8, 0x2064

    invoke-static {v7, v8}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x206a

    const/16 v8, 0x206f

    invoke-static {v7, v8}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x3000

    invoke-static {v7}, Lcom/google/android/common/base/CharMatcher;->is(C)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const v7, 0xd800

    const v8, 0xf8ff

    invoke-static {v7, v8}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const-string v7, "\ufeff\ufff9\ufffa\ufffb"

    invoke-static {v7}, Lcom/google/android/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/android/common/base/CharMatcher;->INVISIBLE:Lcom/google/android/common/base/CharMatcher;

    .line 213
    const/16 v6, 0x4f9

    invoke-static {v9, v6}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x5be

    invoke-static {v7}, Lcom/google/android/common/base/CharMatcher;->is(C)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x5d0

    const/16 v8, 0x5ea

    invoke-static {v7, v8}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x5f3

    invoke-static {v7}, Lcom/google/android/common/base/CharMatcher;->is(C)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x5f4

    invoke-static {v7}, Lcom/google/android/common/base/CharMatcher;->is(C)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x6ff

    invoke-static {v13, v7}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x750

    const/16 v8, 0x77f

    invoke-static {v7, v8}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0xe00

    const/16 v8, 0xe7f

    invoke-static {v7, v8}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x1e00

    const/16 v8, 0x20af

    invoke-static {v7, v8}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const/16 v7, 0x2100

    const/16 v8, 0x213a

    invoke-static {v7, v8}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const v7, 0xfb50

    const v8, 0xfdff

    invoke-static {v7, v8}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const v7, 0xfe70

    const v8, 0xfeff

    invoke-static {v7, v8}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    const v7, 0xff61

    const v8, 0xffdc

    invoke-static {v7, v8}, Lcom/google/android/common/base/CharMatcher;->inRange(CC)Lcom/google/android/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/common/base/CharMatcher;->or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/android/common/base/CharMatcher;->SINGLE_WIDTH:Lcom/google/android/common/base/CharMatcher;

    .line 237
    const-string v6, " \r\n\t\u3000\u00a0\u2007\u202f"

    invoke-static {v6}, Lcom/google/android/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/common/base/CharMatcher;->precomputed()Lcom/google/android/common/base/CharMatcher;

    move-result-object v6

    sput-object v6, Lcom/google/android/common/base/CharMatcher;->LEGACY_WHITESPACE:Lcom/google/android/common/base/CharMatcher;

    .line 242
    new-instance v6, Lcom/google/android/common/base/CharMatcher$6;

    invoke-direct {v6}, Lcom/google/android/common/base/CharMatcher$6;-><init>()V

    sput-object v6, Lcom/google/android/common/base/CharMatcher;->ANY:Lcom/google/android/common/base/CharMatcher;

    .line 309
    new-instance v6, Lcom/google/android/common/base/CharMatcher$7;

    invoke-direct {v6}, Lcom/google/android/common/base/CharMatcher$7;-><init>()V

    sput-object v6, Lcom/google/android/common/base/CharMatcher;->NONE:Lcom/google/android/common/base/CharMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    return-void
.end method

.method public static anyOf(Ljava/lang/CharSequence;)Lcom/google/android/common/base/CharMatcher;
    .locals 5
    .parameter "sequence"

    .prologue
    const/4 v4, 0x0

    .line 436
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 458
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 459
    .local v0, chars:[C
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 461
    new-instance v3, Lcom/google/android/common/base/CharMatcher$11;

    invoke-direct {v3, v0}, Lcom/google/android/common/base/CharMatcher$11;-><init>([C)V

    .end local v0           #chars:[C
    :goto_0
    return-object v3

    .line 438
    :pswitch_0
    sget-object v3, Lcom/google/android/common/base/CharMatcher;->NONE:Lcom/google/android/common/base/CharMatcher;

    goto :goto_0

    .line 440
    :pswitch_1
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/android/common/base/CharMatcher;->is(C)Lcom/google/android/common/base/CharMatcher;

    move-result-object v3

    goto :goto_0

    .line 442
    :pswitch_2
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 443
    .local v1, match1:C
    const/4 v3, 0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 444
    .local v2, match2:C
    new-instance v3, Lcom/google/android/common/base/CharMatcher$10;

    invoke-direct {v3, v1, v2}, Lcom/google/android/common/base/CharMatcher$10;-><init>(CC)V

    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static inRange(CC)Lcom/google/android/common/base/CharMatcher;
    .locals 1
    .parameter "startInclusive"
    .parameter "endInclusive"

    .prologue
    .line 490
    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/common/base/Preconditions;->checkArgument(Z)V

    .line 491
    new-instance v0, Lcom/google/android/common/base/CharMatcher$12;

    invoke-direct {v0, p0, p1}, Lcom/google/android/common/base/CharMatcher$12;-><init>(CC)V

    return-object v0

    .line 490
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is(C)Lcom/google/android/common/base/CharMatcher;
    .locals 1
    .parameter "match"

    .prologue
    .line 380
    new-instance v0, Lcom/google/android/common/base/CharMatcher$8;

    invoke-direct {v0, p0}, Lcom/google/android/common/base/CharMatcher$8;-><init>(C)V

    return-object v0
.end method


# virtual methods
.method public abstract matches(C)Z
.end method

.method public or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;
    .locals 3
    .parameter "other"

    .prologue
    .line 599
    new-instance v0, Lcom/google/android/common/base/CharMatcher$Or;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/common/base/CharMatcher;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/common/base/CharMatcher;

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/common/base/CharMatcher$Or;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public precomputed()Lcom/google/android/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 643
    invoke-static {p0}, Lcom/google/android/common/base/Platform;->precomputeCharMatcher(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method precomputedInternal()Lcom/google/android/common/base/CharMatcher;
    .locals 2

    .prologue
    .line 659
    new-instance v0, Lcom/google/android/common/base/CharMatcher$LookupTable;

    invoke-direct {v0}, Lcom/google/android/common/base/CharMatcher$LookupTable;-><init>()V

    .line 660
    .local v0, table:Lcom/google/android/common/base/CharMatcher$LookupTable;
    invoke-virtual {p0, v0}, Lcom/google/android/common/base/CharMatcher;->setBits(Lcom/google/android/common/base/CharMatcher$LookupTable;)V

    .line 662
    new-instance v1, Lcom/google/android/common/base/CharMatcher$15;

    invoke-direct {v1, p0, v0}, Lcom/google/android/common/base/CharMatcher$15;-><init>(Lcom/google/android/common/base/CharMatcher;Lcom/google/android/common/base/CharMatcher$LookupTable;)V

    return-object v1
.end method

.method protected setBits(Lcom/google/android/common/base/CharMatcher$LookupTable;)V
    .locals 3
    .parameter "table"

    .prologue
    .line 684
    const/4 v0, 0x0

    .line 686
    .local v0, c:C
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 687
    invoke-virtual {p1, v0}, Lcom/google/android/common/base/CharMatcher$LookupTable;->set(C)V

    .line 689
    :cond_0
    add-int/lit8 v2, v0, 0x1

    int-to-char v1, v2

    .end local v0           #c:C
    .local v1, c:C
    const v2, 0xffff

    if-ne v0, v2, :cond_1

    .line 693
    return-void

    :cond_1
    move v0, v1

    .end local v1           #c:C
    .restart local v0       #c:C
    goto :goto_0
.end method
