.class Lcom/asus/reader/ui/DropDownMenu$1;
.super Ljava/lang/Object;
.source "DropDownMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/ui/DropDownMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Landroid/widget/PopupMenu$OnMenuItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/ui/DropDownMenu;


# direct methods
.method constructor <init>(Lcom/asus/reader/ui/DropDownMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/asus/reader/ui/DropDownMenu$1;->this$0:Lcom/asus/reader/ui/DropDownMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu$1;->this$0:Lcom/asus/reader/ui/DropDownMenu;

    invoke-static {v0}, Lcom/asus/reader/ui/DropDownMenu;->access$000(Lcom/asus/reader/ui/DropDownMenu;)Landroid/widget/PopupMenu;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 67
    return-void
.end method
