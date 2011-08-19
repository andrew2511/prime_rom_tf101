.class public final Lcom/google/android/common/base/Splitter;
.super Ljava/lang/Object;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/base/Splitter$6;,
        Lcom/google/android/common/base/Splitter$AbstractIterator;,
        Lcom/google/android/common/base/Splitter$SplittingIterator;,
        Lcom/google/android/common/base/Splitter$Strategy;
    }
.end annotation


# instance fields
.field private final omitEmptyStrings:Z

.field private final strategy:Lcom/google/android/common/base/Splitter$Strategy;

.field private final trimmer:Lcom/google/android/common/base/CharMatcher;


# direct methods
.method private constructor <init>(Lcom/google/android/common/base/Splitter$Strategy;)V
    .locals 2
    .parameter "strategy"

    .prologue
    .line 99
    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/common/base/CharMatcher;->NONE:Lcom/google/android/common/base/CharMatcher;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/common/base/Splitter;-><init>(Lcom/google/android/common/base/Splitter$Strategy;ZLcom/google/android/common/base/CharMatcher;)V

    .line 100
    return-void
.end method

.method private constructor <init>(Lcom/google/android/common/base/Splitter$Strategy;ZLcom/google/android/common/base/CharMatcher;)V
    .locals 0
    .parameter "strategy"
    .parameter "omitEmptyStrings"
    .parameter "trimmer"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/android/common/base/Splitter;->strategy:Lcom/google/android/common/base/Splitter$Strategy;

    .line 105
    iput-boolean p2, p0, Lcom/google/android/common/base/Splitter;->omitEmptyStrings:Z

    .line 106
    iput-object p3, p0, Lcom/google/android/common/base/Splitter;->trimmer:Lcom/google/android/common/base/CharMatcher;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/common/base/Splitter;)Lcom/google/android/common/base/Splitter$Strategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/common/base/Splitter;->strategy:Lcom/google/android/common/base/Splitter$Strategy;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/common/base/Splitter;)Lcom/google/android/common/base/CharMatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/common/base/Splitter;->trimmer:Lcom/google/android/common/base/CharMatcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/common/base/Splitter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/google/android/common/base/Splitter;->omitEmptyStrings:Z

    return v0
.end method

.method public static fixedLength(I)Lcom/google/android/common/base/Splitter;
    .locals 2
    .parameter "length"

    .prologue
    .line 254
    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "The length may not be less than 1"

    invoke-static {v0, v1}, Lcom/google/android/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 256
    new-instance v0, Lcom/google/android/common/base/Splitter;

    new-instance v1, Lcom/google/android/common/base/Splitter$4;

    invoke-direct {v1, p0}, Lcom/google/android/common/base/Splitter$4;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/google/android/common/base/Splitter;-><init>(Lcom/google/android/common/base/Splitter$Strategy;)V

    return-object v0

    .line 254
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static on(C)Lcom/google/android/common/base/Splitter;
    .locals 1
    .parameter "separator"

    .prologue
    .line 118
    invoke-static {p0}, Lcom/google/android/common/base/CharMatcher;->is(C)Lcom/google/android/common/base/CharMatcher;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/common/base/Splitter;->on(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public static on(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/Splitter;
    .locals 2
    .parameter "separatorMatcher"

    .prologue
    .line 132
    invoke-static {p0}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    new-instance v0, Lcom/google/android/common/base/Splitter;

    new-instance v1, Lcom/google/android/common/base/Splitter$1;

    invoke-direct {v1, p0}, Lcom/google/android/common/base/Splitter$1;-><init>(Lcom/google/android/common/base/CharMatcher;)V

    invoke-direct {v0, v1}, Lcom/google/android/common/base/Splitter;-><init>(Lcom/google/android/common/base/Splitter$Strategy;)V

    return-object v0
.end method

.method public static on(Ljava/lang/String;)Lcom/google/android/common/base/Splitter;
    .locals 2
    .parameter "separator"

    .prologue
    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "The separator may not be the empty string."

    invoke-static {v0, v1}, Lcom/google/android/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 162
    new-instance v0, Lcom/google/android/common/base/Splitter;

    new-instance v1, Lcom/google/android/common/base/Splitter$2;

    invoke-direct {v1, p0}, Lcom/google/android/common/base/Splitter$2;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/common/base/Splitter;-><init>(Lcom/google/android/common/base/Splitter$Strategy;)V

    return-object v0

    .line 159
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static on(Ljava/util/regex/Pattern;)Lcom/google/android/common/base/Splitter;
    .locals 4
    .parameter "separatorPattern"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 203
    invoke-static {p0}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    const-string v1, "The pattern may not match the empty string: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 207
    new-instance v0, Lcom/google/android/common/base/Splitter;

    new-instance v1, Lcom/google/android/common/base/Splitter$3;

    invoke-direct {v1, p0}, Lcom/google/android/common/base/Splitter$3;-><init>(Ljava/util/regex/Pattern;)V

    invoke-direct {v0, v1}, Lcom/google/android/common/base/Splitter;-><init>(Lcom/google/android/common/base/Splitter$Strategy;)V

    return-object v0

    :cond_0
    move v0, v3

    .line 204
    goto :goto_0
.end method

.method public static onPattern(Ljava/lang/String;)Lcom/google/android/common/base/Splitter;
    .locals 1
    .parameter "separatorPattern"

    .prologue
    .line 240
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/common/base/Splitter;->on(Ljava/util/regex/Pattern;)Lcom/google/android/common/base/Splitter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public omitEmptyStrings()Lcom/google/android/common/base/Splitter;
    .locals 4

    .prologue
    .line 292
    new-instance v0, Lcom/google/android/common/base/Splitter;

    iget-object v1, p0, Lcom/google/android/common/base/Splitter;->strategy:Lcom/google/android/common/base/Splitter$Strategy;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/common/base/Splitter;->trimmer:Lcom/google/android/common/base/CharMatcher;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/common/base/Splitter;-><init>(Lcom/google/android/common/base/Splitter$Strategy;ZLcom/google/android/common/base/CharMatcher;)V

    return-object v0
.end method

.method public split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1
    .parameter "sequence"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    new-instance v0, Lcom/google/android/common/base/Splitter$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/common/base/Splitter$5;-><init>(Lcom/google/android/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public trimResults()Lcom/google/android/common/base/Splitter;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/google/android/common/base/CharMatcher;->WHITESPACE:Lcom/google/android/common/base/CharMatcher;

    invoke-virtual {p0, v0}, Lcom/google/android/common/base/Splitter;->trimResults(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/Splitter;

    move-result-object v0

    return-object v0
.end method

.method public trimResults(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/Splitter;
    .locals 3
    .parameter "trimmer"

    .prologue
    .line 321
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v0, Lcom/google/android/common/base/Splitter;

    iget-object v1, p0, Lcom/google/android/common/base/Splitter;->strategy:Lcom/google/android/common/base/Splitter$Strategy;

    iget-boolean v2, p0, Lcom/google/android/common/base/Splitter;->omitEmptyStrings:Z

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/common/base/Splitter;-><init>(Lcom/google/android/common/base/Splitter$Strategy;ZLcom/google/android/common/base/CharMatcher;)V

    return-object v0
.end method
