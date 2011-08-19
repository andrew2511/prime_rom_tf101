.class final Lcom/zinio/mobile/android/view/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Lcom/zinio/mobile/android/view/ai;

.field private synthetic b:Lcom/zinio/mobile/android/view/bo;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/view/bo;Lcom/zinio/mobile/android/view/ai;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/zinio/mobile/android/view/cn;->b:Lcom/zinio/mobile/android/view/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p2, p0, Lcom/zinio/mobile/android/view/cn;->a:Lcom/zinio/mobile/android/view/ai;

    .line 365
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 368
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cn;->a:Lcom/zinio/mobile/android/view/ai;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/ai;->c:Lcom/zinio/mobile/android/a/a/f;

    .line 370
    iget-object v1, p0, Lcom/zinio/mobile/android/view/cn;->b:Lcom/zinio/mobile/android/view/bo;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/bo;->a(Lcom/zinio/mobile/android/a/a/f;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 372
    iget-object v2, p0, Lcom/zinio/mobile/android/view/cn;->a:Lcom/zinio/mobile/android/view/ai;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/ai;->c:Lcom/zinio/mobile/android/a/a/f;

    if-ne v2, v0, :cond_0

    if-eqz v1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cn;->a:Lcom/zinio/mobile/android/view/ai;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/ai;->b:Landroid/widget/ImageView;

    new-instance v2, Lcom/zinio/mobile/android/view/av;

    invoke-direct {v2, p0, v1}, Lcom/zinio/mobile/android/view/av;-><init>(Lcom/zinio/mobile/android/view/cn;Landroid/graphics/Bitmap;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 380
    :cond_0
    return-void
.end method
