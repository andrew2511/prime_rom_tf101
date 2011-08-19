.class Lcom/google/android/apps/books/app/ReaderFragment$1;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Lcom/google/android/apps/books/util/Navigator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$1;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public moveToPosition(Lcom/google/android/apps/books/common/Position;ZLjava/lang/String;)V
    .locals 6
    .parameter "position"
    .parameter "fromUser"
    .parameter "lastAction"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$1;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/books/app/ReaderFragment;->moveToPosition(Lcom/google/android/apps/books/common/Position;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 226
    return-void
.end method
