.class public Lcom/layar/data/BasePOI$PoiComparator;
.super Ljava/lang/Object;
.source "BasePOI.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/BasePOI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PoiComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/layar/data/BasePOI;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    .local p0, this:Lcom/layar/data/BasePOI$PoiComparator;,"Lcom/layar/data/BasePOI$PoiComparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/layar/data/BasePOI;Lcom/layar/data/BasePOI;)I
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, this:Lcom/layar/data/BasePOI$PoiComparator;,"Lcom/layar/data/BasePOI$PoiComparator<TT;>;"
    .local p1, object1:Lcom/layar/data/BasePOI;,"TT;"
    .local p2, object2:Lcom/layar/data/BasePOI;,"TT;"
    iget v0, p1, Lcom/layar/data/BasePOI;->geodistance:I

    iget v1, p2, Lcom/layar/data/BasePOI;->geodistance:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/layar/data/BasePOI;

    check-cast p2, Lcom/layar/data/BasePOI;

    invoke-virtual {p0, p1, p2}, Lcom/layar/data/BasePOI$PoiComparator;->compare(Lcom/layar/data/BasePOI;Lcom/layar/data/BasePOI;)I

    move-result v0

    return v0
.end method
