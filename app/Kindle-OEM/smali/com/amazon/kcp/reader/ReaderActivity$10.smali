.class Lcom/amazon/kcp/reader/ReaderActivity$10;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->showInstructionsDialog()V
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
    .line 940
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$10;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 946
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$10;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->access$300(Lcom/amazon/kcp/reader/ReaderActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$10;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$302(Lcom/amazon/kcp/reader/ReaderActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 950
    :cond_0
    return-void
.end method
