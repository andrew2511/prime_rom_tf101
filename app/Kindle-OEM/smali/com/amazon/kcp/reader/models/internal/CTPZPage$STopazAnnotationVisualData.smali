.class public final Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationVisualData;
.super Ljava/lang/Object;
.source "CTPZPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/models/internal/CTPZPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "STopazAnnotationVisualData"
.end annotation


# instance fields
.field public final rectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/system/drawing/Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field public final typeIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter "typeIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/system/drawing/Rectangle;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 956
    .local p1, rectangles:Ljava/util/List;,"Ljava/util/List<Lcom/amazon/system/drawing/Rectangle;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationVisualData;->rectangles:Ljava/util/List;

    .line 958
    iput p2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationVisualData;->typeIndex:I

    .line 959
    return-void
.end method
