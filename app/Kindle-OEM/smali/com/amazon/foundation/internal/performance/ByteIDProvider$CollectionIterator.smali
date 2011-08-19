.class Lcom/amazon/foundation/internal/performance/ByteIDProvider$CollectionIterator;
.super Ljava/lang/Object;
.source "ByteIDProvider.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/foundation/internal/performance/ByteIDProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollectionIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lcom/amazon/foundation/internal/performance/ByteIDProvider;


# direct methods
.method private constructor <init>(Lcom/amazon/foundation/internal/performance/ByteIDProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/amazon/foundation/internal/performance/ByteIDProvider$CollectionIterator;->this$0:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/foundation/internal/performance/ByteIDProvider;Lcom/amazon/foundation/internal/performance/ByteIDProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/foundation/internal/performance/ByteIDProvider$CollectionIterator;-><init>(Lcom/amazon/foundation/internal/performance/ByteIDProvider;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 31
    iget v0, p0, Lcom/amazon/foundation/internal/performance/ByteIDProvider$CollectionIterator;->index:I

    iget-object v1, p0, Lcom/amazon/foundation/internal/performance/ByteIDProvider$CollectionIterator;->this$0:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

    invoke-static {v1}, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->access$000(Lcom/amazon/foundation/internal/performance/ByteIDProvider;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 41
    iget v1, p0, Lcom/amazon/foundation/internal/performance/ByteIDProvider$CollectionIterator;->index:I

    iget-object v2, p0, Lcom/amazon/foundation/internal/performance/ByteIDProvider$CollectionIterator;->this$0:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

    invoke-static {v2}, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->access$000(Lcom/amazon/foundation/internal/performance/ByteIDProvider;)I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 43
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/amazon/foundation/internal/performance/ByteIDProvider$CollectionIterator;->this$0:Lcom/amazon/foundation/internal/performance/ByteIDProvider;

    invoke-static {v1}, Lcom/amazon/foundation/internal/performance/ByteIDProvider;->access$100(Lcom/amazon/foundation/internal/performance/ByteIDProvider;)[Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/amazon/foundation/internal/performance/ByteIDProvider$CollectionIterator;->index:I

    aget-object v0, v1, v2

    .line 47
    .local v0, retval:Ljava/lang/Object;
    iget v1, p0, Lcom/amazon/foundation/internal/performance/ByteIDProvider$CollectionIterator;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amazon/foundation/internal/performance/ByteIDProvider$CollectionIterator;->index:I

    .line 49
    return-object v0
.end method

.method public remove()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
