.class final Lcom/zinio/mobile/android/view/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/a/a/i;

.field private synthetic b:Lcom/zinio/mobile/android/view/bt;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/bt;Lcom/zinio/mobile/android/a/a/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/zinio/mobile/android/view/r;->b:Lcom/zinio/mobile/android/view/bt;

    iput-object p2, p0, Lcom/zinio/mobile/android/view/r;->a:Lcom/zinio/mobile/android/a/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/zinio/mobile/android/view/r;->b:Lcom/zinio/mobile/android/view/bt;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/bt;->a:Lcom/zinio/mobile/android/view/TOCArticlesActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->d(Lcom/zinio/mobile/android/view/TOCArticlesActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/zinio/mobile/android/view/r;->b:Lcom/zinio/mobile/android/view/bt;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/bt;->a:Lcom/zinio/mobile/android/view/TOCArticlesActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->c(Lcom/zinio/mobile/android/view/TOCArticlesActivity;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/r;->b:Lcom/zinio/mobile/android/view/bt;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/bt;->a:Lcom/zinio/mobile/android/view/TOCArticlesActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->c(Lcom/zinio/mobile/android/view/TOCArticlesActivity;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zinio/mobile/android/view/r;->a:Lcom/zinio/mobile/android/a/a/i;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/i;->b()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/zinio/mobile/android/view/r;->b:Lcom/zinio/mobile/android/view/bt;

    iget-object v4, v4, Lcom/zinio/mobile/android/view/bt;->a:Lcom/zinio/mobile/android/view/TOCArticlesActivity;

    invoke-static {v4}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->c(Lcom/zinio/mobile/android/view/TOCArticlesActivity;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v4

    iget-object v5, p0, Lcom/zinio/mobile/android/view/r;->a:Lcom/zinio/mobile/android/a/a/i;

    invoke-virtual {v5}, Lcom/zinio/mobile/android/a/a/i;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/zinio/mobile/android/a;->a(Ljava/lang/String;Ljava/lang/String;JI)Landroid/content/Intent;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/zinio/mobile/android/view/r;->b:Lcom/zinio/mobile/android/view/bt;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/bt;->a:Lcom/zinio/mobile/android/view/TOCArticlesActivity;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->startActivity(Landroid/content/Intent;)V

    .line 322
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/r;->b:Lcom/zinio/mobile/android/view/bt;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/bt;->a:Lcom/zinio/mobile/android/view/TOCArticlesActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->c(Lcom/zinio/mobile/android/view/TOCArticlesActivity;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/r;->b:Lcom/zinio/mobile/android/view/bt;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/bt;->a:Lcom/zinio/mobile/android/view/TOCArticlesActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->c(Lcom/zinio/mobile/android/view/TOCArticlesActivity;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/zinio/mobile/android/view/r;->a:Lcom/zinio/mobile/android/a/a/i;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/i;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/a/a/j;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/a/a/j;I)Z

    .line 319
    iget-object v0, p0, Lcom/zinio/mobile/android/view/r;->b:Lcom/zinio/mobile/android/view/bt;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/bt;->a:Lcom/zinio/mobile/android/view/TOCArticlesActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->c(Lcom/zinio/mobile/android/view/TOCArticlesActivity;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/r;->b:Lcom/zinio/mobile/android/view/bt;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/bt;->a:Lcom/zinio/mobile/android/view/TOCArticlesActivity;

    invoke-static {v1}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->c(Lcom/zinio/mobile/android/view/TOCArticlesActivity;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/zinio/mobile/android/view/r;->b:Lcom/zinio/mobile/android/view/bt;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/bt;->a:Lcom/zinio/mobile/android/view/TOCArticlesActivity;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/TOCArticlesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
