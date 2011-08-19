.class Lcom/google/android/apps/books/app/SyncDisabledDialogFragment$2;
.super Ljava/lang/Object;
.source "SyncDisabledDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment$2;->this$0:Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment$2;->this$0:Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;

    invoke-static {v0}, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;->access$000(Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;)V

    .line 54
    return-void
.end method
