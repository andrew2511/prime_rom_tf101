.class public Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;
.super Ljava/lang/Object;
.source "UiViewerThumbnailPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageItem"
.end annotation


# instance fields
.field public m_bMoved:Z

.field public m_bSelected:Z

.field public m_nIndex:I

.field public m_oThumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(ILandroid/graphics/Bitmap;)V
    .locals 1
    .parameter "a_nIndex"
    .parameter "a_oThumbnail"

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;->m_bMoved:Z

    .line 304
    iput p1, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;->m_nIndex:I

    .line 305
    iput-object p2, p0, Lcom/infraware/uxcontrol/uicontrol/common/UiViewerThumbnailPanel$PageItem;->m_oThumbnail:Landroid/graphics/Bitmap;

    .line 306
    return-void
.end method
