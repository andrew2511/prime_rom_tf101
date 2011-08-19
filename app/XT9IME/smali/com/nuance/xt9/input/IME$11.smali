.class Lcom/nuance/xt9/input/IME$11;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/xt9/input/IME;->acquireWindowToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/xt9/input/IME;

.field final synthetic val$imeWindow:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/nuance/xt9/input/IME;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2393
    iput-object p1, p0, Lcom/nuance/xt9/input/IME$11;->this$0:Lcom/nuance/xt9/input/IME;

    iput-object p2, p0, Lcom/nuance/xt9/input/IME$11;->val$imeWindow:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/nuance/xt9/input/IME$11;->val$imeWindow:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2397
    iget-object v0, p0, Lcom/nuance/xt9/input/IME$11;->val$imeWindow:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 2398
    return-void
.end method
