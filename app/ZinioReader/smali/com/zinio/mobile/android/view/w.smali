.class final Lcom/zinio/mobile/android/view/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;


# direct methods
.method synthetic constructor <init>(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 670
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zinio/mobile/android/view/w;-><init>(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 670
    iput-object p1, p0, Lcom/zinio/mobile/android/view/w;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 674
    iget-object v0, p0, Lcom/zinio/mobile/android/view/w;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->h(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/zinio/mobile/android/view/w;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    invoke-static {v0}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->h(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;)Lcom/zinio/mobile/android/a/a/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/a/a/j;->a(Z)V

    .line 677
    iget-object v0, p0, Lcom/zinio/mobile/android/view/w;->a:Lcom/zinio/mobile/android/view/LibraryDeleteActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zinio/mobile/android/view/LibraryDeleteActivity;->a(Lcom/zinio/mobile/android/view/LibraryDeleteActivity;Lcom/zinio/mobile/android/a/a/j;)Lcom/zinio/mobile/android/a/a/j;

    .line 678
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 680
    :cond_0
    return-void
.end method
