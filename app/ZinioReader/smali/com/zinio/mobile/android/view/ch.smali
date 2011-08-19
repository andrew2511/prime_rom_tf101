.class final Lcom/zinio/mobile/android/view/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/zinio/mobile/android/a/a/j;

.field private synthetic b:Lcom/zinio/mobile/android/view/cw;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/view/cw;Lcom/zinio/mobile/android/a/a/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/zinio/mobile/android/view/ch;->b:Lcom/zinio/mobile/android/view/cw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p2, p0, Lcom/zinio/mobile/android/view/ch;->a:Lcom/zinio/mobile/android/a/a/j;

    .line 413
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 416
    const v0, 0x7f0c002a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 417
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ch;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->e()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 418
    :goto_0
    iget-object v2, p0, Lcom/zinio/mobile/android/view/ch;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2, v1}, Lcom/zinio/mobile/android/a/a/j;->a(Z)V

    .line 419
    invoke-static {v0, v1}, Lcom/zinio/mobile/android/view/cw;->a(Landroid/widget/ImageView;Z)V

    .line 420
    return-void

    .line 417
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
