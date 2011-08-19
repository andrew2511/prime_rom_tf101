.class Lcom/amazon/topaz/TPZBook$1;
.super Ljava/lang/Object;
.source "TPZBook.java"

# interfaces
.implements Lcom/amazon/topaz/internal/caching/CacheFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/topaz/TPZBook;-><init>(Lcom/amazon/system/io/IFileInputStream;Lcom/amazon/system/io/InflaterFactory;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/topaz/TPZBook;

.field private final wrappingStrategy:Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;


# direct methods
.method constructor <init>(Lcom/amazon/topaz/TPZBook;)V
    .locals 1
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/amazon/topaz/TPZBook$1;->this$0:Lcom/amazon/topaz/TPZBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    new-instance v0, Lcom/amazon/topaz/internal/caching/WeakReferenceWrappingStrategy;

    invoke-direct {v0}, Lcom/amazon/topaz/internal/caching/WeakReferenceWrappingStrategy;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/TPZBook$1;->wrappingStrategy:Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;

    return-void
.end method


# virtual methods
.method public newCache(Lcom/amazon/foundation/internal/performance/CacheCounter;)Lcom/amazon/topaz/internal/caching/Cache;
    .locals 2
    .parameter "counter"

    .prologue
    .line 444
    new-instance v0, Lcom/amazon/topaz/internal/caching/Cache;

    iget-object v1, p0, Lcom/amazon/topaz/TPZBook$1;->wrappingStrategy:Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;

    invoke-direct {v0, v1, p1}, Lcom/amazon/topaz/internal/caching/Cache;-><init>(Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;Lcom/amazon/foundation/internal/performance/CacheCounter;)V

    .line 446
    .local v0, retval:Lcom/amazon/topaz/internal/caching/Cache;
    return-object v0
.end method
