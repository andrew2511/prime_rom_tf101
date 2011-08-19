.class public final Lcom/google/android/youtube/core/converter/RulesHelper;
.super Ljava/lang/Object;
.source "RulesHelper.java"


# static fields
.field private static final DEFAULT_PREFIX:Ljava/lang/String; = "/feed"

.field private static final pageRels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "next"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "previous"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/converter/RulesHelper;->pageRels:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/youtube/core/converter/RulesHelper;->pageRels:Ljava/util/Set;

    return-object v0
.end method

.method public static createBuilderWithPageRules()Lcom/google/android/youtube/core/converter/Rules$Builder;
    .locals 1

    .prologue
    .line 41
    const-string v0, "/feed"

    invoke-static {v0}, Lcom/google/android/youtube/core/converter/RulesHelper;->createBuilderWithPageRules(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static createBuilderWithPageRules(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/Rules$Builder;
    .locals 4
    .parameter "prefix"

    .prologue
    .line 52
    const-string v1, "prefix can\'t be null"

    invoke-static {p0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v0, Lcom/google/android/youtube/core/converter/Rules$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/Rules$Builder;-><init>()V

    .line 54
    .local v0, builder:Lcom/google/android/youtube/core/converter/Rules$Builder;
    new-instance v1, Lcom/google/android/youtube/core/converter/RulesHelper$5;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/RulesHelper$5;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/openSearch:totalResults"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/converter/RulesHelper$4;

    invoke-direct {v3}, Lcom/google/android/youtube/core/converter/RulesHelper$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/openSearch:startIndex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/converter/RulesHelper$3;

    invoke-direct {v3}, Lcom/google/android/youtube/core/converter/RulesHelper$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/openSearch:itemsPerPage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/converter/RulesHelper$2;

    invoke-direct {v3}, Lcom/google/android/youtube/core/converter/RulesHelper$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/link"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/converter/RulesHelper$1;

    invoke-direct {v3}, Lcom/google/android/youtube/core/converter/RulesHelper$1;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    .line 96
    return-object v0
.end method
