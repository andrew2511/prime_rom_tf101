.class public final Lcom/zinio/mobile/android/a/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/zinio/mobile/android/a/a/n;

.field private final d:Landroid/graphics/RectF;

.field private final e:Landroid/graphics/RectF;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Ljava/lang/String;Ljava/lang/String;Lcom/zinio/mobile/android/a/a/n;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/zinio/mobile/android/a/a/g;->d:Landroid/graphics/RectF;

    .line 37
    iput-object p2, p0, Lcom/zinio/mobile/android/a/a/g;->b:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/zinio/mobile/android/a/a/g;->a:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/zinio/mobile/android/a/a/g;->c:Lcom/zinio/mobile/android/a/a/n;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/g;->e:Landroid/graphics/RectF;

    .line 41
    iput-object p5, p0, Lcom/zinio/mobile/android/a/a/g;->f:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/zinio/mobile/android/a/a/g;Landroid/graphics/RectF;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/g;->d:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/g;->d:Landroid/graphics/RectF;

    .line 55
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/g;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/g;->b:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/g;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/g;->a:Ljava/lang/String;

    .line 57
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/g;->c:Lcom/zinio/mobile/android/a/a/n;

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/g;->c:Lcom/zinio/mobile/android/a/a/n;

    .line 58
    iget-object v0, p1, Lcom/zinio/mobile/android/a/a/g;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/zinio/mobile/android/a/a/g;->f:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/zinio/mobile/android/a/a/g;->e:Landroid/graphics/RectF;

    .line 60
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/g;->d:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final b()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/g;->e:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final c()Lcom/zinio/mobile/android/a/a/n;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/g;->c:Lcom/zinio/mobile/android/a/a/n;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/g;->f:Ljava/lang/String;

    return-object v0
.end method
