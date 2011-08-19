.class public final Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;
.super Ljava/lang/Object;
.source "CTPZPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/models/internal/CTPZPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "STopazActiveArea"
.end annotation


# instance fields
.field public callback:Lcom/amazon/topaz/Callback;

.field public positions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<*>;>;"
        }
    .end annotation
.end field

.field public type:I

.field public typeIndex:I


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;Lcom/amazon/topaz/Callback;II)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    .line 1156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->callback:Lcom/amazon/topaz/Callback;

    .line 1170
    const/4 v0, -0x1

    iput v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->typeIndex:I

    .line 1180
    iput-object p2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->callback:Lcom/amazon/topaz/Callback;

    .line 1181
    iput p3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->type:I

    .line 1182
    iput p4, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->typeIndex:I

    .line 1183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    .line 1184
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->addNewArea(Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;)V

    .line 1186
    return-void
.end method


# virtual methods
.method public addNewArea(Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1194
    iput-boolean v2, p1, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->isFirstLine:Z

    .line 1195
    iget-object v0, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    new-instance v0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;-><init>(Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    return-void
.end method

.method public contains(III)Z
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "margin"

    .prologue
    .line 1206
    const/4 v0, 0x0

    .local v0, linkIndex:I
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1208
    const/4 v1, 0x0

    .local v1, positionIndex:I
    :goto_1
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1210
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;

    iget-object v2, v3, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    .line 1211
    .local v2, r:Lcom/amazon/system/drawing/Rectangle;
    invoke-virtual {v2, p3, p3}, Lcom/amazon/system/drawing/Rectangle;->expand(II)V

    .line 1213
    invoke-virtual {v2, p1, p2}, Lcom/amazon/system/drawing/Rectangle;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1215
    const/4 v3, 0x1

    .line 1219
    .end local v1           #positionIndex:I
    .end local v2           #r:Lcom/amazon/system/drawing/Rectangle;
    :goto_2
    return v3

    .line 1208
    .restart local v1       #positionIndex:I
    .restart local v2       #r:Lcom/amazon/system/drawing/Rectangle;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1206
    .end local v2           #r:Lcom/amazon/system/drawing/Rectangle;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1219
    .end local v1           #positionIndex:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public getBoundingRect()Lcom/amazon/system/drawing/Rectangle;
    .locals 4

    .prologue
    .line 1227
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0}, Lcom/amazon/system/drawing/Rectangle;-><init>()V

    .line 1228
    .local v0, currentArea:Lcom/amazon/system/drawing/Rectangle;
    const/4 v1, 0x0

    .local v1, linkIndex:I
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1230
    const/4 v2, 0x0

    .local v2, positionIndex:I
    :goto_1
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1232
    iget-object v3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazActiveArea;->positions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;

    iget-object v3, v3, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazItemPosition;->pos:Lcom/amazon/system/drawing/Rectangle;

    invoke-virtual {v0, v3}, Lcom/amazon/system/drawing/Rectangle;->add(Lcom/amazon/system/drawing/Rectangle;)V

    .line 1230
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1228
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1235
    .end local v2           #positionIndex:I
    :cond_1
    return-object v0
.end method
