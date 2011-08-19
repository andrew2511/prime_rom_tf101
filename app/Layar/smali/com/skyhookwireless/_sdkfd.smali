.class public Lcom/skyhookwireless/_sdkfd;
.super Lcom/skyhookwireless/_sdked;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable",
        "<-TT;>;U::",
        "Ljava/lang/Comparable",
        "<-TU;>;>",
        "Lcom/skyhookwireless/_sdked",
        "<TT;TU;>;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/skyhookwireless/_sdked",
        "<TT;TU;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TU;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/skyhookwireless/_sdked;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static _sdka(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/skyhookwireless/_sdkfd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;U::",
            "Ljava/lang/Comparable",
            "<-TU;>;>(TT;TU;)",
            "Lcom/skyhookwireless/_sdkfd",
            "<TT;TU;>;"
        }
    .end annotation

    new-instance v0, Lcom/skyhookwireless/_sdkfd;

    invoke-direct {v0, p0, p1}, Lcom/skyhookwireless/_sdkfd;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method private static _sdkb(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/lang/Comparable",
            "<-TV;>;>(TV;TV;)I"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-nez p0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public _sdka(Lcom/skyhookwireless/_sdked;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skyhookwireless/_sdked",
            "<TT;TU;>;)I"
        }
    .end annotation

    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/skyhookwireless/_sdkfd;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Comparable;

    iget-object v1, p1, Lcom/skyhookwireless/_sdked;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lcom/skyhookwireless/_sdkfd;->_sdkb(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/skyhookwireless/_sdkfd;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Comparable;

    iget-object v0, p1, Lcom/skyhookwireless/_sdked;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Comparable;

    invoke-static {p0, v0}, Lcom/skyhookwireless/_sdkfd;->_sdkb(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/skyhookwireless/_sdked;

    invoke-virtual {p0, p1}, Lcom/skyhookwireless/_sdkfd;->_sdka(Lcom/skyhookwireless/_sdked;)I

    move-result v0

    return v0
.end method
