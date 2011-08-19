.class Lcom/amazon/topaz/Renderer;
.super Ljava/lang/Object;
.source "Renderer.java"


# instance fields
.field public final book:Lcom/amazon/topaz/TPZBook;

.field public final format:I

.field public final styleSheet:Lcom/amazon/topaz/styles/StyleSheet;


# direct methods
.method public constructor <init>(Lcom/amazon/topaz/TPZBook;Lcom/amazon/topaz/styles/StyleSheet;I)V
    .locals 0
    .parameter "book"
    .parameter "styleSheet"
    .parameter "format"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/topaz/Renderer;->book:Lcom/amazon/topaz/TPZBook;

    .line 30
    iput-object p2, p0, Lcom/amazon/topaz/Renderer;->styleSheet:Lcom/amazon/topaz/styles/StyleSheet;

    .line 31
    iput p3, p0, Lcom/amazon/topaz/Renderer;->format:I

    .line 32
    return-void
.end method


# virtual methods
.method public createPopupRenderContext(Ljava/util/List;Lcom/amazon/topaz/internal/Session;III)Lcom/amazon/topaz/RenderContext;
    .locals 7
    .parameter
    .parameter "session"
    .parameter "screenDPI"
    .parameter "marginL"
    .parameter "marginR"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Lcom/amazon/topaz/internal/Session;",
            "III)",
            "Lcom/amazon/topaz/RenderContext;"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, popupItems:Ljava/util/List;,"Ljava/util/List<*>;"
    new-instance v0, Lcom/amazon/topaz/RenderContext;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/amazon/topaz/RenderContext;-><init>(Lcom/amazon/topaz/Renderer;Ljava/util/List;Lcom/amazon/topaz/internal/Session;III)V

    return-object v0
.end method

.method public createRenderContext(Lcom/amazon/topaz/internal/Session;III)Lcom/amazon/topaz/RenderContext;
    .locals 7
    .parameter "session"
    .parameter "screenDPI"
    .parameter "marginL"
    .parameter "marginR"

    .prologue
    .line 36
    new-instance v0, Lcom/amazon/topaz/RenderContext;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/amazon/topaz/RenderContext;-><init>(Lcom/amazon/topaz/Renderer;Ljava/util/List;Lcom/amazon/topaz/internal/Session;III)V

    return-object v0
.end method
