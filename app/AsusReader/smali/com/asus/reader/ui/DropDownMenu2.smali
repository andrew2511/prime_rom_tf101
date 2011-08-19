.class public Lcom/asus/reader/ui/DropDownMenu2;
.super Ljava/lang/Object;
.source "DropDownMenu2.java"


# instance fields
.field private mMenu:Landroid/view/Menu;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 2
    .parameter "context"
    .parameter "view"
    .parameter "menuId"
    .parameter "listener"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/asus/reader/ui/DropDownMenu2;->mView:Landroid/view/View;

    .line 20
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/asus/reader/ui/DropDownMenu2;->mView:Landroid/view/View;

    invoke-direct {v0, p1, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/asus/reader/ui/DropDownMenu2;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 21
    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu2;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/ui/DropDownMenu2;->mMenu:Landroid/view/Menu;

    .line 22
    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu2;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/ui/DropDownMenu2;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, p3, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 23
    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu2;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p4}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu2;->mView:Landroid/view/View;

    new-instance v1, Lcom/asus/reader/ui/DropDownMenu2$1;

    invoke-direct {v1, p0}, Lcom/asus/reader/ui/DropDownMenu2$1;-><init>(Lcom/asus/reader/ui/DropDownMenu2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/asus/reader/ui/DropDownMenu2;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu2;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu2;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu2;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 33
    :cond_0
    return-void
.end method
