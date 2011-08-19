.class public Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile$AnnotationComparator;
.super Ljava/lang/Object;
.source "CTPZAnnotationFile.java"

# interfaces
.implements Lcom/mobipocket/common/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/models/internal/CTPZAnnotationFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnnotationComparator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 9
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 395
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    move-object v1, v0

    .line 396
    .local v1, t1:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    move-object v0, p2

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;

    move-object v2, v0

    .line 398
    .local v2, t2:Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getBegin()I

    move-result v5

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getBegin()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 400
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getBegin()I

    move-result v5

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getBegin()I

    move-result v6

    if-ge v5, v6, :cond_0

    move v5, v7

    .line 414
    :goto_0
    return v5

    :cond_0
    move v5, v8

    .line 400
    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getType()I

    move-result v3

    .line 404
    .local v3, type1:I
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getType()I

    move-result v4

    .line 405
    .local v4, type2:I
    if-eq v3, v4, :cond_3

    .line 407
    if-ge v3, v4, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    move v5, v8

    goto :goto_0

    .line 409
    :cond_3
    const/4 v5, 0x5

    if-ne v3, v5, :cond_4

    .line 411
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getCollectionTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getCollectionTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 414
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method
