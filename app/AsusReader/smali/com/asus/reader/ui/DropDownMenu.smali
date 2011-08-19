.class public Lcom/asus/reader/ui/DropDownMenu;
.super Ljava/lang/Object;
.source "DropDownMenu.java"


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mMenu:Landroid/view/Menu;

.field private mPopupMenu:Landroid/widget/PopupMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Button;ILandroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "button"
    .parameter "menuId"
    .parameter "listener"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p2, p0, Lcom/asus/reader/ui/DropDownMenu;->mButton:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02013a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/asus/reader/ui/DropDownMenu;->mButton:Landroid/widget/Button;

    invoke-direct {v0, p1, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/asus/reader/ui/DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 77
    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/ui/DropDownMenu;->mMenu:Landroid/view/Menu;

    .line 78
    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/ui/DropDownMenu;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, p3, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 79
    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p4}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/asus/reader/ui/DropDownMenu$2;

    invoke-direct {v1, p0}, Lcom/asus/reader/ui/DropDownMenu$2;-><init>(Lcom/asus/reader/ui/DropDownMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Button;Landroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "button"
    .parameter "listener"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/asus/reader/ui/DropDownMenu;->mButton:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02013a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/asus/reader/ui/DropDownMenu;->mButton:Landroid/widget/Button;

    invoke-direct {v0, p1, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/asus/reader/ui/DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 62
    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/ui/DropDownMenu;->mMenu:Landroid/view/Menu;

    .line 63
    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/asus/reader/ui/DropDownMenu$1;

    invoke-direct {v1, p0}, Lcom/asus/reader/ui/DropDownMenu$1;-><init>(Lcom/asus/reader/ui/DropDownMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/asus/reader/ui/DropDownMenu;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method


# virtual methods
.method public findItem(I)Landroid/view/MenuItem;
    .locals 1
    .parameter "id"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/asus/reader/ui/DropDownMenu;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method
