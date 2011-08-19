.class public Lcom/infraware/common/UxThumbNailCreator;
.super Ljava/lang/Object;
.source "UxThumbNailCreator.java"

# interfaces
.implements Lcom/infraware/common/UDM$USER_DEFINE_MESSAGE;
.implements Lcom/infraware/evengine/E$EV_DOCEXTENSION_TYPE;


# static fields
.field private static final LOG_CAT:Ljava/lang/String; = "UxThumbNailCreator"


# instance fields
.field private m_aItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_nDocType:I

.field private m_nDrawnThoumbNailIndex:I

.field private m_nTotalPage:I

.field private m_nUpdateCount:I

.field m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

.field private m_oHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/os/Handler;ILcom/infraware/evengine/ICoEngineInterface;II)V
    .locals 3
    .parameter
    .parameter "a_oHandler"
    .parameter "a_nUpdateCount"
    .parameter "a_oInterface"
    .parameter "a_nTotalPage"
    .parameter "a_nDocType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;",
            "Landroid/os/Handler;",
            "I",
            "Lcom/infraware/evengine/ICoEngineInterface;",
            "II)V"
        }
    .end annotation

    .prologue
    .local p1, a_aTItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/infraware/common/UxThumbNailCreator;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    .line 21
    iput v1, p0, Lcom/infraware/common/UxThumbNailCreator;->m_nDrawnThoumbNailIndex:I

    .line 22
    iput-object v0, p0, Lcom/infraware/common/UxThumbNailCreator;->m_aItem:Ljava/util/ArrayList;

    .line 23
    iput-object v0, p0, Lcom/infraware/common/UxThumbNailCreator;->m_oHandler:Landroid/os/Handler;

    .line 24
    iput v2, p0, Lcom/infraware/common/UxThumbNailCreator;->m_nUpdateCount:I

    .line 25
    iput v1, p0, Lcom/infraware/common/UxThumbNailCreator;->m_nTotalPage:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/common/UxThumbNailCreator;->m_nDocType:I

    .line 30
    iput-object p1, p0, Lcom/infraware/common/UxThumbNailCreator;->m_aItem:Ljava/util/ArrayList;

    .line 31
    iput-object p2, p0, Lcom/infraware/common/UxThumbNailCreator;->m_oHandler:Landroid/os/Handler;

    .line 32
    iput-object p4, p0, Lcom/infraware/common/UxThumbNailCreator;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    .line 33
    iput p5, p0, Lcom/infraware/common/UxThumbNailCreator;->m_nTotalPage:I

    .line 34
    if-gtz p3, :cond_0

    iput v2, p0, Lcom/infraware/common/UxThumbNailCreator;->m_nUpdateCount:I

    .line 36
    :goto_0
    iput p6, p0, Lcom/infraware/common/UxThumbNailCreator;->m_nDocType:I

    .line 37
    return-void

    .line 35
    :cond_0
    iput p3, p0, Lcom/infraware/common/UxThumbNailCreator;->m_nUpdateCount:I

    goto :goto_0
.end method


# virtual methods
.method public addItem(Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "a_oBitmap"
    .parameter "a_nIndex"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/infraware/common/UxThumbNailCreator;->m_aItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;

    .line 51
    .local v0, oItem:Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;
    iput-object p1, v0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;->m_oThumbnail:Landroid/graphics/Bitmap;

    .line 52
    iget-object v1, p0, Lcom/infraware/common/UxThumbNailCreator;->m_aItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v1, p0, Lcom/infraware/common/UxThumbNailCreator;->m_oHandler:Landroid/os/Handler;

    const/16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 54
    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lcom/infraware/common/UxThumbNailCreator;->m_nDrawnThoumbNailIndex:I

    .line 55
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/16 v3, 0x76

    const/16 v4, 0x53

    const/4 v5, 0x1

    .line 41
    iput v5, p0, Lcom/infraware/common/UxThumbNailCreator;->m_nDrawnThoumbNailIndex:I

    .line 42
    iget v0, p0, Lcom/infraware/common/UxThumbNailCreator;->m_nDocType:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcom/infraware/common/UxThumbNailCreator;->m_nDocType:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/infraware/common/UxThumbNailCreator;->m_nDocType:I

    const/16 v1, 0x27

    if-ne v0, v1, :cond_1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/infraware/common/UxThumbNailCreator;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    iget v1, p0, Lcom/infraware/common/UxThumbNailCreator;->m_nTotalPage:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/infraware/evengine/ICoEngineInterface;->ISlideObjStart(III)V

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/infraware/common/UxThumbNailCreator;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    const/4 v1, 0x4

    iget v2, p0, Lcom/infraware/common/UxThumbNailCreator;->m_nTotalPage:I

    invoke-virtual/range {v0 .. v5}, Lcom/infraware/evengine/ICoEngineInterface;->IThumbnail(IIIII)V

    goto :goto_0
.end method
