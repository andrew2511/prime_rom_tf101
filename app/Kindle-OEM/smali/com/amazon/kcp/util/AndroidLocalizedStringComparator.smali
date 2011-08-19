.class public Lcom/amazon/kcp/util/AndroidLocalizedStringComparator;
.super Lcom/amazon/kcp/util/LocalizedStringComparator;
.source "AndroidLocalizedStringComparator.java"


# instance fields
.field private final collator:Ljava/text/Collator;

.field private final stopWords:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .parameter "res"

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const v1, 0x7f070001

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/util/AndroidLocalizedStringComparator;-><init>(Ljava/util/Locale;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method constructor <init>(Ljava/util/Locale;[Ljava/lang/String;)V
    .locals 1
    .parameter "locale"
    .parameter "stopWords"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/amazon/kcp/util/LocalizedStringComparator;-><init>()V

    .line 36
    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/util/AndroidLocalizedStringComparator;->collator:Ljava/text/Collator;

    .line 37
    iput-object p2, p0, Lcom/amazon/kcp/util/AndroidLocalizedStringComparator;->stopWords:[Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method protected getStopWords()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/util/AndroidLocalizedStringComparator;->stopWords:[Ljava/lang/String;

    return-object v0
.end method

.method protected isDigitOrLowerCaseLetter(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 55
    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized localeCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "firstString"
    .parameter "secondString"

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/util/AndroidLocalizedStringComparator;->collator:Ljava/text/Collator;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/util/AndroidLocalizedStringComparator;->getComparableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/amazon/kcp/util/AndroidLocalizedStringComparator;->getComparableString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
