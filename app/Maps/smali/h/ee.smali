.class Lh/ee;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:[B

.field final synthetic c:Lh/ds;


# direct methods
.method constructor <init>(Lh/ds;Landroid/widget/ImageView;[B)V
    .locals 0

    iput-object p1, p0, Lh/ee;->c:Lh/ds;

    iput-object p2, p0, Lh/ee;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lh/ee;->b:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lh/ee;->a:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lh/ee;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lh/ee;->b:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lh/ee;->b:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
