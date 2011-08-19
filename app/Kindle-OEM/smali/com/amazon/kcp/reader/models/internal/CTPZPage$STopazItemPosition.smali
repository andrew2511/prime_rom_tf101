.class public final Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;
.super Ljava/lang/Object;
.source "CTPZPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/models/internal/CTPZPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "STopazItemPosition"
.end annotation


# instance fields
.field public isFirstLine:Z

.field public lastLineY:I

.field public lastWordX:I

.field public pos:Lcom/amazon/system/drawing/Rectangle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1023
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0}, Lcom/amazon/system/drawing/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    .line 1024
    iput v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->lastLineY:I

    .line 1025
    iput v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->lastWordX:I

    .line 1026
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->isFirstLine:Z

    .line 1027
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    iget-object v1, p1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0, v1}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    .line 1051
    iget v0, p1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->lastLineY:I

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->lastLineY:I

    .line 1052
    iget v0, p1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->lastWordX:I

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->lastWordX:I

    .line 1053
    iget-boolean v0, p1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->isFirstLine:Z

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->isFirstLine:Z

    .line 1054
    return-void
.end method

.method public constructor <init>(Lcom/amazon/system/drawing/Rectangle;IIZ)V
    .locals 1
    .parameter "pos"
    .parameter "lastLineY"
    .parameter "lastWordX"
    .parameter "isFirstLine"

    .prologue
    .line 1037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1038
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0, p1}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    .line 1039
    iput p2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->lastLineY:I

    .line 1040
    iput p3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->lastWordX:I

    .line 1041
    iput-boolean p4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->isFirstLine:Z

    .line 1042
    return-void
.end method
