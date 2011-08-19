.class Lcom/amazon/kcp/reader/ui/BookLayout$1;
.super Ljava/lang/Object;
.source "BookLayout.java"

# interfaces
.implements Lcom/amazon/foundation/IStringCallback;


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
    .line 60
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/BookLayout$1;->this$0:Lcom/amazon/kcp/reader/ui/BookLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/BookLayout$1;->this$0:Lcom/amazon/kcp/reader/ui/BookLayout;

    invoke-static {v0, p1}, Lcom/amazon/kcp/reader/ui/BookLayout;->access$000(Lcom/amazon/kcp/reader/ui/BookLayout;Ljava/lang/String;)V

    .line 65
    return-void
.end method
