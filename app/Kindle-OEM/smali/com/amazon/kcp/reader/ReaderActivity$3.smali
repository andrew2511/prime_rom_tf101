.class Lcom/amazon/kcp/reader/ReaderActivity$3;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Lcom/amazon/android/widget/SearchViewWrapper$OnCloseListenerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$3;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 2

    .prologue
    .line 169
    sget-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->HAS_SEARCH_VIEW:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$3;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->setTitleVisibility(Z)V

    .line 173
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
