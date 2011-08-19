.class public final Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;
.super Ljava/lang/Object;
.source "CTPZPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/models/internal/CTPZPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "STopazAnnotationArea"
.end annotation


# instance fields
.field public areas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;",
            ">;"
        }
    .end annotation
.end field

.field public index:I

.field public typeIndex:I


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1065
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->index:I

    .line 1073
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->typeIndex:I

    .line 1079
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->areas:Ljava/util/ArrayList;

    .line 1089
    iput p2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->index:I

    .line 1090
    iput p3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->typeIndex:I

    .line 1091
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->areas:Ljava/util/ArrayList;

    new-instance v1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;

    invoke-direct {v1, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;-><init>(Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1092
    return-void
.end method


# virtual methods
.method public contains(III)Z
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "margin"

    .prologue
    .line 1102
    const/4 v0, 0x0

    .local v0, areaIndex:I
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->areas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1104
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->areas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;

    iget-object v1, v2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    .line 1105
    .local v1, r:Lcom/amazon/system/drawing/Rectangle;
    invoke-virtual {v1, p3, p3}, Lcom/amazon/system/drawing/Rectangle;->expand(II)V

    .line 1107
    invoke-virtual {v1, p1, p2}, Lcom/amazon/system/drawing/Rectangle;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1109
    const/4 v2, 0x1

    .line 1112
    .end local v1           #r:Lcom/amazon/system/drawing/Rectangle;
    :goto_1
    return v2

    .line 1102
    .restart local v1       #r:Lcom/amazon/system/drawing/Rectangle;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1112
    .end local v1           #r:Lcom/amazon/system/drawing/Rectangle;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getBoundingRect()Lcom/amazon/system/drawing/Rectangle;
    .locals 3

    .prologue
    .line 1120
    new-instance v1, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v1}, Lcom/amazon/system/drawing/Rectangle;-><init>()V

    .line 1121
    .local v1, currentNote:Lcom/amazon/system/drawing/Rectangle;
    const/4 v0, 0x0

    .local v0, areaIndex:I
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->areas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1123
    iget-object v2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->areas:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;

    iget-object v2, v2, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {v1, v2}, Lcom/amazon/system/drawing/Rectangle;->add(Lcom/amazon/system/drawing/Rectangle;)V

    .line 1121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1125
    :cond_0
    return-object v1
.end method

.method public getMarginArea(I)Lcom/amazon/system/drawing/Rectangle;
    .locals 5
    .parameter "width"

    .prologue
    .line 1134
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationArea;->getBoundingRect()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    .line 1135
    .local v0, currentNote:Lcom/amazon/system/drawing/Rectangle;
    new-instance v1, Lcom/amazon/system/drawing/Rectangle;

    const/4 v2, 0x0

    iget v3, v0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v4, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    return-object v1
.end method
