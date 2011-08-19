.class final Lcom/amazon/topaz/internal/binxml/Dictionary$StringID$Comparator;
.super Ljava/lang/Object;
.source "Dictionary.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Comparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I
    .locals 3
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 216
    iget v0, p1, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->id:I

    .line 217
    .local v0, id1:I
    iget v1, p2, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;->id:I

    .line 218
    .local v1, id2:I
    sub-int v2, v0, v1

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    check-cast p1, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    .end local p1
    check-cast p2, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/amazon/topaz/internal/binxml/Dictionary$StringID$Comparator;->compare(Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;Lcom/amazon/topaz/internal/binxml/Dictionary$StringID;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 224
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
