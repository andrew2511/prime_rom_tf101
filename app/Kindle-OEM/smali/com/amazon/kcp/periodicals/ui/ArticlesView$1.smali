.class Lcom/amazon/kcp/periodicals/ui/ArticlesView$1;
.super Ljava/lang/Object;
.source "ArticlesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/ArticlesView;->addSection(Lcom/amazon/kcp/reader/models/ISectionTOCItem;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

.field final synthetic val$sectionIndex:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/ArticlesView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$1;->this$0:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    iput p2, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$1;->val$sectionIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$1;->this$0:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->access$000(Lcom/amazon/kcp/periodicals/ui/ArticlesView;)Lcom/amazon/foundation/internal/IntEventProvider;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$1;->val$sectionIndex:I

    invoke-virtual {v0, v1}, Lcom/amazon/foundation/internal/IntEventProvider;->notifyListeners(I)V

    .line 127
    return-void
.end method
