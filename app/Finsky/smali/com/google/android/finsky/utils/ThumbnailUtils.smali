.class public Lcom/google/android/finsky/utils/ThumbnailUtils;
.super Ljava/lang/Object;
.source "ThumbnailUtils.java"


# static fields
.field private static sDefaultIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fadeInView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 119
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 120
    return-void

    .line 119
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public static getBitmapUrlFromDocument(Lcom/google/android/finsky/api/model/Document;)Ljava/lang/String;
    .locals 2
    .parameter "document"

    .prologue
    .line 66
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getFirstImageUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, url:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/api/model/Document;->getFirstImageUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_0
    return-object v0
.end method

.method public static getBitmapUrlFromDocument(Lcom/google/android/finsky/api/model/Document;I)Ljava/lang/String;
    .locals 1
    .parameter "document"
    .parameter "imageType"

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/model/Document;->getFirstImageUrl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultIcon(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "channelId"
    .parameter "resources"

    .prologue
    const v3, 0x7f020039

    .line 43
    sget-object v0, Lcom/google/android/finsky/utils/ThumbnailUtils;->sDefaultIcons:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/ThumbnailUtils;->sDefaultIcons:Ljava/util/HashMap;

    .line 46
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 47
    sget-object v0, Lcom/google/android/finsky/utils/ThumbnailUtils;->sDefaultIcons:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02003a

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/google/android/finsky/utils/ThumbnailUtils;->sDefaultIcons:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02003b

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/google/android/finsky/utils/ThumbnailUtils;->sDefaultIcons:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/google/android/finsky/utils/ThumbnailUtils;->sDefaultIcons:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02003c

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    sget-object v0, Lcom/google/android/finsky/utils/ThumbnailUtils;->sDefaultIcons:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public static setImageBitmapWithFade(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "imageView"
    .parameter "bitmap"

    .prologue
    .line 90
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {p0, v0}, Lcom/google/android/finsky/utils/ThumbnailUtils;->setImageDrawableWithFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 91
    return-void
.end method

.method public static setImageDrawableWithFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "imageView"
    .parameter "drawable"

    .prologue
    const/4 v4, 0x1

    .line 100
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 101
    .local v1, oldDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 102
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    aput-object p1, v2, v4

    invoke-direct {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 105
    .local v0, newDrawable:Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    const/16 v2, 0xfa

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 112
    .end local v0           #newDrawable:Landroid/graphics/drawable/TransitionDrawable;
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-static {p0}, Lcom/google/android/finsky/utils/ThumbnailUtils;->fadeInView(Landroid/view/View;)V

    goto :goto_0
.end method
