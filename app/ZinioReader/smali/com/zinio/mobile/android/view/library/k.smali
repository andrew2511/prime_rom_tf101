.class final Lcom/zinio/mobile/android/view/library/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Lcom/zinio/mobile/android/view/library/u;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/library/u;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/k;->b:Lcom/zinio/mobile/android/view/library/u;

    iput-object p2, p0, Lcom/zinio/mobile/android/view/library/k;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/k;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/k;->b:Lcom/zinio/mobile/android/view/library/u;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/u;->b:Lcom/zinio/mobile/android/view/library/t;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/library/t;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/view/LibraryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 639
    return-void
.end method
