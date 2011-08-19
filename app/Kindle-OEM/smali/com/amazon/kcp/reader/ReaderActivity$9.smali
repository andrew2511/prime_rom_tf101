.class Lcom/amazon/kcp/reader/ReaderActivity$9;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->buildLocationDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;

.field final synthetic val$controller:Lcom/amazon/kcp/reader/LocationDialogController;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Landroid/app/Dialog;Lcom/amazon/kcp/reader/LocationDialogController;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 892
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$9;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ReaderActivity$9;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ReaderActivity$9;->val$controller:Lcom/amazon/kcp/reader/LocationDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 896
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$9;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 899
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$9;->val$controller:Lcom/amazon/kcp/reader/LocationDialogController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/LocationDialogController;->gotoEnteredLocation()V

    move v0, v1

    .line 903
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
