.class public Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;
.super Ljava/lang/Object;
.source "PreferredDictionaries.java"


# static fields
.field static preferredDictionaries:Ljava/util/HashMap;
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

.field private static preferredDictionaryTitles:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preferredDictionaries:Ljava/util/HashMap;

    .line 28
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preferredDictionaries:Ljava/util/HashMap;

    const-string v1, "en-US"

    const-string v2, "B003ODIZL6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preferredDictionaries:Ljava/util/HashMap;

    const-string v1, "de-DE"

    const-string v2, "B003YL4LVQ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preferredDictionaryTitles:Ljava/util/HashMap;

    .line 32
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preferredDictionaryTitles:Ljava/util/HashMap;

    const-string v1, "B003ODIZL6"

    const-string v2, "The New Oxford American Dictionary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preferredDictionaryTitles:Ljava/util/HashMap;

    const-string v1, "B003YL4LVQ"

    const-string v2, "Duden Deutsches Universalw\u221a\u2202rterbuch"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static getDictionaryAsinFromLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "languageCode"

    .prologue
    .line 94
    if-nez p0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preferredDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public static getPreferredDictionaryTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "asin"

    .prologue
    .line 83
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preferredDictionaryTitles:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static isPreferredDictionary(Lcom/amazon/kcp/library/models/IListableBook;)Z
    .locals 3
    .parameter "book"

    .prologue
    const/4 v2, 0x0

    .line 55
    if-nez p0, :cond_0

    move v0, v2

    .line 60
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preferredDictionaries:Ljava/util/HashMap;

    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static isPreferredDictionary(Ljava/lang/String;)Z
    .locals 1
    .parameter "asin"

    .prologue
    .line 71
    sget-object v0, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->preferredDictionaries:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
