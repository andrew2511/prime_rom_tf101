.class Lcom/asus/reader/book/ShareDialog$1;
.super Landroid/widget/ArrayAdapter;
.source "ShareDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/book/ShareDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/asus/reader/book/ShareDialog$DisplayItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/ShareDialog;

.field final synthetic val$displayItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/ShareDialog;Landroid/content/Context;IILjava/util/List;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter
    .parameter

    .prologue
    .line 49
    .local p5, x3:Ljava/util/List;,"Ljava/util/List<Lcom/asus/reader/book/ShareDialog$DisplayItem;>;"
    iput-object p1, p0, Lcom/asus/reader/book/ShareDialog$1;->this$0:Lcom/asus/reader/book/ShareDialog;

    iput-object p6, p0, Lcom/asus/reader/book/ShareDialog$1;->val$displayItems:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 53
    .local v2, view:Landroid/view/View;
    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    .local v1, textView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/asus/reader/book/ShareDialog$1;->val$displayItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/reader/book/ShareDialog$DisplayItem;

    iget-object v4, p0, Lcom/asus/reader/book/ShareDialog$1;->this$0:Lcom/asus/reader/book/ShareDialog;

    invoke-virtual {v4}, Lcom/asus/reader/book/ShareDialog;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/asus/reader/book/ShareDialog$DisplayItem;->getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 59
    const/high16 v3, 0x4120

    iget-object v4, p0, Lcom/asus/reader/book/ShareDialog$1;->this$0:Lcom/asus/reader/book/ShareDialog;

    invoke-virtual {v4}, Lcom/asus/reader/book/ShareDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 60
    .local v0, dp10:I
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 62
    return-object v2
.end method
