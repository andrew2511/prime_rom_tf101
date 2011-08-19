.class Lcom/amazon/kcp/library/LibraryActivity$1;
.super Ljava/lang/Object;
.source "LibraryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 299
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$1;,"Lcom/amazon/kcp/library/LibraryActivity.1;"
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryActivity$1;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 303
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity$1;,"Lcom/amazon/kcp/library/LibraryActivity.1;"
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity$1;->this$0:Lcom/amazon/kcp/library/LibraryActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryActivity;->access$000(Lcom/amazon/kcp/library/LibraryActivity;)V

    .line 304
    return-void
.end method
