.class Lcom/layar/ui/popupmenu/PopupMenu$1;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/popupmenu/PopupMenu;->_createBottomView(Landroid/content/Context;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/layar/ui/popupmenu/PopupMenu$1;->this$0:Lcom/layar/ui/popupmenu/PopupMenu;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupMenu$1;->this$0:Lcom/layar/ui/popupmenu/PopupMenu;

    invoke-virtual {v0}, Lcom/layar/ui/popupmenu/PopupMenu;->cancel()V

    .line 171
    const/4 v0, 0x1

    return v0
.end method
