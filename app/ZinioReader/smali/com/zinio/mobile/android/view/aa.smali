.class final Lcom/zinio/mobile/android/view/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private synthetic d:Lcom/zinio/mobile/android/view/bt;


# direct methods
.method constructor <init>(Lcom/zinio/mobile/android/view/bt;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/zinio/mobile/android/view/aa;->d:Lcom/zinio/mobile/android/view/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    const v0, 0x7f0c008c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/aa;->a:Landroid/widget/TextView;

    .line 336
    const v0, 0x7f0c008d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/aa;->b:Landroid/widget/TextView;

    .line 337
    const v0, 0x7f0c008b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/aa;->c:Landroid/widget/TextView;

    .line 338
    return-void
.end method


# virtual methods
.method final a()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/zinio/mobile/android/view/aa;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method final b()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/zinio/mobile/android/view/aa;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method final c()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/zinio/mobile/android/view/aa;->c:Landroid/widget/TextView;

    return-object v0
.end method
