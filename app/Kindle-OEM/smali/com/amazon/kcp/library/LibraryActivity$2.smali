.class Lcom/amazon/kcp/library/LibraryActivity$2;
.super Ljava/lang/Object;
.source "LibraryActivity.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$2;,"Lcom/amazon/kcp/library/LibraryActivity.2;"
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryActivity$2;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$2;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": List invalidated callback fired"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity$2;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity$2;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    iget-object v1, v1, Lcom/amazon/kcp/library/LibraryActivity;->updateBookListUIRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/LibraryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 318
    return-void
.end method
