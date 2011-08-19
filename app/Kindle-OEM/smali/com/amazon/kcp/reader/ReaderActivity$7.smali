.class Lcom/amazon/kcp/reader/ReaderActivity$7;
.super Landroid/view/OrientationEventListener;
.source "ReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 283
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$7;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .parameter "degrees"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$7;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$200(Lcom/amazon/kcp/reader/ReaderActivity;I)V

    .line 288
    return-void
.end method
