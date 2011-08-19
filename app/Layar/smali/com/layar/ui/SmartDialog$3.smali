.class Lcom/layar/ui/SmartDialog$3;
.super Ljava/lang/Object;
.source "SmartDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/SmartDialog;->setupView(Lcom/layar/ui/SmartDialog$Builder$DialogParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/SmartDialog;

.field private final synthetic val$params:Lcom/layar/ui/SmartDialog$Builder$DialogParams;


# direct methods
.method constructor <init>(Lcom/layar/ui/SmartDialog;Lcom/layar/ui/SmartDialog$Builder$DialogParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/SmartDialog$3;->this$0:Lcom/layar/ui/SmartDialog;

    iput-object p2, p0, Lcom/layar/ui/SmartDialog$3;->val$params:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$3;->this$0:Lcom/layar/ui/SmartDialog;

    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog;->dismiss()V

    .line 290
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$3;->val$params:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iget-object v0, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->negativeClick:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$3;->val$params:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iget-object v0, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->negativeClick:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/layar/ui/SmartDialog$3;->this$0:Lcom/layar/ui/SmartDialog;

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 292
    :cond_0
    return-void
.end method
