.class final Lcom/zinio/mobile/android/view/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/view/dialogs/e;

.field private synthetic b:Lcom/zinio/mobile/android/view/LibraryActivity;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/LibraryActivity;Lcom/zinio/mobile/android/view/dialogs/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 732
    iput-object p1, p0, Lcom/zinio/mobile/android/view/bk;->b:Lcom/zinio/mobile/android/view/LibraryActivity;

    iput-object p2, p0, Lcom/zinio/mobile/android/view/bk;->a:Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 734
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bk;->a:Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/dialogs/e;->g()V

    .line 735
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 736
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bk;->b:Lcom/zinio/mobile/android/view/LibraryActivity;

    iget-object v0, v0, Lcom/zinio/mobile/android/view/LibraryActivity;->b:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->b()V

    .line 737
    return-void
.end method
