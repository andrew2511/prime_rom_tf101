.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$2;
.super Ljava/lang/Object;
.source "VolumeCarouselFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->onCardSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

.field final synthetic val$n:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$2;->this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

    iput p2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$2;->val$n:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1188
    iget-object v1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$2;->this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

    iget-object v1, v1, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1100(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1189
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$2;->this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

    iget v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$2;->val$n:I

    invoke-static {v2, v3}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->access$2500(Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1190
    invoke-static {}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VolumeCarouselFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring detail selection of position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$2;->val$n:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_0
    monitor-exit v1

    .line 1202
    :goto_0
    return-void

    .line 1193
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$2;->this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

    iget-object v2, v2, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1194
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$2;->this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

    iget-object v2, v2, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    iget v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$2;->val$n:I

    invoke-static {v2, v3}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2600(Lcom/google/android/apps/books/app/VolumeCarouselFragment;I)V

    .line 1201
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1196
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$2;->this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

    iget-object v2, v2, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$2;->val$n:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1197
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$2;->this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

    iget-object v2, v2, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$1200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1198
    .local v0, volumeId:Ljava/lang/String;
    if-nez v0, :cond_3

    monitor-exit v1

    goto :goto_0

    .line 1199
    :cond_3
    iget-object v2, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper$2;->this$1:Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;

    iget-object v2, v2, Lcom/google/android/apps/books/app/VolumeCarouselFragment$LocalCarouselViewHelper;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-static {v2}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$2100(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v2, v0, v3, v4, v5}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToReader(Ljava/lang/String;ZZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
