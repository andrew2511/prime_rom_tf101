.class final Ljava/util/AbstractList$SubAbstractListRandomAccess;
.super Ljava/util/AbstractList$SubAbstractList;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubAbstractListRandomAccess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList$SubAbstractList",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/AbstractList;II)V
    .registers 4
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList",
            "<TE;>;II)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Ljava/util/AbstractList$SubAbstractListRandomAccess;,"Ljava/util/AbstractList$SubAbstractListRandomAccess<TE;>;"
    .local p1, list:Ljava/util/AbstractList;,"Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/AbstractList$SubAbstractList;-><init>(Ljava/util/AbstractList;II)V

    .line 161
    return-void
.end method
