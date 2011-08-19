.class Lcom/amazon/kcp/library/DeleteActivity$2;
.super Ljava/lang/Object;
.source "DeleteActivity.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/DeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/DeleteActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/DeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazon/kcp/library/DeleteActivity$2;->this$0:Lcom/amazon/kcp/library/DeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity$2;->this$0:Lcom/amazon/kcp/library/DeleteActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/DeleteActivity;->access$000(Lcom/amazon/kcp/library/DeleteActivity;)V

    .line 69
    return-void
.end method
