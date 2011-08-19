.class Lcom/amazon/kcp/reader/ui/SelectionButtons$2;
.super Ljava/lang/Object;
.source "SelectionButtons.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/SelectionButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/SelectionButtons;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/SelectionButtons;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons$2;->this$0:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionButtons$2;->this$0:Lcom/amazon/kcp/reader/ui/SelectionButtons;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/SelectionButtons;->access$100(Lcom/amazon/kcp/reader/ui/SelectionButtons;)V

    .line 68
    return-void
.end method
