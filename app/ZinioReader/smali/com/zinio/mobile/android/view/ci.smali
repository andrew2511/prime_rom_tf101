.class final Lcom/zinio/mobile/android/view/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/zinio/mobile/android/a/a/j;

.field private synthetic b:Lcom/zinio/mobile/android/view/ce;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/view/ce;Lcom/zinio/mobile/android/a/a/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 625
    iput-object p1, p0, Lcom/zinio/mobile/android/view/ci;->b:Lcom/zinio/mobile/android/view/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    iput-object p2, p0, Lcom/zinio/mobile/android/view/ci;->a:Lcom/zinio/mobile/android/a/a/j;

    .line 627
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 633
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ci;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 634
    :goto_0
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ci;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/a/a/j;->a(Z)V

    .line 635
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ci;->b:Lcom/zinio/mobile/android/view/ce;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/ce;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ci;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->a(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;Lcom/zinio/mobile/android/a/a/j;)Lcom/zinio/mobile/android/a/a/j;

    .line 636
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ci;->b:Lcom/zinio/mobile/android/view/ce;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/ce;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->e(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    .line 637
    new-instance v1, Lcom/zinio/mobile/android/view/au;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/ci;->b:Lcom/zinio/mobile/android/view/ce;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/ce;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-direct {v1, v2}, Lcom/zinio/mobile/android/view/au;-><init>(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)V

    new-instance v2, Lcom/zinio/mobile/android/view/w;

    iget-object v3, p0, Lcom/zinio/mobile/android/view/ci;->b:Lcom/zinio/mobile/android/view/ce;

    iget-object v3, v3, Lcom/zinio/mobile/android/view/ce;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-direct {v2, v3}, Lcom/zinio/mobile/android/view/w;-><init>(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)V

    iget-object v3, p0, Lcom/zinio/mobile/android/view/ci;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v3}, Lcom/zinio/mobile/android/a/a/j;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zinio/mobile/android/view/ci;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v4}, Lcom/zinio/mobile/android/a/a/j;->C()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zinio/mobile/android/view/dialogs/e;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/util/Date;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ci;->b:Lcom/zinio/mobile/android/view/ce;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/ce;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->e(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 647
    return-void

    .line 633
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
