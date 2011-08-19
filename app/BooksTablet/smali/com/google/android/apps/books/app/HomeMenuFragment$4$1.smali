.class Lcom/google/android/apps/books/app/HomeMenuFragment$4$1;
.super Ljava/lang/Object;
.source "HomeMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/HomeMenuFragment$4;->onClose()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/HomeMenuFragment$4;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/HomeMenuFragment$4;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$4$1;->this$1:Lcom/google/android/apps/books/app/HomeMenuFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/apps/books/app/HomeMenuFragment$4$1;->this$1:Lcom/google/android/apps/books/app/HomeMenuFragment$4;

    iget-object v0, v0, Lcom/google/android/apps/books/app/HomeMenuFragment$4;->this$0:Lcom/google/android/apps/books/app/HomeMenuFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/HomeMenuFragment;->access$400(Lcom/google/android/apps/books/app/HomeMenuFragment;Z)V

    .line 169
    return-void
.end method
