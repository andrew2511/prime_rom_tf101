.class Lcom/amazon/kcp/reader/ui/ObjectSelectionView$1;
.super Ljava/lang/Object;
.source "ObjectSelectionView.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ObjectSelectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ObjectSelectionView;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView$1;->this$0:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView$1;->this$0:Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;->invalidate()V

    .line 63
    return-void
.end method
