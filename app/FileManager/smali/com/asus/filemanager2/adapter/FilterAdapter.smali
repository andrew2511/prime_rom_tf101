.class public Lcom/asus/filemanager2/adapter/FilterAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final FILTER_LIST:[Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v5, 0x7f020022

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;

    const/4 v1, 0x0

    new-instance v2, Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;

    const v3, 0x7f05003b

    invoke-direct {v2, v3, v5}, Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;

    const v3, 0x7f05003c

    const v4, 0x7f02002a

    invoke-direct {v2, v3, v4}, Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;

    const v3, 0x7f05003d

    const v4, 0x7f020028

    invoke-direct {v2, v3, v4}, Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;

    const v3, 0x7f05003e

    const v4, 0x7f020026

    invoke-direct {v2, v3, v4}, Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;-><init>(II)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;

    const v3, 0x7f05003f

    invoke-direct {v2, v3, v5}, Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;-><init>(II)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/filemanager2/adapter/FilterAdapter;->FILTER_LIST:[Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/filemanager2/adapter/FilterAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    sget-object v0, Lcom/asus/filemanager2/adapter/FilterAdapter;->FILTER_LIST:[Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;

    invoke-virtual {p0, v0}, Lcom/asus/filemanager2/adapter/FilterAdapter;->addAll([Ljava/lang/Object;)V

    .line 50
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/asus/filemanager2/adapter/FilterAdapter;->setDropDownViewResource(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/asus/filemanager2/adapter/FilterAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 66
    if-nez p2, :cond_0

    .line 67
    iget-object v3, p0, Lcom/asus/filemanager2/adapter/FilterAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030007

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 73
    .local v2, view:Landroid/view/View;
    :goto_0
    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 74
    .local v1, text:Landroid/widget/TextView;
    sget-object v3, Lcom/asus/filemanager2/adapter/FilterAdapter;->FILTER_LIST:[Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;->msg:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 75
    invoke-virtual {p0}, Lcom/asus/filemanager2/adapter/FilterAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/asus/filemanager2/adapter/FilterAdapter;->FILTER_LIST:[Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;->icon:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 76
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v5, v5, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 77
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 78
    invoke-virtual {v1, v0, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 80
    return-object v2

    .line 69
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    .end local v1           #text:Landroid/widget/TextView;
    .end local v2           #view:Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_0
.end method
