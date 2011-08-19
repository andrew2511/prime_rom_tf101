.class Lcom/google/i18n/phonenumbers/RegexCache$LRUCache$1;
.super Ljava/util/LinkedHashMap;
.source "RegexCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;-><init>(Lcom/google/i18n/phonenumbers/RegexCache;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;

.field final synthetic val$this$0:Lcom/google/i18n/phonenumbers/RegexCache;


# direct methods
.method constructor <init>(Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;IFZLcom/google/i18n/phonenumbers/RegexCache;)V
    .registers 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter

    .prologue
    .line 57
    .local p0, this:Lcom/google/i18n/phonenumbers/RegexCache$LRUCache$1;,"Lcom/google/i18n/phonenumbers/RegexCache$LRUCache.1;"
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache$1;->this$1:Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;

    iput-object p5, p0, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache$1;->val$this$0:Lcom/google/i18n/phonenumbers/RegexCache;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, this:Lcom/google/i18n/phonenumbers/RegexCache$LRUCache$1;,"Lcom/google/i18n/phonenumbers/RegexCache$LRUCache.1;"
    .local p1, eldest:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache$1;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache$1;->this$1:Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;

    #getter for: Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;->size:I
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;->access$000(Lcom/google/i18n/phonenumbers/RegexCache$LRUCache;)I

    move-result v1

    if-le v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
