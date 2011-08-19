.class Lcom/amazon/kcp/reader/ui/BookPageLayout$1;
.super Ljava/lang/Object;
.source "BookPageLayout.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/BookPageLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/BookPageLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/BookPageLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout$1;->this$0:Lcom/amazon/kcp/reader/ui/BookPageLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookPageLayout$1;->this$0:Lcom/amazon/kcp/reader/ui/BookPageLayout;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/BookPageLayout;->access$000(Lcom/amazon/kcp/reader/ui/BookPageLayout;)V

    .line 27
    return-void
.end method
