.class Lcom/amazon/kcp/reader/ui/ReaderLayout$3;
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
    .line 189
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$3;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$3;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$000(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    .line 195
    return-void
.end method
