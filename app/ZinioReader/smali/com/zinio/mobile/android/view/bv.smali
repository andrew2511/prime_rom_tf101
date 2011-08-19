.class final Lcom/zinio/mobile/android/view/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/a/a/i;

.field private synthetic b:Lcom/zinio/mobile/android/view/bq;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/bq;Lcom/zinio/mobile/android/a/a/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/zinio/mobile/android/view/bv;->b:Lcom/zinio/mobile/android/view/bq;

    iput-object p2, p0, Lcom/zinio/mobile/android/view/bv;->a:Lcom/zinio/mobile/android/a/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bv;->b:Lcom/zinio/mobile/android/view/bq;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/bq;->a:Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->b(Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/bv;->b:Lcom/zinio/mobile/android/view/bq;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/bq;->a:Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->b(Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zinio/mobile/android/view/bv;->a:Lcom/zinio/mobile/android/a/a/i;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/i;->b()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/zinio/mobile/android/view/bv;->b:Lcom/zinio/mobile/android/view/bq;

    iget-object v4, v4, Lcom/zinio/mobile/android/view/bq;->a:Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;

    invoke-static {v4}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->b(Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v4

    iget-object v5, p0, Lcom/zinio/mobile/android/view/bv;->a:Lcom/zinio/mobile/android/a/a/i;

    invoke-virtual {v5}, Lcom/zinio/mobile/android/a/a/i;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/zinio/mobile/android/a;->a(Ljava/lang/String;Ljava/lang/String;JI)Landroid/content/Intent;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/zinio/mobile/android/view/bv;->b:Lcom/zinio/mobile/android/view/bq;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/bq;->a:Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/TOCArticlesSmallActivity;->startActivity(Landroid/content/Intent;)V

    .line 299
    return-void
.end method
