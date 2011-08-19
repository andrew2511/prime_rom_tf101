.class final Lcom/zinio/mobile/android/view/cv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/a/a/v;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/zinio/mobile/android/view/cv;->a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/zinio/mobile/android/a/a/x;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 114
    invoke-interface {p1}, Lcom/zinio/mobile/android/a/a/x;->b()Lcom/zinio/mobile/android/a/a/w;

    move-result-object v0

    .line 115
    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->c:Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/w;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    check-cast p1, Lcom/zinio/mobile/android/a/a/h;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/h;->a()I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/zinio/mobile/android/view/cv;->a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->h:Landroid/widget/GridView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/cv;->a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->h:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/cv;->a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget-object v1, v1, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->h:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/zinio/mobile/android/view/cv;->a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->k:Lcom/zinio/mobile/android/view/bu;

    .line 123
    iget-object v1, p0, Lcom/zinio/mobile/android/view/cv;->a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/zinio/mobile/android/view/cv;->a:Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;

    iput-boolean v3, v2, Lcom/zinio/mobile/android/view/TOCThumbnailsActivity;->l:Z

    .line 125
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method
