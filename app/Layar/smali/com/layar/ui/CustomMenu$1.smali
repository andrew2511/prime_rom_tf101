.class Lcom/layar/ui/CustomMenu$1;
.super Ljava/lang/Object;
.source "CustomMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/CustomMenu;->getItem(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/CustomMenu;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/layar/ui/CustomMenu;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/CustomMenu$1;->this$0:Lcom/layar/ui/CustomMenu;

    iput p2, p0, Lcom/layar/ui/CustomMenu$1;->val$id:I

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/layar/ui/CustomMenu$1;->this$0:Lcom/layar/ui/CustomMenu;

    invoke-static {v0}, Lcom/layar/ui/CustomMenu;->access$0(Lcom/layar/ui/CustomMenu;)Lcom/layar/ui/CustomMenu$CustomMenuListener;

    move-result-object v0

    iget v1, p0, Lcom/layar/ui/CustomMenu$1;->val$id:I

    invoke-interface {v0, v1}, Lcom/layar/ui/CustomMenu$CustomMenuListener;->onMenuItemClick(I)V

    .line 185
    return-void
.end method
