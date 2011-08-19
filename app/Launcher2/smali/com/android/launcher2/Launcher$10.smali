.class Lcom/android/launcher2/Launcher$10;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->dismissPreview(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$window:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;Landroid/view/View;Landroid/widget/PopupWindow;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2330
    iput-object p1, p0, Lcom/android/launcher2/Launcher$10;->this$0:Lcom/android/launcher2/Launcher;

    iput-object p2, p0, Lcom/android/launcher2/Launcher$10;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher2/Launcher$10;->val$window:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 10

    .prologue
    const v9, 0x7f080023

    const v8, 0x7f08000f

    const/4 v7, 0x0

    .line 2332
    iget-object v6, p0, Lcom/android/launcher2/Launcher$10;->val$v:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 2333
    .local v3, group:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 2334
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 2335
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2334
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2337
    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/Launcher$10;->val$v:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2338
    .local v1, bitmaps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 2340
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/Launcher$10;->val$v:Landroid/view/View;

    invoke-virtual {v6, v9, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2341
    iget-object v6, p0, Lcom/android/launcher2/Launcher$10;->val$v:Landroid/view/View;

    invoke-virtual {v6, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2342
    iget-object v6, p0, Lcom/android/launcher2/Launcher$10;->val$window:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 2343
    return-void
.end method
