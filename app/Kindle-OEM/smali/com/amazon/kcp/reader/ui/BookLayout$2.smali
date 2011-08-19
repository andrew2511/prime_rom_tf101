.class Lcom/amazon/kcp/reader/ui/BookLayout$2;
.super Ljava/lang/Object;
.source "BookLayout.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/BookLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/BookLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/BookLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BookLayout$2;->this$0:Lcom/amazon/kcp/reader/ui/BookLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout$2;->this$0:Lcom/amazon/kcp/reader/ui/BookLayout;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/BookLayout$2;->this$0:Lcom/amazon/kcp/reader/ui/BookLayout;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/BookLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/BookLayout;->access$100(Lcom/amazon/kcp/reader/ui/BookLayout;Ljava/lang/String;)V

    .line 74
    return-void
.end method
