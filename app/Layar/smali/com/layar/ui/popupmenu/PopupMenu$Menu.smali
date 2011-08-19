.class public Lcom/layar/ui/popupmenu/PopupMenu$Menu;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/popupmenu/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Menu"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/Bitmap;

.field private final mIconRes:I

.field private final mId:I

.field private final mSubMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/ui/popupmenu/PopupMenu$Menu;",
            ">;"
        }
    .end annotation
.end field

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "iconRes"
    .parameter "text"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->mId:I

    .line 45
    iput p2, p0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->mIconRes:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->mIcon:Landroid/graphics/Bitmap;

    .line 47
    iput-object p3, p0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->mText:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->mSubMenu:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method public constructor <init>(ILandroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "icon"
    .parameter "text"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->mId:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->mIconRes:I

    .line 54
    iput-object p2, p0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->mIcon:Landroid/graphics/Bitmap;

    .line 55
    iput-object p3, p0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->mText:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->mSubMenu:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method static synthetic access$0(Lcom/layar/ui/popupmenu/PopupMenu$Menu;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->mSubMenu:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/ui/popupmenu/PopupMenu$Menu;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->mText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/ui/popupmenu/PopupMenu$Menu;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->mId:I

    return v0
.end method


# virtual methods
.method public add(IILjava/lang/String;)Lcom/layar/ui/popupmenu/PopupMenu$Menu;
    .locals 2
    .parameter "id"
    .parameter "iconRes"
    .parameter "text"

    .prologue
    .line 60
    new-instance v0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;

    invoke-direct {v0, p1, p2, p3}, Lcom/layar/ui/popupmenu/PopupMenu$Menu;-><init>(IILjava/lang/String;)V

    .line 61
    .local v0, result:Lcom/layar/ui/popupmenu/PopupMenu$Menu;
    iget-object v1, p0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->mSubMenu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    return-object v0
.end method

.method public add(ILandroid/graphics/Bitmap;Ljava/lang/String;)Lcom/layar/ui/popupmenu/PopupMenu$Menu;
    .locals 2
    .parameter "id"
    .parameter "icon"
    .parameter "text"

    .prologue
    .line 66
    new-instance v0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;

    invoke-direct {v0, p1, p2, p3}, Lcom/layar/ui/popupmenu/PopupMenu$Menu;-><init>(ILandroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 67
    .local v0, result:Lcom/layar/ui/popupmenu/PopupMenu$Menu;
    iget-object v1, p0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->mSubMenu:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    return-object v0
.end method

.method public assingIcon(Landroid/widget/ImageView;)V
    .locals 2
    .parameter "viewIcon"

    .prologue
    .line 72
    iget v0, p0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->mIconRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 73
    iget v0, p0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->mIconRes:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
