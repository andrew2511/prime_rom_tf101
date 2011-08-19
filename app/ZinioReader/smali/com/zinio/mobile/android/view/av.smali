.class final Lcom/zinio/mobile/android/view/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/graphics/Bitmap;

.field private synthetic b:Lcom/zinio/mobile/android/view/cn;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/cn;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 374
    iput-object p1, p0, Lcom/zinio/mobile/android/view/av;->b:Lcom/zinio/mobile/android/view/cn;

    iput-object p2, p0, Lcom/zinio/mobile/android/view/av;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/zinio/mobile/android/view/av;->b:Lcom/zinio/mobile/android/view/cn;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/cn;->a:Lcom/zinio/mobile/android/view/ai;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/ai;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/av;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 377
    return-void
.end method
