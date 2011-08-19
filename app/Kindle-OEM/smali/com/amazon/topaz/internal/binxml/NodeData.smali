.class Lcom/amazon/topaz/internal/binxml/NodeData;
.super Ljava/lang/Object;
.source "NodeData.java"


# instance fields
.field public final attribs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final children:[I

.field public final typeID:I


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/internal/binxml/Deserializer;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->getComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 26
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Deserializer;->readInt()I

    move-result v1

    iput v1, p0, Lcom/amazon/topaz/internal/binxml/NodeData;->typeID:I

    .line 27
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Deserializer;->readInt()I

    move-result v1

    .line 28
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Deserializer;->readInt()I

    move-result v3

    .line 30
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Deserializer;->readInt()I

    move-result v4

    .line 31
    new-instance v5, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    invoke-direct {v5, v3}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;-><init>(I)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/internal/binxml/NodeData;->attribs:Ljava/util/Map;

    .line 34
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Deserializer;->readVector()[I

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/internal/binxml/NodeData;->children:[I

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)V
    .locals 1
    .parameter "typeID"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->intValue()I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/internal/binxml/NodeData;->typeID:I

    .line 40
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/internal/binxml/NodeData;->attribs:Ljava/util/Map;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/internal/binxml/NodeData;->children:[I

    .line 42
    return-void
.end method
