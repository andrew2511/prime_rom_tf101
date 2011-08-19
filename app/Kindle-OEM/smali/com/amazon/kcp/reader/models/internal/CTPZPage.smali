.class public Lcom/amazon/kcp/reader/models/internal/CTPZPage;
.super Ljava/lang/Object;
.source "CTPZPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;,
        Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;,
        Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;,
        Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;,
        Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationVisualData;
    }
.end annotation


# static fields
.field public static final DIRECT_LINK:I = 0x2

.field public static final IMAGE:I = 0x10

.field public static final MENU_LINK:I = 0x4

.field public static final NOTES:I = 0x1

.field public static final UNKNOWN:I = 0x20

.field public static final ZOOM:I = 0x8


# instance fields
.field private activeAreas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;",
            ">;"
        }
    .end annotation
.end field

.field private documentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;

.field public firstWordsEndPosID:I

.field private highlightAreas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;",
            ">;"
        }
    .end annotation
.end field

.field private imageCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/topaz/Callback;",
            ">;"
        }
    .end annotation
.end field

.field private imageOffset:Lcom/amazon/system/drawing/Point;

.field private isValid:Z

.field private marginX:I

.field private marginY:I

.field private noteAreas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;",
            ">;"
        }
    .end annotation
.end field

.field public offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

.field public pageEndPosID:I

.field private pageLines_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field public startPosID:I

.field public viewerPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->viewerPos:I

    .line 81
    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->startPosID:I

    .line 87
    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->firstWordsEndPosID:I

    .line 92
    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageEndPosID:I

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->isValid:Z

    .line 157
    new-instance v0, Lcom/amazon/system/drawing/Point;

    invoke-direct {v0}, Lcom/amazon/system/drawing/Point;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->imageOffset:Lcom/amazon/system/drawing/Point;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->activeAreas:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->highlightAreas:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->noteAreas:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->imageCallbacks:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/models/internal/DocumentPage;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->documentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    .line 163
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->empty()V

    .line 164
    return-void
.end method

.method private getActiveArea(IIII)I
    .locals 10
    .parameter "x"
    .parameter "y"
    .parameter "types"
    .parameter "margin"

    .prologue
    .line 547
    const/4 v0, -0x1

    .line 548
    .local v0, activeAreaIndex:I
    const v6, 0x7fffffff

    .line 549
    .local v6, min_distance:I
    const/4 v1, 0x0

    .local v1, areaIndex:I
    :goto_0
    iget-object v8, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->activeAreas:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 551
    iget-object v8, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->activeAreas:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;

    .line 552
    .local v2, currentActiveArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;
    iget v8, v2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->type:I

    and-int/2addr v8, p3

    if-eqz v8, :cond_0

    invoke-virtual {v2, p1, p2, p4}, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->contains(III)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 554
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->getBoundingRect()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v7

    .line 555
    .local v7, zone:Lcom/amazon/system/drawing/Rectangle;
    iget v8, v7, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v9, v7, Lcom/amazon/system/drawing/Rectangle;->width:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    sub-int v4, v8, p1

    .line 556
    .local v4, distanceX:I
    iget v8, v7, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v9, v7, Lcom/amazon/system/drawing/Rectangle;->height:I

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    sub-int v5, v8, p2

    .line 557
    .local v5, distanceY:I
    mul-int v8, v4, v4

    mul-int v9, v5, v5

    add-int v3, v8, v9

    .line 559
    .local v3, distance:I
    if-ge v3, v6, :cond_0

    .line 561
    move v6, v3

    .line 562
    move v0, v1

    .line 549
    .end local v3           #distance:I
    .end local v4           #distanceX:I
    .end local v5           #distanceY:I
    .end local v7           #zone:Lcom/amazon/system/drawing/Rectangle;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    .end local v2           #currentActiveArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;
    :cond_1
    return v0
.end method

.method private insertWordZoneInActiveArea(Ljava/util/List;Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;)Z
    .locals 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;",
            ")Z"
        }
    .end annotation

    .prologue
    const/16 v11, 0x20

    const/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 777
    move v3, v8

    move v1, v8

    .line 778
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_9

    .line 781
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/Callback;

    .line 783
    if-eqz v0, :cond_d

    .line 787
    invoke-virtual {v0}, Lcom/amazon/topaz/Callback;->getInfo()Lcom/amazon/topaz/Callback$Info;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/topaz/Callback$Info;->getType()Ljava/lang/String;

    move-result-object v1

    .line 789
    const-string v2, "popup"

    if-ne v1, v2, :cond_0

    move v4, v9

    .line 813
    :goto_1
    if-eq v4, v11, :cond_8

    if-eq v4, v9, :cond_8

    move v5, v8

    move v2, v9

    .line 822
    :goto_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->activeAreas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_b

    .line 824
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->activeAreas:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;

    .line 825
    iget-object v6, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->callback:Lcom/amazon/topaz/Callback;

    if-ne v0, v6, :cond_5

    move v6, v8

    .line 829
    :goto_3
    iget-object v7, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 831
    iget-object v2, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 833
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 836
    invoke-direct {p0, v2, p2}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->updateZone(Ljava/util/ArrayList;Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;)Z

    move-result v2

    .line 839
    if-nez v2, :cond_4

    move v1, v2

    .line 843
    :goto_4
    if-nez v1, :cond_6

    .line 848
    :goto_5
    if-eqz v1, :cond_8

    .line 850
    if-ne v4, v10, :cond_7

    .line 852
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->imageCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v9

    .line 778
    :goto_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 793
    :cond_0
    const-string v2, "direct"

    if-ne v1, v2, :cond_1

    .line 795
    const/4 v1, 0x2

    move v4, v1

    goto :goto_1

    .line 797
    :cond_1
    const-string v2, "menu"

    if-ne v1, v2, :cond_2

    .line 799
    const/4 v1, 0x4

    move v4, v1

    goto :goto_1

    .line 801
    :cond_2
    const-string v2, "zoom"

    if-ne v1, v2, :cond_3

    .line 803
    const/16 v1, 0x8

    move v4, v1

    goto :goto_1

    .line 805
    :cond_3
    const-string v2, "image"

    if-ne v1, v2, :cond_c

    move v4, v10

    .line 807
    goto :goto_1

    .line 829
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    move v1, v2

    .line 822
    :cond_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v1

    goto :goto_2

    .line 856
    :cond_7
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->activeAreas:Ljava/util/ArrayList;

    new-instance v2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;

    invoke-direct {v2, p2, v0, v4, v3}, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;-><init>(Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;Lcom/amazon/topaz/Callback;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move v0, v9

    goto :goto_6

    .line 862
    :cond_9
    return v1

    :cond_a
    move v1, v2

    goto :goto_4

    :cond_b
    move v1, v2

    goto :goto_5

    :cond_c
    move v4, v11

    goto :goto_1

    :cond_d
    move v0, v1

    goto :goto_6
.end method

.method private insertWordZoneInAnnotation(IILjava/util/ArrayList;Ljava/util/ArrayList;ILcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;",
            ">;I",
            "Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 729
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;

    invoke-direct {v0, v1, v1, v1}, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;-><init>(III)V

    move v1, p1

    .line 730
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 732
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;

    .line 733
    iget v2, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;->start:I

    if-gt v2, p5, :cond_0

    iget v2, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;->end:I

    if-ge v2, p5, :cond_1

    .line 735
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 744
    :goto_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 747
    iget v0, v2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;->start:I

    if-ge v0, p5, :cond_2

    iget v0, v2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;->end:I

    if-ge v0, p5, :cond_3

    :cond_2
    iget v0, v2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;->start:I

    if-ne v0, p5, :cond_4

    .line 752
    :cond_3
    if-ne p2, v1, :cond_5

    .line 755
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->areas:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p6}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->updateZone(Ljava/util/ArrayList;Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;)Z

    move-result v0

    .line 759
    :goto_2
    if-eqz v0, :cond_4

    .line 765
    iput-boolean v3, p6, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->isFirstLine:Z

    .line 766
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;

    iget v2, v2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;->index:I

    invoke-direct {v0, p6, v2, v1}, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;-><init>(Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;II)V

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 771
    :goto_3
    return v0

    :cond_4
    move v0, p2

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    move-object v2, v0

    goto :goto_1
.end method

.method private updateZone(Ljava/util/ArrayList;Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;",
            ">;",
            "Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 866
    .line 868
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 870
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;

    .line 871
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->lastLineY:I

    iget v1, p2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->lastLineY:I

    if-ne v0, v1, :cond_0

    move v0, v4

    .line 873
    :goto_0
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->lastWordX:I

    iget v2, p2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->lastWordX:I

    if-ne v1, v2, :cond_1

    move v1, v4

    .line 876
    :goto_1
    if-eqz v1, :cond_2

    move v0, v3

    .line 923
    :goto_2
    return v0

    :cond_0
    move v0, v3

    .line 871
    goto :goto_0

    :cond_1
    move v1, v3

    .line 873
    goto :goto_1

    .line 884
    :cond_2
    if-eqz v0, :cond_4

    iget v0, p2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->lastWordX:I

    iget v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->lastWordX:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_4

    .line 887
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->lastWordX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->lastWordX:I

    .line 888
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->isFirstLine:Z

    if-nez v0, :cond_3

    .line 890
    iget-object v0, p2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v1, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    if-ge v0, v1, :cond_3

    .line 892
    iget-object v0, p2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v1, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iput v1, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 895
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget-object v1, p2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {v0, v1}, Lcom/amazon/system/drawing/Rectangle;->add(Lcom/amazon/system/drawing/Rectangle;)V

    move v0, v3

    .line 896
    goto :goto_2

    .line 901
    :cond_4
    iget v0, p2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->lastLineY:I

    iget v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->lastLineY:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_6

    .line 904
    iget v0, p2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->lastWordX:I

    if-nez v0, :cond_5

    .line 906
    iget-object v0, p2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v1, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v1, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    sub-int/2addr v0, v1

    .line 907
    iget-object v1, p2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v2, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 908
    iget-object v0, p2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v1, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    iget v2, v2, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 909
    :cond_5
    iput-boolean v3, p2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->isFirstLine:Z

    .line 916
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v3

    .line 917
    goto :goto_2

    :cond_6
    move v0, v4

    goto :goto_2
.end method


# virtual methods
.method public computeDecorations([Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;)V
    .locals 6
    .parameter

    .prologue
    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 263
    const/4 v2, 0x0

    :goto_0
    if-eqz p1, :cond_2

    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 265
    aget-object v3, p1, v2

    .line 266
    if-eqz v3, :cond_0

    .line 267
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 269
    new-instance v4, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getBegin()I

    move-result v5

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getEnd()I

    move-result v3

    invoke-direct {v4, v5, v3, v2}, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;-><init>(III)V

    .line 270
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 274
    new-instance v4, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getBegin()I

    move-result v5

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/models/internal/CTPZAnnotation;->getEnd()I

    move-result v3

    invoke-direct {v4, v5, v3, v2}, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;-><init>(III)V

    .line 275
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 281
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->updateAreas(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 282
    return-void
.end method

.method public empty()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 171
    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->viewerPos:I

    .line 172
    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->startPosID:I

    .line 173
    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->firstWordsEndPosID:I

    .line 174
    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageEndPosID:I

    .line 175
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->imageOffset:Lcom/amazon/system/drawing/Point;

    invoke-virtual {v0, v1, v1}, Lcom/amazon/system/drawing/Point;->move(II)V

    .line 176
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->activeAreas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->highlightAreas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 178
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->noteAreas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 179
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->imageCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 180
    iput v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->marginX:I

    .line 181
    iput v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->marginY:I

    .line 182
    iput-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageLines_:Ljava/util/List;

    .line 183
    iput-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->offscreen:Lcom/amazon/system/drawing/BufferedImageExtended;

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->isValid:Z

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->documentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->clearPageElements()V

    .line 186
    return-void
.end method

.method public getActiveAreaCount()I
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->activeAreas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getAllActiveAreaPositions(Z)Ljava/util/ArrayList;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/system/drawing/Rectangle;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 595
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v8

    .line 596
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->activeAreas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 598
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->activeAreas:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;

    iget-object v4, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    move v5, v8

    .line 599
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_3

    .line 601
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move v6, v8

    .line 602
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_2

    .line 604
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->activeAreas:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;

    iget v1, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->type:I

    const/16 v7, 0x8

    if-eq v1, v7, :cond_1

    .line 606
    :cond_0
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;

    iget-object v1, v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    :cond_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    .line 599
    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 596
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 611
    :cond_4
    return-object v2
.end method

.method public getAllActiveAreas()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 576
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->activeAreas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->activeAreas:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;

    .line 579
    iget v3, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget v3, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->type:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 583
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 586
    :cond_2
    return-object v1
.end method

.method public getAllHighlightAreaPositions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationVisualData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->highlightAreas:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAreasPositions(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllImageAreaPositions()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/system/drawing/Rectangle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 651
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->imageCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->imageCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/layout/ImageCallback;

    .line 655
    new-instance v3, Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/ImageCallback;->getRect()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v4

    iget v4, v4, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v5, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->marginX:I

    add-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/ImageCallback;->getRect()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v5

    iget v5, v5, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v6, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->marginY:I

    add-int/2addr v5, v6

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/ImageCallback;->getRect()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v6

    iget v6, v6, Lcom/amazon/system/drawing/Rectangle;->width:I

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/layout/ImageCallback;->getRect()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 657
    iget v0, v3, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->imageOffset:Lcom/amazon/system/drawing/Point;

    iget v4, v4, Lcom/amazon/system/drawing/Point;->x:I

    add-int/2addr v0, v4

    iput v0, v3, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 658
    iget v0, v3, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget-object v4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->imageOffset:Lcom/amazon/system/drawing/Point;

    iget v4, v4, Lcom/amazon/system/drawing/Point;->y:I

    add-int/2addr v0, v4

    iput v0, v3, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 660
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 663
    :cond_0
    return-object v1
.end method

.method public getAllNotesAreaPositions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationVisualData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 642
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->noteAreas:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getAreasPositions(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllNotesAreas()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 629
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->noteAreas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->noteAreas:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;

    .line 632
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 634
    :cond_0
    return-object v1
.end method

.method public getAreasPositions(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationVisualData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 672
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v5

    .line 673
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 675
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;

    .line 676
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v5

    .line 677
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->areas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->areas:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 681
    :cond_0
    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationVisualData;

    iget v4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->typeIndex:I

    invoke-direct {v0, v3, v4}, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationVisualData;-><init>(Ljava/util/List;I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 683
    :cond_1
    return-object v1
.end method

.method public getDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->documentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    return-object v0
.end method

.method public getFirstActiveAreaCallback()Lcom/amazon/topaz/Callback;
    .locals 3

    .prologue
    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, firstCallback:Lcom/amazon/topaz/Callback;
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->activeAreas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 694
    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->activeAreas:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;

    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->callback:Lcom/amazon/topaz/Callback;

    .line 696
    :cond_0
    return-object v0
.end method

.method public getFullscreenArea(III)I
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "margin"

    .prologue
    .line 721
    const/16 v0, 0x8

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getActiveArea(IIII)I

    move-result v0

    return v0
.end method

.method public getLinkArea(III)I
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "margin"

    .prologue
    .line 516
    const/4 v0, 0x7

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->getActiveArea(IIII)I

    move-result v0

    return v0
.end method

.method public getNoteArea(III)I
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "margin"

    .prologue
    .line 486
    const/4 v4, -0x1

    .line 487
    .local v4, noteAreaIndex:I
    const v3, 0x7fffffff

    .line 488
    .local v3, min_distance:I
    const/4 v5, 0x0

    .local v5, noteIndex:I
    :goto_0
    iget-object v7, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->noteAreas:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 490
    iget-object v7, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->noteAreas:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;

    invoke-virtual {v7, p1, p2, p3}, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->contains(III)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 492
    iget-object v7, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->noteAreas:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;

    invoke-virtual {v7}, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->getBoundingRect()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v6

    .line 493
    .local v6, zone:Lcom/amazon/system/drawing/Rectangle;
    iget v7, v6, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v8, v6, Lcom/amazon/system/drawing/Rectangle;->width:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int v1, v7, p1

    .line 494
    .local v1, distanceX:I
    iget v7, v6, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v8, v6, Lcom/amazon/system/drawing/Rectangle;->height:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int v2, v7, p2

    .line 495
    .local v2, distanceY:I
    mul-int v7, v1, v1

    mul-int v8, v2, v2

    add-int v0, v7, v8

    .line 497
    .local v0, distance:I
    if-ge v0, v3, :cond_0

    .line 499
    move v3, v0

    .line 500
    move v4, v5

    .line 488
    .end local v0           #distance:I
    .end local v1           #distanceX:I
    .end local v2           #distanceY:I
    .end local v6           #zone:Lcom/amazon/system/drawing/Rectangle;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 504
    :cond_1
    return v4
.end method

.method public getNoteAreaCount()I
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->noteAreas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNoteMarginArea(IILcom/amazon/system/drawing/Rectangle;I)Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "noteMarginArea"
    .parameter "margin"

    .prologue
    .line 451
    const/4 v4, 0x0

    .line 452
    .local v4, noteArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;
    const/4 v3, -0x1

    .line 453
    .local v3, min_distance:I
    const/4 v5, 0x0

    .local v5, noteIndex:I
    :goto_0
    iget-object v7, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->noteAreas:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 455
    iget-object v7, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->noteAreas:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;

    iget v8, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->marginX:I

    invoke-virtual {v7, v8}, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->getMarginArea(I)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v6

    .line 456
    .local v6, zone:Lcom/amazon/system/drawing/Rectangle;
    invoke-virtual {v6, p4, p4}, Lcom/amazon/system/drawing/Rectangle;->expand(II)V

    .line 457
    invoke-virtual {v6, p1, p2}, Lcom/amazon/system/drawing/Rectangle;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 459
    iget v7, v6, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v8, v6, Lcom/amazon/system/drawing/Rectangle;->width:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int v1, v7, p1

    .line 460
    .local v1, distanceX:I
    iget v7, v6, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v8, v6, Lcom/amazon/system/drawing/Rectangle;->height:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sub-int v2, v7, p2

    .line 461
    .local v2, distanceY:I
    mul-int v7, v1, v1

    mul-int v8, v2, v2

    add-int v0, v7, v8

    .line 463
    .local v0, distance:I
    if-ge v0, v3, :cond_0

    .line 465
    move v3, v0

    .line 466
    iget-object v7, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->noteAreas:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #noteArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;
    check-cast v4, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;

    .line 467
    .restart local v4       #noteArea:Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;
    iget v7, v6, Lcom/amazon/system/drawing/Rectangle;->x:I

    iput v7, p3, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 468
    iget v7, v6, Lcom/amazon/system/drawing/Rectangle;->y:I

    iput v7, p3, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 469
    iget v7, v6, Lcom/amazon/system/drawing/Rectangle;->width:I

    iput v7, p3, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 470
    iget v7, v6, Lcom/amazon/system/drawing/Rectangle;->height:I

    iput v7, p3, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 453
    .end local v0           #distance:I
    .end local v1           #distanceX:I
    .end local v2           #distanceY:I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 474
    .end local v6           #zone:Lcom/amazon/system/drawing/Rectangle;
    :cond_1
    return-object v4
.end method

.method public getNotesOrdinatePositions()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/system/drawing/Rectangle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 704
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 705
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->noteAreas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->noteAreas:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;

    iget v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->marginX:I

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->getMarginArea(I)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 709
    :cond_0
    return-object v1
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 1246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->isValid:Z

    .line 1247
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageLines_:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 1255
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->isValid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Positions "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->startPosID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageEndPosID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateAreas(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 24
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->documentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->documentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->clearPageElements()V

    .line 301
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->highlightAreas:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->highlightAreas:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 308
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->noteAreas:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->noteAreas:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 314
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->activeAreas:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->activeAreas:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 321
    :cond_3
    const/4 v6, 0x0

    .line 324
    const/4 v5, -0x1

    .line 327
    const/4 v13, 0x0

    .line 330
    const/4 v7, -0x1

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageLines_:Ljava/util/List;

    move-object v8, v0

    if-eqz v8, :cond_8

    .line 334
    const/4 v8, 0x0

    move/from16 v20, v8

    move v9, v5

    move v8, v7

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageLines_:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_8

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageLines_:Ljava/util/List;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/topaz/Line;

    .line 338
    invoke-virtual {v5}, Lcom/amazon/topaz/Line;->getCallbacks()Ljava/util/List;

    move-result-object v7

    .line 342
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v10, 0x0

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/topaz/Callback;

    invoke-virtual {v7}, Lcom/amazon/topaz/Callback;->getLabel()Ljava/lang/String;

    move-result-object v7

    const-string v10, "Go Back"

    if-ne v7, v10, :cond_4

    .line 344
    invoke-virtual {v5}, Lcom/amazon/topaz/Line;->getPos()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v7

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->imageOffset:Lcom/amazon/system/drawing/Point;

    move-object v10, v0

    iget v11, v7, Lcom/amazon/system/drawing/Rectangle;->x:I

    iput v11, v10, Lcom/amazon/system/drawing/Point;->x:I

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->imageOffset:Lcom/amazon/system/drawing/Point;

    move-object v10, v0

    iget v7, v7, Lcom/amazon/system/drawing/Rectangle;->y:I

    iput v7, v10, Lcom/amazon/system/drawing/Point;->y:I

    .line 349
    :cond_4
    invoke-virtual {v5}, Lcom/amazon/topaz/Line;->getElements()Ljava/util/List;

    move-result-object v21

    .line 350
    const/4 v5, 0x0

    move/from16 v22, v5

    move v14, v8

    move v7, v9

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v22

    move v1, v5

    if-ge v0, v1, :cond_7

    .line 352
    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/amazon/topaz/LineElement;

    move-object/from16 v19, v0

    .line 354
    invoke-virtual/range {v19 .. v19}, Lcom/amazon/topaz/LineElement;->getPos()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v5

    .line 355
    new-instance v23, Lcom/amazon/system/drawing/Rectangle;

    iget v8, v5, Lcom/amazon/system/drawing/Rectangle;->x:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->marginX:I

    move v9, v0

    add-int/2addr v8, v9

    iget v9, v5, Lcom/amazon/system/drawing/Rectangle;->y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->marginY:I

    move v10, v0

    add-int/2addr v9, v10

    iget v10, v5, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/lit8 v10, v10, 0x2

    iget v5, v5, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/lit8 v5, v5, 0x2

    move-object/from16 v0, v23

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 356
    new-instance v11, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;

    const/4 v5, 0x0

    move-object v0, v11

    move-object/from16 v1, v23

    move/from16 v2, v20

    move/from16 v3, v22

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;-><init>(Lcom/amazon/system/drawing/Rectangle;IIZ)V

    .line 362
    invoke-virtual/range {v19 .. v19}, Lcom/amazon/topaz/LineElement;->getCallbacks()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->insertWordZoneInActiveArea(Ljava/util/List;Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;)Z

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->highlightAreas:Ljava/util/ArrayList;

    move-object v9, v0

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/topaz/LineElement;->getItemID()I

    move-result v10

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    invoke-direct/range {v5 .. v11}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->insertWordZoneInAnnotation(IILjava/util/ArrayList;Ljava/util/ArrayList;ILcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;)I

    move-result v7

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->noteAreas:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/topaz/LineElement;->getItemID()I

    move-result v17

    move-object/from16 v12, p0

    move-object/from16 v15, p2

    move-object/from16 v18, v11

    invoke-direct/range {v12 .. v18}, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->insertWordZoneInAnnotation(IILjava/util/ArrayList;Ljava/util/ArrayList;ILcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;)I

    move-result v8

    .line 382
    const/4 v9, 0x1

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->documentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    move-object v5, v0

    if-eqz v5, :cond_5

    .line 385
    const/4 v5, 0x0

    move v10, v5

    :goto_2
    invoke-virtual/range {v19 .. v19}, Lcom/amazon/topaz/LineElement;->getCallbacks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v10, v5, :cond_9

    .line 387
    invoke-virtual/range {v19 .. v19}, Lcom/amazon/topaz/LineElement;->getCallbacks()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/topaz/Callback;

    .line 389
    if-eqz v5, :cond_6

    .line 391
    invoke-virtual {v5}, Lcom/amazon/topaz/Callback;->getInfo()Lcom/amazon/topaz/Callback$Info;

    move-result-object v11

    invoke-virtual {v11}, Lcom/amazon/topaz/Callback$Info;->getType()Ljava/lang/String;

    move-result-object v11

    .line 395
    const-string v12, "image"

    if-ne v11, v12, :cond_6

    .line 397
    invoke-virtual {v5}, Lcom/amazon/topaz/Callback;->getInfo()Lcom/amazon/topaz/Callback$Info;

    move-result-object v5

    .line 398
    invoke-virtual {v5}, Lcom/amazon/topaz/Callback$Info;->getData()Ljava/util/Map;

    move-result-object v5

    .line 399
    const-string v11, "imageId"

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 401
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v11, :cond_6

    .line 403
    const/4 v9, 0x2

    .line 404
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 405
    move-object v0, v10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->documentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    move-object v11, v0

    new-instance v12, Lcom/amazon/kcp/reader/models/internal/ImagePageElement;

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/topaz/LineElement;->getItemID()I

    move-result v14

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v12, v14, v10, v5}, Lcom/amazon/kcp/reader/models/internal/ImagePageElement;-><init>(ILjava/util/Vector;I)V

    invoke-virtual {v11, v12}, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->addPageElement(Lcom/amazon/kcp/reader/models/IPageElement;)Z

    move v5, v9

    .line 413
    :goto_3
    const/4 v9, 0x2

    if-eq v5, v9, :cond_5

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/topaz/LineElement;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 416
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 417
    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 418
    new-instance v9, Lcom/amazon/kcp/reader/models/internal/WordPageElement;

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/topaz/LineElement;->getItemID()I

    move-result v10

    invoke-virtual/range {v19 .. v19}, Lcom/amazon/topaz/LineElement;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v5, v11}, Lcom/amazon/kcp/reader/models/internal/WordPageElement;-><init>(ILjava/util/Vector;Ljava/lang/String;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->documentPage:Lcom/amazon/kcp/reader/models/internal/DocumentPage;

    move-object v5, v0

    invoke-virtual {v5, v9}, Lcom/amazon/kcp/reader/models/internal/DocumentPage;->addPageElement(Lcom/amazon/kcp/reader/models/IPageElement;)Z

    .line 350
    :cond_5
    add-int/lit8 v5, v22, 0x1

    move/from16 v22, v5

    move v14, v8

    goto/16 :goto_1

    .line 385
    :cond_6
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    goto/16 :goto_2

    .line 427
    :cond_7
    add-int/lit8 v5, v20, 0x1

    move/from16 v20, v5

    move v8, v14

    move v9, v7

    goto/16 :goto_0

    .line 439
    :cond_8
    return-void

    :cond_9
    move v5, v9

    goto :goto_3
.end method

.method public updatePositions(Ljava/util/List;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;II)V"
        }
    .end annotation

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x0

    .line 211
    iput p2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->marginX:I

    .line 212
    iput p3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->marginY:I

    .line 213
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageLines_:Ljava/util/List;

    .line 215
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->viewerPos:I

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->startPosID:I

    .line 216
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->viewerPos:I

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->firstWordsEndPosID:I

    .line 217
    iget v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->viewerPos:I

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageEndPosID:I

    .line 227
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageLines_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageLines_:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/Line;

    .line 231
    invoke-virtual {v0}, Lcom/amazon/topaz/Line;->getStartID()I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->startPosID:I

    .line 232
    invoke-virtual {v0}, Lcom/amazon/topaz/Line;->getEndID()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->firstWordsEndPosID:I

    .line 234
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageLines_:Ljava/util/List;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageLines_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/Line;

    invoke-virtual {v0}, Lcom/amazon/topaz/Line;->getEndID()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageEndPosID:I

    move v1, v5

    move v2, v5

    .line 237
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageLines_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-ge v2, v6, :cond_1

    .line 239
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->pageLines_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/Line;

    .line 240
    invoke-virtual {v0}, Lcom/amazon/topaz/Line;->getElements()Ljava/util/List;

    move-result-object v3

    move v0, v2

    move v2, v5

    .line 241
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    if-ge v0, v6, :cond_0

    .line 243
    add-int/lit8 v4, v0, 0x1

    .line 244
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/LineElement;

    invoke-virtual {v0}, Lcom/amazon/topaz/LineElement;->getItemID()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage;->firstWordsEndPosID:I

    .line 241
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto :goto_1

    .line 237
    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    .line 248
    :cond_1
    return-void
.end method
