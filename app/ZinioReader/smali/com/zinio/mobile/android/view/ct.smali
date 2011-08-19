.class final Lcom/zinio/mobile/android/view/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/zinio/mobile/android/view/ct;->a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

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
    .line 320
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ct;->a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    invoke-virtual {v0, p3}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->a(I)I

    move-result v0

    .line 322
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ct;->a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-static {v1, v0}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/a/a/j;I)Z

    .line 323
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ct;->a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ct;->a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->g:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/a;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ct;->a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 326
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ct;->a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->finish()V

    .line 327
    return-void
.end method
