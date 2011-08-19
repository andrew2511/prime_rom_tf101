.class public Lcom/amazon/kcp/library/dictionary/internal/DictionaryCapabilities;
.super Ljava/lang/Object;
.source "DictionaryCapabilities.java"

# interfaces
.implements Lcom/amazon/kcp/library/dictionary/IDictionary;


# static fields
.field private static final NOAD:Ljava/lang/String; = "The New Oxford American Dictionary"


# instance fields
.field private bookManager:Lcom/mobipocket/common/library/reader/BookManager;

.field private bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;


# direct methods
.method public constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookManager;)V
    .locals 1
    .parameter "bookViewManager"
    .parameter "bookManager"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryCapabilities;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    .line 23
    iput-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryCapabilities;->bookManager:Lcom/mobipocket/common/library/reader/BookManager;

    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryCapabilities;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    .line 37
    iput-object p2, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryCapabilities;->bookManager:Lcom/mobipocket/common/library/reader/BookManager;

    .line 38
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryCapabilities;->bookManager:Lcom/mobipocket/common/library/reader/BookManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryCapabilities;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryCapabilities;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->getCurrentBook()Lcom/mobipocket/common/library/reader/BookItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryCapabilities;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->getCurrentBook()Lcom/mobipocket/common/library/reader/BookItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookItem;->isDictionary()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    const/4 v0, 0x0

    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryCapabilities;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->wordSelection:Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;

    iget-object v2, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryCapabilities;->bookManager:Lcom/mobipocket/common/library/reader/BookManager;

    iget-object v3, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryCapabilities;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/BookViewManager;->getCurrentBook()Lcom/mobipocket/common/library/reader/BookItem;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lcom/mobipocket/common/library/reader/BookViewManager$WordSelection;->lookup(Lcom/mobipocket/common/library/reader/BookManager;Ljava/lang/String;Lcom/mobipocket/common/library/reader/BookItem;)[Lcom/mobipocket/common/library/reader/IndexItem;
    :try_end_0
    .catch Lcom/mobipocket/common/library/reader/NoDictionaryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move v1, v4

    .line 60
    :goto_0
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 62
    aget-object v1, v0, v4

    .line 67
    const-string v2, "The New Oxford American Dictionary"

    iget-object v3, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryCapabilities;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/BookViewManager;->getCurrentBook()Lcom/mobipocket/common/library/reader/BookItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mobipocket/common/library/reader/BookItem;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getPreferredDictionaryTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    aget-object v2, v0, v4

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/IndexItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "woman"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v0, v5

    invoke-virtual {v2}, Lcom/mobipocket/common/library/reader/IndexItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "woman"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    aget-object v0, v0, v5

    .line 77
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryCapabilities;->bookViewManager:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->open(Lcom/mobipocket/common/library/reader/IndexItem;)V
    :try_end_1
    .catch Lcom/mobipocket/common/library/reader/InvalidBookException; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v5

    .line 87
    :goto_2
    return v0

    .line 57
    :catch_0
    move-exception v1

    move v1, v4

    goto :goto_0

    .line 82
    :catch_1
    move-exception v0

    move v0, v4

    goto :goto_2

    :cond_0
    move-object v0, v1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v4

    goto :goto_2
.end method
