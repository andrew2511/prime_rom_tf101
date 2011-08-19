.class Lcom/google/android/apps/books/app/SyncErrorFragment$2;
.super Ljava/lang/Object;
.source "SyncErrorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/SyncErrorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/SyncErrorFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/SyncErrorFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/apps/books/app/SyncErrorFragment$2;->this$0:Lcom/google/android/apps/books/app/SyncErrorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/books/app/SyncErrorFragment$2;->this$0:Lcom/google/android/apps/books/app/SyncErrorFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/SyncErrorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 42
    return-void
.end method
