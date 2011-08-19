.class public Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;
.super Ljava/lang/Object;
.source "CTPZObjectSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectedPositions"
.end annotation


# instance fields
.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/system/drawing/Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field public selectionType:I

.field final synthetic this$0:Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;

.field public typeIndex:I


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;->this$0:Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;->list:Ljava/util/ArrayList;

    .line 45
    sget v0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector;->SELECTION_TYPE_UNKNOWN:I

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;->selectionType:I

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZObjectSelector$SelectedPositions;->typeIndex:I

    .line 47
    return-void
.end method
