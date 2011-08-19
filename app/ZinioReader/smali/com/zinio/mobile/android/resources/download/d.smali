.class final Lcom/zinio/mobile/android/resources/download/d;
.super Ljava/util/PriorityQueue;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private synthetic d:Lcom/zinio/mobile/android/resources/download/g;


# direct methods
.method public constructor <init>(Lcom/zinio/mobile/android/resources/download/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/zinio/mobile/android/resources/download/d;->d:Lcom/zinio/mobile/android/resources/download/g;

    .line 235
    const/16 v0, 0xc8

    new-instance v1, Lcom/zinio/mobile/android/resources/download/l;

    invoke-direct {v1, p1}, Lcom/zinio/mobile/android/resources/download/l;-><init>(Lcom/zinio/mobile/android/resources/download/g;)V

    invoke-direct {p0, v0, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 220
    const/4 v0, 0x0

    iput v0, p0, Lcom/zinio/mobile/android/resources/download/d;->c:I

    .line 253
    if-nez p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    if-nez p2, :cond_2

    .line 255
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "issueId and pubId should both be null or not null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_2
    iput-object p2, p0, Lcom/zinio/mobile/android/resources/download/d;->a:Ljava/lang/String;

    .line 260
    iput-object p3, p0, Lcom/zinio/mobile/android/resources/download/d;->b:Ljava/lang/String;

    .line 261
    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/resources/download/d;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/d;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/zinio/mobile/android/resources/download/j;
    .locals 3

    .prologue
    .line 302
    invoke-super {p0}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/resources/download/j;

    .line 303
    instance-of v1, v0, Lcom/zinio/mobile/android/resources/download/b;

    if-eqz v1, :cond_0

    .line 304
    iget v1, p0, Lcom/zinio/mobile/android/resources/download/d;->c:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/zinio/mobile/android/resources/download/d;->c:I

    .line 306
    :cond_0
    return-object v0
.end method

.method public final a(Lcom/zinio/mobile/android/resources/download/j;)Z
    .locals 4
    .parameter

    .prologue
    .line 265
    instance-of v1, p1, Lcom/zinio/mobile/android/resources/download/b;

    if-eqz v1, :cond_0

    .line 266
    iget v1, p0, Lcom/zinio/mobile/android/resources/download/d;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/zinio/mobile/android/resources/download/d;->c:I

    .line 267
    move-object v0, p1

    check-cast v0, Lcom/zinio/mobile/android/resources/download/k;

    move-object v1, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/zinio/mobile/android/resources/download/k;->b(J)V

    .line 269
    :cond_0
    invoke-super {p0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/d;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/d;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/d;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/d;->b:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 216
    check-cast p1, Lcom/zinio/mobile/android/resources/download/j;

    invoke-virtual {p0, p1}, Lcom/zinio/mobile/android/resources/download/d;->a(Lcom/zinio/mobile/android/resources/download/j;)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/zinio/mobile/android/resources/download/d;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 315
    instance-of v0, p1, Lcom/zinio/mobile/android/resources/download/d;

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x0

    .line 321
    :goto_0
    return v0

    .line 318
    :cond_0
    check-cast p1, Lcom/zinio/mobile/android/resources/download/d;

    .line 321
    iget-object v0, p1, Lcom/zinio/mobile/android/resources/download/d;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/zinio/mobile/android/resources/download/d;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/zinio/mobile/android/resources/download/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/d;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 327
    :cond_0
    const/4 v0, 0x0

    .line 329
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/resources/download/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/zinio/mobile/android/resources/download/d;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic remove()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/zinio/mobile/android/resources/download/d;->a()Lcom/zinio/mobile/android/resources/download/j;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 274
    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0}, Lcom/zinio/mobile/android/resources/download/d;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 277
    if-eqz p1, :cond_1

    .line 278
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    move v0, v3

    .line 281
    goto :goto_0

    .line 285
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 287
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    move v0, v3

    .line 288
    goto :goto_1

    .line 293
    :cond_2
    if-eqz v0, :cond_3

    instance-of v1, p1, Lcom/zinio/mobile/android/resources/download/b;

    if-eqz v1, :cond_3

    .line 294
    iget v1, p0, Lcom/zinio/mobile/android/resources/download/d;->c:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/zinio/mobile/android/resources/download/d;->c:I

    .line 297
    :cond_3
    return v0
.end method
