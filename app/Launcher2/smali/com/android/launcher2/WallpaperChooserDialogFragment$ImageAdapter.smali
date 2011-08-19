.class Lcom/android/launcher2/WallpaperChooserDialogFragment$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallpaperChooserDialogFragment.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/WallpaperChooserDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/WallpaperChooserDialogFragment;Landroid/app/Activity;)V
    .locals 1
    .parameter
    .parameter "activity"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 232
    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 233
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {v0}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$100(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 240
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 244
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 250
    if-nez p2, :cond_0

    .line 251
    iget-object v4, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$ImageAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030021

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 256
    .local v3, view:Landroid/view/View;
    :goto_0
    const v4, 0x7f08003b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 258
    .local v0, image:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/launcher2/WallpaperChooserDialogFragment$ImageAdapter;->this$0:Lcom/android/launcher2/WallpaperChooserDialogFragment;

    invoke-static {v4}, Lcom/android/launcher2/WallpaperChooserDialogFragment;->access$100(Lcom/android/launcher2/WallpaperChooserDialogFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 259
    .local v2, thumbRes:I
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 261
    .local v1, thumbDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 262
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 268
    :goto_1
    return-object v3

    .line 253
    .end local v0           #image:Landroid/widget/ImageView;
    .end local v1           #thumbDrawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #thumbRes:I
    .end local v3           #view:Landroid/view/View;
    .restart local p0
    :cond_0
    move-object v3, p2

    .restart local v3       #view:Landroid/view/View;
    goto :goto_0

    .line 264
    .end local p0
    .restart local v0       #image:Landroid/widget/ImageView;
    .restart local v1       #thumbDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v2       #thumbRes:I
    :cond_1
    const-string v4, "Launcher.WallpaperChooserDialogFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error decoding thumbnail resId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for wallpaper #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
