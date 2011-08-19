.class Lcom/layar/ui/popupmenu/PopupMenu$3;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/popupmenu/PopupMenu;->_createMenuRow(Landroid/content/Context;Lcom/layar/ui/popupmenu/PopupMenu$Menu;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/ui/popupmenu/PopupMenu;

.field private final synthetic val$menu:Lcom/layar/ui/popupmenu/PopupMenu$Menu;


# direct methods
.method constructor <init>(Lcom/layar/ui/popupmenu/PopupMenu;Lcom/layar/ui/popupmenu/PopupMenu$Menu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/popupmenu/PopupMenu$3;->this$0:Lcom/layar/ui/popupmenu/PopupMenu;

    iput-object p2, p0, Lcom/layar/ui/popupmenu/PopupMenu$3;->val$menu:Lcom/layar/ui/popupmenu/PopupMenu$Menu;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupMenu$3;->this$0:Lcom/layar/ui/popupmenu/PopupMenu;

    invoke-static {v0}, Lcom/layar/ui/popupmenu/PopupMenu;->access$0(Lcom/layar/ui/popupmenu/PopupMenu;)Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupMenu$3;->this$0:Lcom/layar/ui/popupmenu/PopupMenu;

    invoke-static {v0}, Lcom/layar/ui/popupmenu/PopupMenu;->access$0(Lcom/layar/ui/popupmenu/PopupMenu;)Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/ui/popupmenu/PopupMenu$3;->val$menu:Lcom/layar/ui/popupmenu/PopupMenu$Menu;

    invoke-static {v1}, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->access$2(Lcom/layar/ui/popupmenu/PopupMenu$Menu;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuClickListener;->onPopupMenuItem(I)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupMenu$3;->this$0:Lcom/layar/ui/popupmenu/PopupMenu;

    invoke-virtual {v0}, Lcom/layar/ui/popupmenu/PopupMenu;->cancel()V

    .line 222
    return-void
.end method
