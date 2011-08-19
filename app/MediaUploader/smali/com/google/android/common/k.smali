.class public final Lcom/google/android/common/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/common/g;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/content/Intent;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/google/android/common/k;->a:Landroid/view/View;

    .line 224
    iput-object p2, p0, Lcom/google/android/common/k;->c:Ljava/util/ArrayList;

    .line 225
    iput-object p3, p0, Lcom/google/android/common/k;->d:Ljava/util/ArrayList;

    .line 226
    return-void
.end method

.method static synthetic a(Lcom/google/android/common/k;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/android/common/k;->b:Landroid/content/Intent;

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/common/k;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/google/android/common/k;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/google/android/common/k;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/google/android/common/k;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_1
    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/common/k;->a:Landroid/view/View;

    return-object v0
.end method

.method public final c()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/google/android/common/k;->b:Landroid/content/Intent;

    return-object v0
.end method
