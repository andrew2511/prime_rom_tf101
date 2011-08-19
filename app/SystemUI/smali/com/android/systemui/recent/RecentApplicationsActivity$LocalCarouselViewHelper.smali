.class Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;
.super Lcom/android/ex/carousel/CarouselViewHelper;
.source "RecentApplicationsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentApplicationsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalCarouselViewHelper"
.end annotation


# instance fields
.field private mDetailParams:Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;

.field final synthetic this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recent/RecentApplicationsActivity;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    .line 183
    invoke-direct {p0, p2}, Lcom/android/ex/carousel/CarouselViewHelper;-><init>(Landroid/content/Context;)V

    .line 180
    new-instance v0, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;

    const/high16 v1, 0x4120

    const/high16 v2, 0x41a0

    invoke-direct {v0, v1, v2}, Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;->mDetailParams:Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;

    .line 184
    return-void
.end method


# virtual methods
.method public getDetailTexture(I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "n"

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    invoke-static {v2}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$000(Lcom/android/systemui/recent/RecentApplicationsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    invoke-static {v2}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$000(Lcom/android/systemui/recent/RecentApplicationsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;

    .line 234
    .local v1, item:Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;
    iget-object v2, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    invoke-static {v2}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$300(Lcom/android/systemui/recent/RecentApplicationsActivity;)Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;->title:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v2, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    invoke-static {v2}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$300(Lcom/android/systemui/recent/RecentApplicationsActivity;)Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;->description:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->description:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v2, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    invoke-static {v2}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$300(Lcom/android/systemui/recent/RecentApplicationsActivity;)Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/RecentApplicationsActivity$DetailInfo;->draw(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 238
    .end local v1           #item:Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;
    :cond_0
    return-object v0
.end method

.method public getDetailTextureParameters(I)Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;
    .locals 1
    .parameter "id"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;->mDetailParams:Lcom/android/ex/carousel/CarouselViewHelper$DetailTextureParameters;

    return-object v0
.end method

.method public getTexture(I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "id"

    .prologue
    .line 217
    invoke-static {}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "RecentApplicationsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRequestTexture("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    invoke-static {v2}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$000(Lcom/android/systemui/recent/RecentApplicationsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 220
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    invoke-static {v3}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$000(Lcom/android/systemui/recent/RecentApplicationsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;

    .line 221
    .local v1, info:Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 224
    iget-object v2, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    invoke-static {v2, v1}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$200(Lcom/android/systemui/recent/RecentApplicationsActivity;Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 226
    :cond_1
    return-object v0

    .line 221
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #info:Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onCardSelected(I)V
    .locals 6
    .parameter "n"

    .prologue
    .line 192
    iget-object v3, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    invoke-static {v3}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$000(Lcom/android/systemui/recent/RecentApplicationsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_0

    .line 193
    iget-object v3, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    invoke-static {v3}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$000(Lcom/android/systemui/recent/RecentApplicationsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;

    .line 194
    .local v2, item:Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;
    iget v3, v2, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->id:I

    if-ltz v3, :cond_1

    .line 196
    iget-object v3, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Lcom/android/systemui/recent/RecentApplicationsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 198
    .local v0, am:Landroid/app/ActivityManager;
    iget v3, v2, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->id:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 213
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v2           #item:Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;
    :cond_0
    :goto_0
    return-void

    .line 199
    .restart local v2       #item:Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;
    :cond_1
    iget-object v3, v2, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 201
    iget-object v3, v2, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->intent:Landroid/content/Intent;

    const v4, 0x104000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 204
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$100()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "RecentApplicationsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    iget-object v4, v2, Lcom/android/systemui/recent/RecentApplicationsActivity$ActivityDescription;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recent/RecentApplicationsActivity;->startActivity(Landroid/content/Intent;)V

    .line 206
    iget-object v3, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    const v4, 0x7f040009

    const v5, 0x7f04000a

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/recent/RecentApplicationsActivity;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/recent/RecentApplicationsActivity$LocalCarouselViewHelper;->this$0:Lcom/android/systemui/recent/RecentApplicationsActivity;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentApplicationsActivity;->finish()V

    goto :goto_0

    .line 207
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 208
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/android/systemui/recent/RecentApplicationsActivity;->access$100()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "Recent"

    const-string v4, "Unable to launch recent task"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
