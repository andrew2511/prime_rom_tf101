.class Lcom/amazon/kcp/reader/ui/ReaderLayout$5;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$5;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$5;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$200(Lcom/amazon/kcp/reader/ui/ReaderLayout;)Lcom/amazon/kcp/reader/ObjectSelectionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->selectNone()V

    .line 214
    return-void
.end method
