.class public final Lcom/zinio/mobile/android/modules/overlays/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Landroid/graphics/Paint;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 26
    sput-object v0, Lcom/zinio/mobile/android/modules/overlays/a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    sget-object v0, Lcom/zinio/mobile/android/modules/overlays/a;->b:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/zinio/mobile/android/modules/overlays/a;->a:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Matrix;FF)Lcom/zinio/mobile/android/a/a/n;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/zinio/mobile/android/modules/overlays/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/g;

    .line 78
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/g;->b()Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 79
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 80
    invoke-virtual {v1, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/g;->c()Lcom/zinio/mobile/android/a/a/n;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zinio/mobile/android/modules/overlays/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/g;

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/g;->b()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 51
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 52
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/g;->c()Lcom/zinio/mobile/android/a/a/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/n;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "folio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/g;->c()Lcom/zinio/mobile/android/a/a/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/n;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    :cond_1
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Lcom/zinio/mobile/android/modules/overlays/a;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/zinio/mobile/android/a/a/g;->c()Lcom/zinio/mobile/android/a/a/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/n;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video/x-mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Lcom/zinio/mobile/android/modules/overlays/a;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 60
    :cond_3
    return-void
.end method
