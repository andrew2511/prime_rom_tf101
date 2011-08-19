.class public Lcom/mobipocket/common/util/VectorUtils;
.super Ljava/lang/Object;
.source "VectorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAll(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 3
    .parameter "dst"
    .parameter "src"

    .prologue
    .line 11
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 20
    :cond_0
    return-void

    .line 14
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 17
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 18
    .local v1, obj:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
