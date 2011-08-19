.class Lcom/layar/ui/popupmenu/PopupMenu$2;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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


# direct methods
.method constructor <init>(Lcom/layar/ui/popupmenu/PopupMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/popupmenu/PopupMenu$2;->this$0:Lcom/layar/ui/popupmenu/PopupMenu;

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 210
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupMenu$2;->this$0:Lcom/layar/ui/popupmenu/PopupMenu;

    invoke-virtual {v0}, Lcom/layar/ui/popupmenu/PopupMenu;->cancel()V

    .line 212
    const/4 v0, 0x1

    .line 214
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
