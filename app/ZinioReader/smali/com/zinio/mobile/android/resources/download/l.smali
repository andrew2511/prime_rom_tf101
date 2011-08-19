.class final Lcom/zinio/mobile/android/resources/download/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Lcom/zinio/mobile/android/resources/download/g;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/resources/download/g;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/zinio/mobile/android/resources/download/l;->a:Lcom/zinio/mobile/android/resources/download/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 235
    check-cast p1, Lcom/zinio/mobile/android/resources/download/j;

    check-cast p2, Lcom/zinio/mobile/android/resources/download/j;

    invoke-interface {p1}, Lcom/zinio/mobile/android/resources/download/j;->b()I

    move-result v0

    invoke-interface {p2}, Lcom/zinio/mobile/android/resources/download/j;->b()I

    move-result v1

    if-ge v0, v1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/zinio/mobile/android/resources/download/j;->b()I

    move-result v0

    invoke-interface {p2}, Lcom/zinio/mobile/android/resources/download/j;->b()I

    move-result v1

    if-le v0, v1, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/zinio/mobile/android/resources/download/k;

    if-eqz v0, :cond_3

    instance-of v0, p2, Lcom/zinio/mobile/android/resources/download/k;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/zinio/mobile/android/resources/download/k;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/resources/download/k;->g()J

    move-result-wide v0

    check-cast p2, Lcom/zinio/mobile/android/resources/download/k;

    invoke-virtual {p2}, Lcom/zinio/mobile/android/resources/download/k;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
