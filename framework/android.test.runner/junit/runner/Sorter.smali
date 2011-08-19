.class public Ljunit/runner/Sorter;
.super Ljava/lang/Object;
.source "Sorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljunit/runner/Sorter$Swapper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static sortStrings(Ljava/util/Vector;IILjunit/runner/Sorter$Swapper;)V
    .registers 8
    .parameter "values"
    .parameter "left"
    .parameter "right"
    .parameter "swapper"

    .prologue
    .line 19
    move v1, p1

    .line 20
    .local v1, oleft:I
    move v2, p2

    .line 21
    .local v2, oright:I
    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23
    .local v0, mid:Ljava/lang/String;
    :cond_c
    :goto_c
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1d

    .line 24
    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    .line 25
    :cond_1d
    :goto_1d
    invoke-virtual {p0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2e

    .line 26
    add-int/lit8 p2, p2, -0x1

    goto :goto_1d

    .line 27
    :cond_2e
    if-gt p1, p2, :cond_37

    .line 28
    invoke-interface {p3, p0, p1, p2}, Ljunit/runner/Sorter$Swapper;->swap(Ljava/util/Vector;II)V

    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 30
    add-int/lit8 p2, p2, -0x1

    .line 32
    :cond_37
    if-le p1, p2, :cond_c

    .line 34
    if-ge v1, p2, :cond_3e

    .line 35
    invoke-static {p0, v1, p2, p3}, Ljunit/runner/Sorter;->sortStrings(Ljava/util/Vector;IILjunit/runner/Sorter$Swapper;)V

    .line 36
    :cond_3e
    if-ge p1, v2, :cond_43

    .line 37
    invoke-static {p0, p1, v2, p3}, Ljunit/runner/Sorter;->sortStrings(Ljava/util/Vector;IILjunit/runner/Sorter$Swapper;)V

    .line 38
    :cond_43
    return-void
.end method
