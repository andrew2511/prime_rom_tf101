.class public Lcom/amazon/topaz/Viewer;
.super Ljava/lang/Object;
.source "Viewer.java"


# static fields
.field private static final POPUP_MARGIN:I = 0xa

.field private static imageFactory:Lcom/amazon/system/drawing/ImageFactoryExtended;


# instance fields
.field private final book_:Lcom/amazon/topaz/TPZBook;

.field private fmt_:I

.field private fsLines_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/Line;",
            ">;"
        }
    .end annotation
.end field

.field private fullscreen_:Lcom/amazon/topaz/internal/drawing/WritableImage;

.field private mainView:Lcom/amazon/topaz/View;

.field private mainViewLocation:Lcom/amazon/topaz/View$Location;

.field private marginL_:I

.field private marginR_:I

.field private navStack_:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/amazon/topaz/internal/Anchor;",
            ">;"
        }
    .end annotation
.end field

.field private noteZoom_:I

.field private popupItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation
.end field

.field private popupView:Lcom/amazon/topaz/View;

.field private popupViewLocation:Lcom/amazon/topaz/View$Location;

.field private renderer:Lcom/amazon/topaz/Renderer;

.field private session_:Lcom/amazon/topaz/internal/Session;

.field private styleSheet_:Lcom/amazon/topaz/styles/StyleSheet;

.field private win_:Lcom/amazon/system/drawing/Rectangle;

.field private zoom_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/amazon/topaz/Viewer;->imageFactory:Lcom/amazon/system/drawing/ImageFactoryExtended;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/TPZBook;)V
    .locals 1
    .parameter "b"

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/amazon/topaz/Viewer;-><init>(Lcom/amazon/topaz/TPZBook;I)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lcom/amazon/topaz/TPZBook;I)V
    .locals 2
    .parameter "b"
    .parameter "format"

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    if-nez p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 133
    :cond_0
    new-instance v0, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v0}, Lcom/amazon/system/drawing/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    .line 134
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/Viewer;->navStack_:Ljava/util/LinkedList;

    .line 135
    sget-object v0, Lcom/amazon/topaz/styles/StyleSheet;->EMPTY:Lcom/amazon/topaz/styles/StyleSheet;

    iput-object v0, p0, Lcom/amazon/topaz/Viewer;->styleSheet_:Lcom/amazon/topaz/styles/StyleSheet;

    .line 136
    new-instance v0, Lcom/amazon/topaz/internal/Session$Builder;

    invoke-direct {v0}, Lcom/amazon/topaz/internal/Session$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/Session$Builder;->build()Lcom/amazon/topaz/internal/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/Viewer;->fsLines_:Ljava/util/List;

    .line 139
    iput-object p1, p0, Lcom/amazon/topaz/Viewer;->book_:Lcom/amazon/topaz/TPZBook;

    .line 140
    iput p2, p0, Lcom/amazon/topaz/Viewer;->fmt_:I

    .line 141
    const/16 v0, 0x64

    iput v0, p0, Lcom/amazon/topaz/Viewer;->zoom_:I

    .line 142
    iput v1, p0, Lcom/amazon/topaz/Viewer;->marginL_:I

    .line 143
    iput v1, p0, Lcom/amazon/topaz/Viewer;->marginR_:I

    .line 144
    return-void
.end method

.method private addPopupView(Lcom/amazon/topaz/View;)V
    .locals 1
    .parameter "popup"

    .prologue
    .line 892
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->initializeViews()V

    .line 893
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->popupView:Lcom/amazon/topaz/View;

    if-eqz v0, :cond_0

    .line 895
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 897
    :cond_0
    iput-object p1, p0, Lcom/amazon/topaz/Viewer;->popupView:Lcom/amazon/topaz/View;

    .line 898
    return-void
.end method

.method private calculatePopupZoom()I
    .locals 1

    .prologue
    .line 823
    iget v0, p0, Lcom/amazon/topaz/Viewer;->noteZoom_:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/topaz/Viewer;->noteZoom_:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/amazon/topaz/Viewer;->zoom_:I

    goto :goto_0
.end method

.method private closeFullscreen()V
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->fullscreen_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-nez v0, :cond_0

    .line 916
    :goto_0
    return-void

    .line 915
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/Viewer;->fullscreen_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    goto :goto_0
.end method

.method private closePopup()V
    .locals 1

    .prologue
    .line 435
    :goto_0
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->hasPopupView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->removePopupView()V

    goto :goto_0

    .line 439
    :cond_0
    return-void
.end method

.method public static getImageFactory()Lcom/amazon/system/drawing/ImageFactoryExtended;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/amazon/topaz/Viewer;->imageFactory:Lcom/amazon/system/drawing/ImageFactoryExtended;

    return-object v0
.end method

.method private getMainView()Lcom/amazon/topaz/View;
    .locals 1

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->initializeViews()V

    .line 869
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->mainView:Lcom/amazon/topaz/View;

    return-object v0
.end method

.method private getTopView()Lcom/amazon/topaz/View;
    .locals 1

    .prologue
    .line 874
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->initializeViews()V

    .line 875
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->popupView:Lcom/amazon/topaz/View;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->popupView:Lcom/amazon/topaz/View;

    .line 881
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->mainView:Lcom/amazon/topaz/View;

    goto :goto_0
.end method

.method private hasPopupView()Z
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->popupView:Lcom/amazon/topaz/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeViews()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v5, 0x1

    const/16 v13, 0xa

    const/4 v1, 0x0

    .line 828
    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->renderer:Lcom/amazon/topaz/Renderer;

    if-nez v2, :cond_0

    .line 830
    new-instance v2, Lcom/amazon/topaz/Renderer;

    iget-object v3, p0, Lcom/amazon/topaz/Viewer;->book_:Lcom/amazon/topaz/TPZBook;

    iget-object v4, p0, Lcom/amazon/topaz/Viewer;->styleSheet_:Lcom/amazon/topaz/styles/StyleSheet;

    iget v6, p0, Lcom/amazon/topaz/Viewer;->fmt_:I

    invoke-direct {v2, v3, v4, v6}, Lcom/amazon/topaz/Renderer;-><init>(Lcom/amazon/topaz/TPZBook;Lcom/amazon/topaz/styles/StyleSheet;I)V

    iput-object v2, p0, Lcom/amazon/topaz/Viewer;->renderer:Lcom/amazon/topaz/Renderer;

    .line 833
    :cond_0
    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->mainView:Lcom/amazon/topaz/View;

    if-nez v2, :cond_1

    .line 835
    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->renderer:Lcom/amazon/topaz/Renderer;

    iget-object v3, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    iget v4, p0, Lcom/amazon/topaz/Viewer;->zoom_:I

    iget v6, p0, Lcom/amazon/topaz/Viewer;->marginL_:I

    iget v7, p0, Lcom/amazon/topaz/Viewer;->marginR_:I

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/amazon/topaz/Renderer;->createRenderContext(Lcom/amazon/topaz/internal/Session;III)Lcom/amazon/topaz/RenderContext;

    move-result-object v0

    .line 837
    .local v0, context:Lcom/amazon/topaz/RenderContext;
    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->mainViewLocation:Lcom/amazon/topaz/View$Location;

    if-nez v2, :cond_3

    move v2, v1

    move v3, v1

    move v4, v1

    .line 839
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/topaz/RenderContext;->createView(IIIIZ)Lcom/amazon/topaz/View;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/topaz/Viewer;->mainView:Lcom/amazon/topaz/View;

    .line 848
    .end local v0           #context:Lcom/amazon/topaz/RenderContext;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->popupView:Lcom/amazon/topaz/View;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->popupItems:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 850
    iget-object v6, p0, Lcom/amazon/topaz/Viewer;->renderer:Lcom/amazon/topaz/Renderer;

    iget-object v7, p0, Lcom/amazon/topaz/Viewer;->popupItems:Ljava/util/List;

    iget-object v8, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->calculatePopupZoom()I

    move-result v9

    move v10, v13

    move v11, v13

    invoke-virtual/range {v6 .. v11}, Lcom/amazon/topaz/Renderer;->createPopupRenderContext(Ljava/util/List;Lcom/amazon/topaz/internal/Session;III)Lcom/amazon/topaz/RenderContext;

    move-result-object v0

    .line 852
    .restart local v0       #context:Lcom/amazon/topaz/RenderContext;
    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->popupViewLocation:Lcom/amazon/topaz/View$Location;

    if-nez v2, :cond_4

    .line 854
    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->popupItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amazon/topaz/internal/book/Container;

    .line 855
    .local v12, firstContainer:Lcom/amazon/topaz/internal/book/Container;
    invoke-virtual {v12}, Lcom/amazon/topaz/internal/book/Container;->pageNum()I

    move-result v3

    invoke-virtual {v12}, Lcom/amazon/topaz/internal/book/Container;->firstID()I

    move-result v4

    move v1, v13

    move v2, v13

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/topaz/RenderContext;->createView(IIIIZ)Lcom/amazon/topaz/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/topaz/Viewer;->popupView:Lcom/amazon/topaz/View;

    .line 863
    .end local v0           #context:Lcom/amazon/topaz/RenderContext;
    .end local v12           #firstContainer:Lcom/amazon/topaz/internal/book/Container;
    :cond_2
    :goto_1
    return-void

    .line 843
    .restart local v0       #context:Lcom/amazon/topaz/RenderContext;
    :cond_3
    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->mainViewLocation:Lcom/amazon/topaz/View$Location;

    iget v9, v2, Lcom/amazon/topaz/View$Location;->pageNum:I

    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->mainViewLocation:Lcom/amazon/topaz/View$Location;

    iget v10, v2, Lcom/amazon/topaz/View$Location;->location:I

    move-object v6, v0

    move v7, v1

    move v8, v1

    move v11, v1

    invoke-virtual/range {v6 .. v11}, Lcom/amazon/topaz/RenderContext;->createView(IIIIZ)Lcom/amazon/topaz/View;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/topaz/Viewer;->mainView:Lcom/amazon/topaz/View;

    .line 844
    iput-object v14, p0, Lcom/amazon/topaz/Viewer;->mainViewLocation:Lcom/amazon/topaz/View$Location;

    goto :goto_0

    .line 859
    :cond_4
    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->popupViewLocation:Lcom/amazon/topaz/View$Location;

    iget v5, v2, Lcom/amazon/topaz/View$Location;->pageNum:I

    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->popupViewLocation:Lcom/amazon/topaz/View$Location;

    iget v6, v2, Lcom/amazon/topaz/View$Location;->location:I

    move-object v2, v0

    move v3, v13

    move v4, v13

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/topaz/RenderContext;->createView(IIIIZ)Lcom/amazon/topaz/View;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/topaz/Viewer;->popupView:Lcom/amazon/topaz/View;

    .line 860
    iput-object v14, p0, Lcom/amazon/topaz/Viewer;->popupViewLocation:Lcom/amazon/topaz/View$Location;

    goto :goto_1
.end method

.method private popLocation()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 764
    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->navStack_:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    .line 774
    :goto_0
    return v2

    .line 767
    :cond_0
    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->navStack_:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/Anchor;

    .line 769
    .local v0, pos:Lcom/amazon/topaz/internal/Anchor;
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->closePopup()V

    .line 771
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->getTopView()Lcom/amazon/topaz/View;

    move-result-object v1

    .line 772
    .local v1, rootView:Lcom/amazon/topaz/View;
    iget v2, v0, Lcom/amazon/topaz/internal/Anchor;->page:I

    iget v3, v0, Lcom/amazon/topaz/internal/Anchor;->id:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/topaz/View;->setLocation(IIZ)V

    .line 774
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private removePopupView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 902
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->hasPopupView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    iput-object v1, p0, Lcom/amazon/topaz/Viewer;->popupView:Lcom/amazon/topaz/View;

    .line 905
    iput-object v1, p0, Lcom/amazon/topaz/Viewer;->popupItems:Ljava/util/List;

    .line 906
    iput-object v1, p0, Lcom/amazon/topaz/Viewer;->popupViewLocation:Lcom/amazon/topaz/View$Location;

    .line 908
    :cond_0
    return-void
.end method

.method public static setImageFactory(Lcom/amazon/system/drawing/ImageFactoryExtended;)V
    .locals 0
    .parameter "tpzImageFactory"

    .prologue
    .line 158
    sput-object p0, Lcom/amazon/topaz/Viewer;->imageFactory:Lcom/amazon/system/drawing/ImageFactoryExtended;

    .line 159
    return-void
.end method

.method private setPos(Lcom/amazon/topaz/internal/Anchor;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/EndOfFileException;,
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 644
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->fullscreen_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-eqz v0, :cond_0

    .line 645
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->closeFullscreen()V

    .line 648
    :cond_0
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->closePopup()V

    .line 650
    iget v0, p1, Lcom/amazon/topaz/internal/Anchor;->page:I

    if-ge v0, v4, :cond_3

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TOPAZ SETPOS: Page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/amazon/topaz/internal/Anchor;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mapped to 1."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    new-instance v0, Lcom/amazon/topaz/internal/Anchor;

    iget v1, p1, Lcom/amazon/topaz/internal/Anchor;->id:I

    invoke-direct {v0, v4, v1}, Lcom/amazon/topaz/internal/Anchor;-><init>(II)V

    .line 655
    :goto_0
    iget v1, v0, Lcom/amazon/topaz/internal/Anchor;->page:I

    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->book_:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v2}, Lcom/amazon/topaz/TPZBook;->lastPage()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TOPAZ SETPOS: Page "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/amazon/topaz/internal/Anchor;->page:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mapped to last in book."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    new-instance v1, Lcom/amazon/topaz/internal/Anchor;

    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->book_:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v2}, Lcom/amazon/topaz/TPZBook;->lastPage()I

    move-result v2

    iget v0, v0, Lcom/amazon/topaz/internal/Anchor;->id:I

    invoke-direct {v1, v2, v0}, Lcom/amazon/topaz/internal/Anchor;-><init>(II)V

    move-object v0, v1

    .line 660
    :cond_1
    iget v1, v0, Lcom/amazon/topaz/internal/Anchor;->id:I

    if-nez v1, :cond_2

    .line 662
    new-instance v1, Lcom/amazon/topaz/internal/Anchor;

    iget v2, v0, Lcom/amazon/topaz/internal/Anchor;->page:I

    iget-object v3, p0, Lcom/amazon/topaz/Viewer;->book_:Lcom/amazon/topaz/TPZBook;

    iget v0, v0, Lcom/amazon/topaz/internal/Anchor;->page:I

    invoke-virtual {v3, v0}, Lcom/amazon/topaz/TPZBook;->firstID(I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/amazon/topaz/internal/Anchor;-><init>(II)V

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TOPAZ SETPOS: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/amazon/topaz/internal/Anchor;->page:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":0 -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/amazon/topaz/internal/Anchor;->page:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/amazon/topaz/internal/Anchor;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 666
    :cond_2
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->getTopView()Lcom/amazon/topaz/View;

    move-result-object v1

    .line 667
    iget v2, v0, Lcom/amazon/topaz/internal/Anchor;->page:I

    iget v0, v0, Lcom/amazon/topaz/internal/Anchor;->id:I

    invoke-virtual {v1, v2, v0, v4}, Lcom/amazon/topaz/View;->setLocation(IIZ)V

    .line 668
    return-void

    :cond_3
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 789
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->mainView:Lcom/amazon/topaz/View;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->mainView:Lcom/amazon/topaz/View;

    invoke-virtual {v0}, Lcom/amazon/topaz/View;->createLocation()Lcom/amazon/topaz/View$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/Viewer;->mainViewLocation:Lcom/amazon/topaz/View$Location;

    .line 792
    iput-object v1, p0, Lcom/amazon/topaz/Viewer;->mainView:Lcom/amazon/topaz/View;

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->popupView:Lcom/amazon/topaz/View;

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->popupView:Lcom/amazon/topaz/View;

    invoke-virtual {v0}, Lcom/amazon/topaz/View;->createLocation()Lcom/amazon/topaz/View$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/topaz/Viewer;->popupViewLocation:Lcom/amazon/topaz/View$Location;

    .line 798
    iput-object v1, p0, Lcom/amazon/topaz/Viewer;->popupView:Lcom/amazon/topaz/View;

    .line 800
    :cond_1
    return-void
.end method

.method public createScreenBuffer()Lcom/amazon/system/drawing/BufferedImageExtended;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 181
    sget-object v2, Lcom/amazon/topaz/Viewer;->imageFactory:Lcom/amazon/system/drawing/ImageFactoryExtended;

    iget-object v3, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iget v3, v3, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget-object v4, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iget v4, v4, Lcom/amazon/system/drawing/Rectangle;->height:I

    iget v5, p0, Lcom/amazon/topaz/Viewer;->fmt_:I

    invoke-interface {v2, v3, v4, v5}, Lcom/amazon/system/drawing/ImageFactoryExtended;->getBufferedImage(III)Lcom/amazon/system/drawing/BufferedImageExtended;

    move-result-object v0

    .line 182
    .local v0, buffer:Lcom/amazon/system/drawing/BufferedImageExtended;
    invoke-interface {v0}, Lcom/amazon/system/drawing/BufferedImageExtended;->createGraphics()Lcom/amazon/system/drawing/GraphicsExtended;

    move-result-object v1

    .line 183
    .local v1, g:Lcom/amazon/system/drawing/GraphicsExtended;
    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    iget-object v2, v2, Lcom/amazon/topaz/internal/Session;->backgroundColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v2}, Lcom/amazon/system/drawing/Color;->getRGB()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/amazon/system/drawing/GraphicsExtended;->setBackground(I)V

    .line 184
    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iget v2, v2, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget-object v3, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iget v3, v3, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-interface {v1, v6, v6, v2, v3}, Lcom/amazon/system/drawing/GraphicsExtended;->clearRect(IIII)V

    .line 185
    return-object v0
.end method

.method public fullScreen(Lcom/amazon/topaz/internal/book/Container;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/topaz/Viewer;->fullScreen(Lcom/amazon/topaz/internal/book/Container;Z)V

    .line 336
    return-void
.end method

.method public fullScreen(Lcom/amazon/topaz/internal/book/Container;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 345
    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->getBounds()Lcom/amazon/system/drawing/Rectangle;

    move-result-object v0

    .line 348
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iget v1, v1, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iget v2, v2, Lcom/amazon/system/drawing/Rectangle;->height:I

    if-le v1, v2, :cond_0

    iget v1, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v2, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    if-lt v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iget v1, v1, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iget v2, v2, Lcom/amazon/system/drawing/Rectangle;->height:I

    if-ge v1, v2, :cond_3

    iget v1, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v2, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    if-le v1, v2, :cond_3

    :cond_1
    const/4 v1, 0x1

    .line 354
    :goto_0
    if-eqz v1, :cond_4

    .line 355
    new-instance v2, Lcom/amazon/system/drawing/Rectangle;

    iget-object v3, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iget v3, v3, Lcom/amazon/system/drawing/Rectangle;->height:I

    sub-int/2addr v3, v6

    iget-object v4, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iget v4, v4, Lcom/amazon/system/drawing/Rectangle;->width:I

    sub-int/2addr v4, v6

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 361
    :goto_1
    new-instance v3, Lcom/amazon/system/drawing/Rectangle;

    iget v4, v2, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v6, v2, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v7, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    mul-int/2addr v6, v7

    iget v7, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    div-int/2addr v6, v7

    invoke-direct {v3, v5, v5, v4, v6}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    .line 363
    iget v4, v3, Lcom/amazon/system/drawing/Rectangle;->height:I

    iget v6, v2, Lcom/amazon/system/drawing/Rectangle;->height:I

    if-le v4, v6, :cond_6

    .line 364
    new-instance v3, Lcom/amazon/system/drawing/Rectangle;

    iget v4, v2, Lcom/amazon/system/drawing/Rectangle;->height:I

    iget v6, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    mul-int/2addr v4, v6

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    div-int v0, v4, v0

    iget v2, v2, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-direct {v3, v5, v5, v0, v2}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    move-object v0, v3

    .line 370
    :goto_2
    new-instance v2, Lcom/amazon/topaz/internal/drawing/RasterCanvas;

    iget-object v3, p0, Lcom/amazon/topaz/Viewer;->book_:Lcom/amazon/topaz/TPZBook;

    iget-object v3, v3, Lcom/amazon/topaz/TPZBook;->dict:Lcom/amazon/topaz/internal/binxml/Dictionary;

    iget v4, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v6, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    iget v7, p0, Lcom/amazon/topaz/Viewer;->fmt_:I

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;-><init>(Lcom/amazon/topaz/internal/binxml/Dictionary;III)V

    .line 371
    iget-object v3, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    iget-object v3, v3, Lcom/amazon/topaz/internal/Session;->textColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->setColor(Lcom/amazon/system/drawing/Color;)V

    .line 372
    iget-object v3, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    iget-object v3, v3, Lcom/amazon/topaz/internal/Session;->backgroundColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v2, v3}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->setBackgroundColor(Lcom/amazon/system/drawing/Color;)V

    .line 373
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->clear()V

    .line 376
    invoke-virtual {v2, v0}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->screenToBook(Lcom/amazon/system/drawing/Rectangle;)Lcom/amazon/system/drawing/Rectangle;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/amazon/topaz/internal/book/Container;->draw(Lcom/amazon/topaz/internal/drawing/Canvas;Lcom/amazon/system/drawing/Rectangle;)V

    .line 379
    new-instance v3, Lcom/amazon/system/drawing/Rectangle;

    invoke-direct {v3, v0}, Lcom/amazon/system/drawing/Rectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;)V

    .line 380
    if-eqz v1, :cond_2

    .line 381
    iget v0, v3, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 382
    iget v4, v3, Lcom/amazon/system/drawing/Rectangle;->height:I

    iput v4, v3, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 383
    iput v0, v3, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v4, v3, Lcom/amazon/system/drawing/Rectangle;->width:I

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    iput v0, v3, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 386
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    iget v4, v3, Lcom/amazon/system/drawing/Rectangle;->height:I

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    iput v0, v3, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 388
    new-instance v0, Lcom/amazon/topaz/internal/drawing/WritableImage;

    iget-object v4, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iget v4, v4, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget-object v6, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iget v6, v6, Lcom/amazon/system/drawing/Rectangle;->height:I

    iget v7, p0, Lcom/amazon/topaz/Viewer;->fmt_:I

    invoke-direct {v0, v4, v6, v7}, Lcom/amazon/topaz/internal/drawing/WritableImage;-><init>(III)V

    iput-object v0, p0, Lcom/amazon/topaz/Viewer;->fullscreen_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    .line 389
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->fullscreen_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    iget-object v4, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    iget-object v4, v4, Lcom/amazon/topaz/internal/Session;->backgroundColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {v0, v4}, Lcom/amazon/topaz/internal/drawing/WritableImage;->setBackground(Lcom/amazon/system/drawing/Color;)V

    .line 390
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->fullscreen_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    iget-object v4, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    iget-object v4, v4, Lcom/amazon/topaz/internal/Session;->textColor:Lcom/amazon/system/drawing/Color;

    iget v4, v4, Lcom/amazon/system/drawing/Color;->color:I

    invoke-virtual {v0, v4}, Lcom/amazon/topaz/internal/drawing/WritableImage;->setColor(I)V

    .line 391
    if-eqz v1, :cond_5

    .line 392
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->getBuffer()Lcom/amazon/topaz/internal/drawing/WritableImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->rotateCopy()Lcom/amazon/topaz/internal/drawing/WritableImage;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->fullscreen_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    new-instance v2, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;

    invoke-direct {v2, v3, v5}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;I)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/topaz/internal/drawing/WritableImage;->draw(Lcom/amazon/topaz/internal/drawing/WritableImage;Lcom/amazon/topaz/internal/drawing/ScaledRectangle;)V

    .line 399
    :goto_3
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->fsLines_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 400
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 401
    new-instance v0, Lcom/amazon/topaz/internal/layout/GoBackCallback;

    invoke-direct {v0}, Lcom/amazon/topaz/internal/layout/GoBackCallback;-><init>()V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v0, Lcom/amazon/topaz/Line;

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->firstID()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/topaz/internal/book/Container;->lastID()I

    move-result v2

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/amazon/topaz/Line;-><init>(IILcom/amazon/system/drawing/Rectangle;Ljava/util/List;ZLjava/util/List;)V

    .line 409
    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->fsLines_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    return-void

    :cond_3
    move v1, v5

    .line 348
    goto/16 :goto_0

    .line 357
    :cond_4
    new-instance v2, Lcom/amazon/system/drawing/Rectangle;

    iget-object v3, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iget v3, v3, Lcom/amazon/system/drawing/Rectangle;->width:I

    sub-int/2addr v3, v6

    iget-object v4, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iget v4, v4, Lcom/amazon/system/drawing/Rectangle;->height:I

    sub-int/2addr v4, v6

    invoke-direct {v2, v5, v5, v3, v4}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    goto/16 :goto_1

    .line 395
    :cond_5
    invoke-virtual {v2}, Lcom/amazon/topaz/internal/drawing/RasterCanvas;->getBuffer()Lcom/amazon/topaz/internal/drawing/WritableImage;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->fullscreen_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    new-instance v2, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;

    invoke-direct {v2, v3, v5}, Lcom/amazon/topaz/internal/drawing/ScaledRectangle;-><init>(Lcom/amazon/system/drawing/Rectangle;I)V

    invoke-virtual {v0, v1, v2}, Lcom/amazon/topaz/internal/drawing/WritableImage;->draw(Lcom/amazon/topaz/internal/drawing/WritableImage;Lcom/amazon/topaz/internal/drawing/ScaledRectangle;)V

    goto :goto_3

    :cond_6
    move-object v0, v3

    goto/16 :goto_2
.end method

.method public getBackgroundColor()Lcom/amazon/system/drawing/Color;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    iget-object v0, v0, Lcom/amazon/topaz/internal/Session;->backgroundColor:Lcom/amazon/system/drawing/Color;

    return-object v0
.end method

.method public getBook()Lcom/amazon/topaz/TPZBook;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->book_:Lcom/amazon/topaz/TPZBook;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->height:I

    return v0
.end method

.method public getLineSpacing()I
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    iget v0, v0, Lcom/amazon/topaz/internal/Session;->lineSpacing:I

    return v0
.end method

.method public declared-synchronized getLines(Lcom/amazon/foundation/internal/ICancelRequester;)Ljava/util/List;
    .locals 1
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/foundation/internal/ICancelRequester;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/topaz/Line;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->fullscreen_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->fsLines_:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->getTopView()Lcom/amazon/topaz/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/View;->getLines(Lcom/amazon/foundation/internal/ICancelRequester;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPageID()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/EndOfFileException;,
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 693
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->book_:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {p0}, Lcom/amazon/topaz/Viewer;->getPageNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/TPZBook;->getPageID(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageNum()I
    .locals 2

    .prologue
    .line 697
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->getMainView()Lcom/amazon/topaz/View;

    move-result-object v0

    .line 698
    .local v0, rootView:Lcom/amazon/topaz/View;
    invoke-virtual {v0}, Lcom/amazon/topaz/View;->getPageNum()I

    move-result v1

    return v1
.end method

.method public getSession()Lcom/amazon/topaz/internal/Session;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    return-object v0
.end method

.method public getStartID()I
    .locals 2

    .prologue
    .line 709
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->getMainView()Lcom/amazon/topaz/View;

    move-result-object v0

    .line 710
    .local v0, rootView:Lcom/amazon/topaz/View;
    invoke-virtual {v0}, Lcom/amazon/topaz/View;->getLocation()I

    move-result v1

    return v1
.end method

.method public getTextColor()Lcom/amazon/system/drawing/Color;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    iget-object v0, v0, Lcom/amazon/topaz/internal/Session;->textColor:Lcom/amazon/system/drawing/Color;

    return-object v0
.end method

.method public getWholeBufferBufferedImage()Lcom/amazon/system/drawing/BufferedImageExtended;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->getTopView()Lcom/amazon/topaz/View;

    move-result-object v0

    .line 192
    .local v0, view:Lcom/amazon/topaz/View;
    invoke-virtual {v0}, Lcom/amazon/topaz/View;->getWholeBuffer()Lcom/amazon/system/drawing/BufferedImageExtended;

    move-result-object v1

    return-object v1
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iget v0, v0, Lcom/amazon/system/drawing/Rectangle;->width:I

    return v0
.end method

.method public getZoom()I
    .locals 1

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->hasPopupView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget v0, p0, Lcom/amazon/topaz/Viewer;->noteZoom_:I

    .line 567
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/amazon/topaz/Viewer;->zoom_:I

    goto :goto_0
.end method

.method public goBack()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 753
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->fullscreen_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-eqz v0, :cond_0

    .line 754
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->closeFullscreen()V

    .line 755
    const/4 v0, 0x1

    .line 760
    :goto_0
    return v0

    .line 758
    :cond_0
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->closePopup()V

    .line 760
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->popLocation()Z

    move-result v0

    goto :goto_0
.end method

.method public goToStartReadingLocation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/EndOfFileException;,
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 732
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->book_:Lcom/amazon/topaz/TPZBook;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->METADATA_FIRSTTEXTPAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/TPZBook;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/topaz/Viewer;->setPage(Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method public goToTableOfContents()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/EndOfFileException;,
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 728
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->book_:Lcom/amazon/topaz/TPZBook;

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->METADATA_FIRSTTOCPAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/topaz/TPZBook;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/topaz/Viewer;->setPage(Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method isBooknoteContinued()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 809
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->hasPopupView()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 818
    :goto_0
    return v2

    .line 816
    :cond_0
    new-instance v0, Lcom/amazon/foundation/internal/SimpleCanceler;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/SimpleCanceler;-><init>()V

    .line 817
    .local v0, localCanceler:Lcom/amazon/foundation/internal/SimpleCanceler;
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->getTopView()Lcom/amazon/topaz/View;

    move-result-object v1

    .line 818
    .local v1, topView:Lcom/amazon/topaz/View;
    invoke-virtual {v1, v0}, Lcom/amazon/topaz/View;->nextPageLocation(Lcom/amazon/foundation/internal/ICancelRequester;)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method isFullscreen()Z
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->fullscreen_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocationStackEmpty()Z
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->navStack_:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public nextLine(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 4
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 256
    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->fullscreen_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-eqz v2, :cond_0

    .line 257
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->closeFullscreen()V

    move v2, v3

    .line 276
    :goto_0
    return v2

    .line 261
    :cond_0
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->getTopView()Lcom/amazon/topaz/View;

    move-result-object v1

    .line 262
    .local v1, topView:Lcom/amazon/topaz/View;
    invoke-virtual {v1, p1}, Lcom/amazon/topaz/View;->nextLineLocation(Lcom/amazon/foundation/internal/ICancelRequester;)I

    move-result v0

    .line 263
    .local v0, nextLineLocation:I
    if-gez v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->hasPopupView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->removePopupView()V

    .line 267
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->getTopView()Lcom/amazon/topaz/View;

    move-result-object v1

    .line 268
    invoke-virtual {v1, p1}, Lcom/amazon/topaz/View;->nextLineLocation(Lcom/amazon/foundation/internal/ICancelRequester;)I

    move-result v0

    .line 271
    :cond_1
    if-gez v0, :cond_2

    .line 272
    const/4 v2, 0x0

    goto :goto_0

    .line 275
    :cond_2
    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/amazon/topaz/View;->setLocation(IIZ)V

    move v2, v3

    .line 276
    goto :goto_0
.end method

.method public nextPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 4
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 232
    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->fullscreen_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-eqz v2, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->closeFullscreen()V

    move v2, v3

    .line 252
    :goto_0
    return v2

    .line 237
    :cond_0
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->getTopView()Lcom/amazon/topaz/View;

    move-result-object v1

    .line 238
    .local v1, topView:Lcom/amazon/topaz/View;
    invoke-virtual {v1, p1}, Lcom/amazon/topaz/View;->nextPageLocation(Lcom/amazon/foundation/internal/ICancelRequester;)I

    move-result v0

    .line 239
    .local v0, nextPageLocation:I
    if-gez v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->hasPopupView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->removePopupView()V

    .line 243
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->getTopView()Lcom/amazon/topaz/View;

    move-result-object v1

    .line 244
    invoke-virtual {v1, p1}, Lcom/amazon/topaz/View;->nextPageLocation(Lcom/amazon/foundation/internal/ICancelRequester;)I

    move-result v0

    .line 247
    :cond_1
    if-gez v0, :cond_2

    .line 248
    const/4 v2, 0x0

    goto :goto_0

    .line 251
    :cond_2
    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/amazon/topaz/View;->setLocation(IIZ)V

    move v2, v3

    .line 252
    goto :goto_0
.end method

.method public prepareScreens(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 1
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->fullscreen_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 207
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->getTopView()Lcom/amazon/topaz/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/View;->prerender(Lcom/amazon/foundation/internal/ICancelRequester;)Z

    move-result v0

    goto :goto_0
.end method

.method public prevLine(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 4
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 304
    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->fullscreen_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-eqz v2, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->closeFullscreen()V

    move v2, v3

    .line 324
    :goto_0
    return v2

    .line 309
    :cond_0
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->getTopView()Lcom/amazon/topaz/View;

    move-result-object v1

    .line 310
    .local v1, topView:Lcom/amazon/topaz/View;
    invoke-virtual {v1, p1}, Lcom/amazon/topaz/View;->prevLineLocation(Lcom/amazon/foundation/internal/ICancelRequester;)I

    move-result v0

    .line 311
    .local v0, prevLineLocation:I
    if-gez v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->hasPopupView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->removePopupView()V

    .line 315
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->getTopView()Lcom/amazon/topaz/View;

    move-result-object v1

    .line 316
    invoke-virtual {v1, p1}, Lcom/amazon/topaz/View;->prevLineLocation(Lcom/amazon/foundation/internal/ICancelRequester;)I

    move-result v0

    .line 319
    :cond_1
    if-gez v0, :cond_2

    .line 320
    const/4 v2, 0x0

    goto :goto_0

    .line 323
    :cond_2
    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/amazon/topaz/View;->setLocation(IIZ)V

    move v2, v3

    .line 324
    goto :goto_0
.end method

.method public prevPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 4
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 280
    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->fullscreen_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-eqz v2, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->closeFullscreen()V

    move v2, v3

    .line 300
    :goto_0
    return v2

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->getTopView()Lcom/amazon/topaz/View;

    move-result-object v1

    .line 286
    .local v1, topView:Lcom/amazon/topaz/View;
    invoke-virtual {v1, p1}, Lcom/amazon/topaz/View;->prevPageLocation(Lcom/amazon/foundation/internal/ICancelRequester;)I

    move-result v0

    .line 287
    .local v0, prevPageLocation:I
    if-gez v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->hasPopupView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->removePopupView()V

    .line 291
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->getTopView()Lcom/amazon/topaz/View;

    move-result-object v1

    .line 292
    invoke-virtual {v1, p1}, Lcom/amazon/topaz/View;->prevPageLocation(Lcom/amazon/foundation/internal/ICancelRequester;)I

    move-result v0

    .line 295
    :cond_1
    if-gez v0, :cond_2

    .line 296
    const/4 v2, 0x0

    goto :goto_0

    .line 299
    :cond_2
    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/amazon/topaz/View;->setLocation(IIZ)V

    move v2, v3

    .line 300
    goto :goto_0
.end method

.method public pushLocation()V
    .locals 4

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->getMainView()Lcom/amazon/topaz/View;

    move-result-object v0

    .line 738
    invoke-virtual {v0}, Lcom/amazon/topaz/View;->createLocation()Lcom/amazon/topaz/View$Location;

    move-result-object v0

    .line 739
    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->navStack_:Ljava/util/LinkedList;

    new-instance v2, Lcom/amazon/topaz/internal/Anchor;

    iget v3, v0, Lcom/amazon/topaz/View$Location;->pageNum:I

    iget v0, v0, Lcom/amazon/topaz/View$Location;->location:I

    invoke-direct {v2, v3, v0}, Lcom/amazon/topaz/internal/Anchor;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 740
    return-void
.end method

.method public render(Lcom/amazon/system/drawing/GraphicsExtended;Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 2
    .parameter "g"
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->fullscreen_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->fullscreen_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/drawing/WritableImage;->getBufferedImage()Lcom/amazon/system/drawing/BufferedImageExtended;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/system/drawing/BufferedImage;

    invoke-interface {p1, p0, v1, v1}, Lcom/amazon/system/drawing/GraphicsExtended;->drawBufferedImage(Lcom/amazon/system/drawing/BufferedImage;II)V

    .line 171
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    .restart local p0
    :cond_0
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->getTopView()Lcom/amazon/topaz/View;

    move-result-object v0

    invoke-virtual {v0, p1, v1, p2}, Lcom/amazon/topaz/View;->render(Lcom/amazon/system/drawing/GraphicsExtended;ZLcom/amazon/foundation/internal/ICancelRequester;)Z

    move-result v0

    goto :goto_0
.end method

.method public resize(II)V
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 495
    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iget v1, v1, Lcom/amazon/system/drawing/Rectangle;->width:I

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iget v1, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    if-ne p2, v1, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iput p1, v1, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 500
    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->win_:Lcom/amazon/system/drawing/Rectangle;

    iput p2, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 502
    new-instance v0, Lcom/amazon/topaz/internal/Session$Builder;

    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    invoke-direct {v0, v1}, Lcom/amazon/topaz/internal/Session$Builder;-><init>(Lcom/amazon/topaz/internal/Session;)V

    .line 503
    .local v0, builder:Lcom/amazon/topaz/internal/Session$Builder;
    invoke-virtual {v0, p1, p2}, Lcom/amazon/topaz/internal/Session$Builder;->setScreenSize(II)V

    .line 504
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/Session$Builder;->build()Lcom/amazon/topaz/internal/Session;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    .line 505
    invoke-virtual {p0}, Lcom/amazon/topaz/Viewer;->clearCache()V

    goto :goto_0
.end method

.method public setColors(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Color;)V
    .locals 2
    .parameter "textColor"
    .parameter "backgroundColor"

    .prologue
    .line 617
    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    iget-object v1, v1, Lcom/amazon/topaz/internal/Session;->textColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {p1, v1}, Lcom/amazon/system/drawing/Color;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    iget-object v1, v1, Lcom/amazon/topaz/internal/Session;->backgroundColor:Lcom/amazon/system/drawing/Color;

    invoke-virtual {p2, v1}, Lcom/amazon/system/drawing/Color;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 620
    :cond_0
    new-instance v0, Lcom/amazon/topaz/internal/Session$Builder;

    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    invoke-direct {v0, v1}, Lcom/amazon/topaz/internal/Session$Builder;-><init>(Lcom/amazon/topaz/internal/Session;)V

    .line 621
    .local v0, builder:Lcom/amazon/topaz/internal/Session$Builder;
    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/Session$Builder;->setTextColor(Lcom/amazon/system/drawing/Color;)V

    .line 622
    invoke-virtual {v0, p2}, Lcom/amazon/topaz/internal/Session$Builder;->setBackgroundColor(Lcom/amazon/system/drawing/Color;)V

    .line 623
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/Session$Builder;->build()Lcom/amazon/topaz/internal/Session;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    .line 624
    invoke-virtual {p0}, Lcom/amazon/topaz/Viewer;->clearCache()V

    .line 626
    .end local v0           #builder:Lcom/amazon/topaz/internal/Session$Builder;
    :cond_1
    return-void
.end method

.method setFormat(I)V
    .locals 1
    .parameter "format"

    .prologue
    .line 548
    iget v0, p0, Lcom/amazon/topaz/Viewer;->fmt_:I

    if-eq p1, v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/amazon/topaz/Viewer;->clearCache()V

    .line 551
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/topaz/Viewer;->renderer:Lcom/amazon/topaz/Renderer;

    .line 553
    :cond_0
    iput p1, p0, Lcom/amazon/topaz/Viewer;->fmt_:I

    .line 554
    return-void
.end method

.method public setLineSpacing(I)V
    .locals 2
    .parameter "newSpacing"

    .prologue
    .line 635
    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    iget v1, v1, Lcom/amazon/topaz/internal/Session;->lineSpacing:I

    if-eq v1, p1, :cond_0

    .line 636
    new-instance v0, Lcom/amazon/topaz/internal/Session$Builder;

    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    invoke-direct {v0, v1}, Lcom/amazon/topaz/internal/Session$Builder;-><init>(Lcom/amazon/topaz/internal/Session;)V

    .line 637
    .local v0, builder:Lcom/amazon/topaz/internal/Session$Builder;
    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/Session$Builder;->setLineSpacing(I)V

    .line 638
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/Session$Builder;->build()Lcom/amazon/topaz/internal/Session;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    .line 639
    invoke-virtual {p0}, Lcom/amazon/topaz/Viewer;->clearCache()V

    .line 641
    .end local v0           #builder:Lcom/amazon/topaz/internal/Session$Builder;
    :cond_0
    return-void
.end method

.method public setMargins(II)V
    .locals 1
    .parameter "left"
    .parameter "right"

    .prologue
    .line 541
    iget v0, p0, Lcom/amazon/topaz/Viewer;->marginL_:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/amazon/topaz/Viewer;->marginR_:I

    if-eq v0, p2, :cond_1

    .line 542
    :cond_0
    iput p1, p0, Lcom/amazon/topaz/Viewer;->marginL_:I

    .line 543
    iput p2, p0, Lcom/amazon/topaz/Viewer;->marginR_:I

    .line 544
    invoke-virtual {p0}, Lcom/amazon/topaz/Viewer;->clearCache()V

    .line 546
    :cond_1
    return-void
.end method

.method public setPage(I)V
    .locals 2
    .parameter "num"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/EndOfFileException;,
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 678
    new-instance v0, Lcom/amazon/topaz/internal/Anchor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/topaz/internal/Anchor;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/amazon/topaz/Viewer;->setPos(Lcom/amazon/topaz/internal/Anchor;)V

    .line 679
    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/EndOfFileException;,
            Ljava/io/IOException;,
            Lcom/amazon/topaz/exception/TopazException;
        }
    .end annotation

    .prologue
    .line 682
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->book_:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/TPZBook;->getPageNum(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/topaz/Viewer;->setPage(I)V

    .line 683
    return-void
.end method

.method public setPageAndPosition(II)V
    .locals 1
    .parameter "page"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 702
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->book_:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v0}, Lcom/amazon/topaz/TPZBook;->lastPage()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->book_:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v0, p1}, Lcom/amazon/topaz/TPZBook;->getPage(I)Lcom/amazon/topaz/internal/book/Page;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/topaz/internal/book/Page;->firstID()I

    move-result p2

    .line 705
    :cond_0
    new-instance v0, Lcom/amazon/topaz/internal/Anchor;

    invoke-direct {v0, p1, p2}, Lcom/amazon/topaz/internal/Anchor;-><init>(II)V

    invoke-direct {p0, v0}, Lcom/amazon/topaz/Viewer;->setPos(Lcom/amazon/topaz/internal/Anchor;)V

    .line 706
    return-void
.end method

.method public setShowMarkers(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 531
    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    iget-boolean v1, v1, Lcom/amazon/topaz/internal/Session;->showMarkers:Z

    if-eq p1, v1, :cond_0

    .line 533
    new-instance v0, Lcom/amazon/topaz/internal/Session$Builder;

    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    invoke-direct {v0, v1}, Lcom/amazon/topaz/internal/Session$Builder;-><init>(Lcom/amazon/topaz/internal/Session;)V

    .line 534
    .local v0, builder:Lcom/amazon/topaz/internal/Session$Builder;
    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/Session$Builder;->setShowMarkers(Z)V

    .line 535
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/Session$Builder;->build()Lcom/amazon/topaz/internal/Session;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    .line 536
    invoke-virtual {p0}, Lcom/amazon/topaz/Viewer;->clearCache()V

    .line 538
    .end local v0           #builder:Lcom/amazon/topaz/internal/Session$Builder;
    :cond_0
    return-void
.end method

.method public setStartID(I)V
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->book_:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v1}, Lcom/amazon/topaz/TPZBook;->lastPage()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->book_:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v2, p1}, Lcom/amazon/topaz/TPZBook;->pageForID(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 715
    .local v0, page:I
    invoke-virtual {p0, v0, p1}, Lcom/amazon/topaz/Viewer;->setPageAndPosition(II)V

    .line 716
    return-void
.end method

.method public setStyleSheet(Lcom/amazon/topaz/styles/StyleSheet;)V
    .locals 1
    .parameter "ss"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/topaz/Viewer;->setStyleSheet(Lcom/amazon/topaz/styles/StyleSheet;Z)V

    .line 482
    return-void
.end method

.method setStyleSheet(Lcom/amazon/topaz/styles/StyleSheet;Z)V
    .locals 5
    .parameter "ss"
    .parameter "overrideBook"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 447
    const/4 v0, 0x0

    .line 450
    .local v0, styleSheetBuilder:Lcom/amazon/topaz/styles/StyleSheet$Builder;
    if-eqz p2, :cond_1

    .line 451
    :try_start_0
    new-instance v1, Lcom/amazon/topaz/styles/StyleSheet$Builder;

    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->book_:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v2}, Lcom/amazon/topaz/TPZBook;->getStyleSheet()Lcom/amazon/topaz/styles/StyleSheet;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/topaz/styles/StyleSheet$Builder;-><init>(Lcom/amazon/topaz/styles/AbstractStyleSheet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    .end local v0           #styleSheetBuilder:Lcom/amazon/topaz/styles/StyleSheet$Builder;
    .local v1, styleSheetBuilder:Lcom/amazon/topaz/styles/StyleSheet$Builder;
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->addRules(Lcom/amazon/topaz/styles/AbstractStyleSheet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 462
    .end local v1           #styleSheetBuilder:Lcom/amazon/topaz/styles/StyleSheet$Builder;
    .restart local v0       #styleSheetBuilder:Lcom/amazon/topaz/styles/StyleSheet$Builder;
    :goto_0
    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {v0}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->build()Lcom/amazon/topaz/styles/StyleSheet;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/topaz/Viewer;->styleSheet_:Lcom/amazon/topaz/styles/StyleSheet;

    .line 465
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->closePopup()V

    .line 466
    invoke-virtual {p0}, Lcom/amazon/topaz/Viewer;->clearCache()V

    .line 468
    iput-object v4, p0, Lcom/amazon/topaz/Viewer;->renderer:Lcom/amazon/topaz/Renderer;

    .line 476
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/topaz/Viewer;->getPageNum()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/amazon/topaz/Viewer;->setPage(I)V

    .line 477
    return-void

    .line 455
    :cond_1
    :try_start_2
    new-instance v1, Lcom/amazon/topaz/styles/StyleSheet$Builder;

    invoke-direct {v1, p1}, Lcom/amazon/topaz/styles/StyleSheet$Builder;-><init>(Lcom/amazon/topaz/styles/AbstractStyleSheet;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 456
    .end local v0           #styleSheetBuilder:Lcom/amazon/topaz/styles/StyleSheet$Builder;
    .restart local v1       #styleSheetBuilder:Lcom/amazon/topaz/styles/StyleSheet$Builder;
    :try_start_3
    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->book_:Lcom/amazon/topaz/TPZBook;

    invoke-virtual {v2}, Lcom/amazon/topaz/TPZBook;->getStyleSheet()Lcom/amazon/topaz/styles/StyleSheet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->addRules(Lcom/amazon/topaz/styles/AbstractStyleSheet;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    .end local v1           #styleSheetBuilder:Lcom/amazon/topaz/styles/StyleSheet$Builder;
    .restart local v0       #styleSheetBuilder:Lcom/amazon/topaz/styles/StyleSheet$Builder;
    goto :goto_0

    .line 462
    :catchall_0
    move-exception v2

    :goto_1
    if-eqz v0, :cond_2

    .line 464
    invoke-virtual {v0}, Lcom/amazon/topaz/styles/StyleSheet$Builder;->build()Lcom/amazon/topaz/styles/StyleSheet;

    move-result-object v3

    iput-object v3, p0, Lcom/amazon/topaz/Viewer;->styleSheet_:Lcom/amazon/topaz/styles/StyleSheet;

    .line 465
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->closePopup()V

    .line 466
    invoke-virtual {p0}, Lcom/amazon/topaz/Viewer;->clearCache()V

    .line 468
    iput-object v4, p0, Lcom/amazon/topaz/Viewer;->renderer:Lcom/amazon/topaz/Renderer;

    :cond_2
    throw v2

    .line 462
    .end local v0           #styleSheetBuilder:Lcom/amazon/topaz/styles/StyleSheet$Builder;
    .restart local v1       #styleSheetBuilder:Lcom/amazon/topaz/styles/StyleSheet$Builder;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #styleSheetBuilder:Lcom/amazon/topaz/styles/StyleSheet$Builder;
    .restart local v0       #styleSheetBuilder:Lcom/amazon/topaz/styles/StyleSheet$Builder;
    goto :goto_1
.end method

.method public setUnderlineLinks(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 520
    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    iget-boolean v1, v1, Lcom/amazon/topaz/internal/Session;->underlineLinks:Z

    if-eq p1, v1, :cond_0

    .line 522
    new-instance v0, Lcom/amazon/topaz/internal/Session$Builder;

    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    invoke-direct {v0, v1}, Lcom/amazon/topaz/internal/Session$Builder;-><init>(Lcom/amazon/topaz/internal/Session;)V

    .line 523
    .local v0, builder:Lcom/amazon/topaz/internal/Session$Builder;
    invoke-virtual {v0, p1}, Lcom/amazon/topaz/internal/Session$Builder;->setUnderlineLinks(Z)V

    .line 524
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/Session$Builder;->build()Lcom/amazon/topaz/internal/Session;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    .line 525
    invoke-virtual {p0}, Lcom/amazon/topaz/Viewer;->clearCache()V

    .line 527
    .end local v0           #builder:Lcom/amazon/topaz/internal/Session$Builder;
    :cond_0
    return-void
.end method

.method public setZoom(I)V
    .locals 1
    .parameter "z"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 579
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->fullscreen_:Lcom/amazon/topaz/internal/drawing/WritableImage;

    if-eqz v0, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->hasPopupView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    iput p1, p0, Lcom/amazon/topaz/Viewer;->noteZoom_:I

    .line 595
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/topaz/Viewer;->clearCache()V

    goto :goto_0

    .line 587
    :cond_2
    iget v0, p0, Lcom/amazon/topaz/Viewer;->zoom_:I

    if-eq p1, v0, :cond_0

    .line 592
    const/16 v0, 0xa

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/amazon/topaz/Viewer;->zoom_:I

    goto :goto_1
.end method

.method public showPopup(Ljava/util/Collection;Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .locals 12
    .parameter
    .parameter "cancelRequester"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Lcom/amazon/foundation/internal/ICancelRequester;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/topaz/exception/TopazException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v8, 0x0

    const/16 v4, 0xa

    .line 413
    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->closeFullscreen()V

    .line 415
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 419
    .local v1, itemsList:Ljava/util/List;,"Ljava/util/List<*>;"
    iget-object v0, p0, Lcom/amazon/topaz/Viewer;->renderer:Lcom/amazon/topaz/Renderer;

    iget-object v2, p0, Lcom/amazon/topaz/Viewer;->session_:Lcom/amazon/topaz/internal/Session;

    invoke-direct {p0}, Lcom/amazon/topaz/Viewer;->calculatePopupZoom()I

    move-result v3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/topaz/Renderer;->createPopupRenderContext(Ljava/util/List;Lcom/amazon/topaz/internal/Session;III)Lcom/amazon/topaz/RenderContext;

    move-result-object v3

    .line 420
    .local v3, popupContext:Lcom/amazon/topaz/RenderContext;
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/topaz/internal/book/Container;

    .line 421
    .local v9, firstContainer:Lcom/amazon/topaz/internal/book/Container;
    invoke-virtual {v9}, Lcom/amazon/topaz/internal/book/Container;->pageNum()I

    move-result v6

    invoke-virtual {v9}, Lcom/amazon/topaz/internal/book/Container;->firstID()I

    move-result v7

    move v5, v4

    invoke-virtual/range {v3 .. v8}, Lcom/amazon/topaz/RenderContext;->createView(IIIIZ)Lcom/amazon/topaz/View;

    move-result-object v11

    .line 424
    .local v11, noteView:Lcom/amazon/topaz/View;
    invoke-virtual {v11, p2}, Lcom/amazon/topaz/View;->getLines(Lcom/amazon/foundation/internal/ICancelRequester;)Ljava/util/List;

    move-result-object v10

    .line 425
    .local v10, lines:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    invoke-direct {p0, v11}, Lcom/amazon/topaz/Viewer;->addPopupView(Lcom/amazon/topaz/View;)V

    .line 430
    .end local v1           #itemsList:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v3           #popupContext:Lcom/amazon/topaz/RenderContext;
    .end local v9           #firstContainer:Lcom/amazon/topaz/internal/book/Container;
    .end local v10           #lines:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v11           #noteView:Lcom/amazon/topaz/View;
    :cond_0
    invoke-interface {p2}, Lcom/amazon/foundation/internal/ICancelRequester;->cancelRequested()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v8

    goto :goto_0
.end method

.method public testTOC()Z
    .locals 3

    .prologue
    .line 720
    iget-object v1, p0, Lcom/amazon/topaz/Viewer;->book_:Lcom/amazon/topaz/TPZBook;

    sget-object v2, Lcom/amazon/topaz/internal/TopazStrings;->METADATA_FIRSTTOCPAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/topaz/TPZBook;->getMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, tocLoc:Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/topaz/internal/TopazStrings;->EMPTY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 722
    :cond_0
    const/4 v1, 0x0

    .line 724
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
