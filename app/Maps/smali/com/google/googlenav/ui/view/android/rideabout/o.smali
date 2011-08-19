.class public Lcom/google/googlenav/ui/view/android/rideabout/o;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    float-to-int v1, p1

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;JLcom/google/googlenav/ui/bB;)Lcom/google/googlenav/ui/view/android/rideabout/p;
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p3, p1, p2}, Lcom/google/googlenav/ui/bB;->a(J)C

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    invoke-virtual {p3, v0}, Lcom/google/googlenav/ui/bB;->e(C)Lk/l;

    move-result-object v0

    check-cast v0, LaB/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/view/android/rideabout/o;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/ui/view/android/rideabout/p;

    new-instance v3, Lcom/google/googlenav/ui/view/android/rideabout/a;

    invoke-direct {v3, v0}, Lcom/google/googlenav/ui/view/android/rideabout/a;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {v2, v1, v3}, Lcom/google/googlenav/ui/view/android/rideabout/p;-><init>(Ljava/lang/String;Landroid/text/style/CharacterStyle;)V

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/p;

    const-string v1, ""

    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0d00c7

    invoke-direct {v2, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/p;-><init>(Ljava/lang/String;Landroid/text/style/CharacterStyle;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/p;
    .locals 3

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/p;

    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0d00cd

    invoke-direct {v1, p0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/ui/view/android/rideabout/p;-><init>(Ljava/lang/String;Landroid/text/style/CharacterStyle;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;JZLcom/google/googlenav/ui/bB;)Lcom/google/googlenav/ui/view/android/rideabout/p;
    .locals 5

    invoke-static {p0, p2, p3, p5}, Lcom/google/googlenav/ui/view/android/rideabout/o;->a(Landroid/content/Context;JLcom/google/googlenav/ui/bB;)Lcom/google/googlenav/ui/view/android/rideabout/p;

    move-result-object v0

    if-eqz p4, :cond_0

    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/p;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    const v4, 0x7f0d00c7

    invoke-direct {v3, p0, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/p;-><init>(Ljava/lang/String;Landroid/text/style/CharacterStyle;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/p;->a(Lcom/google/googlenav/ui/view/android/rideabout/p;)V

    :cond_0
    return-object v0
.end method
