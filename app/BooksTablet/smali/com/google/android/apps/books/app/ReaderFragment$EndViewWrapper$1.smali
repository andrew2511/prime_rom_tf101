.class Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;-><init>(Lcom/google/android/apps/books/app/ReaderFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

.field final synthetic val$finalCover:Landroid/graphics/Bitmap;

.field final synthetic val$this$0:Lcom/google/android/apps/books/app/ReaderFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;Lcom/google/android/apps/books/app/ReaderFragment;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iput-object p2, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->val$this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    iput-object p3, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->val$finalCover:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/high16 v13, 0x4000

    const/4 v12, 0x0

    .line 732
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v9, v9, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v9}, Lcom/google/android/apps/books/app/ReaderFragment;->access$300(Lcom/google/android/apps/books/app/ReaderFragment;)Landroid/view/ViewGroup;

    move-result-object v9

    const v10, 0x7f0e0041

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$1202(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;Landroid/view/View;)Landroid/view/View;

    .line 734
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$1200(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0e0043

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 735
    .local v3, coverView:Landroid/widget/ImageView;
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->val$finalCover:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 737
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$1200(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0e0044

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 738
    .local v6, titleView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v8, v8, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1000(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/apps/books/model/VolumeMetadata;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$1200(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0e0045

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 741
    .local v1, authorView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v8, v8, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    const v9, 0x7f0b0038

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v11, v11, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v11}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1000(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v11

    iget-object v11, v11, Lcom/google/android/apps/books/model/VolumeMetadata;->creator:Ljava/lang/CharSequence;

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/books/app/ReaderFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$1200(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0e0046

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 744
    .local v0, aboutButton:Landroid/widget/Button;
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$1200(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0e0047

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 746
    .local v2, buyButton:Landroid/widget/Button;
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v8, v8, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1000(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v8

    iget-object v7, v8, Lcom/google/android/apps/books/model/VolumeMetadata;->volumeId:Ljava/lang/String;

    .line 748
    .local v7, volumeId:Ljava/lang/String;
    new-instance v8, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$1;

    invoke-direct {v8, p0, v7}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$1;-><init>(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 754
    sget-object v8, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->SAMPLE:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v9, v9, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    invoke-static {v9}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1000(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/model/VolumeMetadata;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/apps/books/model/VolumeMetadata;->access:Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;

    invoke-virtual {v8, v9}, Lcom/google/android/apps/books/provider/BooksContract$Volumes$Access;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 758
    .local v4, isSample:Z
    if-eqz v4, :cond_1

    move v8, v12

    :goto_0
    invoke-virtual {v2, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 759
    if-eqz v4, :cond_0

    .line 760
    new-instance v8, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$2;

    invoke-direct {v8, p0, v7}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1$2;-><init>(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    :cond_0
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$1200(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0e0042

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 768
    .local v5, messageView:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    iget-object v8, v8, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    if-eqz v4, :cond_2

    const v9, 0x7f0b0037

    :goto_1
    invoke-virtual {v8, v9}, Lcom/google/android/apps/books/app/ReaderFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$1200(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    invoke-static {v9}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$1200(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget-object v10, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    invoke-static {v10}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$1200(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 778
    iget-object v8, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    invoke-static {v8}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$1200(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    invoke-static {v9}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$1200(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper$1;->this$1:Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;

    invoke-static {v10}, Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;->access$1200(Lcom/google/android/apps/books/app/ReaderFragment$EndViewWrapper;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    invoke-virtual {v8, v12, v12, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 779
    return-void

    .line 758
    .end local v5           #messageView:Landroid/widget/TextView;
    :cond_1
    const/16 v8, 0x8

    goto :goto_0

    .line 768
    .restart local v5       #messageView:Landroid/widget/TextView;
    :cond_2
    const v9, 0x7f0b0036

    goto :goto_1
.end method
