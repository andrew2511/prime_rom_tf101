.class final Lcom/zinio/mobile/android/view/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/LibraryActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/LibraryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 739
    iput-object p1, p0, Lcom/zinio/mobile/android/view/bj;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 741
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 742
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bj;->a:Lcom/zinio/mobile/android/view/LibraryActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/LibraryActivity;->b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->b()V

    .line 743
    return-void
.end method
