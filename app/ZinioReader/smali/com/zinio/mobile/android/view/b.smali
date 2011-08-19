.class public final Lcom/zinio/mobile/android/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/bo;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/view/bo;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/zinio/mobile/android/view/b;->a:Lcom/zinio/mobile/android/view/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 446
    iget-object v0, p0, Lcom/zinio/mobile/android/view/b;->a:Lcom/zinio/mobile/android/view/bo;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/bo;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->p()V

    .line 447
    iget-object v0, p0, Lcom/zinio/mobile/android/view/b;->a:Lcom/zinio/mobile/android/view/bo;

    invoke-virtual {v0, p3}, Lcom/zinio/mobile/android/view/bo;->a(I)I

    move-result v0

    .line 448
    if-nez v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/zinio/mobile/android/view/b;->a:Lcom/zinio/mobile/android/view/bo;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/bo;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v0

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/zinio/mobile/android/view/b;->a:Lcom/zinio/mobile/android/view/bo;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/bo;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {v1, v0}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/a/a/j;I)Z

    .line 452
    return-void
.end method
