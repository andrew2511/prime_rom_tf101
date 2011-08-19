.class Lcom/amazon/kcp/periodicals/ui/ArticlesView$3;
.super Ljava/lang/Object;
.source "ArticlesView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/ArticlesView;->onSizeChanged(IIII)V
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
    .line 501
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$3;->this$0:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    iput p2, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$3;->val$sectionIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$3;->this$0:Lcom/amazon/kcp/periodicals/ui/ArticlesView;

    iget v1, p0, Lcom/amazon/kcp/periodicals/ui/ArticlesView$3;->val$sectionIndex:I

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/ui/ArticlesView;->scrollToSection(I)V

    .line 504
    return-void
.end method
