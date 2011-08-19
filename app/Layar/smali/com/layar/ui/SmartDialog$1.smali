.class Lcom/layar/ui/SmartDialog$1;
.super Ljava/lang/Object;
.source "SmartDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/SmartDialog;->setupView(Lcom/layar/ui/SmartDialog$Builder$DialogParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
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
    iput-object p1, p0, Lcom/layar/ui/SmartDialog$1;->this$0:Lcom/layar/ui/SmartDialog;

    iput-object p2, p0, Lcom/layar/ui/SmartDialog$1;->val$params:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "itemView"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$1;->this$0:Lcom/layar/ui/SmartDialog;

    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog;->dismiss()V

    .line 226
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$1;->val$params:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iget-object v0, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->listItemClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/layar/ui/SmartDialog$1;->val$params:Lcom/layar/ui/SmartDialog$Builder$DialogParams;

    iget-object v0, v0, Lcom/layar/ui/SmartDialog$Builder$DialogParams;->listItemClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 228
    :cond_0
    return-void
.end method
