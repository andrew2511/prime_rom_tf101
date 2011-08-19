.class Lcom/amazon/kcp/library/LibraryController$1;
.super Ljava/lang/Object;
.source "LibraryController.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryController;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryController$1;->this$0:Lcom/amazon/kcp/library/LibraryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryController$1;->this$0:Lcom/amazon/kcp/library/LibraryController;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryController;->refreshBookDirectory()V

    .line 73
    return-void
.end method
