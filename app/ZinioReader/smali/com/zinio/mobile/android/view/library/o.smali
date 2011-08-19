.class final Lcom/zinio/mobile/android/view/library/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/a/a/j;

.field private synthetic b:Lcom/zinio/mobile/android/view/library/c;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/library/c;Lcom/zinio/mobile/android/a/a/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/zinio/mobile/android/view/library/o;->b:Lcom/zinio/mobile/android/view/library/c;

    iput-object p2, p0, Lcom/zinio/mobile/android/view/library/o;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 567
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 568
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/o;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->L()Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/o;->b:Lcom/zinio/mobile/android/view/library/c;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/library/o;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/view/library/c;->a(Lcom/zinio/mobile/android/view/library/c;Lcom/zinio/mobile/android/a/a/j;)V

    .line 573
    :goto_0
    return-void

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/library/o;->b:Lcom/zinio/mobile/android/view/library/c;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/library/c;->a:Lcom/zinio/mobile/android/view/library/LibraryAdapter;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zinio/mobile/android/view/library/o;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/view/library/LibraryAdapter;->a(Lcom/zinio/mobile/android/view/library/r;Lcom/zinio/mobile/android/a/a/j;)V

    goto :goto_0
.end method
