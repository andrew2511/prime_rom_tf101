.class final Lcom/zinio/mobile/android/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/zinio/mobile/android/a/a/j;

.field private synthetic b:Lcom/zinio/mobile/android/view/bo;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/bo;Lcom/zinio/mobile/android/a/a/j;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/zinio/mobile/android/view/a;->b:Lcom/zinio/mobile/android/view/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p2, p0, Lcom/zinio/mobile/android/view/a;->a:Lcom/zinio/mobile/android/a/a/j;

    .line 232
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 235
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 236
    iget-object v2, p0, Lcom/zinio/mobile/android/view/a;->b:Lcom/zinio/mobile/android/view/bo;

    iget-wide v2, v2, Lcom/zinio/mobile/android/view/bo;->c:J

    sub-long/2addr v0, v2

    .line 237
    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/zinio/mobile/android/view/a;->b:Lcom/zinio/mobile/android/view/bo;

    iget v0, v0, Lcom/zinio/mobile/android/view/bo;->d:I

    if-eq v0, v4, :cond_2

    .line 238
    iget-object v0, p0, Lcom/zinio/mobile/android/view/a;->b:Lcom/zinio/mobile/android/view/bo;

    iget v0, v0, Lcom/zinio/mobile/android/view/bo;->d:I

    const/16 v1, 0x14

    sub-int/2addr v0, v1

    .line 239
    :goto_0
    iget-object v1, p0, Lcom/zinio/mobile/android/view/a;->b:Lcom/zinio/mobile/android/view/bo;

    iget v1, v1, Lcom/zinio/mobile/android/view/bo;->d:I

    add-int/lit8 v1, v1, 0x14

    if-gt v0, v1, :cond_1

    .line 240
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/a;->a:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->r()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/zinio/mobile/android/view/a;->b:Lcom/zinio/mobile/android/view/bo;

    invoke-virtual {v1, v0}, Lcom/zinio/mobile/android/view/bo;->b(I)Lcom/zinio/mobile/android/a/a/f;

    move-result-object v1

    .line 242
    iget-object v2, p0, Lcom/zinio/mobile/android/view/a;->b:Lcom/zinio/mobile/android/view/bo;

    iget-object v2, v2, Lcom/zinio/mobile/android/view/bo;->b:Lcom/zinio/mobile/android/view/cp;

    invoke-virtual {v2, v1}, Lcom/zinio/mobile/android/view/cp;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/zinio/mobile/android/view/a;->b:Lcom/zinio/mobile/android/view/bo;

    invoke-virtual {v2, v1}, Lcom/zinio/mobile/android/view/bo;->a(Lcom/zinio/mobile/android/a/a/f;)Landroid/graphics/Bitmap;

    .line 239
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/a;->b:Lcom/zinio/mobile/android/view/bo;

    const/4 v1, -0x1

    iput v1, v0, Lcom/zinio/mobile/android/view/bo;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_2
    :goto_1
    return-void

    .line 249
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
