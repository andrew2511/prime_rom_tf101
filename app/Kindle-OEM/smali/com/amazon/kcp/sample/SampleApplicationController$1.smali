.class Lcom/amazon/kcp/sample/SampleApplicationController$1;
.super Ljava/lang/Object;
.source "SampleApplicationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/sample/SampleApplicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/sample/SampleApplicationController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/sample/SampleApplicationController;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/amazon/kcp/sample/SampleApplicationController$1;->this$0:Lcom/amazon/kcp/sample/SampleApplicationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/sample/SampleApplicationController$1;->this$0:Lcom/amazon/kcp/sample/SampleApplicationController;

    invoke-static {v0}, Lcom/amazon/kcp/sample/SampleApplicationController;->access$000(Lcom/amazon/kcp/sample/SampleApplicationController;)Lcom/amazon/kcp/sample/SampleLibraryController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/sample/SampleLibraryController;->showLibraryPage()Lcom/amazon/kcp/library/pages/ILibraryPage;

    .line 55
    return-void
.end method
