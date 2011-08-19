.class Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Lcom/google/android/apps/books/widget/PageTurnView$SpecialView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndViewWrapper"
.end annotation


# instance fields
.field private mEndView:Landroid/view/View;

.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
    .locals 9
    .parameter

    .prologue
    const-string v8, "ReaderFragment"

    .line 710
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 715
    :try_start_0
    invoke-static {p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1000(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->buildCoverUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 716
    .local v1, coverUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1100(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 717
    .local v4, is:Ljava/io/InputStream;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 718
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 719
    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 727
    .end local v1           #coverUri:Landroid/net/Uri;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    .local v0, cover:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    move-object v3, v0

    .line 729
    .local v3, finalCover:Landroid/graphics/Bitmap;
    new-instance v6, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;

    invoke-direct {v6, p0, p1, v3}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;-><init>(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;Lcom/google/android/apps/books/app/ReaderFragment;Landroid/graphics/Bitmap;)V

    invoke-static {v6}, Lcom/google/android/apps/books/app/ReaderFragment;->access$900(Ljava/lang/Runnable;)V

    .line 781
    return-void

    .line 720
    .end local v0           #cover:Landroid/graphics/Bitmap;
    .end local v3           #finalCover:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 721
    .local v2, e:Ljava/io/FileNotFoundException;
    const/4 v0, 0x0

    .line 722
    .restart local v0       #cover:Landroid/graphics/Bitmap;
    const-string v6, "ReaderFragment"

    const/4 v6, 0x6

    invoke-static {v8, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 723
    const-string v6, "ReaderFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cover image not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 704
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->mEndView:Landroid/view/View;

    return-object p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 785
    new-instance v0, Lcom/google/android/apps/books/util/ConcurrentMutable;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/util/ConcurrentMutable;-><init>(Ljava/lang/Object;)V

    .line 786
    .local v0, result:Lcom/google/android/apps/books/util/ConcurrentMutable;,"Lcom/google/android/apps/books/util/ConcurrentMutable<Ljava/lang/Boolean;>;"
    new-instance v1, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$2;-><init>(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;Landroid/view/MotionEvent;Lcom/google/android/apps/books/util/ConcurrentMutable;)V

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$900(Ljava/lang/Runnable;)V

    .line 793
    invoke-virtual {v0}, Lcom/google/android/apps/books/util/ConcurrentMutable;->getValue()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "reuseBitmap"

    .prologue
    .line 798
    new-instance v0, Lcom/google/android/apps/books/util/ConcurrentMutable;

    invoke-direct {v0, p1}, Lcom/google/android/apps/books/util/ConcurrentMutable;-><init>(Ljava/lang/Object;)V

    .line 799
    .local v0, result:Lcom/google/android/apps/books/util/ConcurrentMutable;,"Lcom/google/android/apps/books/util/ConcurrentMutable<Landroid/graphics/Bitmap;>;"
    new-instance v1, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$3;-><init>(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;Lcom/google/android/apps/books/util/ConcurrentMutable;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$900(Ljava/lang/Runnable;)V

    .line 805
    invoke-virtual {v0}, Lcom/google/android/apps/books/util/ConcurrentMutable;->getValue()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method
