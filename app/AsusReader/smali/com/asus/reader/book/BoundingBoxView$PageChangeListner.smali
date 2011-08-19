.class Lcom/asus/reader/book/BoundingBoxView$PageChangeListner;
.super Ljava/lang/Object;
.source "BoundingBoxView.java"

# interfaces
.implements Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/BoundingBoxView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageChangeListner"
.end annotation


# instance fields
.field private pageRenderer:Lcom/asus/reader/book/PageRenderer;

.field final synthetic this$0:Lcom/asus/reader/book/BoundingBoxView;


# direct methods
.method public constructor <init>(Lcom/asus/reader/book/BoundingBoxView;Lcom/asus/reader/book/PageRenderer;)V
    .locals 0
    .parameter
    .parameter "pageRenderer"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/asus/reader/book/BoundingBoxView$PageChangeListner;->this$0:Lcom/asus/reader/book/BoundingBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p2, p0, Lcom/asus/reader/book/BoundingBoxView$PageChangeListner;->pageRenderer:Lcom/asus/reader/book/PageRenderer;

    .line 132
    invoke-virtual {p2, p0}, Lcom/asus/reader/book/PageRenderer;->registerListener(Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;)V

    .line 133
    return-void
.end method


# virtual methods
.method public onDocumentChange()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public onSetPageNumber(I)V
    .locals 1
    .parameter "pageNum"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/asus/reader/book/BoundingBoxView$PageChangeListner;->this$0:Lcom/asus/reader/book/BoundingBoxView;

    invoke-static {v0, p1}, Lcom/asus/reader/book/BoundingBoxView;->access$002(Lcom/asus/reader/book/BoundingBoxView;I)I

    .line 141
    iget-object v0, p0, Lcom/asus/reader/book/BoundingBoxView$PageChangeListner;->this$0:Lcom/asus/reader/book/BoundingBoxView;

    invoke-virtual {v0}, Lcom/asus/reader/book/BoundingBoxView;->postInvalidate()V

    .line 142
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/asus/reader/book/BoundingBoxView$PageChangeListner;->pageRenderer:Lcom/asus/reader/book/PageRenderer;

    invoke-virtual {v0, p0}, Lcom/asus/reader/book/PageRenderer;->unRegisterListener(Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;)V

    .line 137
    return-void
.end method
