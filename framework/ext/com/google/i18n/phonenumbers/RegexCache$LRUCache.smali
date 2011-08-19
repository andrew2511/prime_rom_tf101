.class Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;
.super Ljava/lang/Object;
.source "RegexCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/RegexCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LRUCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private size:I

.field final synthetic this$0:Lcom/google/i18n/phonenumbers/RegexCache;


# direct methods
.method public constructor <init>(Lcom/google/i18n/phonenumbers/RegexCache;I)V
    .registers 9
    .parameter
    .parameter "size"

    .prologue
    .line 55
    .local p0, this:Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;,"Lcom/google/i18n/phonenumbers/RegexCache$LRUCache<TK;TV;>;"
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;->this$0:Lcom/google/i18n/phonenumbers/RegexCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p2, p0, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;->size:I

    .line 57
    new-instance v0, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache$1;

    mul-int/lit8 v1, p2, 0x4

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v1, 0x1

    const/high16 v3, 0x3f40

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache$1;-><init>(Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;IFZLcom/google/i18n/phonenumbers/RegexCache;)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;->map:Ljava/util/LinkedHashMap;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;->size:I

    return v0
.end method


# virtual methods
.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, this:Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;,"Lcom/google/i18n/phonenumbers/RegexCache$LRUCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;,"Lcom/google/i18n/phonenumbers/RegexCache$LRUCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;,"Lcom/google/i18n/phonenumbers/RegexCache$LRUCache<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
