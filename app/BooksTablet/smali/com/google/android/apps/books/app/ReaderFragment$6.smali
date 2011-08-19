.class Lcom/google/android/apps/books/app/ReaderFragment$6;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment;->onLoadException(Landroid/content/Loader;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 931
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$6;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    iput-object p2, p0, Lcom/google/android/apps/books/app/ReaderFragment$6;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$6;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$6;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/ReaderFragment;->onError(Ljava/lang/Exception;)V

    .line 934
    return-void
.end method
